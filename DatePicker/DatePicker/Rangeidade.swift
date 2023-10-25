//
//  Rangeidade.swift
//  DatePicker
//
//  Created by Renato on 25/10/23.
//

import SwiftUI

struct Rangeidade: View {

	private let dateRange: ClosedRange<Date> = {
		let calendar = Calendar.current
		let minAgeDate = calendar.date(byAdding: .year, value: -120, to: .now)
		let maxAgeDate = calendar.date(byAdding: .year, value: -18, to: .now)

		return minAgeDate!...maxAgeDate!
	}()

	@State private var selectedDate: Date = .now


    var body: some View {
		VStack{
			Text("Range de idade")
			DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.date]) {
				Text("Over 18's only")
			}

			Text("Alterando o estilo DatePicker .whell")
			DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.date]) {
				Text("Over 18's only")
			}
			.labelsHidden()
			.datePickerStyle(.wheel)

			Text("Alterando o estilo DatePicker .graphical")
			DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.date]) {
				Text("")
			}
			.labelsHidden()
			.datePickerStyle(.graphical)
		} //end VStack
    }
}

#Preview {
    Rangeidade()
}
