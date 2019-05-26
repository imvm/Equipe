//
//  SideMenuTableViewController.swift
//  Equipa
//
//  Created by Ian Manor on 26/05/19.
//  Copyright © 2019 Ian Manor. All rights reserved.
//

import UIKit

class SideMenuTableViewController: UITableViewController {
    var selectedItemIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "SideMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "reuseIdentifier")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! SideMenuTableViewCell
        cell.menuButton.tintColor = .black
        
        switch indexPath.row {
        case 0:
            cell.menuButton.setTitle("Perfil", for: .normal)
            cell.menuButton.addTarget(self, action: #selector(goToProfile), for: .touchUpInside)
        case 1:
            cell.menuButton.setTitle("Ganhos", for: .normal)
            cell.menuButton.addTarget(self, action: #selector(goToEarnings), for: .touchUpInside)
        case 2:
            cell.menuButton.setTitle("Pontos", for: .normal)
            cell.menuButton.addTarget(self, action: #selector(goToPoints), for: .touchUpInside)
        default:
            fatalError("Menu item doesn't exist.")
        }

        return cell
    }
    
    @objc func goToProfile() {
        print("Going to Profile")
    }
    
    @objc func goToEarnings() {
        print("Going to Earnings")
    }
    
    @objc func goToPoints() {
        let myViewController = ObjectiveViewController(nibName: "ObjectiveViewController", bundle: nil)
        self.navigationController?.pushViewController(myViewController, animated: true)
    }

}
