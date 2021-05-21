//
//  MainViewControllerComposer.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class StudentListViewControllerFactory {
	
	func build() -> StudentListViewController {
		let coordinator = StudentListToNameEditorFlow()
		var interactor = StudentListFactory.build(coordinator: coordinator)
		let presenter = StudentListPresenter(interactor: interactor)
		
		let viewController = StudentListViewController(presenter: presenter)
		
		coordinator.viewController = viewController
		presenter.delegate = viewController
		interactor.delegate = presenter
		
		return viewController
	}
}
