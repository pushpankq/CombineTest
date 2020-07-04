//
//  ViewController.swift
//  CombineTest
//
//  Created by Puspank Kumar on 04/07/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    var items: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension ViewController {
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let addItemViewController = storyboard.instantiateViewController(identifier: "addItemViewController") as! AddItemViewController
        addItemViewController.delegate = self
        present(addItemViewController, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}

extension ViewController: AddItemViewControllerDelegate {
    func didAddItem(_ item: String) {
        self.items.append(item)
        tableView.beginUpdates()
        tableView.insertRows(at: [.init(row: items.count - 1, section: 0)], with: .automatic)
        tableView.endUpdates()
    }
    
}
