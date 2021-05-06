//
//  MainCoordinatorProtocol.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol MainRouterProtocol {
	
	func edit(student: Student, completion: @escaping (Student) -> Void)
}
