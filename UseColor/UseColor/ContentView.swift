//
//  ContentView.swift
//  UseColor
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			Color("Secondary")
				.ignoresSafeArea()
			VStack {
				Image(systemName: "globe")
					.imageScale(.large)
					.foregroundStyle(.tint)
				Text("Hello, world!")
					.foregroundColor(.accentColor)
			}
			.padding()
		}
    }
}

#Preview {
    ContentView()
}
