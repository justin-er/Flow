//
//  OrderInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class StudentInteractor: StudentInteractorProtocol {
	
	var editingStudent: String?
	
	let router: StudentRouterProtocol
	weak var delegate: StudentInteractorDelegate?
	weak var serviceDelegate: StudentInteracatorServiceDelegate?
	
	init(coordinator: StudentRouterProtocol) {
		self.router = coordinator
	}
	
	func student() {
		delegate?.edit(student: self.editingStudent)
	}
	
	func apply(student: String) {
		serviceDelegate?.interactorDidModify(student: student)
	}
}

extension StudentInteractor: StudentInteractorService {
	
	func edit(student: String) {
		self.editingStudent = student
	}
	
}


