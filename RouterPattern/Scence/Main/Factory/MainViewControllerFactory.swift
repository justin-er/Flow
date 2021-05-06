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
		var presenter = MainPresenter(interactor: interactor)
		
		let viewController = MainViewController(presenter: presenter)
		
		coordinator.viewController = viewController
		presenter.delegate = viewController
		interactor.delegate = presenter
		
		return viewController
	}
}
