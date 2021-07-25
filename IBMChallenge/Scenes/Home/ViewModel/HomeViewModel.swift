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
                     image: "circle.fill",
                     id: "0"),
            CategoryModel(name: "Cosméticos",
                     image: "circle",
                     id: "1"),
            CategoryModel(name: "Cosméticos",
                     image: "square.fill",
                     id: "2"),
            CategoryModel(name: "Cosméticos",
                     image: "square",
                     id: "3")
        ]
        return categories
    }
    
//    func getProducts() -> {
//        
//    }
}
