//
//  PurchaseViewModel.swift
//  EnviromentObject
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

final class PurchaseViewModel: ObservableObject {

	@Published var hasPurchased: Bool = false
	@Published var isLoading: Bool = false

	func purchase() {
		isLoading = true
		DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self ] in
			self?.isLoading = false
			self?.hasPurchased = true

		}
	}
}
