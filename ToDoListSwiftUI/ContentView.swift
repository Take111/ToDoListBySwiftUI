//
//  ContentView.swift
//  ToDoListSwiftUI
//
//  Created by 竹ノ内愛斗 on 2020/04/05.
//  Copyright © 2020 竹ノ内愛斗. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello")
        }
        .navigationBarTitle(Text("Todo List"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
