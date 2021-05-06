//
//  OrderViewController.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit

class StudentEditorViewController: UIViewController {

	let presenter: StudentEditorPresenterProtocol
	
	var student: StudentViewModel?
	
	@IBOutlet weak var receivedLabel: UILabel!
	@IBOutlet weak var textField: UITextField!
	
	init(presenter: StudentEditorPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
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
    }
	
	@IBAction func doneButtonDidTap(_ sender: UIButton) {
		guard let student = student else { return }
		let modifiedStudent = StudentViewModel(id: student.id, name: textField.text ?? "")
		presenter.applyChanges(student: modifiedStudent)
	}
}

extension StudentEditorViewController: StudentEditorPresenterDelegate {
	
	func studentEditorPresenterDidLoad(student: StudentViewModel) {
		self.student = student
		textField.text = student.name
	}
}
