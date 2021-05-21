//
//  OrderViewControllerFactory.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit

class StudentNameEditorViewControllerFactory {
	
	static func build() -> (StudentNameEditorServiceProtocol, StudentNameEditorViewController) {
		let router = StudentNameToAgeEditorFlow()
		var interactor = StudentNameEditorFactory.build(router: router)
		let presenter = StudentNameEditorPresenter(interactor: interactor)
		let viewController = StudentNameEditorViewController(presenter: presenter)
		
		router.viewController = viewController
		interactor.interactorDelegate = presenter
		presenter.delegate = viewController
		
		return (interactor, viewController)
	}
}
