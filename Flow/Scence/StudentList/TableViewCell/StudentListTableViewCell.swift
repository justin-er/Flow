//
//  StudentTableViewCell.swift
//  RouterPattern
//
//  Created by Amirreza Eghtedari on 2/16/1400 AP.
//

import UIKit

class StudentListTableViewCell: UITableViewCell {
	
	var model: StudentViewModel?
		
	func configCell() {
		self.accessoryType = .disclosureIndicator
	}
	
    override func awakeFromNib() {
        super.awakeFromNib()
		configCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
