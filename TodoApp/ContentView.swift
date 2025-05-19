//
//  ContentView.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ListRow(task: "散歩")
                ListRow(task: "料理")
                ListRow(task: "筋トレ")
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
