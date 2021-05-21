//
//  StudentPresenterProtocol.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/16/1400 AP.
//

import Foundation

protocol StudentNameEditorPresenterProtocol {
	
	var delegate: StudentNameEditorPresenterDelegate? { get set }
	
	func loadStudent()
	func applyChanges(student: StudentViewModel)
	func edit(studentAge: Int)
}
