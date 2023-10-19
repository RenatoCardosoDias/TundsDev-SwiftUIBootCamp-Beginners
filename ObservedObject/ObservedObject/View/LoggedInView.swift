//
//  LoggedInView.swift
//  ObservedObject
//
//  Created by Renato on 18/10/23.
//

import SwiftUI

struct LoggedInView: View {

	@ObservedObject var vm: LoginViewModel

    var body: some View {
		VStack {
			Text("Hey, you're now logged in")
			Button {
				vm.logOut()
			} label: {
				Text("LogOut")
			}
		}
    }
}

#Preview {
	LoggedInView (vm: .init())
}
