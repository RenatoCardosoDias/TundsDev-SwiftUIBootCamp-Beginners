//
//  SendButton.swift
//  MutlLineTextField
//
//  Created by Renato on 26/10/23.
//

import SwiftUI

struct SendButton: View {
	
	let action: () -> Void

    var body: some View {
		Button(action: action) {
			Text("Submit")
		} //end Button
		.buttonStyle(.send)
    }
}

#Preview {
	SendButton{}
}
