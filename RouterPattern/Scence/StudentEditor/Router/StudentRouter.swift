//
//  OrderCoordinator.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit

class StudentRouter: StudentEditorRouterProtocol {
	
	weak var viewController: UIViewController?
	
	func login(completion: @escaping (Bool) -> Void) {
		//
	}
	
	func dismiss() {
		viewController?.navigationController?.popViewController(animated: true)
		
		print(viewController?.navigationController ?? "NA")
		print(viewController?.presentingViewController ?? "NA")
		print(viewController?.splitViewController ?? "NA")
		print(viewController?.tabBarController ?? "NA")
	}

}
