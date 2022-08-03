//
//  AddEventViewController.swift
//  aCityOfUnfortunateEvents
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class AddEventViewController: UIViewController {
    var previousVC = TableViewController()
    @IBOutlet weak var locationTextField: UITextField!

    @IBOutlet weak var unsafeSwitch: UISwitch!
    
    @IBOutlet weak var safeButStrangeSwitch: UISwitch!
    
    @IBOutlet weak var humorousSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
        // we have to grab this view context to be able to work with Core Data
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
        let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
        //figure out location vs description shit
        if let locationText = locationTextField.text{
            toDo.name = locationText
            toDo.unsafe = unsafeSwitch.isOn
            toDo.safeButStrange = safeButStrangeSwitch.isOn
            toDo.humorous = humorousSwitch.isOn
        }
            try? context.save()
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
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
