//
//  StudentPresenter.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

class StudentNameEditorPresenter: StudentNameEditorPresenterProtocol {
	
	weak var delegate: StudentNameEditorPresenterDelegate?
	let interactor: StudentNameEditorInteractorProtocol
	
	init(interactor: StudentNameEditorInteractorProtocol) {
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

extension StudentNameEditorPresenter: StudentNameEditorInteracgtorDelegate {
		
	func getEditedstudent() -> Student? {
		guard let studentVidwModel = delegate?.getEditedstudent() else { return nil }
		let student = Student(name: studentVidwModel.name,
							  age: studentVidwModel.age,
							  id: studentVidwModel.id)
		return student
	}
	
	func studentEditorInteractorDidLoad(student: Student?) {
		
		guard let student = student else { return }
		let studentViewModel = StudentViewModel(id: student.id, name: student.name, age: student.age)
		delegate?.studentEditorPresenterDidLoad(student: studentViewModel)
	}

}
