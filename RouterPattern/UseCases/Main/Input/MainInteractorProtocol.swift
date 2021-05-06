//
//  MainProtocol.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol MainInteractorProtocol {
	
	var delegate: MainInteractorDelegate? { get set }
	
	func load()
	func editStudent(id: Int)
}
