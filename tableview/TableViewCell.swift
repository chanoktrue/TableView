//
//  TableViewCell.swift
//  tableview
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let titleName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false 
        label.tintColor = .red
        return label
    }()
    
    
    var list: String? {
        didSet {
            if let name = list {
                titleName.text = name
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        addSubview(titleName)
        titleName.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleName.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        titleName.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        titleName.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    
    
}
