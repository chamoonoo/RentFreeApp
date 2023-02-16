//
//  LandMarkRow.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 16/2/2023.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            Text(landmark.name)
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRow(landmark : landmarks[0])
    }
}
