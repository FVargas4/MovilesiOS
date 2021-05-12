//
//  CountryModel.swift
//  LiveListProject
//
//  Created by Fer Vargas on 06/05/21.
//

import Foundation

struct CountryModel: Identifiable, Hashable {
    var id: UUID
    var name: String
    var population: String //1000000 -> 1M
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

