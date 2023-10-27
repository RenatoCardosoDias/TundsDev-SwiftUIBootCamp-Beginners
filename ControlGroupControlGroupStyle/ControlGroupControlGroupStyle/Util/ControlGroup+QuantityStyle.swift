//
//  ControlGroup+QuantityStyle.swift
//  ControlGroupControlGroupStyle
//
//  Created by Renato on 27/10/23.
//

import Foundation
import SwiftUI


struct ControlGroupQuantityStyle: ControlGroupStyle {
	func makeBody(configuration: Configuration) -> some View {
		VStack(alignment: .leading) {
			Label("Quantity", systemImage: "bag")
				.font(.body.weight(.bold))
			HStack{
				configuration.content
			}
		}
	}
}

extension ControlGroupStyle where Self == ControlGroupQuantityStyle {
	static var quantity: ControlGroupQuantityStyle { .init() }
}
