//
//  ContentView.swift
//  Binding
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var isLoading: Bool = false

    var body: some View {
		VStack {
			CustomLoadingView(isLoading: $isLoading)
			Button {
				isLoading.toggle()
			} label: {
				Text("\(isLoading ? "Stop": "Start") Loading")
		}
		}
    }
}

#Preview {
    ContentView()
}
