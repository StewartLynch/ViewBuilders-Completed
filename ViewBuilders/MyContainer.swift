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
        .foregroundStyle(fgColor)
        .shadow(radius: 5)
    }
}

#Preview {
    MyContainer {
        Text("hello")
        Text("world!")
    }
}
