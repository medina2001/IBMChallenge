//
//  SearchView.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct SearchView: View {
    var viewModel = SearchViewModel()
    var body: some View {
        VStack(alignment: .leading){
            Text("Produtos")
                .padding(.leading)
                .padding(.top, 5)
                .font(.title2)
            CustomList(data: viewModel.getProducts())
        }
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView()
//    }
//}
