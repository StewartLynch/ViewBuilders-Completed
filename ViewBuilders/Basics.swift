//
//  Basics.swift
//  ViewBuilders
//
//  Created by Stewart Lynch on 2021-02-26.
//

import SwiftUI

struct Basics: View {
    @State private var isSquare = true
    var body: some View {
        NavigationView {
            Button {
                isSquare.toggle()
            } label: {
//                squareOrCircle()
                SquareOrCircle(isSquare: $isSquare)
            }
                .navigationTitle("The Basics")
        }
    }
}

struct SquareOrCircle: View {
    @Binding var isSquare: Bool
    var body: some View {
        if isSquare {
            RoundedRectangle(cornerRadius: 10).fill(Color.green)
                .frame(width: 100, height: 100)
        } else {
            Circle()
                .fill(Color.red)
                .frame(width: 100)
        }
    }
}

//extension Basics {
//    @ViewBuilder func squareOrCircle() -> some View {
//        if isSquare {
//            RoundedRectangle(cornerRadius: 10).fill(Color.green)
//                .frame(width: 100, height: 100)
//        } else {
//            Circle()
//                .fill(Color.red)
//                .frame(width: 100)
//        }
//    }
//}

struct Basics_Previews: PreviewProvider {
    static var previews: some View {
        Basics()
    }
}
