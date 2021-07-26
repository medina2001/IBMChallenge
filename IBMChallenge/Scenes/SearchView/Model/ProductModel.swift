//
//  ProductModel.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import Foundation

struct ProductModel: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var description: String
}
