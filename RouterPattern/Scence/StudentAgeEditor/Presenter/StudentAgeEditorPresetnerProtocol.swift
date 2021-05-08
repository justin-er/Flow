//
//  StudentAgeEditorPresetnerProtocol.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/17/1400 AP.
//

import Foundation

protocol StudentAgeEditorPresetnerProtocol {
	
	var delegate: StudentAgeEditorPresetnerDelegate? { get set }
	
	func loadStudentAge()
	
	func apply(editedAge: Int, nextOperation: StudentAgeEditorNextOperation)
}
