//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Amirreza Eghtedari on 1/16/1400 AP.
//

import UIKit

class StudentListViewController: UIViewController {
	
	let cellReuseIdentifier = "CellReuseIdentifier"
	
	var presenter: StudentListPresenterProtocol
	let tableView = UITableView(frame: CGRect.zero, style: .insetGrouped )
		
	var updatedIndexPaths = [IndexPath]()
	
	init(presenter: StudentListPresenterProtocol) {
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
		presenter.loadStudents()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		if updatedIndexPaths.count > 0 {
			tableView.reloadRows(at: updatedIndexPaths, with: .automatic)
			updatedIndexPaths.removeAll()
		}
	}
	
	func configViewController() {
		view.backgroundColor = .systemBackground
		self.title = "Student List"
	}
	
	func configTableView() {
		
		view.addSubview(tableView)
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(StudentListTableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
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

extension StudentListViewController: StudentListPresenterDelegate {
	
	func mainPresenterDidLoad() {
		tableView.reloadData()
	}
	
	func mainPresenterDidUpdate(at indexPath: IndexPath) {
		updatedIndexPaths.append(indexPath)
	}
}

extension StudentListViewController: UITableViewDelegate {

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		guard let cell = tableView.cellForRow(at: indexPath) as? StudentListTableViewCell else { return }
		guard let studentViewModel = cell.model else { return }
		presenter.edit(student: studentViewModel.id)
	}
}

extension StudentListViewController: UITableViewDataSource {
		
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		presenter.numberOfRowsIn(section: section)
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let studentViewModel = presenter.studentForRowAt(indexPath: indexPath) else {
			return UITableViewCell()
		}
		
		guard let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as? StudentListTableViewCell else {
			return UITableViewCell()
		}
		
		cell.model = studentViewModel
		var content = cell.defaultContentConfiguration()
		content.text = studentViewModel.name
		content.secondaryText = "\(studentViewModel.age)"
		
		cell.contentConfiguration = content
		
		return cell
	}
	
}

