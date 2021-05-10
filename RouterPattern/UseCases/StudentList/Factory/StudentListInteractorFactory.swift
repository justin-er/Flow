//
//  MainInteractorFactory.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public class StudentListInteractorFactory {
	
	public static func build(coordinator: StudentListRouterProtocol) -> StudentListInteractorProtocol {
		StudentListInteractor(coordinator: coordinator)
	}
}
