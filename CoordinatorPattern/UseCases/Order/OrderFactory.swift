//
//  OrderFactory.swift
//  Order
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public class OrderFactory {
	
	public static func build(coordinator: OrderCoordinatorProtocol) -> OrderProtocol {
		OrderInteractor(coordinator: coordinator)
	}
}
