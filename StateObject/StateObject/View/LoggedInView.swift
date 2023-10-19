//
//  LoggedInView.swift
//  StateObject
//
//  Created by Renato on 18/10/23.
//

import SwiftUI

struct LoggedInView: View {

	let didTap: () -> Void
    var body: some View {
		VStack{
			Text("Hey, you're now logged in")
			Button {
			didTap()
			} label: {
				Text("Logout")
			}
		}
    }
}

#Preview {
	LoggedInView {}
}
