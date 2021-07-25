//
//  ProductModel.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import Foundation

struct ProductModel: Hashable, Identifiable {
    let name: String
    let description: String
    let is_vegan: Bool
    let is_ecologic: Bool
    let have_lactose: Bool
    let have_gluten: Bool
    let id: UUID
}
