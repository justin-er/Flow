//
//  StudentPresenterDelegate.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

protocol StudentNameEditorPresenterDelegate: AnyObject {
	
	func getEditedstudent() -> StudentViewModel?
	func studentEditorPresenterDidLoad(student: StudentViewModel)
}
