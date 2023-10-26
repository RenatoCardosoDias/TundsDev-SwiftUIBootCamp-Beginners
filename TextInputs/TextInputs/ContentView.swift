//
//  ContentView.swift
//  TextInputs
//
//  Created by Renato on 25/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var user: User = .init()
	@FocusState private var inputFocused: Bool

    var body: some View {

			VStack {
				usernameTextView
				passwordTextView
				submitButton
			}
			.padding()
			.textFieldStyle(.roundedBorder)
			.disableAutocorrection(true)
			.textInputAutocapitalization(.never)
			.toolbar{
				ToolbarItemGroup(placement: .keyboard) {
					Spacer()

					Button(action: resignKeyboard) {
						Text("Done")
					}
				}
			} //end .toolbar
			.onSubmit(of: .text, submit)
    } //end var body: some View
}

#Preview {
    ContentView()
}

private extension ContentView{

	var usernameTextView: some View{
		TextField("Username", text: $user.username, prompt: Text("Username"))
			.textContentType(.username)
			.focused($inputFocused)
	}

	var passwordTextView: some View{
		SecureField("Password", text: $user.password, prompt: Text("Password"))
			.textContentType(.password)
			.focused($inputFocused)
			.submitLabel(.done)
	}

	var submitButton: some View {
		Button (action: submit) {
			Text("Submit")
		}
	}
}

private extension ContentView{

	func submit() {
		print("the user inputted: \(user)")
		///iOS 14
		///dismissKeyboard()
		///
		///iOS 15
		resignKeyboard()
	} //end func submit

	func resignKeyboard() {
		///iOS 15
		if #available(iOS 15, *) {
			inputFocused = false
		} else { //se o iOS for menor que 14 use essa função
			dismissKeyboard()
		}
	} //end func resignKeyboard
} //end private extension ContentView

///iOS 14 and below
extension View {
	func dismissKeyboard() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
