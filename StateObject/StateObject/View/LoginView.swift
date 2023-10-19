//
//  LoginView.swift
//  StateObject
//
//  Created by Renato on 18/10/23.
//

import SwiftUI

struct LoginView: View {

	@Binding var user: User
	let didTap: () -> Void

    var body: some View {
		VStack{
			TextField("Username", text: $user.username , prompt: Text("Username?"))

			SecureField("Password", text: $user.password , prompt: Text("Password"))

			Button{
				didTap()

			} label: {
				Text("Login")
			}
		}
		.padding(.horizontal, 8)
		.textFieldStyle(.roundedBorder)
		.onChange(of: user) { newValue in
			print("The user inputted: \(newValue)")
		}
    }
}

#Preview {
	LoginView(user: .constant(.init())) {}
}
