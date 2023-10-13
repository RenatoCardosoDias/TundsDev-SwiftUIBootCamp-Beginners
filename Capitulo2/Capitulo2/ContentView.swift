//
//  ContentView.swift
//  Capitulo2
//
//  Created by Renato on 13/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var isOpen = false

	var body: some View {
		let _ = Self._printChanges()
		 
		VStack {
			Image(systemName: "arrow.down")
				.rotationEffect(.init(degrees: isOpen ? 0 : 180))

			Button {
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
