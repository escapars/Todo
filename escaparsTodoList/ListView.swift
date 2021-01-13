//
//  ListView.swift
//  escaparsTodoList
//
//  Created by repoleved33 on 2021/01/13.
//

import SwiftUI

struct GroupBox: Identifiable{
    var id = UUID()
    var content: String
}

struct ListView: View {
    @State
    var groupBoxes: [GroupBox] = [GroupBox(content: "할일"),GroupBox(content: "그룹")]
    
    func addGroupBox() {
        let newGroupBox = GroupBox(content:"New")
        self.groupBoxes.append(newGroupBox)
    }
    
    func deleteGroupBox(id: Int) {
        self.groupBoxes.remove(at: id)
    }
    
    var body: some View {
        GeometryReader { geo in
        ScrollView {
            
                VStack(alignment: .leading){
                    Button(action: {
                        addGroupBox()
                    }){
                        Image(systemName: "plus.circle")
                            .foregroundColor(Color.white)
                            .padding(10)
                        
                    }
                    .frame(width: 30, height: 30)
                    .background(Color.orange)
                    .cornerRadius(20)
                    
                    LazyVGrid(columns: [
                        GridItem(.flexible(maximum: geo.size.width/2)),
                        GridItem(.flexible(maximum: geo.size.width/2))
                    ], alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: nil, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                        ForEach(groupBoxes){ groupItem in
                            VStack{
                                Text("\(groupItem.content)")
                            }//VStack
                            .frame(width: geo.size.width/8*3, height: geo.size.height/4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(20)
                            
                            .onTapGesture {
                                deleteGroupBox(id: 0)
                            }
                            
                        }

                    })
                }
                .padding()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
