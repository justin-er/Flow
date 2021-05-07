//
//  OrderInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class StudentEditor: StudentEditorProtocol {
	
	var editingStudent: Student?
	var interactorDelegate: StudentEditorInteracgtorDelegate?
	weak var serviceDelegate: StudentEditorServiceDelegate?
	
	let router: StudentEditorRouterProtocol
	
	init(router: StudentEditorRouterProtocol) {
		self.router = router
	}
}

extension StudentEditor: StudentEditorInteractorProtocol {
	
	func loadStudent() {
		interactorDelegate?.studentEditorInteractorDidLoad(student: self.editingStudent)
	}
	
	func applyChanges(student: Student) {
		self.editingStudent = student
		serviceDelegate?.studentEditorServiceDidModify(student: student)
	}
	
	func edit(studentAge: Int) {
		router.edit(studentAge: studentAge)
	}

}

extension StudentEditor: StudentEditorServiceProtocol {
	
	func edit(student: Student) {
		self.editingStudent = student
	}
	
}


