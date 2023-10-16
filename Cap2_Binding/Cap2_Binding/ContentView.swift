//
//  ContentView.swift
//  Cap2_Binding
//
//  Created by Renato on 16/10/23.
//

import SwiftUI

struct ContentView: View {
	@State private var isOpen = false

    var body: some View {
        VStack {
            ViewDependenciesArrow(isOpen: $isOpen)
			Button{
				withAnimation{
					isOpen.toggle()
				}
			} label: {
				Text("Toggle Arrow")
			}
        }
    }
}

#Preview {
    ContentView()
}

struct ViewDependenciesArrow: View {

	@Binding var isOpen: Bool

	var body: some View {
		Image(systemName: "arrow.down")
			.rotationEffect(.init(degrees: isOpen ? 0 : -180))
	}
}
