//
//  MainCard.swift
//  MyCard
//
//  Created by 박힘찬 on 2022/03/12.
//

import SwiftUI

struct MainCard: View {
    @State var isShowAlert = false 
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .frame(height: 0)
            Text("박힘찬의 Swift UI 프로젝트")
                .font(.system(size: 20, weight: .bold, design: .rounded))
            Text("10 AM - 18 PM")
                .foregroundColor(Color.gray)
            HStack {
                Image("user1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(Color.green))
                Image("user2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(Color.blue))
                Image("user3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(Color.cyan))
                
                Spacer()
                
                Button(action: {
                    print("버튼 클릭")
                    isShowAlert = true
                }) {
                    Text("확인")
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                        .frame(width: 75, height: 50)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $isShowAlert) {
                    Alert(title: Text("알림창입니다."), message: Text("취소 버튼을 클릭해주세요. "), dismissButton: .cancel())
                }
            }
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(15)
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        MainCard()
    }
}
