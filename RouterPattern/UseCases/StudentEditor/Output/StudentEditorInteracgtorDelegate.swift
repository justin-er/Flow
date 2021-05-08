//
//  StudentInteractorDelegate.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/14/1400 AP.
//

import Foundation

public protocol StudentEditorInteracgtorDelegate: AnyObject {
	
	func getEditedstudent() -> Student?
	func studentEditorInteractorDidLoad(student: Student?)
}
