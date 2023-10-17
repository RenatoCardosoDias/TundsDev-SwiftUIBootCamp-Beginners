//
//  ContentView.swift
//  ObservableObject
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {

	@StateObject private var vm = PeopleViewModel()

    var body: some View {
        VStack {
			if vm.isLoading {
				ProgressView()
				Text("Loading...")
					.padding()
			} else {
				Text(vm.people.isEmpty  ? "No Users" : "Managed to get \(vm.people.count) users.")
			}
			Button(action: vm.fetchPeople) {
				Text("Fetch some people")
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

