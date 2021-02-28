//
//  TaskCell.swift
//  ToDoListSwiftUI
//
//  Created by 竹ノ内愛斗 on 2021/02/28.
//  Copyright © 2021 竹ノ内愛斗. All rights reserved.
//

import SwiftUI

struct TaskCell: View {
    var task: Task

    var onCommit: (Result<Task, InputError>) -> Void = { _ in }

    @State var name = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: task.completed
                        ? "checkmark.circle.fill"
                        : "circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                TextField("", text: $name,
                          onCommit: {
                            if !name.isEmpty {
                                self.onCommit(.success(Task(title: name, completed: false)))
                            }
                            else {
                                self.onCommit(.failure(.empty))
                            }
                          })
            }
            Spacer()
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: Task(title: "挨拶する", completed: false))
            .padding().previewLayout(.sizeThatFits)
    }
}

enum InputError: Error {
    case empty
}
