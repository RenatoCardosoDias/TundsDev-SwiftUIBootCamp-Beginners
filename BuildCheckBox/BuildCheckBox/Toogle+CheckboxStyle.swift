//
//  Toogle+CheckboxStyle.swift
//  BuildCheckBox
//
//  Created by Renato on 20/10/23.
//

import Foundation
import SwiftUI

struct ToggleCheckboxStyle: ToggleStyle {

	func makeBody(configuration: Configuration) -> some View {
		Button {
			configuration.isOn.toggle()
		} label: {
			Image(systemName: "checkmark.square")
				.symbolVariant(configuration.isOn ? .fill : .none)
		}
		.tint(Color(.green))
	}
}

extension ToggleStyle where Self == ToggleCheckboxStyle {
	static var checklist: ToggleCheckboxStyle { .init() }
}
