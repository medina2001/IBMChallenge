//
//  ProductModel.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import Foundation

struct ProductModel: Hashable {
    let name: String
    let description: String
    let image: String
    let barCode: String
    let id: String
}

enum EcoFlag: String {
    case quantity = "Quantity"
    case duration = "Duration"
}
