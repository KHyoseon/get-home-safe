//
//  AuthenticationModels.swift
//  GetHomeSafe
//
//  Created by Geonhyeong LIm on 2021/04/17.
//

import Foundation

struct SignupModel: Model {
    
}

enum SignupState: State {
    case notRequested
    case isInProgress
    case success
    case failed(SignupError)
}

enum SignupError: Error {
    case invalidPassword(PasswordError)
    case externalError(String)
    
    enum PasswordError: Error {
        case empty
        case noMatch
        case notStrongEnough
    }
}

struct LoginModel: Model {
    
}

enum LoginState: State {
    case notRequested
    case isInProgress
    case success
    case failed(LoginError)
}

enum LoginError: Error {
    case invalidUsername
    case invalidPassword
    case externalError(String)
}

#if DEBUG
extension SignupModel {
    static let stub = Self()
}

extension LoginModel {
    static let stub = Self()
}
#endif
