//
//  ScreenTwo.swift
//  CustomTabBarWithTabView
//
//  Created by Renato on 25/10/23.
//

import SwiftUI

struct ScreenTwo: View {

	@EnvironmentObject var router: TabRouter
    var body: some View {
		ZStack {
			VStack{
				Text("Screen 2")
					.bold()
					.foregroundColor(.white)

				Button {
					router.change(to: .one)
				} label: {
					Text("Switch to screen 1")
				}
			} //end ZStack
		} //end ZStack
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(.pink)
		.clipped()
    }
}

#Preview {
    ScreenTwo()
		.environmentObject(TabRouter())
}
