//
//  MainView.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Início", systemImage: "house")
                }
            SearchView()
                .tabItem {
                    Label("Busca", systemImage: "magnifyingglass")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
