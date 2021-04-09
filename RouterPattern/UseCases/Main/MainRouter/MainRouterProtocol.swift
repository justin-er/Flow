//
//  MainCoordinatorProtocol.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol MainRouterProtocol {
	
	func order(message: String, completion: @escaping (Result<String, Error>) -> Void)
}
