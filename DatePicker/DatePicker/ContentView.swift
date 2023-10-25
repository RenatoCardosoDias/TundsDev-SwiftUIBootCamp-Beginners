//
//  ContentView.swift
//  DatePicker
//
//  Created by Renato on 25/10/23.
//

import SwiftUI

struct ContentView: View {

	@State private var selectedDate: Date = .now

    var body: some View {
        VStack {
			Text("Usando o estilo .date")
			Text(selectedDate, style: .date)
				.padding()
			DatePicker("Start Date", selection: $selectedDate, displayedComponents: [.date])

			Text("Usando o estilo .time")
			Text(selectedDate, style: .time)
				.padding()
			DatePicker("Start Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])

			Text("Removendo o Texto")
			DatePicker("", selection: $selectedDate, displayedComponents: [.date])
				.labelsHidden()
			Text("Usando Label")
			DatePicker(selection: $selectedDate, displayedComponents: [.date]) {
				Text("Select a date")
			Text("Usando Label com imagem")
				DatePicker(selection: $selectedDate, displayedComponents: [.date]){
					Label("Select a date", systemImage: "calendar")
				}
			}
        } //end VStack
    }
}

#Preview {
    ContentView()
}
