//
//  OrderCoordinatorProtocol.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol StudentAgeEditorService {
	
	func edit(studentAge: Int, completion: @escaping (Int, StudentNameEditorNextOperation) -> Void)
}
