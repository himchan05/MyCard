//
//  ContentView.swift
//  MyCard
//
//  Created by 박힘찬 on 2022/03/12.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    HStack {
                        NavigationLink(destination: MyList()) {
                            Image(systemName: "line.3.horizontal")
                                .padding(.horizontal)
                                .font(.largeTitle)
                                .foregroundColor(Color.green)
                        }

                        Spacer()
                        
                        NavigationLink(destination: MyProfile()) {
                            Image(systemName: "person.3.fill")
                                .padding(.horizontal)
                                .font(.largeTitle)
                                .foregroundColor(Color.green)
                        }
                    }
                    Text("Chan's Todo List")
                        .padding()
                        .font(.system(size: 30, weight: .bold))
                    ScrollView {
                        VStack {
                            MainCard()
                            BasicCard(title: "아침 식사", detail: "09AM : 10AM", imgName: "sun.max.fill", bgColor: Color.orange)
                            BasicCard(title: "샤워", detail: "10AM : 11AM", imgName: "network", bgColor: Color.purple)
                            BasicCard(title: "브런치", detail: "12AM : 13PM", imgName: "drop.circle.fill", bgColor: Color.gray)
                            BasicCard(title: "코딩", detail: "13PM : 18PM", imgName: "keyboard.fill", bgColor: Color.cyan)
                            BasicCard(title: "운동", detail: "19PM : 20PM", imgName: "sportscourt", bgColor: Color.green)
                        }
                        .padding(.bottom, 50)
                    }
                }
                Button(action: {print("버튼 클릭")}) {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding()
                        .overlay(Image(systemName: "plus")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color.white))
                }
            } // ZStack
            .navigationTitle("Main")
            .navigationBarHidden(true)

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
