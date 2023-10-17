//
//  Gradient.swift
//  Gradient
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct Gradiente: View {
    var body: some View {
		ZStack{
			LinearGradient(stops: ([.init(color: .black, location: 0.2), 					.init(color: .mint, location: 0.2)]),
						   startPoint: .top, endPoint: .bottom)
			.ignoresSafeArea()
			Text("Sofia")
		}
    }
}

#Preview {
    Gradiente()
}
