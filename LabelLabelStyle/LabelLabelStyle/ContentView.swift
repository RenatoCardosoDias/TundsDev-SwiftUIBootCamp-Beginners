//
//  ContentView.swift
//  LabelLabelStyle
//
//  Created by Renato on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack{
			Label("Pick a Colour", systemImage: "paintpalette")
			Label("Instagram", image: "Logo")

			Link(destination: .init(string: "https://www.terra.com.br")!) {
				Label {
					Text("Instagram")
						.bold()
						.foregroundColor(.white)
						.padding()
						.background(.red)
						.clipShape(Capsule())
				} icon: {
					Image("icone")
						.resizable()
						.frame(width: 50, height: 50)
						.background(.gray)
						.clipShape(Capsule())
				}
			} //end Link
			Label("Instagram", image: "Logo")
				.labelStyle(CapsuleStyle())

			Label("Instagram", image: "Logo")
				.labelStyle(StrongCapsuleStyle(color: .red))

			Label("Instagram", image: "Logo")
				.labelStyle(.capsule)

			Label("Instagram", image: "Logo")
				.labelStyle(.strongCapsule(color: .purple))
		}// end VStack
    }
}

#Preview {
    ContentView()
}
