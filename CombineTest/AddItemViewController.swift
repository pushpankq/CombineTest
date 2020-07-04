//
//  AddItemViewController.swift
//  CombineTest
//
//  Created by Puspank Kumar on 04/07/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import UIKit
import Combine

class AddItemViewController: UIViewController {
    
    let newItem = PassthroughSubject<String, Never>()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        newItem.send(textField.text!)
        self.dismiss(animated: true, completion: nil)
    }

}
