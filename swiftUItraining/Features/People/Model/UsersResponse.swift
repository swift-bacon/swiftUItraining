//
//  UsersResponse.swift
//  swiftUItraining
//
//  Created by Unit27 on 07/08/2025.
//
import Foundation

// MARK: - UsersResponse

struct UsersResponse: Codable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support
}
