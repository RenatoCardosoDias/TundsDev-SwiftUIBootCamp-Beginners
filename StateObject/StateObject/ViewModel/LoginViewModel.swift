//
//  LoginViewModel.swift
//  StateObject
//
//  Created by Renato on 18/10/23.
//

import Foundation

final class LoginViewModel: ObservableObject{

	@Published var user: User = .init()
	@Published var currentState: CurrentState = .notLoggedIn

	func login() {
		guard !user.username.trimmingCharacters(in: .whitespaces).isEmpty && !user.password.trimmingCharacters(in: .whitespaces).isEmpty else {
			return
		}
		currentState = .loading

		DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
			self?.currentState = .loggedIn

		}
	} //end func login

	func logout() {
		self.currentState = .notLoggedIn
		self.user.reset()
	}
}
