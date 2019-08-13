//
//  ToDoListTableViewController.swift
//  TableViewIntroductionLab
//
//  Created by Radharani Ribas-Valongo on 8/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    
    //MARK: - Properties
    let tasks = TaskData.allTasks
    let completed = TaskData.completedTasks
    let inProgress = TaskData.inProgressTasks
    let notStarted = TaskData.notStartedTasks
    
    //MARK: - Life Cycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section{
        case 0:
            return inProgress.count
        case 1:
            return notStarted.count
        case 2:
            return completed.count
        default:
            return 0
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoListCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = inProgress[indexPath.row].name
            cell.detailTextLabel?.text = inProgress[indexPath.row].dueDate.description
            return cell
        case 1:
            cell.textLabel?.text = notStarted[indexPath.row].name
            cell.detailTextLabel?.text = notStarted[indexPath.row].dueDate.description
            return cell
        case 2:
            cell.textLabel?.text = completed[indexPath.row].name
            cell.detailTextLabel?.text = completed[indexPath.row].dueDate.description
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "In Progress"
        case 1:
            return "Not Started"
        case 2:
            return "Completed"
        default:
            return ""
        }
    }


}
