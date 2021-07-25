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
        NavigationView{
            VStack(alignment: .leading){
                SearchBar(text: $searchText)
                List(){
                    ProductView(title: Text("Arroz"), image: "square") {
                        Text("Descrição mt top do produto")
                    }
                    ProductView(title: Text("Arroz"), image: "circle.fill") {
                        Text("Descrição mt top do produto")
                    }
                    ProductView(title: Text("Arroz"), image: "square.fill") {
                        Text("Descrição mt top do produto")
                    }
                    ProductView(title: Text("Arroz"), image: "circle") {
                        Text("Descrição mt top do produto")
                    }
                }
            }.navigationTitle("Title")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
