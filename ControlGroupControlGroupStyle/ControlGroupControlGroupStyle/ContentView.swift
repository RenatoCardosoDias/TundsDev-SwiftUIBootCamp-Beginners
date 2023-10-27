//
//  ContentView.swift
//  ControlGroupControlGroupStyle
//
//  Created by Renato on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ScrollView {
			VStack(spacing: 32) {
				VStack{
					Text("Quantity")
					ControlGroup{
						increaseBtn
						decreaseBtn
					} //end ControlGroup
				} //end VStack
				VStack{
					Text("Quantity")
					ControlGroup{
						increaseBtn
						decreaseBtn
					} //end ControlGroup
					.controlGroupStyle(.navigation)
				} //end VStack
				ControlGroup{
					increaseBtn
					decreaseBtn
				}
				.controlGroupStyle(ControlGroupQuantityStyle())

				ControlGroup{
					increaseBtn
					decreaseBtn
				}
				.controlGroupStyle(.quantity)
			} //end VStack
			.padding()
		} //end ScrollView
    }
}

#Preview {
    ContentView()
}

private extension ContentView{

	private var increaseBtn: some View {
		Button{

		} label: {
			Label("Increase", systemImage: "plus")
		}
	} //end private var increaseBtn

	private var decreaseBtn: some View {
		Button {

		} label: {
			Label("Decrease", systemImage: "minus")
		}
	}
}
