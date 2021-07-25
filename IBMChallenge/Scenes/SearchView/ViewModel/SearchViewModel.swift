//
//  SearchViewModel.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var products: [ProductModel] = []
}

extension SearchViewModel {
    func getProducts() -> [ProductModel]{
        products = [
            ProductModel(name: "Copos de café reutilizáveis", description: "Copos feitos 100% de silicone que você pode reutilizar."),
            ProductModel(name: "Escovas de dente recicladas", description: "Escovas de dente feitas 100% de plástico reciclado."),
            ProductModel(name: "Arroz integral", description: "O arroz integral tem muito mais valor nutricional que o arroz branco, pois é rico em fibras, vitamina B1, B2 e B3, e muitos outros."),
            ProductModel(name: "Canudo reutilizável", description: "Usar um canudo reutilizável é a melhor forma de evitar o impacto ambiental dos canudos de plástico."),
            ProductModel(name: "Shampoo Instant Repair", description: "É um produto com 50% de ingredientes naturais e livres de corante sintéticos.")
        ]
        return products
    }
}
