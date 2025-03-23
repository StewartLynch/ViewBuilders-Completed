//
//  HUD.swift
//  ViewBuilders
//
//  Created by Stewart Lynch on 2021-02-26.
//

import SwiftUI

struct HUD: View {
    @State private var isShowingHUD = false
    var body: some View {
        NavigationStack {
            ZStack {
                if isShowingHUD {
                    HUDView(isShowingHUD: $isShowingHUD) {
                        Text("Heads Up Display!")
                        Text("Second Line")
                    }
                }
                ZStack {
                    Color(.green)
                    Button("Show HUD") {
                        isShowingHUD.toggle()
                    }
                }
            }
            .navigationTitle("Heads Up Display")
        }
    }
}

struct HUD_Previews: PreviewProvider {
    static var previews: some View {
        HUD()
    }
}

struct HUDView<Content: View>:  View {
    let content: Content
    @Binding var isShowingHUD: Bool
    init(isShowingHUD: Binding<Bool>, @ViewBuilder content: () -> Content) {
        self._isShowingHUD = isShowingHUD
        self.content = content()
    }
    var body: some View {
        VStack {
            MyContainer(bgColor: Color(.secondarySystemBackground), fgColor: Color(.secondaryLabel)) {
                content
            }
            Spacer()
        }
        .zIndex(1.0)
        .transition(.move(edge: .top))
        .animation(.spring(), value: isShowingHUD)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    isShowingHUD = false
                }
            }
        }
    }
}
