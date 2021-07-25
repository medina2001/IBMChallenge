//
//  CustomCell.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct CustomCell<Content> : View where Content : View {
    var title: Text
    @ViewBuilder var content: () -> Content
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            title
            content()
        }.frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
        .padding()
        .background(Color.yellow)
        .cornerRadius(8).padding(.horizontal)
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(title: Text("Titulo")) {
            Text("Textooo")
        }
    }
}
