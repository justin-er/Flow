//
//  MainInteractorFactory.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public class StudentListFactory {
	
	public static func build(coordinator: StudentNameEditorService) -> StudentListInteractorProtocol {
		StudentList(coordinator: coordinator)
	}
}
