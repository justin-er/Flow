//
//  MainInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class MainInteractor: MainInteractorProtocol {
	
	var dataSource = [Student]()
	
	let router: MainRouterProtocol
	weak var delegate: MainInteractorDelegate?
	
	init(coordinator: MainRouterProtocol) {
		self.router = coordinator
		
		dataSource = [
			Student(name: "Ario Eghtedari", id: 0),
			Student(name: "John Haggerd", id: 1),
			Student(name: "Jason White", id: 2),
			Student(name: "Ario Sobhani", id: 3),
			Student(name: "Nina Schlencker", id: 4),
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
