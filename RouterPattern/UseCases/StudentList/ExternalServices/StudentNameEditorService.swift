//
//  MainCoordinatorProtocol.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol StudentNameEditorService {
	
	func edit(student: Student, completion: @escaping (Student) -> Void)
}
