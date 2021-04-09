//
//  MainProtocol.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol MainProtocol {
	
	var delegate: MainDelegate? { get set }
	
	func order(name: String)
}
