//
//  AngularGradient.swift
//  Gradient
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct AngularGradient: View {
    var body: some View {
		ZStack{
			AngularGradient(colors: [.red, .yellow, .green, .purple], center: center)
				.ignoresSafeArea()
			Text("Sofia")
		} //end ZStack
    }
}

#Preview {
    AngularGradient()
}
