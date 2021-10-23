//
//  MyTaskTableViewController.swift
//  todolistapp
//
//  Created by João Marcos on 19/10/21.
//

import UIKit



class MyTaskTableViewController: UITableViewController {
  private var dateFormatter = DateFormatter()
  let tasks = [
    Task(name: "Task Teste", data: Date(), categoria: Category(name: "Marketing", color: .gray)),
    Task(name: "Atividade para ser feita", data: Date(), categoria: Category(name: "Marketing", color: .gray)),
    
  ]

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tasks.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as! TaskTableViewCell
    let task = tasks[indexPath.row]
    
    dateFormatter.dateFormat = "HH:mm"
    cell.hourLabel.text = dateFormatter.string(from: task.data)
    
    dateFormatter.dateFormat = "dd/MM/yyyy"
    cell.dateLabel.text = dateFormatter.string(from: task.data)
    
    cell.categoryNameLabel.text = task.categoria.name
    cell.categoryView.backgroundColor = task.categoria.color
    
    cell.taskDescriptionLabel.text = task.name
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Celula foi clicada")
  }
  
}
