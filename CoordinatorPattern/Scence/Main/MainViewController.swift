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
	
	let orderButton = UIButton()
	
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
		configOrderButton()
	}
	
	func configViewController() {
		view.backgroundColor = .systemBackground
	}
	
	func configOrderButton() {
		orderButton.setTitle("Order", for: .normal)
		orderButton.setTitleColor(.systemBlue, for: .normal)
		orderButton.addTarget(self, action: #selector(orderButtonDidTap(button:)), for: .touchUpInside)
		view.addSubview(orderButton)
		orderButton.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			orderButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
			orderButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
			orderButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
		])
	}
	
	@objc
	func orderButtonDidTap(button: UIButton) {
		interactor.order(name: "Amir")
	}
}

