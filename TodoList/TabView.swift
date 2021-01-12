////
////  TabView.swift
////  TodoList
////
////  Created by 박규원 on 2021/01/10.
////
//
//import SwiftUI
//
//enum TabIndex {
//    case list, calendar
//}
//
//struct TabView: View {
//    
//    @State var tabIndex: TabIndex
//    func changeTab(tabIndex: TabIndex) -> View {
//        switch tabIndex{
//            case .list:
//                return ListView()
//            case .calendar:
//                return CalendarView()
//        }
//    }
//    
//    var body: some View {
//        GeometryReader { geo in
//            ZStack(alignment: .bottom){
//                self.changeTab(tabIndex: self.tabIndex)
//                HStack(spacing: 0) {
//                    
//                    
//                    Button(action: {
//                        
//                    }){
//                        Image(systemName: "list.bullet")
//                            .foregroundColor(Color.white)
//                            .frame(width: geo.size.width/2, height: 50)
//                    }.background(Color.gray)
//                    
//                    Button(action: {
//                        
//                    }){
//                        Image(systemName: "calendar")
//                            .foregroundColor(Color.white)
//                            .frame(width: geo.size.width/2, height: 50)
//                    }.background(Color.gray)
//                    
//                }
//            }
//        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct TabView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView(tabIndex: .list)
//    }
//}
