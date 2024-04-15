//
//  ItemModel.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//


import Foundation

struct CatFact: Codable, Hashable {
    let fact: String?
    let length: Int?
    
    var count: Int { return length ?? 0}
    
}
