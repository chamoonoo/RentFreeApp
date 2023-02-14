//
//  MapView.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 14/2/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region =
    MKCoordinateRegion(center:CLLocationCoordinate2D(latitude:-33.80038111388358, longitude: 151.0711902132999), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.1))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
