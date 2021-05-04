//
//  OrderInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class StudentInteractor: StudentProtocol {
	
	let router: StudentRouterProtocol
	
	init(coordinator: StudentRouterProtocol) {
		self.router = coordinator
	}
	
	func placeOrder(message: String, completion: ((Result<String, Error>) -> Void)?) {
		completion?(Result.success(message))
		router.dismiss()
	}
}
