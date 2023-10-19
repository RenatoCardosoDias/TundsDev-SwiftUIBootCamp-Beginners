//
//  PurchaseStatusView.swift
//  EnviromentObject
//
//  Created by Renato on 18/10/23.
//

import SwiftUI

struct PurchaseStatusView: View {

	@EnvironmentObject var purchaseVm: PurchaseViewModel
    var body: some View {
		VStack{
			Image(systemName: purchaseVm.hasPurchased ? "lock.open": "lock")
				.font(.system(size: 50, weight: .bold))
				.symbolVariant(.fill)
			Text("The user \(purchaseVm.hasPurchased ? "has": "hasn't") unlocked this feature")
		}
    }
}

#Preview {
    PurchaseStatusView()
		.environmentObject(PurchaseViewModel())
}
