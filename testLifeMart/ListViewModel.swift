//
//  ListViewModel.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var catFacts: [CatFact] = []
    init() {
        fetchFacts()
    }
    func sortFacts() {
        var sortFacts = [CatFact]()
        for fact in catFacts {
            if fact.count >= 50 && fact.count <= 100 {
                sortFacts.append(fact)
            }
        }
        catFacts = sortFacts
    }
    
    func fetchFacts() {
        let catsFacts = CatFactAPI()
        catFacts = []
        for _ in 0..<20 {
            catsFacts.fetchCatFact { (result) in
                guard let result = result else { return }
                self.catFacts.append(result)
            }
        }
    }
}
