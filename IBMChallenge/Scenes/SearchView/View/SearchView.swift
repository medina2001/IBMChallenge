//
//  SearchView.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            SearchBar(text: $searchText)
                .padding(.top)
            Text("Produtos")
                .padding(.leading)
                .padding(.top, 5)
                .font(.title2)
            ScrollView(){
                LazyVStack{
                    ProductView(title: Text("Arroz"), image: "product") {
                        Text("Descrição mt top do produto")
                    }
                    ProductView(title: Text("Arroz"), image: "product") {
                        Text("Descrição mt top do produto")
                    }
                    ProductView(title: Text("Arroz"), image: "product") {
                        Text("Descrição mt top do produto")
                    }
                    ProductView(title: Text("Arroz"), image: "product") {
                        Text("Descrição mt top do produto")
                    }
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
