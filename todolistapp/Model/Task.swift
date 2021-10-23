//
//  Task.swift
//  todolistapp
//
//  Created by João Marcos on 20/10/21.
//

import Foundation
import UIKit

struct Task {
  var id = UUID()
  var name: String = ""
  var data: Date = Date()
  var categoria: Category = Category(name: "Marketing", color: .black)
}
