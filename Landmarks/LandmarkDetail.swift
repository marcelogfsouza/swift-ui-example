//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by SOUZA, Marcelo (MTL) on 2020-10-26.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmarkDetail: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmarkDetail.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmarkDetail.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmarkDetail.name)
                    .font(.title)
                
                HStack {
                    Text(landmarkDetail.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmarkDetail.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmarkDetail.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        LandmarkDetail(landmarkDetail: landmarkData[0])
    }
}
