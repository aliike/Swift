//
//  User.swift
//  ToDoList
//
//  Created by Ali Yetim on 25.06.2023.
//

import Foundation

struct User : Codable {
    let id:String
    let name:String
    let email:String
    let joined: TimeInterval
    
}
