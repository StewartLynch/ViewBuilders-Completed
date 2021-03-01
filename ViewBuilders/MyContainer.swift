//
//  MyContainer.swift
//  ViewBuilders
//
//  Created by Stewart Lynch on 2021-02-27.
//

import SwiftUI
struct MyContainer<Content: View>: View {
    let content: Content
    let bgColor: Color
    let fgColor: Color
    init(bgColor:Color = Color.green, fgColor: Color = Color.white, @ViewBuilder content: () -> Content) {
        self.bgColor = bgColor
        self.fgColor = fgColor
        self.content = content()
    }
    var body: some View {
        VStack {
            content
                .padding(5)
        }
        .background(RoundedRectangle(cornerRadius: 10).fill(bgColor))
        .foregroundColor(fgColor)
        .shadow(radius: 5)
    }
}

struct MyContainer_Previews: PreviewProvider {
    static var previews: some View {
        MyContainer {
            Text("hello")
            Text("world!")
        }
    }
}
