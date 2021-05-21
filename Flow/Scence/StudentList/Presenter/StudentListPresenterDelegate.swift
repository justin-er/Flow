//
//  PresenterDelegate.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

protocol StudentListPresenterDelegate: AnyObject {
	
	func mainPresenterDidLoad()
	func mainPresenterDidUpdate(at indexPath: IndexPath)
}
