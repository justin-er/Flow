//
//  MainInteractorFactory.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public class MainInteractorFactory {
	
	public static func build(coordinator: MainRouterProtocol) -> MainProtocol {
		MainInteractor(coordinator: coordinator)
	}
}
