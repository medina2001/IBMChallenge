//
//  HScroll.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

struct HScroll: View {
    let data: [CategoryModel]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 11) {
                Spacer(minLength: 5)
                ForEach(data, id: \.self) { item in CircularCard(item: item)
                }
                Spacer(minLength: 5)
            }
        }
    }
}

//struct HScroll_Previews: PreviewProvider {
//    static var previews: some View {
//        HScroll()
//    }
//}
