//
//  ContentView.swift
//  GroupBox
//
//  Created by Renato on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
			GroupBox("Saved Items") {
				Text("You've  saved 5 items")
			} //end GroupBox
			GroupBox {
				Text("You've saved 5 items")
			} label: {
				Label("Saved Items", systemImage: "star")
					.symbolVariant(.fill)
			}
			GroupBox {
				Text("You've saved 5 items")
			} label: {
				Label("Saved Items", systemImage: "star")
					.symbolVariant(.fill)
			}
			.groupBoxStyle(.saved)
        }
        .padding()
		.background(.mint)
    }
}

#Preview {
    ContentView()
}
