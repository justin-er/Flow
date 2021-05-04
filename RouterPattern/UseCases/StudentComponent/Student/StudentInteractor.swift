//
//  OrderInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class OrderInteractor: OrderProtocol {
	
	let router: OrderRouterProtocol
	
	init(coordinator: OrderRouterProtocol) {
		self.router = coordinator
	}
	
	func placeOrder(message: String, completion: ((Result<String, Error>) -> Void)?) {
		completion?(Result.success(message))
		router.dismiss()
	}
}
