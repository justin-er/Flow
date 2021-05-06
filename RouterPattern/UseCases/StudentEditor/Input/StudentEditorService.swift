//
//  StudentInteractorService.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/14/1400 AP.
//

import Foundation

public protocol StudentEditorService {
	
	var serviceDelegate: StudentEditorServiceDelegate? { get set }
	
	func edit(student: Student)
}