//
//  OrderInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class OrderInteractor: OrderProtocol {
	
	let coordinator: OrderCoordinatorProtocol
	
	init(coordinator: OrderCoordinatorProtocol) {
		self.coordinator = coordinator
	}
}
