//
//  ContentView.swift
//  Stepper
//
//  Created by Renato on 21/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var quantityExampleOne: Int = 0
	@State private var quantityExampleTwo: Int = 0
	@State private var quantityExampleThree: Int = 0
	@State private var quantityExampleFour: Int = 0

    var body: some View {
		VStack {
			VStack {
				Text("The user selected a quantidy of : \(quantityExampleOne)")
				Stepper("Quantity:", value: $quantityExampleOne, in: 0...20, step: 1)
			} //end VStack
			.padding()
			VStack {
				Text("The user selected a quantidy of : \(quantityExampleTwo)")
				Stepper("", value: $quantityExampleTwo, in: 0...20, step: 1)
					.labelsHidden()
			} //end VStack
			.padding()
			VStack {
				Stepper(value: $quantityExampleThree, in: 0...20, step: 1) {
					Text("🍕 Slices: \(quantityExampleThree)")
				}

			} //end VStack
			.padding()
			VStack {
				Stepper(value: $quantityExampleFour, in: 0...20, step: 1) {
					Text("🍔 Burguers: \(quantityExampleFour)")
				} onEditingChanged: { editingStarted in
							print("The current quantity is \(quantityExampleFour)")
				} //end onEditingChange
			} //end VStack
			.padding()
		}
    }
}

#Preview {
    ContentView()
}
