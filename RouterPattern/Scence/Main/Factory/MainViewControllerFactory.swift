//
//  MainViewControllerComposer.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation
import Main

class MainViewControllerFactory {
	
	func build() -> MainViewController {
		let coordinator = MainRouter()
		var interactor = MainInteractorFactory.build(coordinator: coordinator)
		
		let viewController = MainViewController(interactor: interactor)
		
		coordinator.viewController = viewController
		interactor.delegate = viewController
		
		return viewController
	}
}
