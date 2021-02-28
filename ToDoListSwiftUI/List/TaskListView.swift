//
//  TaskListView.swift
//  ToDoListSwiftUI
//
//  Created by 竹ノ内愛斗 on 2021/02/28.
//  Copyright © 2021 竹ノ内愛斗. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var viewModel: TaskListViewModel

    @State var presentAddNewItem = false
    @State private var showCreateViewByModal = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    ForEach(viewModel.tasks) { task in
                        TaskCell(task: task)
                    }
                    .onDelete(perform: { indexSet in
                        viewModel.remove(indexSet)
                    })
                }
            }
            .navigationBarTitle("Tasks", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                showCreateViewByModal = true
            }, label: {
                Image(systemName: "plus")
                    .foregroundColor(.black)
                Spacer()
            }).sheet(isPresented: $showCreateViewByModal, content: {
                CreateTaskView(showModal: $showCreateViewByModal)
            })
            )
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(viewModel: .init())
    }
}

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

let debugTasks = [Task(title: "Number1", completed: false), Task(title: "Number2", completed: false)]
