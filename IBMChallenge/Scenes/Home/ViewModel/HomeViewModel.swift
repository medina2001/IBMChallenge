//
//  HomeViewModel.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import Foundation

class HomeViewModel: ObservableObject{
    @Published var categories: [CategoryModel] = []
}

// TODO: Retirar (Mock)
extension HomeViewModel {
    func getCategories() -> [CategoryModel] {
        categories = [
            CategoryModel(name: "Cosméticos",
                     image: "cosmetic"),
            CategoryModel(name: "Alimentos",
                     image: "food"),
            CategoryModel(name: "Higiene",
                     image: "hygiene"),
            CategoryModel(name: "Limpeza",
                     image: "cleaning")
        ]
        return categories
    }
    
}
