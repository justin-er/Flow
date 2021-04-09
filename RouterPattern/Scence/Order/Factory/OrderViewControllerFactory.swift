//
//  OrderViewControllerFactory.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit
import Order

class OrderViewControllerFactory {
	
	static func build() -> OrderViewController {
		let coordinator = OrderRouter()
		let interactor = OrderFactory.build(coordinator: coordinator)
		let viewController = OrderViewController(interactor: interactor)
		
		coordinator.viewController = viewController
		
		return viewController
	}
}
