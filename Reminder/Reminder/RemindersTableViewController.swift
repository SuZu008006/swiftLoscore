//
//  RemindersTableViewController.swift
//  Reminder
//
//  Created by Ryosuke Ito on 2021/11/24.
//

import UIKit

final class RemindersTableViewController: UITableViewController {
    
    private var reminders: [String] = [
        "宿題", "散歩"
    ]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if
            let navigationVC = segue.destination as? UINavigationController,
            let addReminderVC = navigationVC.topViewController as? AddReminderViewController{
            addReminderVC.delegate = self
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell", for: indexPath)
 
        cell.textLabel?.text = reminders[indexPath.row]
 
        return cell
    }
}

extension RemindersTableViewController:
    AddReminderViewControllerDelegate{
    func addNewReminder(withText text: String?) {
        debugPrint(#function+"withText:\(text)")
    }
}
