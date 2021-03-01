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
            Basics()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Basics")
                }
            ContainerViews()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Container View")
                }
            HUD()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("HUD Display")
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
