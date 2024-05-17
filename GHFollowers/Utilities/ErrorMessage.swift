//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your refuest. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server the invalid. Please try again."
}
