//
//  CustomLoadingView.swift
//  Binding
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct CustomLoadingView: View {

	@Binding var isLoading: Bool

    var body: some View {
		if isLoading {
			ProgressView()
		} else {
			Text("Finished loading")
		}
    }
}

#Preview {
	Group{
		CustomLoadingView(isLoading: .constant(false))
		CustomLoadingView(isLoading: .constant(true))

	}
}
