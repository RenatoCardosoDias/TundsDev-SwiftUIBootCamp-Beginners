//
//  ContentView.swift
//  NewButtonStylesAndMaterial
//
//  Created by Renato on 24/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ScrollView {
			VStack{
				
				Button("Subscribe to the channel") {}
					.padding()
					.background(.red)
					.foregroundColor(.white)
					.clipShape(RoundedRectangle(cornerRadius: 8))
				Divider()
				/// IOS 15
				Button("Subscribe to the channel") {}
					.tint(.red)
					.buttonStyle(.borderedProminent)
					.buttonBorderShape(.roundedRectangle(radius: 8))
					.controlSize(.large)

				VStack(spacing: 16) {
					Text("Button Style Example")
						.bold()
					Button("Button Style Example") {}
						.tint(.mint)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.roundedRectangle(radius: 8))
						.controlSize(.large)

					Button("Button Style Example") {}
						.tint(.mint)
						.buttonStyle(.bordered)
						.buttonBorderShape(.roundedRectangle(radius: 8))
						.controlSize(.large)

					Button("Button Style Example") {}
						.tint(.mint)
						.buttonStyle(.borderless)
						.buttonBorderShape(.roundedRectangle(radius: 8))
						.controlSize(.large)

					Button("Button Style Example") {}
						.tint(.mint)
						.buttonStyle(.plain)
						.buttonBorderShape(.roundedRectangle(radius: 8))
						.controlSize(.large)

					Button("Button Style Example") {}
						.tint(.mint)
						.buttonStyle(.automatic)
						.buttonBorderShape(.roundedRectangle(radius: 8))
						.controlSize(.large)
				} //end VStack
				Divider()

				VStack(spacing: 16){
					Text("Button Border Shape Examples")
						.bold()

					Button("Button Sytle Example") {}
						.tint(.teal)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.roundedRectangle(radius: 12))
						.controlSize(.large)
					Button("Button Style Example") {}
						.tint(.teal)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.roundedRectangle)
						.controlSize(.large)
					Button("Button Style Example") {}
						.tint(.teal)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.capsule)
						.controlSize(.large)
					Button("Button Style Example") {}
						.tint(.teal)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.automatic)
						.controlSize(.large)
				} //end VStack
				Divider()
				VStack(spacing: 16) {
					Text("Button Control Size Example")
						.bold()

					Button("Button Style Example") {}
						.tint(.pink)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.roundedRectangle)
						.controlSize(.mini)
					Button("Button Style Example") {}
						.tint(.pink)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.roundedRectangle)
						.controlSize(.small)
					Button("Button Style Example") {}
						.tint(.pink)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.roundedRectangle)
						.controlSize(.regular)
					Button("Button Style Example") {}
						.tint(.pink)
						.buttonStyle(.borderedProminent)
						.buttonBorderShape(.roundedRectangle)
						.controlSize(.large)
				} //VStack
				Divider()
				VStack(spacing: 16){
					Text("Button Role & Style Examples")
						.bold()
					Button(role: .destructive) {

					} label: {
						Text("Delete")
					}
					.buttonStyle(.borderedProminent)
					.controlSize(.large)
					Divider()
					Button(role: .destructive) {

					} label: {
						Text("Delete")
					}
					.buttonStyle(.bordered)
					.controlSize(.large)
					Divider()

					Button(role: .cancel) {

					} label: {
						Text("Cancel")
					}
					.buttonStyle(.borderedProminent)
					.controlSize(.large)
					Divider()
					Button(role: .cancel) {

					} label: {
						Text("Cancel")
					}
					.buttonStyle(.bordered)
					.controlSize(.large)
				}
			} //end VStack
		} //end ScrollView
    }
}

#Preview {
    ContentView()
}
