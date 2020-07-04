//
//  AddItemViewController.swift
//  CombineTest
//
//  Created by Puspank Kumar on 04/07/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {
    func didAddItem(_ item: String)
}

class AddItemViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    weak var delegate: AddItemViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        delegate?.didAddItem(textField.text!)
        self.dismiss(animated: true, completion: nil)
    }

}
