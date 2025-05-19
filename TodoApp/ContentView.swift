//
//  ContentView.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List {
                ForEach(self.userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else {
                            return
                        }

                        self.userData.tasks[index].checked.toggle()
                    }) {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                if self.userData.isEditing {
                    Draft()
                } else {
                    Button(action: {
                        self.userData.isEditing = true
                    }) {
                        Text("+")
                            .font(.title)
                    }
                }
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action: {
                self.DeleteTask()
            })
                { Text("Delete") })
        }
    }

    func DeleteTask() {
        let necessaryTask = self.userData.tasks.filter { !$0.checked }
        self.userData.tasks = necessaryTask
    }
}

#Preview {
    ContentView()
        .environmentObject(UserData())
}
