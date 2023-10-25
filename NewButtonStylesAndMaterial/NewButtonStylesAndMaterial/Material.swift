//
//  Material.swift
//  NewButtonStylesAndMaterial
//
//  Created by Renato on 24/10/23.
//

import SwiftUI

struct Material: View {
    var body: some View {
		ScrollView{
			VStack (spacing: 24) {
				Text("Material Examples")

				Button("Material Example") {}
					.padding()
					.background(.ultraThinMaterial)
					.controlSize(.large)

				Button("Material Example") {}
					.padding()
					.background(.thinMaterial, in: Capsule())
					.controlSize(.large)
				Divider()
				Button("Material Example") {}
					.padding()
					.background(.regularMaterial, in: RoundedRectangle(cornerRadius: 8))
					.controlSize(.large)
				Button("Material Example") {}
					.padding()
					.background(.thickMaterial, in: RoundedRectangle(cornerRadius: 8))
					.controlSize(.large)
				Button("Material Example") {}
					.padding()
					.background(.ultraThickMaterial, in: RoundedRectangle(cornerRadius: 8))
					.controlSize(.large)
			} //end VStack
			.frame(maxWidth: .infinity)
			.padding()
			.background(.mint)
		} //end ScrollView
    }
}

#Preview {
    Material()
}
