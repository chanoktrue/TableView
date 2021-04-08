//
//  ViewController.swift
//  tableview
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import UIKit

class ViewController: UIViewController {
    
    let lists = ["A", "B", "C", "D" ,"E"]
    let cellID = "CellID"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        tableView.reloadData()
    }
    
    func setupView() {
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TableViewCell
        cell.list = lists[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
