//
//  ViewController.swift
//  ObHavoApp04
//
//  Created by Rustam Xasan on 11/11/22.
//

import UIKit

class WatherViewController: UIViewController {

    let backgroundView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    style()
    layout()
    }
    
}

extension WatherViewController {
    func style() {
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        
        
    }
    
    func layout() {
        
        view.addSubview(backgroundView)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

        ])
        
        
    }
}


