//
//  ProductView.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct ProductView<Content> : View where Content : View {
    var title: Text
    var image: String
    @ViewBuilder var content: () -> Content
    var body: some View {
        HStack{
            Image(systemName: image)
                .frame(width: 50, height: 50, alignment: .center)
                .background(Color.blue)
                .clipShape(Circle())
                .font(.largeTitle)
                .padding(.leading, -5)
            VStack(alignment: .leading, spacing: 8) {
                title
                Divider().background(Color.gray)
                content()
            }.frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            
        }.padding()
        .background(Color.yellow)
        .cornerRadius(8).padding(.horizontal)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(title: Text("Arroz"), image: "circle") {
            Text("Arroz top")
        }
    }
}
