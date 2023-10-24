//
//  Sendbutton.swift
//  Buttons
//
//  Created by Renato on 24/10/23.
//

import SwiftUI

struct Sendbutton: View {

	let action: () -> Void

    var body: some View {
		Button(action: action) {
			Text("Send Mail")
		} //end Button
		.buttonStyle(.send)
    }
}

#Preview {
	Sendbutton {}
}
