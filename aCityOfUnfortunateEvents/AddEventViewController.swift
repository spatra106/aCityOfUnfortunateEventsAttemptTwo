//
//  AddEventViewController.swift
//  aCityOfUnfortunateEvents
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class AddEventViewController: UIViewController {
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var unsafeSwitch: UISwitch!
    
    @IBOutlet weak var safeButStrangeSwitch: UISwitch!
    
    @IBOutlet weak var humorousSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        //figure out location vs description shit
        if let locationText = locationTextField.text{
            toDo.name = locationText
            toDo.unsafe = unsafeSwitch.isOn
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
