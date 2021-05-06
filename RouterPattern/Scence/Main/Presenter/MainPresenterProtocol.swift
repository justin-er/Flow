//
//  PresenterProtocol.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/15/1400 AP.
//

import Foundation

protocol MainPresenterProtocol {
	
	var delegate: MainPresenterDelegate? { get set }
	
	func loadStudents()
	func numberOfRowsIn(section: Int) -> Int
	func studentForRowAt(indexPath: IndexPath) -> StudentViewModel?
}
