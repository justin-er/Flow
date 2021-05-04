//
//  OrderFactory.swift
//  Order
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public class StudentFactory {
	
	public static func build(coordinator: StudentRouterProtocol) -> StudentInteractorProtocol {
		StudentInteractor(coordinator: coordinator)
	}
}
