//
//  User.swift
//  ObservedObject
//
//  Created by Renato on 18/10/23.
//

import Foundation

struct User: Equatable {
	var username: String = ""
	var password: String = ""

	mutating func reset() {
		username = ""
		password = ""
	}
}
