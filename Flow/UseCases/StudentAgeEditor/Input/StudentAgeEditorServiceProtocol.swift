//
//  StudentAgeEditorServiceProtocol.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/17/1400 AP.
//

import Foundation

protocol  StudentAgeEditorServiceProtocol {

	var serviceDelegate: StudentAgeEditorServiceDelegate? { get set }
	
	func edit(studentAge: Int)
}
