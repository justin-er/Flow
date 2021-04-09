//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/16/1400 AP.
//

import UIKit
import Main

class MainViewController: UIViewController {
	
	var interactor: MainProtocol
	
	let textField = UITextField()
	let orderButton = UIButton()
	let resultLabel = UILabel()
	
	init(interactor: MainProtocol) {
		self.interactor = interactor
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configViewController()
		configTextField()
		configOrderButton()
		configResultLable()
	}
	
	func configViewController() {
		view.backgroundColor = .systemBackground
	}
	
	func configTextField() {
		textField.borderStyle = .roundedRect
		textField.minimumFontSize = 17
		
		textField.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(textField)
		
		NSLayoutConstraint.activate([
			textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
			textField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
			textField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
			textField.heightAnchor.constraint(equalToConstant: 32)
		])
	}
	
	func configOrderButton() {
		orderButton.setTitle("Order", for: .normal)
		orderButton.setTitleColor(.systemBlue, for: .normal)
		orderButton.addTarget(self, action: #selector(orderButtonDidTap(button:)), for: .touchUpInside)
		view.addSubview(orderButton)
		orderButton.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			orderButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
			orderButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
			orderButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
		])
	}
	
	@objc
	func orderButtonDidTap(button: UIButton) {
		interactor.order(name: textField.text ?? "No entry")
	}
	
	func configResultLable() {
		resultLabel.textColor = .black
		resultLabel.textAlignment = .center
		
		view.addSubview(resultLabel)
		resultLabel.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			resultLabel.topAnchor.constraint(equalTo: orderButton.bottomAnchor, constant: 50),
			resultLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
			resultLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
			resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		])
	}
}

extension MainViewController: MainDelegate {
	
	func interactorDidProcessOrder(result: String) {
		resultLabel.text = result
	}
	
}

