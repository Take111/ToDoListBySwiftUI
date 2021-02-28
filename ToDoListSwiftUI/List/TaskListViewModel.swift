//
//  TaskListViewModel.swift
//  ToDoListSwiftUI
//
//  Created by 竹ノ内愛斗 on 2021/02/28.
//  Copyright © 2021 竹ノ内愛斗. All rights reserved.
//

import Foundation
import Combine

final class TaskListViewModel: ObservableObject {

    @Published var tasks = [Task]()

    func remove(_ indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }

    func add(_ task: Task) {
        tasks.append(task)
    }
}


final class TaskState {
    var tasks = [Task]()
}
