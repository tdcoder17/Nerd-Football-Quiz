//
//  Score.swift
//  Nerd Football Quiz
//
//  Created by Theo Davis on 3/4/21.
//

import CloudKit
import Foundation

struct ScoreStrings {
    static let recordTypeKey = "Score"
    fileprivate static let playersHighscore = "playersHighscore"
    fileprivate static let teamsHighscore = "teamsHighscore"
    fileprivate static let stadiumsHighscore = "stadiumHighscore"
}//end of struct

class Score {
    var playersScore: Int
    var teamsScore: Int
    var stadiumScore: Int
    let recordID: CKRecord.ID
    
    init(playersScore: Int, teamsScore: Int, stadiumScore: Int, recordID: CKRecord.ID = CKRecord.ID(recordName: UUID().uuidString)) {
        self.playersScore = playersScore
        self.teamsScore = teamsScore
        self.stadiumScore = stadiumScore
        self.recordID = recordID
    }
}//End of class

extension Score {
    convenience init?(ckRecord: CKRecord) {
        
        guard let bodyPlayers = ckRecord[ScoreStrings.playersHighscore] as? Int else { return nil }
        guard let bodyTeams = ckRecord[ScoreStrings.teamsHighscore] as? Int else { return nil }
        guard let bodyStadiums = ckRecord[ScoreStrings.stadiumsHighscore] as? Int else { return nil }
        
        self.init(playersScore: bodyPlayers, teamsScore: bodyTeams, stadiumScore: bodyStadiums, recordID: ckRecord.recordID)
        
    }
}//end of extension

extension CKRecord {
    convenience init(score: Score) {
        self.init(recordType: ScoreStrings.recordTypeKey, recordID: score.recordID)
        self.setValuesForKeys([
            ScoreStrings.playersHighscore : score.playersScore,
            ScoreStrings.teamsHighscore : score.teamsScore,
            ScoreStrings.stadiumsHighscore : score.stadiumScore,
            ])
    }
}//end of extension
