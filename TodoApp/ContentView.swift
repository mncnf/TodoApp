//
//  ContentView.swift
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

struct ContentView: View {
    var userData = UserData()

    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    ListRow(task: task.title, isCheck: task.checked)
                }
                Text("+")
                    .font(.title)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

#Preview {
    ContentView()
}
