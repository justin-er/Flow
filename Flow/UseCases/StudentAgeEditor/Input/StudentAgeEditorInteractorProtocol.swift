//
//  StudentAgeEditorInteractorProtocol.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/17/1400 AP.
//

import Foundation

protocol StudentAgeEditorInteractorProtocol {

	var interactorDelegate: StudentAgeEditorInteractorDelegate? { get set }
	
	func loadStudentAge()
	func apply(age: Int, nextOperation: StudentAgeEditorNextOperation)
}
