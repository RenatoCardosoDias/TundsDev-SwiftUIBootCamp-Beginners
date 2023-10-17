//
//  ContentView.swift
//  ObservableObject
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var people: [String] = []
	@State private var isLoading: Bool = false

    var body: some View {
        VStack {
			if isLoading {
				ProgressView()
				Text("Loading...")
					.padding()
			} else {
				Text(people.isEmpty  ? "No Users" : "Managed to get \(people.count) users.")
			}
			Button(action: fetchPeople) {
				Text("Fetch some people")
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//MARK: - EXTENSION

private extension ContentView {
	func fetchPeople () {
		isLoading = true
		DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 ) {
			people = ["Renato", "Sofia", "Erica"]
			isLoading = false
		}
	}
}
