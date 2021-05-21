//
//  AppCoordinator.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/18/1400 AP.
//

import UIKit

class SceneFlow {
	let window: UIWindow?
	
	init(window: UIWindow?) {
		self.window = window
	}
	
	func start() {
		let rootViewController = StudentListViewControllerFactory().build()
		let rootNavigationController = UINavigationController(rootViewController: rootViewController)
		window?.rootViewController = rootNavigationController
		window?.makeKeyAndVisible()
	}
}
