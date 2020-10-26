//
//  UserData.swift
//  Landmarks
//
//  Created by Marcelo de Souza on 2020-10-26.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
