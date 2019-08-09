//
//  ViewController.swift
//  SimpleChatApp
//
//  Created by 比嘉幹樹 on 2019/08/08.
//  Copyright © 2019 比嘉幹樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roomNameTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    // チャットの部屋一覧を保持する配列
    var rooms: [Room] = [] {
        //roomsがかきかわった時
        didSet {
        //
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func didClickButton(_ sender: UIButton) {
    }
    


}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let room = rooms[indexPath.row]
        
        cell.textLabel?.text = room.name
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    
    
    
}
