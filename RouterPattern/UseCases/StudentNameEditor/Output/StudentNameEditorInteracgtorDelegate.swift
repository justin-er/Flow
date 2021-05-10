//
//  StudentInteractorDelegate.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/14/1400 AP.
//

import Foundation

public protocol StudentNameEditorInteracgtorDelegate: AnyObject {
	
	func getEditedstudent() -> Student?
	func studentEditorInteractorDidLoad(student: Student?)
}
