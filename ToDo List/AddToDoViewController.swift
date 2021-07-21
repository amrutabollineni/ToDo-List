//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Amruta Bollineni on 7/20/21.
//

import UIKit



class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController ()
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  
    @IBAction func addButtonTapped(_ sender: Any) {
    
    let toDo = ToDo ()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController (animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
