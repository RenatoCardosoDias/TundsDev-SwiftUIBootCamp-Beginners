//
//  ContentView.swift
//  ObservedObject
//
//  Created by Renato on 18/10/23.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject private var vm = LoginViewModel()

    var body: some View {
		switch vm.currentState {
			case .loading:
				ProgressView()
			case .notLoggedIn:
				LoginView(vm: vm)
			case .loggedIn:
				LoggedInView(vm:vm)
		}
    }
}

#Preview {
    ContentView()
}
