//
//  StudentPresenter.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

class StudentEditorPresenter: StudentEditorPresenterProtocol {
	
	weak var delegate: StudentEditorPresenterDelegate?
	let interactor: StudentEditorInteractorProtocol
	
	init(interactor: StudentEditorInteractorProtocol) {
		self.interactor = interactor
	}
	
	func loadStudent() {
		interactor.loadStudent()
	}
	
	func applyChanges(student: StudentViewModel) {
		let student = Student(name: student.name, age: student.age, id: student.id)
		interactor.applyChanges(student: student)
	}
	
	func edit(studentAge: Int) {
		interactor.edit(studentAge: studentAge)
	}
}

extension StudentEditorPresenter: StudentEditorInteracgtorDelegate {
	
	func studentEditorInteractorDidLoad(student: Student?) {
		
		guard let student = student else { return }
		let studentViewModel = StudentViewModel(id: student.id, name: student.name, age: student.age)
		delegate?.studentEditorPresenterDidLoad(student: studentViewModel)
	}

}
