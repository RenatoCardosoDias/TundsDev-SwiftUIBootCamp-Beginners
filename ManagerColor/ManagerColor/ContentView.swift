//
//  ContentView.swift
//  ManagerColor
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Accent Color")
				.foregroundColor(.accentColor)
			Text("Secondary Color")
				.foregroundColor(Color("Secondary"))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
