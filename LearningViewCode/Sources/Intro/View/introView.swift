//
//  introView.swift
//  LearningViewCode
//
//  Created by EDSON FELIPE VASCONCELOS on 27/05/22.
//

import UIKit

class introView: UIView {
    
    private lazy var helloLabel: UILabel = {
        var label = UILabel()
        label.text = "Hello World!"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Edson Felipe Dev iOS"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubview()
        constrainHelloLabel()
        constrainNameLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubview() {
        addSubview(helloLabel)
        addSubview(nameLabel)
    }
    
    private func constrainHelloLabel() {
        let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    private func constrainNameLabel() {
        let constraint = [
            nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 12),
            nameLabel.centerXAnchor.constraint(equalTo: helloLabel.centerXAnchor)
        ]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
}
