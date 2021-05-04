//
//  OrderCoordinatorProtocol.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol StudentRouterProtocol {
	
	func login(completion: @escaping (Bool) -> Void)
	func dismiss()
}
