//
//  StudentAgeEditorViewContorllerFactory.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/18/1400 AP.
//

import Foundation

class StudentAgeEditorViewControllerFactory {
	
	func build() -> (StudentAgeEditorProtocol, StudentAgeEditorViewController) {
		
		let interactor = StudentAgeEditor()
		let presenter = StudentAgeEditorPresetner(interactor: interactor)
		let viewController = StudentAgeEditorViewController(presenter: presenter)
		
		interactor.interactorDelegate = presenter
		presenter.delegate = viewController
		
		return (interactor, viewController)
	}
}
