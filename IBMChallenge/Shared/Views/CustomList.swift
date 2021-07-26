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
    @State private var showingAlert = false
    @State var searchText: String = ""
    @State private var itemMock = ProductModel(name: "", description: "")
    var body: some View {
        List{
            SearchBar(text: $searchText)
                .padding(.top)
            
            ForEach(data.filter({
                searchText.isEmpty ? true :
                    $0.name.localizedStandardContains(searchText)
            }), id: \.self) { item in ProductView(item: item){
                Button(action: {
                    self.itemMock.name = item.name
                    self.showingAlert = true
                }){}
            }.alert(isPresented: self.$showingAlert) {
                Alert(title: Text("Hey"), message: Text("O item \(itemMock.name.lowercased()) pode ser encontrado no supermercado Superstore"), dismissButton: .default(Text("Ok")))
            }
            }
        }
    }
}

//struct CustomList_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomList()
//    }
//}
