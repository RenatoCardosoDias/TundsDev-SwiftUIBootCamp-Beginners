//
//  StateToggle.swift
//  StatesV2
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct StateToggle: View {

	@State private var isOn: Bool = false

    var body: some View {
		VStack {
			Image(systemName: "lightbulb")
				.font(.largeTitle)
				.symbolVariant(isOn ? .fill : .none)
				.foregroundColor(isOn ? .yellow : .black)
			Toggle(isOn: $isOn) {
				Text("Toggle Light Switch")
			}
			.labelsHidden()
		}
    }
}

#Preview {
    StateToggle()
}
