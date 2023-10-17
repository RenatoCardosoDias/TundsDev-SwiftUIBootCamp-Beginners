//
//  ContentView.swift
//  StatesV2
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var isOn: Bool = false

    var body: some View {
        VStack {
			Text(isOn ? "Switch is on" : "Switch is off")
			Button{
				isOn.toggle()
			} label: {
				Text("Toggle Me")
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
