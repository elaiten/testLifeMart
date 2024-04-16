//
//  NetworkHelper.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import Foundation

final class NetworkHelper {
    static let shared = NetworkHelper.init()
    private let session: URLSession
    
    private init() {
        session = URLSession(configuration: .default)
    }
    
    func performDataTask(request: URLRequest) async throws -> Data {
        let (data, _) = try await session.data(for: request)
        return data
    }
    
}
