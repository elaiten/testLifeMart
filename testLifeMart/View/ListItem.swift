//
//  ListItem.swift
//  testLifeMart
//
//  Created by Руслан on 14.04.2024.
//

import SwiftUI

struct ListItem: View {
    let fact: String
    let length: Int
    var body: some View {
        ZStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 8) {
                Text(fact)
                    .foregroundColor(.black)
                Text("\(length)")
                    .foregroundColor(.black)
            }.padding(16)
                .padding([.leading, .trailing], 8)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.blue .opacity(0.16)))
    }
}
