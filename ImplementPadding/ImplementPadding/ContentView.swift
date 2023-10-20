//
//  ContentView.swift
//  ImplementPadding
//
//  Created by Renato on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
				.padding()
				.border(.red, width: 1)
			Text("Hello, world!")
				.padding(4)
				.border(.red, width: 1)
			Text("Hello, world!")
				.padding(.leading, 14)
				.border(.red, width: 1)
			Text("Esquedar e Direta")
				.padding(.leading, 14)
				.padding(.trailing, 14)
				.border(.yellow, width: 1)
			Text("Usando .horizontal")
				.padding(.horizontal, 40)
				.border(.green, width: 1)
			Text("usando .vertical")
				.padding(.vertical, 40)
				.border(.purple, width: 1)
        }
        .padding()
		.border(.blue, width: 2)
		VStack{
			Image("Logo")
				.resizable()
				.frame(width: 100, height: 100)
				.clipShape(Circle())
				.padding(.bottom, 50)
				.border(.red, width: 1)
			Text("Lorem ipsum dolor sit amet, consectetur anao sei mais o que so sei que isso vai rolar pq se nao rola to fudido")
				.frame(maxWidth: 200)
				.foregroundColor(.white)
				.border(.red, width: 1)
		}
		.padding()
		.background(.gray.opacity(0.8))
		.clipShape(RoundedRectangle(cornerRadius: 8))
		.border(.red, width: 2)
    }
}

#Preview {
    ContentView()
}
