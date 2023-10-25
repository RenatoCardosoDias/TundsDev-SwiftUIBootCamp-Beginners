//
//  CustomTabBarWithTabViewApp.swift
//  CustomTabBarWithTabView
//
//  Created by Renato on 25/10/23.
//

import SwiftUI

@main
struct CustomTabBarWithTabViewApp: App {

	@StateObject var router: TabRouter = TabRouter()

    var body: some Scene {
        WindowGroup {
			TabView (selection: $router.screen){
				ScreenOne()
					.badge(10)
					.tag(Screen.one)
					.environmentObject(router)
					.tabItem{
						Label("Screen 1", systemImage: "calendar")
					}
				ScreenTwo()
					.tag(Screen.two)
					.environmentObject(router)
					.tabItem{
						Label("Screen 2", systemImage: "house")
					}
			}
        }
    }
}
