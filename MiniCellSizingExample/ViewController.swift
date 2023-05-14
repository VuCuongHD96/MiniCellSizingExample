//
//  ViewController.swift
//  MiniCellSizingExample
//
//  Created by Work on 14/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let viewController = MiniCellSizingViewController()
        addChild(viewController)
        if let miniView = viewController.view {
            miniView.frame = CGRect(x: 0, y: 300, width: 300, height: 178)
            view.addSubview(miniView)
        }
        viewController.didMove(toParent: self)
    }
}
