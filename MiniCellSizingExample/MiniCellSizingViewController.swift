//
//  MiniCellSizingViewController.swift
//  MiniCellSizingExample
//
//  Created by Work on 14/05/2023.
//

import UIKit

final class MiniCellSizingViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var slideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        setupSlideButton()
    }
  
    private func hide() {
        let tableViewWidth = tableView.frame.width
        view.transform = .init(translationX: -tableViewWidth, y: 0)
        print("--- debug ----- before slideButton.isSelected = ", slideButton.state.rawValue)

        print("--- debug ----- after slideButton.isSelected = ", slideButton.state.rawValue)

    }
    
    private func show() {
        view.transform = .identity
    }
    
    @IBAction func slideAction(_ sender: Any) {
        print("--- debug ----- view width = ", view.frame.width)
        print("--- debug ----- tableView frame = ", tableView.frame)
        let tableViewWidth = tableView.frame.width

        print("--- debug ----- tableView width = ", tableViewWidth)
        slideButton.isSelected = !slideButton.isSelected

        UIView.animate(withDuration: 2) {
            if self.slideButton.isSelected {
                self.hide()
            } else {
                self.show()
            }
        }
    }
    
    private func setupSlideButton() {
        print("--- debug ----- start slideButton.isSelected = ", slideButton.state.rawValue)

        slideButton.setImage(UIImage(systemName: "arrowshape.left.fill"), for: .normal)
        slideButton.setImage(UIImage(systemName: "arrowshape.right.fill"), for: .selected)
    }
}

extension MiniCellSizingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .red
        cell.textLabel?.text = "aaaaa"
        return cell
    }
}
