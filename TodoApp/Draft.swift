//
//  Draft.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData

    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle)
            .onSubmit {
                self.createTask()
                self.userData.isEditing = false
            }
    }

    func createTask() {
        let newTask = Task(title: taskTitle, checked: false)
        userData.tasks.insert(newTask, at: 0)
//        userData.tasks.append(Task(title: taskTitle, checked: false))
        taskTitle = ""
    }
}

#Preview {
    Draft()
}
