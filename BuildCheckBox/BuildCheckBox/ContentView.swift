//
//  ContentView.swift
//  BuildCheckBox
//
//  Created by Renato on 20/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var isSelected: Bool = false

    var body: some View {
        VStack {
			Group {
				Toggle("Turn me on?", isOn: $isSelected)
				Text(isSelected ? "I am turned on": "I am turned off")
			}
			Divider()
			Group {
				Toggle("", isOn: $isSelected)
					.labelsHidden()
				Text(isSelected ? "I am turnet on" : "I'm turned off")
			}
			Divider()
			Group {
				Toggle(isOn: $isSelected) {
					Label(isSelected ? "Is On" : "Is Off", systemImage: "lightbulb").symbolVariant(isSelected ? .fill : .none)
				}
			}
			Divider()
			Group {
				Toggle(isOn: $isSelected) {
					Label(isSelected ? "Is On": "Is Off", systemImage: "lightbulb").symbolVariant(isSelected ? .fill : .none)
				}
				.toggleStyle(.button)
			}
			Divider()
			Group {
				Toggle("", isOn: $isSelected)
					.labelsHidden()
					.toggleStyle(ToggleCheckboxStyle())
					.font(.title)
			}
			Divider()
			Group {
				Toggle("", isOn: $isSelected)
					.labelsHidden()
					.toggleStyle(.checklist)
					.font(.title)
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
