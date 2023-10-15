//
//  LifeTime.swift
//  Capitulo2
//
//  Created by Renato on 14/10/23.
//

import SwiftUI

struct LifeTime: View {
	@State private var isMessageShow = false

    var body: some View {

		VStack {
			if isMessageShow {
				Text("I hope you're enjoying this video")
					.onAppear {
						print("Add View to screen ")
					}
					.onDisappear{
						print("Removed view off screen")
					}
			} //end if isMessagem
			Button {
				withAnimation{
					isMessageShow.toggle()
				}
			} label: {
				Text("Tap to toggle message")
			}

		}
    }
}

#Preview {
    LifeTime()
}
