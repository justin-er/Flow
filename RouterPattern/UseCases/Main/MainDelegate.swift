//
//  MainDelegate.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol MainDelegate: class {
	func interactorDidProcessOrder(result: String)
}
