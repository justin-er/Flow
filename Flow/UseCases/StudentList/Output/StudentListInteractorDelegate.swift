//
//  MainDelegate.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol StudentListInteractorDelegate: AnyObject {
	
	func mainInteractorDidLoad(students: [Student])
	func mainInteractorDidUpdate(studnet: Student)
}
