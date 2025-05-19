//
//  ListRow.swift
//  TodoApp
//
//  Created by Development on 2025/05/19.
//

import SwiftUI

struct ListRow: View {
    let task: String

    var body: some View {
        HStack {
            Text("◻︎")
            Text(task)
        }
    }
}

#Preview {
    ListRow(task: "料理")
}
