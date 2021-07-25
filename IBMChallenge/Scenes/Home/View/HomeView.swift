//
//  ContentView.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI
import CoreData
import MapKit


struct HomeView: View {
    var viewModel = HomeViewModel()
    @State var region = MKCoordinateRegion(center: .init(latitude: 37.334722, longitude: -122.008889), latitudinalMeters: 300, longitudinalMeters: 300)
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 8){
                Text("Selecione uma Categoria")
                    .padding(.leading)
                    .font(.system(size: 25))
                HScroll(data: viewModel.getCategories())
                CustomCell(title: Text("Encontrar Supermercados")) {
                    Map(coordinateRegion: $region,
                        interactionModes: .all,
                        showsUserLocation: true,
                        userTrackingMode: nil,
                        annotationItems: [PinItem(coordinate: .init(latitude: 37.334722, longitude: -122.008889))]) { item in
                        MapAnnotation(coordinate: item.coordinate, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                            Rectangle()
                                .strokeBorder(Color.red, lineWidth: 5)
                                .frame(width: 44, height: 44)
                        }
                    }
                }.padding(.bottom)
            }.navigationTitle("Eco-Friendly")
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

struct PinItem: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
