//
//  RadialGradiente.swift
//  Gradient
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct RadialGradiente: View {
    var body: some View {
		ZStack {
			RadialGradient(colors: [.black, .mint, .purple, .blue], center: .center, startRadius: 50, endRadius: 100)
				.ignoresSafeArea()
			Text("Sofia")
		}
    }
}

#Preview {
    RadialGradiente()
}
