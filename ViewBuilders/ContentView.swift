//
//  ContentView.swift
//  ViewBuilders
//
//  Created by Stewart Lynch on 2021-02-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab( "Basics",  systemImage: "1.square.fill") {
                Basics()
            }
            Tab( "Container View",  systemImage: "2.square.fill") {
                ContainerViews()
            }
            Tab( "HUd",  systemImage: "3.square.fill") {
                HUD()
            }
        }
        .font(.headline)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
