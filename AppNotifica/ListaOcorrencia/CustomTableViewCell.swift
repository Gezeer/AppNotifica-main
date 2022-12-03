//
//  CustomTableViewCell.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 03/12/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell{
    static let identifier = "CustomTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
