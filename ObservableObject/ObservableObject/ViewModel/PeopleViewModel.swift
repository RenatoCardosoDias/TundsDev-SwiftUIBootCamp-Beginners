//
//  PeopleViewModel.swift
//  ObservableObject
//
//  Created by Renato on 17/10/23.
//

import Foundation

final class PeopleViewModel: ObservableObject {

	@Published var people: [String] = []
	@Published var isLoading: Bool = false

	func fetchPeople () {
		isLoading = true
		DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 ) {
			self.people = ["Renato", "Sofia", "Erica", "Jorjão"]
			self.isLoading = false
		}
	}
}
