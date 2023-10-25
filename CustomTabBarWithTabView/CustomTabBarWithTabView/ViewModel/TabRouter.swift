//
//  TabRouter.swift
//  CustomTabBarWithTabView
//
//  Created by Renato on 25/10/23.
//

import Foundation

final class TabRouter: ObservableObject {
	@Published var screen: Screen = .one

	func change(to screen: Screen){
		self.screen = screen
	}
}
