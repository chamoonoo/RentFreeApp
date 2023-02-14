//
//  ContentView.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 13/2/2023.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var location: String=""
    @State private var region =
    MKCoordinateRegion(center:CLLocationCoordinate2D(latitude:-33.80038111388358, longitude: 151.0711902132999), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.1))
    
    @State private var startdate = Date()
    @State private var enddate = Date()
    
    var body: some View {
        VStack {
            
            Text("I'm staying at...")
                .font(.title)
            Form {
                
                TextField(text: $location, prompt: Text("Sydney, Eastern Suburbs")){
                    Text("Location")
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        
                }
                .padding(.all)
            
                .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.blue, lineWidth: 1)
                                
                        )
            }
            .scrollContentBackground(.hidden)
            
            Map(coordinateRegion: $region)
                .frame(height: 370)
                
                .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 1)
                                
                        )
                .padding(.bottom, 20.0)
            Text("And I'm staying for:")
              
            
            DatePicker("Start Date",
                       selection: $startdate,
                       displayedComponents: [.date])
            
            DatePicker("End Date",
                       selection: $enddate,
                       displayedComponents: [.date])
            
            Button("Buttono title"){
                print("Button tapped!")
            }
            
            .padding(.bottom, 20.0)
        
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
