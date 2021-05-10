//
//  OrderCoordinator.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit

class StudentRouter: StudentNameEditorRouterProtocol {
	
	weak var viewController: UIViewController?
	var completion: ((Int, StudentNameEditorNextOperation) -> Void)?
	
	func edit(studentAge: Int, completion: @escaping (Int, StudentNameEditorNextOperation) -> Void) {
		
		self.completion = completion
		var (studentAgeEitorService, studenAgeEditorViewController) = StudentAgeEditorViewControllerFactory().build()
		studentAgeEitorService.serviceDelegate = self
		studentAgeEitorService.edit(studentAge: studentAge)
		viewController?.navigationController?.pushViewController(studenAgeEditorViewController, animated: true)
	}
}

extension StudentRouter: StudentAgeEditorServiceDelegate {
	
	func studentAgeEditorServiceDidModify(studentAge: Int, nextOperation: StudentAgeEditorNextOperation) {
		switch nextOperation {
		case .done:
			completion?(studentAge, .done)
			
		case .keepEditing:
			completion?(studentAge, .keepEditing)
			guard let viewController = viewController else { return }
			viewController.navigationController?.popToViewController(viewController, animated: true)
		}
	}
	
}
