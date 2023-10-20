//
//  ProgressView.swift
//  ProgessView
//
//  Created by Renato on 20/10/23.
//

import Foundation
import SwiftUI

struct RoundedProgessViewStyle: ProgressViewStyle {

	func makeBody(configuration: Configuration) -> some View {
		ProgressView(configuration)
			.padding()
			.background(.blue)
			.clipShape(RoundedRectangle(cornerRadius: 8))
			.tint(.white)
			.foregroundColor(.white)
	}
} //end struct RoundedProgressViewStyle

extension ProgressViewStyle where Self == RoundedProgessViewStyle {
	static var rounded : RoundedProgessViewStyle { .init() }
}

//struct labelStyle: LabelStyle {
//	func makeBody(configuration: Configuration) -> some View {
//		LabelStyle(configuration)
//			TitleOnlyLabelStyle
//
//	}
//}
