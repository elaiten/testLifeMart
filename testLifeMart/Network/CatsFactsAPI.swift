//
//  CatsFactsAPI.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import Foundation

final class CatFactAPI {
    
    func fetchCatFact(completion: @escaping (CatFact?)  -> ())  {
        guard let url = URL(string: "https://catfact.ninja/fact") else { return }
        let urlRequest = URLRequest(url: url)
        Task {
            do {
                let data = try await NetworkHelper.shared.performDataTask(request: urlRequest)
                let fact = try JSONDecoder().decode(CatFact.self, from: data)
                DispatchQueue.main.async {
                    completion(fact)
                }
            } catch {
                print(error)
                DispatchQueue.main.async {
                    completion(nil)
                }
                
            }
        }
    }
}

