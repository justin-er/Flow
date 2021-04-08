//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit
import Main

class MainCoordinator: MainCoordinatorProtocol {
	
	weak var presentingViewController: UIViewController?
	
	func order(message: String, completion: @escaping (Result<String, Error>) -> Void) {
		let orderViewController = OrderViewControllerFactory.build()
		orderViewController.text = message
		orderViewController.completion = completion
		
		presentingViewController?.showDetailViewController(orderViewController, sender: self)
	}
}
