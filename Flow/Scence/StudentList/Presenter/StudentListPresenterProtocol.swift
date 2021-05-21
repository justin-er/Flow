//
//  PresenterProtocol.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

protocol StudentListPresenterProtocol {
	
	var delegate: StudentListPresenterDelegate? { get set }
	
	func loadStudents()
	func numberOfRowsIn(section: Int) -> Int
	func studentForRowAt(indexPath: IndexPath) -> StudentViewModel?
	
	func edit(student id: Int)
}
