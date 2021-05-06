//
//  OrderFactory.swift
//  Order
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import Foundation

public class StudentEditorFactory {
	
	public static func build(router: StudentEditorRouterProtocol) -> StudentEditorFacade {
		StudentEditor(router: router)
	}
	
}
