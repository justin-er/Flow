//
//  StudentInteracatorServiceDelegate.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/14/1400 AP.
//

import Foundation

public protocol StudentNameEditorServiceDelegate: AnyObject {
	
	func studentEditorServiceDidModify(student: Student)
}
