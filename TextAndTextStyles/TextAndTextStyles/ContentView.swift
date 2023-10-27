//
//  ContentView.swift
//  TextAndTextStyles
//
//  Created by Renato on 26/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
			Group {
				Text("Renato")
					.bold()
					.italic()
					.underline(true, color: .red)

				Text("My Text Here")
					.foregroundColor(.mint)
					.font(.largeTitle.weight(.black))

				Text("My Text Here")
					.foregroundColor(.blue)
					.font(.system(size: 18, weight: .semibold, design: .rounded))

				Text(.now, style: .timer)
				Text(.now, style: .time)
			}
			
			Group{
				Text(.now, style: .date)
				Text (Date.now, format: Date.FormatStyle(date: .abbreviated, time: .shortened))

				Text(72.3, format: .currency(code: "BRL"))
				Text(72.3, format: .currency(code: "USD"))
				Text(Date.now...Date.now.addingTimeInterval(3600))

				Text("View calendar \(Image(systemName: "calendar")) here")
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
