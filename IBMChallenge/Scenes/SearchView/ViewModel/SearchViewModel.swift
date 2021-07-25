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

//extension SearchViewModel {
//    func getProducts(){
//        products = [
//        ProductModel(name: "", description: <#T##String#>, is_vegan: <#T##Bool#>, is_ecologic: <#T##Bool#>, have_lactose: <#T##Bool#>, have_gluten: <#T##Bool#>, id: <#T##UUID#>)
//        ]
//    }
//}
