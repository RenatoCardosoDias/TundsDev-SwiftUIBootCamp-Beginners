//
//  ContentView.swift
//  StateObject
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
				LoginView(user: $vm.user) {
					vm.login()
				}
			case .loggedIn:
				LoggedInView{
					vm.logout()
				}
		}
    } //end var body
}

#Preview {
    ContentView()
}
