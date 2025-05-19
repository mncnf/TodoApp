//
//  UserTask.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var checked: Bool

    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}
