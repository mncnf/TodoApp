//
//  ListRow.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

struct ListRow: View {
    let task: String
    var isCheck: Bool

    var body: some View {
        HStack {
            if isCheck {
                Text("☑︎")
            } else {
                Text("◻︎")
            }

            Text(task)
        }
    }
}

#Preview {
    ListRow(task: "料理", isCheck: true)
}
