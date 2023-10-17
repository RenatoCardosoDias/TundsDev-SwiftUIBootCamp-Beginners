//
//  ContentView.swift
//  Gradient
//
//  Created by Renato on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    ContentView()
}
