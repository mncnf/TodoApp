//
//  Draft.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""

    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle)
    }
}

#Preview {
    Draft()
}
