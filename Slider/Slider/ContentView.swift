//
//  ContentView.swift
//  Slider
//
//  Created by Renato on 26/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var volume: Double = 0
	@State private var hasChanged: Bool = false

	private let range: ClosedRange<Double> = 0...100
	private let step: Double = 5


    var body: some View {
        VStack {
			Text("Current volume: \(Int(volume))%")
			HStack {

				decreaseBtn
//				Slider(value: $volume, in: range, step: step) { hasChanged in
//					self.hasChanged = hasChanged
//				}
				Slider(value: $volume,
						in: range,
						step: step) { }
						minimumValueLabel: {
							Text("\(Int(range.lowerBound))")
				} maximumValueLabel: {
							Text("\(Int(range.upperBound))")
				} onEditingChanged: { hasChanged in
					self.hasChanged = hasChanged
				}
				increaseBtn
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


private extension ContentView{

	func increase() {
		guard volume < range.upperBound else { return }
		volume += step
	}
	func decrease() {
		guard volume > range.lowerBound else { return }
		volume -= step
	}
}

private extension ContentView {
	var increaseBtn: some View {
		Button {
			withAnimation{
				increase()
			}
		} label: {
			Image(systemName: "plus")
		}
		.opacity(hasChanged ? 0.5 : 1 )
		.disabled(hasChanged)
	}

	var decreaseBtn: some View{
		Button {
			withAnimation{
				decrease()
			}
		} label: {
			Image(systemName: "minus")
		}
		.opacity(hasChanged ? 0.5 : 1 )
		.disabled(hasChanged)
	}
}
