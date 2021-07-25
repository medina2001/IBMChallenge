//
//  ContentView.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI
import CoreData

struct HomeView: View {
    var viewModel = HomeViewModel()
    @State var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Eco-Friendly")
                .padding(.leading)
                .font(.system(size: 40,weight: .black))
            SearchBar(text: $searchText)
            HScroll(data: viewModel.getCategories())
            List(){
                Section(header: Text("Selecione uma categoria")) {
                    Text("Texto")
                }

                Section(header: Text("Achar Supermercado")) {
                    Text("Hello World!!")
                }
            }.listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}
