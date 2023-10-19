//
//  ContentView.swift
//  Divider
//
//  Created by Renato on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
			VStack {
				Text("1. Divider Example Below")
				Divider()
					.frame(width:100)

			}
			.padding()
			.background(.yellow)

			Group {
				Text("2.(Group) Example Below")
				Divider()
			}
			.background(.mint)

			HStack {
				Text("1.(HStack) Example to the right")
				Divider()
					.background(.black)
					.frame(height:50)
				Image(systemName: "lock")
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
