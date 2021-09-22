//
//  Question.swift
//  Nerd Football Quiz
//
//  Created by Theo Davis on 2/23/21.
//

import UIKit

struct Question {
    var text: String
    var image: UIImage?
    var category: Category
    var answers: [Answer]
}//End of struct

struct Answer {
    var text: String
    let correct: Bool
}//End of struct

enum Category {
    case players
    case stadiums
    case teams
}

extension Answer: Equatable {
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        return lhs.text == rhs.text && lhs.correct == rhs.correct
    }
}
