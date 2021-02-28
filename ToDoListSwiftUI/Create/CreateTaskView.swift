//
//  CreateTaskView.swift
//  ToDoListSwiftUI
//
//  Created by 竹ノ内愛斗 on 2021/02/28.
//  Copyright © 2021 竹ノ内愛斗. All rights reserved.
//

import SwiftUI

struct CreateTaskView: View {

    @Binding var showModal: Bool

    @State private var taskName = ""

    var body: some View {
        NavigationView{
            VStack(alignment: .center, content: {
                Text("今日のタスクを入力してください")
                    .padding()
                TextField("タスクを入力", text: $taskName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    showModal.toggle()
                }, label: {
                    Text("保存").foregroundColor(.black)
                })
                .frame(width: 72, height: 36)
                .foregroundColor(Color.orange)
                .background(Color.orange)
                .cornerRadius(12)
                .padding()
            })
            .navigationBarTitle("作成", displayMode: .inline)
        }
    }
}

struct CreateTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTaskView(showModal: .constant(true))
    }
}
