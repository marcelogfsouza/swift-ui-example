//
//  LandmarkList.swift
//  Landmarks
//
//  Created by SOUZA, Marcelo (MTL) on 2020-10-26.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmarkDetail: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    
    static var previews: some View {
        LandmarkList()
    }
}
