//
//  OrderProtocol.swift
//  Order
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public protocol StudentNameEditorInteractorProtocol {
	
	var interactorDelegate: StudentNameEditorInteracgtorDelegate? { get set }
	
	func loadStudent()
	func applyChanges(student: Student)
	func edit(studentAge: Int)
}
