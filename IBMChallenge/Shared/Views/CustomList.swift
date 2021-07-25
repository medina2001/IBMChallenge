//
//  CustomList.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct CustomList: View {
    var data: [ProductModel]
    var view = SearchView()
    @State var searchText: String = ""
    var body: some View {
        List(){
            SearchBar(text: $searchText)
                .padding(.top)
            
            ForEach(data.filter({
                searchText.isEmpty ? true :
                    $0.name.localizedStandardContains(searchText)
            })) { product in ProductView(item: product){
            }
            }
            Spacer(minLength: 5)
        }
    }
}

//struct CustomList_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomList()
//    }
//}
