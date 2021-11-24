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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }

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
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        debugPrint(#function)
        reminders.remove(at:indexPath.row)
        tableView.deleteRows(at:[indexPath], with: .automatic)
    }
}

extension RemindersTableViewController:
    AddReminderViewControllerDelegate{
    func addNewReminder(withText maybetext: String?) {
        debugPrint(#function+"withText:\(maybetext)")
        if let text = maybetext{
            reminders.append(text)
            tableView.reloadData()
        }
    }
}
