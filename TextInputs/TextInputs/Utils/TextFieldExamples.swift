//
//  TextFieldExamples.swift
//  TextInputs
//
//  Created by Renato on 25/10/23.
//

import SwiftUI

struct TextFieldExamples: View {
	var body: some View {
		VStack{
			TextField("Name :", text: .constant(""))
			TextField(text: .constant("")) {
			Text("Password")
			}
			SecureField("Password", text: .constant(""), prompt: Text("Enter your password"))
		}
		.padding()
	}
}


#Preview {
	TextFieldExamples()
}
