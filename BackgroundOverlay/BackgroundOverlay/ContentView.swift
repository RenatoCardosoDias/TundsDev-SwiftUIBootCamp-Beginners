//
//  ContentView.swift
//  BackgroundOverlay
//
//  Created by Renato on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ScrollView{
			VStack{
				Text("Renato")
					.font(.footnote.weight(.bold))
					.padding()
					.background(.yellow)
				Text("5")
					.font(.footnote.weight(.bold))
					.padding()
					.background {
						Image(systemName: "star")
							.symbolVariant(.fill)
							.foregroundColor(.white)
							.font(.system(size: 32))
							.offset(y: -2)
					}
					.background(.yellow)

				Text("4")
					.font(.footnote.weight(.bold))
					.padding()
					.background{

						Circle()
							.fill(.yellow.opacity(0.3))
						Image(systemName: "star")
							.symbolVariant(.fill)
							.foregroundColor(.white)
							.font(.system(size: 32))
							.offset(y: -2)
					}
				Text("3")
					.font(.footnote.weight(.bold))
					.padding()
					.background{


						Image(systemName: "star")
							.symbolVariant(.fill)
							.foregroundColor(.yellow)
							.font(.system(size: 32))
							.offset(y: -2)
						Circle()
							.fill(.mint)
					}
				Text("2")
					.font(.footnote.weight(.bold))
					.padding()
					.background(alignment: .top) {

						Image(systemName: "star")
							.symbolVariant(.fill)
							.foregroundColor(.yellow)
							.font(.system(size: 32))
							.offset(y: -2)
					}

				Image("tundsdev")
					.resizable()
					.frame(width: 100, height: 100)
					.background(
						Circle()
							.fill(.blue)
					)
					.overlay(alignment: .bottom) {
						Text("Subscribe")
							.font(.footnote.weight(.bold))
							.foregroundColor(.white)
							.padding(4)
							.background(
								Capsule()
									.fill(.red)
							)
					}
				Image("tundsdev")
					.resizable()
					.frame(width: 100, height: 100)
					.background(
						Circle()
							.fill(.blue)
					)
					.overlay(alignment: .bottom) {
						Text("Subscribe")
							.font(.footnote.weight(.bold))
							.foregroundColor(.white)
							.padding(4)
							.background(
								.ultraThinMaterial, in: Capsule()
							)
					}

			} //end VStack
		}
    }
}

#Preview {
    ContentView()
}
