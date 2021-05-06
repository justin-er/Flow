//
//  StudentPresenter.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

class StudentEditorPresenter: StudentEditorPresenterProtocol {
	
	weak var delegate: StudentEditorPresenterDelegate?
	let interactor: StudentEditorInteractor
	
	init(interactor: StudentEditorInteractor) {
		self.interactor = interactor
	}
	
	func loadStudent() {
		interactor.loadStudent()
	}
	
	func applyChanges(student: StudentViewModel) {
		let student = Student(name: student.name, id: student.id)
		interactor.applyChanges(student: student)
	}
}

extension StudentEditorPresenter: StudentEditorInteracgtorDelegate {
	
	func studentEditorInteractorDidLoad(student: Student?) {
		
		guard let student = student else { return }
		let studentViewModel = StudentViewModel(id: student.id, name: student.name)
		delegate?.studentEditorPresenterDidLoad(student: studentViewModel)
	}

}
