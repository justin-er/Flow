//
//  OrderViewController.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit

class StudentNameEditorViewController: UIViewController {

	let presenter: StudentNameEditorPresenterProtocol
	
	var student: StudentViewModel?
	
	@IBOutlet weak var receivedLabel: UILabel!
	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var ageTextField: UILabel!
	
	init(presenter: StudentNameEditorPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}
	
	private func configViewController() {
		self.title = "Edit Student Name"
	}
	
	private func configTextField() {
		textField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
	}
		
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		presenter.loadStudent()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		configViewController()
		configTextField()
    }
	
	@objc
	func textFieldDidChange(textField: UITextField) {
		student?.name = textField.text ?? ""
	}
	
	@IBAction func doneButtonDidTap(_ sender: UIButton) {
		guard let student = student else { return }
		let modifiedStudent = StudentViewModel(id: student.id, name: textField.text ?? "", age: student.age)
		presenter.applyChanges(student: modifiedStudent)
	}
	
	@IBAction func editAgeButtonDidTap(_ sender: Any) {
		guard let age = student?.age else { return }
		presenter.edit(studentAge: age)
	}
}

extension StudentNameEditorViewController: StudentNameEditorPresenterDelegate {
	
	func getEditedstudent() -> StudentViewModel? {
		student
	}
	
	func studentEditorPresenterDidLoad(student: StudentViewModel) {
		self.student = student
		textField.text = student.name
		ageTextField.text = "Student Age \(student.age)"
	}
}
