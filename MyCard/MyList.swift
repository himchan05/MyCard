//
//  MyList.swift
//  MyCard
//
//  Created by 박힘찬 on 2022/03/12.
//

import SwiftUI

struct MyList: View {
    var body: some View {
        List {
            Section(header: Text("오늘 할 일").font(.system(size: 20)),
            footer: Text("Footer")){
                ForEach(1...3, id: \.self) {
                    BasicCard(title: "장보기 \($0)", detail: "11AM : 12AM", imgName: "music.quarternote.3", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            Section(header: Text("내일 할 일").font(.system(size: 20))) {
                ForEach(1...5, id: \.self) {
                    BasicCard(title: "런닝 \($0)", detail: "18PM - 20PM", imgName: "face.smiling.fill", bgColor: Color.brown)
                }
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내목록")
        .navigationBarItems(trailing: Image(systemName: "personalhotspot.circle"))
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
