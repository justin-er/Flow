//
//  StudentAgeEditorViewController.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/17/1400 AP.
//

import UIKit

class StudentAgeEditorViewController: UIViewController {

	@IBOutlet weak var studentAgeTextField: UITextField!
	
	let presenter: StudentAgeEditorPresetnerProtocol
	
	init(presenter: StudentAgeEditorPresetnerProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		
		super.viewWillAppear(animated)
		presenter.loadStudentAge()
	}
	
	@IBAction func backToStudentListDidTap(_ sender: Any) {
		guard let editedAgeString = studentAgeTextField.text else { return }
		presenter.apply(editedAge: Int(editedAgeString) ?? 0, nextOperation: .done)
	}
	

	@IBAction func doneDidTap(_ sender: Any) {
		guard let editedAgeString = studentAgeTextField.text else { return }
		presenter.apply(editedAge: Int(editedAgeString) ?? 0, nextOperation: .keepEditing)

	}
	
}

extension StudentAgeEditorViewController: StudentAgeEditorPresetnerDelegate {
	
	func studentAgeEditorPresetnerDidLoad(age: Int?) {
		guard let age = age else { return }
		studentAgeTextField.text = "\(age)"
	}
	
}
