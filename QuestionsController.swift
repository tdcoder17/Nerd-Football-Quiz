//
//  QuestionsController.swift
//  Nerd Football Quiz
//
//  Created by Theo Davis on 2/23/21.
//

import UIKit

class QuestionController {
    //MARK: - Player Q&A
    static var playerQuestions: [Question] {
        let question0 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Tom Brady"), category: .players, answers: playerAnswers[0] )
        let question1 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Patrick Mahomes"), category: .players, answers: playerAnswers[1] )
        let question2 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Ben Roethlisberger"), category: .players, answers: playerAnswers[2] )
        let question3 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Russell Wilson"), category: .players, answers: playerAnswers[3] )
        let question4 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Deshaun Watson"), category: .players, answers: playerAnswers[4] )
        let question5 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Aaron Rodgers"), category: .players, answers: playerAnswers[5] )
        let question6 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Josh Allen"), category: .players, answers: playerAnswers[6] )
        let question7 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Justin Herbert"), category: .players, answers: playerAnswers[7] )
        let question8 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Matt Ryan"), category: .players, answers: playerAnswers[8] )
        let question9 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Kyler Murray"), category: .players, answers: playerAnswers[9] )
        let question10 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Rashaan Evans"), category: .players, answers: playerAnswers[10])
        let question11 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Mike Evans"), category: .players, answers: playerAnswers[11])
        let question12 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Drew Brees"), category: .players, answers: playerAnswers[12])
        let question13 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Chase Young"), category: .players, answers: playerAnswers[13])
        let question14 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Mark Ingram"), category: .players, answers: playerAnswers[14])
        let question15 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Aaron Donald"), category: .players, answers: playerAnswers[15])
        let question16 = Question(text: "Who is this player..", image: #imageLiteral(resourceName: "Rob Gronkowski"), category: .players, answers: playerAnswers[16])
        
        return [question0, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15, question16]
    }
    
    static var playerAnswers: [[Answer]] = [
        [Answer(text: "Tom Brady", correct: true), Answer(text: "Ben Roethlisberger", correct: false), Answer(text: "Patrick Mahomes", correct: false)],
        [Answer(text: "Patrick Mahomes", correct: true), Answer(text: "Deshaun Watson", correct: false), Answer(text: "Josh Allen", correct: false)],
        [Answer(text: "Ben Roethilsberger", correct: true), Answer(text: "Carson Wentz", correct: false), Answer(text: "TJ Yeldon", correct: false)],
        [Answer(text: "Russell Wilson", correct: true), Answer(text: "Drew Lock", correct: false), Answer(text: "David Carr", correct: false)],
        [Answer(text: "Deshaun Watson", correct: true), Answer(text: "Aaron Rodgers", correct: false), Answer(text: "Matthew Stafford", correct: false)],
        [Answer(text: "Aaron Rodgers", correct: true), Answer(text: "Teddy Bridgewater", correct: false), Answer(text: "Cam Newton", correct: false)],
        [Answer(text: "Josh Allen", correct: true), Answer(text: "Jared Goff", correct: false), Answer(text: "Kirk Cousins", correct: false)],
        [Answer(text: "Justin Herbert", correct: true), Answer(text: "Matt Ryan", correct: false), Answer(text: "Lamar Jackson", correct: false)],
        [Answer(text: "Matt Ryan", correct: true), Answer(text: "Baker Mayfield", correct: false), Answer(text: "Kyler Murray", correct: false)],
        [Answer(text: "Kyler Murray", correct: true), Answer(text: "Daniel Jones", correct: false), Answer(text: "Josh Allen", correct: false)],
        [Answer(text: "Rashaan Evans", correct: true), Answer(text: "Malcolm Brown", correct: false), Answer(text: "Derrick Henry", correct: false)],
        [Answer(text: "Mike Evans", correct: true), Answer(text: "Kyler Murray", correct: false), Answer(text: "Teddy Bridgewater", correct: false)],
        [Answer(text: "Drew Brees", correct: true), Answer(text: "Tom Brady", correct: false), Answer(text: "Kirk Cousins", correct: false)],
        [Answer(text: "Chase Young", correct: true), Answer(text: "Aaron Donald", correct: false), Answer(text: "Justin Herbert", correct: false)],
        [Answer(text: "Mark Ingram", correct: true), Answer(text: "Derrick Henry", correct: false), Answer(text: "Deshaun Watson", correct: false)],
        [Answer(text: "Aaron Donald", correct: true), Answer(text: "Warren Sapp", correct: false), Answer(text: "Cam Newton", correct: false)],
        [Answer(text: "Rob Gronkowski", correct: true), Answer(text: "Aaron Jones", correct: false), Answer(text: "Tony Gonzales", correct: false)]
    ]
    
    //MARK: - Team Q&A
    static var teamsQuestions: [Question] {
        let question0 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Dallas Cowboys"), category: .teams, answers: teamsAnswers[0])
        let question1 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Arizona Cardinals"), category: .teams, answers: teamsAnswers[1])
        let question2 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Chicago Bears"), category: .teams, answers: teamsAnswers[2])
        let question3 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Los Angeles Rams"), category: .teams, answers: teamsAnswers[3])
        let question4 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Seattle Seahawks"), category: .teams, answers: teamsAnswers[4])
        let question5 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Tennessee Titans"), category: .teams, answers: teamsAnswers[5])
        let question6 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Miami Dolphins.webp"), category: .teams, answers: teamsAnswers[6])
        let question7 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Green Bay Packers"), category: .teams, answers: teamsAnswers[7])
        let question8 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Washington Football Team"), category: .teams, answers: teamsAnswers[8])
        let question9 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Pittsburgh Steelers"), category: .teams, answers: teamsAnswers[9])
        let question10 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Cincinnati Bengals"), category: .teams, answers: teamsAnswers[10])
        let question11 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "New England Patriots"), category: .teams, answers: teamsAnswers[11])
        let question12 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Buffalo Bills"), category: .teams, answers: teamsAnswers[12])
        let question13 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Indianapolis Colts"), category: .teams, answers: teamsAnswers[13])
        let question14 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Los Angeles Chargers"), category: .teams, answers: teamsAnswers[14])
        let question15 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Philadelphia Eagles"), category: .teams, answers: teamsAnswers[15])
        let question16 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Detroit Lions"), category: .teams, answers: teamsAnswers[16])
        let question17 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "New York Giants"), category: .teams, answers: teamsAnswers[17])
        let question18 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Las Vegas Raiders"), category: .teams, answers: teamsAnswers[18])
        let question19 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Kansas City Chiefs"), category: .teams, answers: teamsAnswers[19])
        let question20 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Baltimore Ravens"), category: .teams, answers: teamsAnswers[20])
        let question21 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Jacksonville Jaguars"), category: .teams, answers: teamsAnswers[21])
        let question22 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Tampa Bay Bucs"), category: .teams, answers: teamsAnswers[22])
        let question23 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Carolina Panthers"), category: .teams, answers: teamsAnswers[23])
        let question24 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Minnesota Vikings"), category: .teams, answers: teamsAnswers[24])
        let question25 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Houston Texans"), category: .teams, answers: teamsAnswers[25])
        let question26 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Atlanta Falcons"), category: .teams, answers: teamsAnswers[26])
        let question27 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Denver Broncos"), category: .teams, answers: teamsAnswers[27])
        let question28 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "Cleveland Browns"), category: .teams, answers: teamsAnswers[28])
        let question29 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "New Orleans Saints"), category: .teams, answers: teamsAnswers[29])
        let question30 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "San Francisco 49ers"), category: .teams, answers: teamsAnswers[30])
        let question31 = Question(text: "What team is this...", image: #imageLiteral(resourceName: "New York Jets"), category: .teams, answers: teamsAnswers[31])
        
        return [question0, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15, question16, question17, question18, question19, question20, question21, question22, question23, question24, question25, question26, question27, question28, question29, question30, question31]
    }
    
    static var teamsAnswers: [[Answer]] = [
        [Answer(text: "Dallas Cowboys", correct: true), Answer(text: "New York Giants", correct: false), Answer(text: "Carolina Panthers", correct: false)],
        [Answer(text: "Arizona Cardinals", correct: true), Answer(text: "Las Vegas Raiders", correct: false), Answer(text: "Tampa Bay Buccaneers", correct: false)],
        [Answer(text: "Chicago Bears", correct: true), Answer(text: "Green Bay Packers", correct: false), Answer(text: "San Fransico 49ers", correct: false)],
        [Answer(text: "Los Angeles Rams", correct: true), Answer(text: "Los Angeles Chargers", correct: false), Answer(text: "Kansas City Chiefs", correct: false)],
        [Answer(text: "Seattle Seahawks", correct: true), Answer(text: "Baltimore Ravens", correct: false), Answer(text: "New England Patriots", correct: false)],
        [Answer(text: "Tennessee Titans", correct: true), Answer(text: "Houston Texans", correct: false), Answer(text: "Jacksonville Jaguars", correct: false)],
        [Answer(text: "Miami Dolphins", correct: true), Answer(text: "Buffalo Bills", correct: false), Answer(text: "Denver Broncos", correct: false)],
        [Answer(text: "Green Bay Packers", correct: true), Answer(text: "Carolina Panthers", correct: false), Answer(text: "Pittsburgh Steelers", correct: false)],
        [Answer(text: "Washington Football Team", correct: true), Answer(text: "New York Jets", correct: false), Answer(text: "New York Giants", correct: false)],
        [Answer(text: "Pittsburgh Steelers", correct: true), Answer(text: "Chicago Bears", correct: false), Answer(text: "Dallas Cowboys", correct: false)],
        [Answer(text: "Cincinnati Bengals", correct: true), Answer(text: "New England Patriots", correct: false), Answer(text: "Cleveland Browns", correct: false)],
        [Answer(text: "New England Patriots", correct: true), Answer(text: "Buffalo Bills", correct: false), Answer(text: "Los Angeles Chargers", correct: false)],
        [Answer(text: "Buffalo Bills", correct: true), Answer(text: "Miami Dolphins", correct: false), Answer(text: "Baltimore Ravens", correct: false)],
        [Answer(text: "Indianapolis Colts", correct: true), Answer(text: "Carolina Panthers", correct: false), Answer(text: "New York Jets", correct: false)],
        [Answer(text: "Los Angeles Chargers", correct: true), Answer(text: "Los Angeles Rams", correct: false), Answer(text: "New Orleans Saints", correct: false)],
        [Answer(text: "Philadelphia Eagles", correct: true), Answer(text: "New York Jets", correct: false), Answer(text: "Seattle Seahawks", correct: false)],
        [Answer(text: "Detroit Lions", correct: true), Answer(text: "Minnesota Vikings", correct: false), Answer(text: "Dallas Cowboys", correct: false)],
        [Answer(text: "New York Giants", correct: true), Answer(text: "New York Jets", correct: false), Answer(text: "Washington Football Team", correct: false)],
        [Answer(text: "Las Vegas Raiders", correct: true), Answer(text: "Houston Texans", correct: false), Answer(text: "Tampa Bay Buccaneers", correct: false)],
        [Answer(text: "Kansas City Chiefs", correct: true), Answer(text: "Washington Football Team", correct: false), Answer(text: "Pittsburgh Steelers", correct: false)],
        [Answer(text: "Baltimore Ravens", correct: true), Answer(text: "Las Vegas Raiders", correct: false), Answer(text: "Tennessee Titans", correct: false)],
        [Answer(text: "Jacksonville Jaguars", correct: true), Answer(text: "Carolina Panthers", correct: false), Answer(text: "Green Bay Packers", correct: false)],
        [Answer(text: "Tampa Bay Buccaneers", correct: true), Answer(text: "Philadelphia Eagles", correct: false), Answer(text: "San Fransico 49ers", correct: false)],
        [Answer(text: "Carolina Panthers", correct: true), Answer(text: "New England Patriots", correct: false), Answer(text: "Dallas Cowboys", correct: false)],
        [Answer(text: "Minnesota Vikings", correct: true), Answer(text: "Arizona Cardinals", correct: false), Answer(text: "Cincinnati Bengals", correct: false)],
        [Answer(text: "Houston Texans", correct: true), Answer(text: "Miami Dolphins", correct: false), Answer(text: "Kansas City Chiefs", correct: false)],
        [Answer(text: "Atlanta Falcons", correct: true), Answer(text: "New Orleans Saints", correct: false), Answer(text: "Denver Broncos", correct: false)],
        [Answer(text: "Denver Broncos", correct: true), Answer(text: "Baltimore Ravens", correct: false), Answer(text: "Jacksonville Jaguars", correct: false)],
        [Answer(text: "Cleveland Browns", correct: true), Answer(text: "Cincinnati Bengals", correct: false), Answer(text: "New York Giants", correct: false)],
        [Answer(text: "New Orleans Saints", correct: true), Answer(text: "Green Bay Packers", correct: false), Answer(text: "Houston Texans", correct: false)],
        [Answer(text: "San Fransico 49ers", correct: true), Answer(text: "Arizona Cardinals", correct: false), Answer(text: "Cleveland Browns", correct: false)],
        [Answer(text: "New York Jets", correct: true), Answer(text: "Tennessee Titans", correct: false), Answer(text: "Chicago Bears", correct: false)]
    ]
    
    //MARK: - Stadiums Q&A
    static var stadiumsQuestions: [Question] {
        let question0 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "AT&T Stadium"), category: .stadiums, answers: stadiumsAnswers[0])
        let question1 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Hard Rock Stadium"), category: .stadiums, answers: stadiumsAnswers[1])
        let question2 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "NRG Stadium"), category: .stadiums, answers: stadiumsAnswers[2])
        let question3 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Heinz Field"), category: .stadiums, answers: stadiumsAnswers[3])
        let question4 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Ford Field"), category: .stadiums, answers: stadiumsAnswers[4])
        let question5 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Lambeau Field"), category: .stadiums, answers: stadiumsAnswers[5])
        let question6 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Raymond James Stadium"), category: .stadiums, answers: stadiumsAnswers[6])
        let question7 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Lumen Field"), category: .stadiums, answers: stadiumsAnswers[7])
        let question8 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Lucas Oil Stadium"), category: .stadiums, answers: stadiumsAnswers[8])
        let question9 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Nissan Stadium"), category: .stadiums, answers: stadiumsAnswers[9])
        let question10 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Empower Field at Mile High Stadium"), category: .stadiums, answers: stadiumsAnswers[10])
        let question11 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Highmark Stadium"), category: .stadiums, answers: stadiumsAnswers[11])
        let question12 = Question(text: "What stadium is this...", image: #imageLiteral(resourceName: "Allegiant Stadium"), category: .stadiums, answers: stadiumsAnswers[12])
        
        return [question0, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12]
    }
    
    static var stadiumsAnswers: [[Answer]] = [
        [Answer(text: "AT&T Stadium", correct: true), Answer(text: "Ford Field", correct: false), Answer(text: "Lambeau Field", correct: false)],
        [Answer(text: "Hard Rock Stadium", correct: true), Answer(text: "Lumen Field", correct: false), Answer(text: "Nissan Stadium", correct: false)],
        [Answer(text: "NRG Stadium", correct: true), Answer(text: "Lucas Oil Stadium", correct: false), Answer(text: "Heinz Field", correct: false)],
        [Answer(text: "Heinz Field", correct: true), Answer(text: "Ford Field", correct: false), Answer(text: "Raymond James Stadium", correct: false)],
        [Answer(text: "Ford Field", correct: true), Answer(text: "NRG Stadium", correct: false), Answer(text: "Hard Rock Stadium", correct: false)],
        [Answer(text: "Lambeau Field", correct: true), Answer(text: "Nissan Stadium", correct: false), Answer(text: "Lucas Oil Stadium", correct: false)],
        [Answer(text: "Raymond James Stadium", correct: true), Answer(text: "Lumen Field", correct: false), Answer(text: "AT&T Stadium", correct: false)],
        [Answer(text: "Lumen Field", correct: true), Answer(text: "Lucas Oil Stadium", correct: false), Answer(text: "Ford Field", correct: false)],
        [Answer(text: "Lucas Oil Stadium", correct: true), Answer(text: "Heinz Field", correct: false), Answer(text: "Lambeau Field", correct: false)],
        [Answer(text: "Nissan Stadium", correct: true), Answer(text: "Lucas Oil Stadium", correct: false), Answer(text: "Raymond James Stadium", correct: false)],
        [Answer(text: "Mile High Stadium", correct: true), Answer(text: "NRG Stadium", correct: false), Answer(text: "AT&T", correct: false)],
        [Answer(text: "Highmark Stadium", correct: true), Answer(text: "Heinz Field", correct: false), Answer(text: "Nissan Stadium", correct: false)],
        [Answer(text: "Allegiant Stadium", correct: true), Answer(text: "Ford Field", correct: false), Answer(text: "Lambeau Field", correct: true)]
    ]
}//End of class
