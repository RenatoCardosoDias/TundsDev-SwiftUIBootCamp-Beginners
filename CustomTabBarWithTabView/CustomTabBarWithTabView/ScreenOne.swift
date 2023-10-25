//
//  ScreenOne.swift
//  CustomTabBarWithTabView
//
//  Created by Renato on 25/10/23.
//

import SwiftUI

struct ScreenOne: View {

	@EnvironmentObject var router: TabRouter

    var body: some View {
		ZStack {
			VStack {
				Text("Screen 1")
					.bold()
					.foregroundColor(.white)

				Button{
					router.change(to: .two)
				} label: {
					Text("Switch to screen 2")
				}
			} //end VStack
		} //end ZStack
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(.mint)
		.clipped()
    }
}

#Preview {
    ScreenOne()
		.environmentObject(TabRouter())
}
