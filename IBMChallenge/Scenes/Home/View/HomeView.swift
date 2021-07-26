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
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    var viewModel = HomeViewModel()
    let mapLocations = [
        MapPinModel(name: "Carrefour", latitude: 51.507222, longitude: -0.1275),
        MapPinModel(name: "Nova Era", latitude: 48.8567, longitude: 2.3508),
        MapPinModel(name: "Supermercado Bom e Bararo", latitude: 41.9, longitude: 12.5),
        MapPinModel(name: "Supermercado Preço Bom", latitude: 38.895111, longitude: -77.036667)
    ]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 8){
                Text("Selecione uma categoria de produtos")
                    .padding(.leading)
                    .font(.system(size: 20))
                NavigationLink(destination: SearchView()) {
                    HScroll(data: viewModel.getCategories())
                }
                CustomCell(title: Text("Encontrar Supermercados")) {
                    Map(coordinateRegion: $region, annotationItems: mapLocations) { item in
                        
                        MapAnnotation(coordinate: item.coordinate) {
                            NavigationLink(destination: SearchView()){
                                VStack{
                                    Image("mapPin")
                                        .resizable()
                                        .frame(width: 44, height: 44)
                                        .clipShape(Circle())
                                    Text(item.name)
                                }
                            }
                        }
                    }
                }.padding(.bottom)
            }.navigationTitle("Eco Location")
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
