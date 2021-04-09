//
//  OrderViewController.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/19/1400 AP.
//

import UIKit
import Order

class OrderViewController: UIViewController {

	let interactor: OrderProtocol
	
	var text: String = ""
	
	var completion: ((Result<String, Error>) -> Void)?
	
	
	@IBOutlet weak var receivedLabel: UILabel!
	@IBOutlet weak var textField: UITextField!
	
	init(interactor: OrderProtocol) {
		self.interactor = interactor
		super.init(nibName: nil, bundle: nil)
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		receivedLabel.text = self.text
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func doneButtonDidTap(_ sender: UIButton) {
		let dataString = self.text + (textField.text ?? "NA")
		interactor.analyzeOrder(message: dataString, completion: completion)
	}
}
