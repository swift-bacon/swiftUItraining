//
//  Models.swift
//  swiftUItraining
//
//  Created by Unit27 on 07/08/2025.
//
import Foundation

// MARK: - User

struct User: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support

struct Support: Codable {
    let url: String
    let text: String
}

