//
//  ContentView.swift
//  Buttons
//
//  Created by Renato on 24/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var exampleOneCounter: Int = 0
	@State private var exampleTwoCounter: Int = 0
	@State private var exampleThreeCounter: Int = 0

    var body: some View {
		ScrollView {
			VStack(spacing: 32 ){
				VStack {
					Text("Number of times pressed: \(exampleOneCounter)")
					Button{
						exampleOneCounter += 1
					} label: {
						Text("Example 1 Increase")
					}
				}
				.padding()
				VStack {
					Text("Number of times pressed: \(exampleTwoCounter)")
					Button(action: increaseConterTwo) {
						Text("Example 2 Increase")
					}
				} //end VStack
				.padding()
				Group {
					Button(role: .cancel) {

					} label: {
						Text("Cancel Example role")
					}

					Button(role: .destructive) {

					} label: {
						Text("Destructive Role")
					}
					Button(role: .none) {

					} label: {
						Text("Default role")
					}
				} //end Group
			} //end VStack
			Button{
				print("Hey i've been pressed")
			} label: {
				Text("Press Me")
					.frame(maxWidth: .infinity, minHeight: 44)
					.background(.red)
					.tint(.white)
					.clipShape(RoundedRectangle(cornerRadius: 8))
			}
			.padding()

			Button{

			} label: {
				Text("Send Mail")
			}
			.buttonStyle(SendButtonStyle())

			Button{

			} label: {
				Text("Send Mail")
			}
			.buttonStyle(.send)

			Sendbutton{
				print("Hey está funcionando!")
			}
		} //end ScrollView
    }
}

#Preview {
    ContentView()
}


private extension ContentView {
	func increaseConterTwo() {
		exampleTwoCounter += 1
	}
}
