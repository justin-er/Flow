//
//  OrderProtocol.swift
//  Order
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol OrderProtocol {
	 
	func analyzeOrder(message: String, completion: ((Result<String, Error>) -> Void)?)
}
