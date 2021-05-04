//
//  StudentInteractorDelegate.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/14/1400 AP.
//

import Foundation

public protocol StudentInteractorDelegate: AnyObject {
	
	func edit(student: String?)
}
