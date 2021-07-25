//
//  ProductView.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct ProductView<Content> : View where Content : View {
    var item: ProductModel
    @ViewBuilder var content: () -> Content
    var body: some View {
        HStack{
            Image("product")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .background(Color.blue)
                .clipShape(Circle())
                .padding(.leading, -5)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text(item.name)
                Divider().background(Color.gray)
                Text(item.description)
                content()
            }.frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            
        }.padding()
        .background(Color.yellow)
        .cornerRadius(8).padding(.horizontal)
    }
}

//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView(title: Text("Título"), image: "product") {
//            Text("Arroz top")
//        }
//    }
//}
