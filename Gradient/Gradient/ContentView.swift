//
//  ContentView.swift
//  Gradient
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			LinearGradient(gradient: Gradient(colors: [.white, .blue, .black]), startPoint: .top, endPoint: .bottom)
				.ignoresSafeArea()
			Text("Sofia")
		}
    }
}

#Preview {
    ContentView()
}
