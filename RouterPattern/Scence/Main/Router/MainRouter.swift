//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit
import Main

class MainRouter: MainRouterProtocol {
	
	weak var viewController: UIViewController?
	
	func edit(student: String, completion: @escaping (Result<String, Error>) -> Void) {
		let orderViewController = OrderViewControllerFactory.build()
		orderViewController.text = student
		orderViewController.completion = completion
		
		viewController?.show(orderViewController, sender: self)
	}
}
