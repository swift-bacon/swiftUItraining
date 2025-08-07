//
//  StaticJSONMapper.swift
//  swiftUItraining
//
//  Created by Unit27 on 07/08/2025.
//
import Foundation

struct StaticJSONMapper {
    
    static func decode<T: Decodable>(file: String, type: T.Type) throws -> T {
        guard let path = Bundle.main.path(forResource: file, ofType: "json"),
              let data = FileManager.default.contents(atPath: path) else { throw MappingError.failedToGetData }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
    }
    
}

extension StaticJSONMapper {
    
    enum MappingError: Error {
        case failedToGetData
    }
    
}
