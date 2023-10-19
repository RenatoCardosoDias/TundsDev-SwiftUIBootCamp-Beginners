//
//  PurchaseStateView.swift
//  EnviromentObject
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct PurchaseStateView: View {

	@EnvironmentObject var purchaseVm: PurchaseViewModel
    var body: some View {
		PurchaseStatusView()
    }
}

#Preview {
    PurchaseStateView()
		.environmentObject(PurchaseViewModel())
}
