//
//  BookParkingViewController.swift
//  parkPal
//
//  Created by Shivika Varshney on 10/22/23.
//

import UIKit

class BookParkingViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        createDatePicker()
//        let datePicker = UIDatePicker()
//        datePicker.datePickerMode = .date
//        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
//        datePicker.frame.size = CGSize(width: 0, height: 300)
//        datePicker.preferredDatePickerStyle = .wheels
//
//        dateTF.inputView = datePicker
//        dateTF.text = formatDate(date: Date()) //todays date
        
    }
//    func createToolbar() -> UIToolbar {
//        let toolbar = UIToolbar()
//        toolbar.sizeToFit()
//
//        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
//        toolbar.setItems([doneBtn], animated: true)
//
//        return toolbar
//    }
//
//    func createDatePicker() {
//        datePicker.preferredDatePickerStyle = .wheels
//        datePicker.datePickerMode = .date
//
//        dateTF.inputView = datePicker
//        dateTF.inputAccessoryView = createToolbar()
//    }
//
//    @objc func donePressed() {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        dateFormatter.timeStyle = .none
//
//        self.dateTF.text = dateFormatter.string(from: datePicker.date)
//        self.view.endEditing(true)
//    }
//    @objc func dateChange(datePicker: UIDatePicker) {
//        dateTF.text = formatDate(date: datePicker.date)
//    }
//
//    func formatDate(date: Date) -> String {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MMMM dd yyyy"
//        return formatter.string(from: date)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
