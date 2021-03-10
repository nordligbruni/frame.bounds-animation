//
//  ViewController.swift
//  Frame and Bounds
//
//  Created by Brunya on 10.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.backgroundColor = UIColor.systemPink
        tableView.frame = CGRect(x: 0, y: 88, width: view.frame.size.width, height: view.frame.size.height)

    let button = UIButton()
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(moveTable), for: .touchUpInside)
        view.addSubview(button)
        button.frame = CGRect (x: view.frame.size.width / 2 - (50), y: view.frame.size.height / 2 - (50), width: 100, height: 100)
    }

    @objc
    func moveTable() {
        UIView.animate(withDuration: 0.5) {
            self.tableView.frame.origin.x += 36
        }
    }
    
}

