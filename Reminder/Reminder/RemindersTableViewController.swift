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
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell", for: indexPath)
 
        cell.textLabel?.text = reminders[indexPath.row]
 
        return cell
    }
}
