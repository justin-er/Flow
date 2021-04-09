//
//  MainInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class MainInteractor: MainProtocol {
	
	let router: MainRouterProtocol
	weak var delegate: MainDelegate?
	
	init(coordinator: MainRouterProtocol) {
		self.router = coordinator
	}
	
	func order(name: String) {
		router.order(message: name) {[weak self] (result) in
			switch result {
			case .failure(let error):
				print(error.localizedDescription)
				
			case .success(let resultString):
				self?.delegate?.interactorDidProcessOrder(result: resultString)
			}
		}
	}
}
