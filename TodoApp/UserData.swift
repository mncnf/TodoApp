//
//  UserData.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
        Task(title: "散歩", checked: true),
        Task(title: "料理", checked: true),
        Task(title: "筋トレ", checked: true)
    ]

    @Published var isEditing: Bool = false
}
