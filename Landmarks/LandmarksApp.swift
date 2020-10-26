//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Marcelo de Souza on 2020-10-26.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
