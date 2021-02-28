//
//  TaskEmptyCell.swift
//  ToDoListSwiftUI
//
//  Created by 竹ノ内愛斗 on 2021/02/28.
//  Copyright © 2021 竹ノ内愛斗. All rights reserved.
//

import SwiftUI

struct TaskEmptyCell: View {

    @State var taskName = ""

    var body: some View {
        HStack {
            Image(systemName: "plus.circle")
                .resizable()
                .frame(width: 20, height: 20)
            TextField("", text: $taskName)
        }
    }
}

struct TaskEmptyCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskEmptyCell()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
