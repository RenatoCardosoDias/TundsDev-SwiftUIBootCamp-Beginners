//
//  ContentView.swift
//  MutlLineTextField
//
//  Created by Renato on 26/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var text: String = ""

    var body: some View {
        VStack {
			descriptionTextView
			textEditorView
			submitButton
        }
        .padding()
		.disableAutocorrection(true)
    }
}

#Preview {
    ContentView()
}


private extension ContentView{

	var textEditorView: some View {
		TextEditor(text: $text)
			.frame(height: 250)
			.overlay(
			RoundedRectangle(cornerRadius: 16)
				.stroke(.gray.opacity(0.2), lineWidth: 4)
			)
	} //end var textEditorView

	var descriptionTextView: some View {
		Text("Description")
	} //end var descriptionTextView

	var submitButton: some View {
		Button {
			print("the user inputted: \(text)")
		} label: {
			Text("Submit")
		} //end Button
		.buttonStyle(.send)
	}
}
