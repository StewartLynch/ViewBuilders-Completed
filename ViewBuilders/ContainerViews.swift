//
//  ContainerViews.swift
//  ViewBuilders
//
//  Created by Stewart Lynch on 2021-02-26.
//

import SwiftUI

struct ContainerViews: View {
    var body: some View {
        NavigationView {
            VStack {
                MyContainer {
                    Text("Container View!")
                    Text("This is the second line")
                    Button {
                        
                    } label: {
                        Image(systemName: "star")
                    }
                }
                MyContainer(bgColor: .red, fgColor: .yellow) {
                    Text("Second Container")
                    Rectangle().fill(Color.yellow)
                        .frame(width: 200, height: 50)
                }
            }
                .navigationTitle("Container View")
        }
    }
}

struct ContainerViews_Previews: PreviewProvider {
    static var previews: some View {
        ContainerViews()
    }
}


