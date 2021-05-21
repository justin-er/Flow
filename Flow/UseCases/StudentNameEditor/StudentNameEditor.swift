//
//  OrderInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class StudentNameEditor: StudentNameEditorProtocol {
	
	var editingStudent: Student?
	var interactorDelegate: StudentNameEditorInteracgtorDelegate?
	weak var serviceDelegate: StudentNameEditorServiceDelegate?
	
	let router: StudentAgeEditorService
	
	init(router: StudentAgeEditorService) {
		self.router = router
	}
}

extension StudentNameEditor: StudentNameEditorInteractorProtocol {
	
	func loadStudent() {
		interactorDelegate?.studentEditorInteractorDidLoad(student: self.editingStudent)
	}
	
	func applyChanges(student: Student) {
		self.editingStudent = student
		serviceDelegate?.studentEditorServiceDidModify(student: student)
	}
	
	func edit(studentAge: Int) {
		router.edit(studentAge: studentAge) {[weak self] newAge, nextOperation in
			switch nextOperation {
			case .keepEditing:
				self?.editingStudent?.age = newAge
				self?.loadStudent()
			
			case .done:
				guard var editedStudent = self?.interactorDelegate?.getEditedstudent() else { return }
				editedStudent.age = newAge
				self?.serviceDelegate?.studentEditorServiceDidModify(student: editedStudent)
			}
		}
	}
}

extension StudentNameEditor: StudentNameEditorServiceProtocol {
	
	func edit(student: Student) {
		self.editingStudent = student
	}
	
}


