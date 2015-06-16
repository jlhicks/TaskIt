//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by James Hicks on 6/14/15.
//  Copyright (c) 2015 zorch!. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

  var mainVC:ViewController!
  
  @IBOutlet weak var taskTextField: UITextField!
  @IBOutlet weak var subTaskTextField: UITextField!
  @IBOutlet weak var dueDatePicker: UIDatePicker!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  @IBAction func cancelButtonTapped(sender: UIButton) {
    self.dismissViewControllerAnimated(true, completion: nil)
  }

  @IBAction func addTaskButtonTapped(sender: UIButton) {
    var task = TaskModel(task: taskTextField.text, subTask: subTaskTextField.text, date: dueDatePicker.date, completed: false)
    mainVC.baseArray[0].append(task)
    self.dismissViewControllerAnimated(true, completion: nil)
  }
}
