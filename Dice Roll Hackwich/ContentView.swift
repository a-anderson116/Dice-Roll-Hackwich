//
//  ContentView.swift
//  Dice Roll Hackwich
//
//  Created by Alex Anderson on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        VStack {
            Text("Dice Roll")
            Image("pips \(randomValue)")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center).rotationEffect(.degrees(rotation))
                            .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                    withAnimation(.default) {
                                            rotation += 360
                                        }

                }
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
