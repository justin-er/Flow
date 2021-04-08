//
//  MainInteractor.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

class MainInteractor: MainProtocol {
	
	let coordinator: MainCoordinatorProtocol
	
	init(coordinator: MainCoordinatorProtocol) {
		self.coordinator = coordinator
	}
	
	func order(name: String) {
		coordinator.order(message: name) { (result) in
			switch result {
			case .failure(let error):
				print(error.localizedDescription)
				
			case .success(let resultString):
				print(resultString)
			}
		}
	}
}
