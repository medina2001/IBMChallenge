//
//  HomeModel.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import Foundation

struct CategoryModel: Hashable, Identifiable {
    let name: String
    let image: String
    let id = UUID()
}

