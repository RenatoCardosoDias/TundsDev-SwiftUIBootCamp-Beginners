//
//  ResignKeyboard.swift
//  MutlLineTextField
//
//  Created by Renato on 26/10/23.
//

import Foundation
import SwiftUI

struct ResignKeyboard {

	@FocusState private var inputFocused: Bool

	///iOS 15
	///
	func resignKeyboard() {
		if #available(iOS 15, *){
			inputFocused = false
		} else { //se o iOS for menor que 14 use esta função
//			dismissKeyboard()
		}
	}
} //end struct ResignKeyboard


//iOS 14 and bellow
extension View {
	func dismissKeyboard() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
