//
//  MainInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class StudentListInteractor: StudentListInteractorProtocol {
	
	var dataSource = [Student]()
	
	let router: StudentListRouterProtocol
	weak var delegate: StudentListInteractorDelegate?
	
	init(coordinator: StudentListRouterProtocol) {
		self.router = coordinator
		
		dataSource = [
			Student(name: "Ario Eghtedari", age: 42, id: 0),
			Student(name: "John Haggerd", age: 34, id: 1),
			Student(name: "Jason White", age: 27, id: 2),
			Student(name: "Ario Sobhani", age: 30, id: 3),
			Student(name: "Nina Schlencker", age: 33, id: 4),
		]
	}
	
	func load() {
		delegate?.mainInteractorDidLoad(students: dataSource)
	}
	
	func editStudent(id: Int) {
		guard let student = dataSource.first(where: { student in
			student.id == id
		}) else { return }
		router.edit(student: student) {[weak self] student in
			guard let self = self else { return }
			for (i, item) in self.dataSource.enumerated() {
				if item.id == id {
					self.dataSource[i] = student
					self.delegate?.mainInteractorDidUpdate(studnet: student)
					break
				}
			}
		}
	}
}
