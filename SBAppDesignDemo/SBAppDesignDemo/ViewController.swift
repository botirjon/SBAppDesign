//
//  ViewController.swift
//  SBAppDesignDemo
//
//  Created by Botirjon Nasridinov on 05/05/23.
//

import UIKit
import SBAppDesign

class ViewController: UIViewController {

    private lazy var testLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.th.setTextColor(.textPrimary)
        label.th.setInterFont(ofTextStyle: .primaryLargeSemiBold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.th.setBackgroundColor(.backgroundSecondary)
    }


}

