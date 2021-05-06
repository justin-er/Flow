//
//  OrderInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class StudentEditor: StudentEditorFacade {
	
	var editingStudent: Student?
	var interactorDelegate: StudentEditorInteracgtorDelegate?
	weak var serviceDelegate: StudentEditorServiceDelegate?
	
	let router: StudentEditorRouterProtocol
	
	init(router: StudentEditorRouterProtocol) {
		self.router = router
	}
}

extension StudentEditor: StudentEditorInteractor {
	
	func loadStudent() {
		interactorDelegate?.studentEditorInteractorDidLoad(student: self.editingStudent)
	}
	
	func applyChanges(student: Student) {
		self.editingStudent = student
		serviceDelegate?.studentEditorServiceDidModify(student: student)
	}
}

extension StudentEditor: StudentEditorService {
	
	func edit(student: Student) {
		self.editingStudent = student
	}
	
}


