//
//  PurchaseView.swift
//  EnviromentObject
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct PurchaseView: View {

	@EnvironmentObject var purchaseVm: PurchaseViewModel
    var body: some View {
		if purchaseVm.isLoading {
			ProgressView()
		} else {
			Button {
				purchaseVm.purchase()
			} label: {
				Text("Purchase Me")
			}
			.disabled(purchaseVm.hasPurchased)
			.opacity(purchaseVm.hasPurchased ? 0.5 : 1)
		}
    }
}

#Preview {
    PurchaseView()
		.environmentObject(PurchaseViewModel())
}
