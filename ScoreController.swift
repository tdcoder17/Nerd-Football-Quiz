//
//  ScoreController.swift
//  Nerd Football Quiz
//
//  Created by Theo Davis on 3/4/21.
//

import UIKit
import CloudKit

class ScoreController {
    
    //MARK: - Properties
    static let shared = ScoreController()
    let privateDB = CKContainer.default().privateCloudDatabase
    var myHighscore = Score(playersScore: 0, teamsScore: 0, stadiumScore: 0)
    
    //MARK: - CRUD Functions
    func create(completion: @escaping (Result<String, CloudKitError>) -> Void) {
        
        let record = CKRecord(score: myHighscore)
        
        privateDB.save(record) { (record, error) in
            if let error = error {
                print("======== ERROR ========")
                print("Function: \(#function)")
                print("Error: \(error)")
                print("Description: \(error.localizedDescription)")
                print("======== ERROR ========")
                return completion(.failure(.ckError(error)))
            }
            
            guard let record = record else { return completion(.failure(.unableToUnwrap))}
            
            let _ = Score(ckRecord: record)
            completion(.success("Successfully saved scores"))
        }
    }
    
    func fetchHighscore(completion: @escaping (Result<String, CloudKitError>) -> Void) {
        let fetchAllPredicate = NSPredicate(value: true)
        let query = CKQuery(recordType: ScoreStrings.recordTypeKey, predicate: fetchAllPredicate)
        
        privateDB.perform(query, inZoneWith: nil) {  (records, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print("======== ERROR ========")
                    print("Function: \(#function)")
                    print("Error: \(error)")
                    print("Description: \(error.localizedDescription)")
                    print("======== ERROR ========")
                    return completion(.failure(.ckError(error)))
                }
                
                guard let records = records else { return completion(.failure(.unableToUnwrap))}
                
                let fetchedScores = records.compactMap { Score(ckRecord: $0) }
                guard let score = fetchedScores.first else { return completion(.failure(.unexpectedRecordsFound))}
                self.myHighscore = score
                completion(.success("Successfully fetched all scores."))
            }
        }
    }
    
    func updateHighscore(playerScore: Int?, teamScore: Int?, stadiumScore: Int?, completion: @escaping (Result<String, CloudKitError>) -> Void) {
        
        if let playersScore = playerScore {
            self.myHighscore.playersScore = playersScore
        }
        if let teamsScore = teamScore {
            self.myHighscore.teamsScore = teamsScore
        }
        if let stadiumsScore = stadiumScore {
            self.myHighscore.stadiumScore = stadiumsScore
        }
        
        let record = CKRecord(score: myHighscore)
        
        let operation = CKModifyRecordsOperation(recordsToSave: [record], recordIDsToDelete: nil)
        
        operation.savePolicy = .changedKeys
        operation.qualityOfService = .userInteractive
        operation.modifyRecordsCompletionBlock = { records, _, error in
            if let error = error {
                print("======== ERROR ========")
                print("Function: \(#function)")
                print("Error: \(error)")
                print("Description: \(error.localizedDescription)")
                print("======== ERROR ========")
                return completion(.failure(.ckError(error)))
            }
            
            guard let record = records?.first,
                  let _ = Score(ckRecord: record) else { return completion(.failure(.unableToUnwrap))}
            completion(.success("Successfully updated scores"))
        }
        privateDB.add(operation)
    }
}//End of class
