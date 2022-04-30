//
//  CryptoWireApp.swift
//  CryptoWire
//
//  Created by Ravi Ranjan on 30/04/22.
//

import SwiftUI

@main
struct CryptoWireApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeVIew()
                    .navigationBarHidden(true)
            }
        }
    }
}
