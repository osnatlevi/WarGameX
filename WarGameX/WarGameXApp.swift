//
//  WarGameXApp.swift
//  WarGameX
//
//  Created by Osnat Levi on 20/06/2023.
//

import SwiftUI

@main
struct WarGameApp: App {
    @StateObject var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(locationManager)
        }
    }
}
