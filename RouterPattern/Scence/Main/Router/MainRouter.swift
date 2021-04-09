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
	
	func order(message: String, completion: @escaping (Result<String, Error>) -> Void) {
		let orderViewController = OrderViewControllerFactory.build()
		orderViewController.text = message
		orderViewController.completion = completion
		
		viewController?.show(orderViewController, sender: self)
	}
}
