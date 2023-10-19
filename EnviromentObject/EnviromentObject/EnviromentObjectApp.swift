//
//  EnviromentObjectApp.swift
//  EnviromentObject
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

@main
struct EnviromentObjectApp: App {

	@StateObject private var vm = PurchaseViewModel()

    var body: some Scene {
        WindowGroup {
			TabView{
				PurchaseView()
					.environmentObject(vm)
					.tabItem {
						Image(systemName: "creditcard")
						Text("Purchase")
					}
				PurchaseStateView()
					.environmentObject(vm)
					.tabItem {
						Image(systemName: "gear")
						Text("State")
					}
			}
        }
    }
}
