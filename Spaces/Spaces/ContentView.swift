//
//  ContentView.swift
//  Spaces
//
//  Created by Renato on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
			HStack{
				Spacer()
				Text("Name")
					.bold()
				Text("Renato")
			}
			.background(.pink)
			HStack{
//				Spacer()
//				Text("Name")
//					.bold()
//				Text("Renato")
//				Spacer()
				Text("Name")
					.bold()
				Text("Sofia")
			}
			.background(.green)
			.frame(maxWidth: .infinity, alignment: .center)
			HStack{
				Text("Name")
					.bold()
				Text("Dias")
				Spacer()
			}
			.background(.gray)
			HStack{
				Text("Name:")
					.bold()
					.background(.blue)
				Spacer()
				Text("Cardoso")
					.background(.red)
			}
			.background(.mint)
			HStack{
				Text("Name:")
					.bold()
					.background(.blue)
				Spacer(minLength: 150)
				Text("Cardoso")
					.frame(maxWidth: .infinity, alignment: .leading)
					.background(.red)
			}
			.background(.brown)
        }
		.padding()
		.background(.orange)
		VStack{
			VStack{
				Text("Nome")
					.bold()
				Text("Sofia")
				Spacer()
			}
			.background(.purple)
			VStack{
				Text("Nome")
					.bold()
				Text("Alves")
				Spacer()
			}
			.background(.yellow)

			Spacer()
			VStack{
				Text("Nome")
					.bold()
				Text("Dias")
			}
			.background(.gray)
		}
        .padding()
		.frame(maxWidth: .infinity)
		.background(.red)
    }
}

#Preview {
    ContentView()
}
