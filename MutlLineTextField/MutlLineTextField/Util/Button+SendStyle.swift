//
//  Button+SendStyle.swift
//  MutlLineTextField
//
//  Created by Renato on 26/10/23.
//

import Foundation
import SwiftUI

struct SendButtonStyle: ButtonStyle {

	func makeBody(configuration: Configuration) -> some View {
		HStack {
			Image(systemName: "paperplane")
				.symbolVariant(.fill)
				Divider()
				.padding(.vertical, 8)
			configuration.label
		} //end HStack
		.frame(maxWidth: .infinity, maxHeight: 55)
		.background(.mint)
		.foregroundColor(.white)
		.clipShape(RoundedRectangle(cornerRadius: 8))
		.opacity(configuration.isPressed ? 0.7 : 1)
	}
} //end struct SendButtonStyle

extension ButtonStyle where Self == SendButtonStyle {
	static var send: SendButtonStyle { .init() }
}
