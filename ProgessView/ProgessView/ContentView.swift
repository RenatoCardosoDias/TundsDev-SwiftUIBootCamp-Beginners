//
//  ContentView.swift
//  ProgessView
//
//  Created by Renato on 20/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var progressSecondExample: Double = 0
	@State private var progressThirdExample: Double = 0

	var body: some View {
		VStack {
			VStack {
				ProgressView()
				Text("Loading...")
			}
			VStack{
				ProgressView("Exemplo 2", value: progressSecondExample)
				Button("Increase") {
					withAnimation{
						progressSecondExample += 0.1
					} //end withAnimation
				} //end Button
			} //end VStack
			VStack{
				ProgressView("Example 3", value: progressThirdExample, total: 100)
				Button("Increase") {
					withAnimation {
						progressThirdExample += 5
					} //end withAnimation
				} //end Button
			} //end VStack
			VStack{
				ProgressView(value: progressThirdExample, total: 100){
					Label("Upload Progress \(progressThirdExample)", systemImage: "arrow.counterclockwise.icloud")
						.frame(maxWidth: .infinity, alignment: .center)
				}
				Button("Increase") {
					withAnimation {
						progressThirdExample += 5
					} //end withAnimation
				} //end Button
			} //end VStack
			VStack {
				ProgressView() {
					Label("Fetching some content", systemImage: "face.smiling")
				}
				.progressViewStyle(RoundedProgessViewStyle())
			} //end VStack
			VStack {
				ProgressView() {
					Label("Fetching some content", systemImage: "face.smiling")
				}
				.progressViewStyle(.rounded)
			} //end VStack
		}
	}
}

#Preview {
    ContentView()
}
