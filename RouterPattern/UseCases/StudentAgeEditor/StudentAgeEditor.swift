//
//  StudentAgeEditor.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/17/1400 AP.
//

import Foundation

class StudentAgeEditor: StudentAgeEditorProtocol {
	
	weak var interactorDelegate: StudentAgeEditorInteractorDelegate?
	weak var serviceDelegate: StudentAgeEditorServiceDelegate?
	
	var studentAge: Int?
}

extension StudentAgeEditor: StudentAgeEditorInteractorProtocol {
	
	func loadStudentAge() {
		interactorDelegate?.StudentAgeEditorInteractorDidLoad(age: studentAge)
	}

	
	func apply(age: Int, nextOperation: StudentAgeEditorNextOperation) {
		self.studentAge = age
		serviceDelegate?.studentAgeEditorServiceDidModify(studentAge: age, nextOperation: nextOperation)
	}

}

extension StudentAgeEditor: StudentAgeEditorServiceProtocol {
	
	func edit(studentAge: Int) {
		self.studentAge = studentAge
	}

}
