//
//  StudentAgeEditorServiceDelegate.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/17/1400 AP.
//

import Foundation

protocol StudentAgeEditorServiceDelegate: AnyObject {
	
	func studentAgeEditorServiceDidModify(studentAge: Int, nextOperation: StudentAgeEditorNextOperation)

}
