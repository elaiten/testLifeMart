//
//  ListView.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import Foundation
import SwiftUI

struct ListView : View {
    
    @ObservedObject var model: ListViewModel
    
    init(viewModel: ListViewModel) {
        self.model = viewModel
    }
    
    var body: some View {
        Button("Refresh") {
            model.fetchFacts()
        }
        Button("Sort") {
            model.sortFacts()
        }
        Spacer()
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 16) {
                ForEach(model.catFacts, id: \.self) { fact in
                    ListItem(fact: fact.fact ?? "Ошибка", length: fact.count)
                }
            }.padding()
        }
    }
    
}
