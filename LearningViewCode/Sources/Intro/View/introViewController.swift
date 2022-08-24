//
//  introViewController.swift
//  LearningViewCode
//
//  Created by EDSON FELIPE VASCONCELOS on 27/05/22.
//

import UIKit

final class introViewController: UIViewController {
    
    private var customView: introView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildView()
    }
    
    private func buildView() {
        view = introView()
        customView = view as? introView
    }
}
