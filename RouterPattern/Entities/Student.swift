//
//  Student.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

public struct Student {
	public init(name: String, id: Int) {
		self.name = name
		self.id = id
	}
	
	public var name: String
	public let id: Int
}
