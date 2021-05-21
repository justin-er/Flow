//
//  StudentAgeEditorPresetner.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/17/1400 AP.
//

import Foundation

class StudentAgeEditorPresetner: StudentAgeEditorPresetnerProtocol {
	
	weak var delegate: StudentAgeEditorPresetnerDelegate?
	let interactor: StudentAgeEditorInteractorProtocol
	
	init(interactor: StudentAgeEditorInteractorProtocol) {
		self.interactor = interactor
	}
	
	func loadStudentAge() {
		interactor.loadStudentAge()
	}
	
	func apply(editedAge: Int, nextOperation: StudentAgeEditorNextOperation) {
		interactor.apply(age: editedAge, nextOperation: nextOperation)
	}
	
}

extension StudentAgeEditorPresetner: StudentAgeEditorInteractorDelegate {
	
	func StudentAgeEditorInteractorDidLoad(age: Int?) {
		delegate?.studentAgeEditorPresetnerDidLoad(age: age)
	}

}
