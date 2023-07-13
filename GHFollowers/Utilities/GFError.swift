//
//  GFError.swift
//  GHFollowers
//
//  Created by Deniz Dilbilir on 22/06/2023.
//

import Foundation
enum GFError: String, Error {
case invalidUsername = "This username created an invalid request. Please try again."
case UnableToComplete = "Unable to complete your request. Please check your internet connection"
case InvalidResponse = "Invalid response from the server. Please try again."
case InvalidData = "The data received from the server was invalid. Please try again."
case unableToFavorite = " There was a problem adding this user to favorites 🫨. Please try again."
case alreadyInFavorites = "This user is already in your favorites list."

}
