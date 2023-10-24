//
//  Button+SendStyle.swift
//  Buttons
//
//  Created by Renato on 24/10/23.
//

import Foundation
import SwiftUI

struct SendButtonStyle: ButtonStyle{
	func makeBody(configuration: Configuration) -> some View {
		HStack {
			Image(systemName: "paperplane")
				.symbolVariant(.fill)
				Divider()
				.padding(.vertical, 8)
			configuration.label
		}
		.frame(maxWidth: 150, minHeight: 55)
		.background(.mint)
		.foregroundColor(.white)
		.clipShape(RoundedRectangle(cornerRadius: 8))
		.opacity(configuration.isPressed ? 0.7 : 1)
	}
}

//Criamos uma extension onde estamos dizendo que Onde o buttonStyle combinar como SendButtonSytle então estamos indo criar um Static ComputerProperty chamado send e oque isso vais nos permitir fazer, Porque o Static ComputerProperty iss vai nos permitir na verdade criar uma instancia disso usando a notação .(ponto)
extension ButtonStyle where Self == SendButtonStyle {
	static var send: SendButtonStyle { .init() }
}
