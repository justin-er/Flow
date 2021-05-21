//
//  StudentInteractorService.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/14/1400 AP.
//

import Foundation

public protocol StudentNameEditorServiceProtocol {
	
	var serviceDelegate: StudentNameEditorServiceDelegate? { get set }
	
	func edit(student: Student)
}
