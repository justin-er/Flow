//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/16/1400 AP.
//

import UIKit
import Main

class MainViewController: UIViewController {
	
	let cellReuseIdentifier = "CellReuseIdentifier"
	
	var presenter: MainPresenterProtocol
	let tableView = UITableView()
		
	init(presenter: MainPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configViewController()
		configTableView()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		presenter.loadStudents()
	}
	
	func configViewController() {
		view.backgroundColor = .systemBackground
	}
	
	func configTableView() {
		
		view.addSubview(tableView)
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
		tableView.dataSource = self
		tableView.delegate = self
		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
		])
	}
	
}

extension MainViewController: MainPresenterDelegate {
	
	func mainPresenterDidLoad() {
		tableView.reloadData()
	}
}

extension MainViewController: UITableViewDelegate {
	
}

extension MainViewController: UITableViewDataSource {
		
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		presenter.numberOfRowsIn(section: section)
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let studentViewModel = presenter.studentForRowAt(indexPath: indexPath) else {
			return UITableViewCell()
		}
		
		guard let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) else {
			return UITableViewCell()
		}
		
		cell.accessoryType = .disclosureIndicator
		cell.textLabel?.text = studentViewModel.name
		
		return cell
	}
	
}

