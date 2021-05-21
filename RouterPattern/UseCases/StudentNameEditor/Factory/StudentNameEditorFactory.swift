//
//  OrderFactory.swift
//  Order
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public class StudentNameEditorFactory {
	
	public static func build(router: StudentAgeEditorService) -> StudentNameEditorProtocol {
		StudentNameEditor(router: router)
	}
	
}
