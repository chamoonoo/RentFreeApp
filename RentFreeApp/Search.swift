//
//  ContentView.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 13/2/2023.
//

import SwiftUI
import MapKit
import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var birthDateTxt: UITextField!
}

struct Search: View {
    
    @State var location: String=""
    @State var date: Date = Date()
    
    /*
    Map
     
    @State private var region =
    
    
    MKCoordinateRegion(center:CLLocationCoordinate2D(latitude:-33.80038111388358, longitude: 151.0711902132999), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.1))
    */
    
    var body: some View {
        VStack {
            
            Text("I'm staying at...")
                .font(.title)
            Form {
                
                TextField(text: $location, prompt: Text("Sydney, Eastern Suburbs")){
                    
                    //i dont know what this does?
                    Text("Location")
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                    
                }
                .padding(.all)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 1)
                    
                )
                
                Text("Test")
                    .frame(.right)
                    .listRowSeparator(.hidden)
                
                DatePicker("Start Date", selection: $date)
                    .listRowSeparator(.hidden)
                    .labelsHidden()
                        .frame(width: 270, height: 80, alignment: .center)
                        
            }
            
            .scrollContentBackground(.hidden)
            
            /*
            Map(coordinateRegion: $region)
                .frame(height: 370)
            
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 1)
                    
                )
                .padding(.bottom, 20.0)
            */
            
            Text("And I'm staying for:")
            
            Button("Next"){
                print("Button tapped!")
            }
            
            .padding(.bottom, 20.0)
            
        }
        .padding(.all)
 
    }
}

struct Struct_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

