//
//  CloudKitError.swift
//  Nerd Football Quiz
//
//  Created by Theo Davis on 3/5/21.
//

import Foundation

enum CloudKitError: LocalizedError {
    case ckError(Error)
    case unableToUnwrap
    case unexpectedRecordsFound
    case noUserLoggedIn
    
    var errorDescription: String {
        switch self {
        case .ckError(let error):
            return error.localizedDescription
            
        case .unableToUnwrap:
            return "Unable to get this score"
            
        case .unexpectedRecordsFound:
            return "Found unexpected Record"
        
        case .noUserLoggedIn:
            return "A score was not found for the current session"
        }
    }
}//End of enum
