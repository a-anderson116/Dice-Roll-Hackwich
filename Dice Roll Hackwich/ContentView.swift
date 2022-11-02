//
//  ContentView.swift
//  Dice Roll Hackwich
//
//  Created by Alex Anderson on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    var body: some View {
        VStack {
            Text("Dice Roll")
            Image("pips \(randomValue)")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
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
