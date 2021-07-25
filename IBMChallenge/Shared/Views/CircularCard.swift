//
//  CircularCard.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct CircularCard: View {
    let item: CategoryModel
    var body: some View {
        VStack(spacing: 8){
            Image(item.image)
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                .background(Color.blue)
                .clipShape(Circle())
                .font(.largeTitle)
            Text(item.name)
        }.padding()
    }
}

//struct CircularCard_Previews: PreviewProvider {
//    static var previews: some View {
//        CircularCard(model: Category)
//    }
//}
