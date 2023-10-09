//
//  ViewController.swift
//  InstagramPost
//
//  Created by Pedro Thomas on 10/9/23.
//

import UIKit

class ViewController: UIViewController {

  let tableView = UITableView()
  
  let albumImages: [UIImage] = [
    UIImage(named: "DIL")!,
    UIImage(named: "BDay")!,
    UIImage(named: "IASF")!,
    UIImage(named: "four")!,
    UIImage(named: "SelfTitled")!,
    UIImage(named: "Lemonade")!,
    UIImage(named: "Renaissance")!
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Instagram"
    view.backgroundColor = .black
    setupTableView()
  }
  
  func setupTableView() {
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(PostInfoCell.self, forCellReuseIdentifier: "Cell")
    tableView.allowsSelection = false
    
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: view.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    ])
  }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! PostInfoCell
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 480
  }
    
}
