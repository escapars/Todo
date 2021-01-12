//
//  ContentView.swift
//  TodoList
//
//  Created by repoleved33 on 2021/01/10.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {

            TabView {
                ListView()
                    .tabItem{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                    .tag(0)
                CalendarView()
                    .tabItem{
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
                    .tag(1)
            }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
