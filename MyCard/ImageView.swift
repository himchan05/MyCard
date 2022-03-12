//
//  ImageView.swift
//  MyCard
//
//  Created by 박힘찬 on 2022/03/12.
//


import SwiftUI

struct ImageView: View {
    var body: some View {
//            Image(systemName: "airplane")
//                .font(.system(size: 200))
//                .foregroundColor(Color.blue)
//                .shadow(color: Color.gray, radius: 2, x: 10, y: 10)
        Image("MyImage")
            .resizable() // 이미지 사이즈 조절
            .scaledToFill() // 비율 조절
            .frame(width: 250, height: 250)
            .clipShape(Circle())// 프레임 영역 조절
            .shadow(color: Color.gray, radius: 5, x: 20, y: 20)
            .overlay(Circle().stroke(Color.red, lineWidth: 5).padding(10)) // 뷰 덧씌우기 (stroke = 외곽)
            .overlay(Circle()
                        .stroke(Color.red, lineWidth: 5)
                        .padding(0)) // 뷰 덧씌우기
            .overlay(Circle()
                        .stroke(Color.red, lineWidth: 5)
                        .padding(-10)) // 뷰 덧씌우기
            .overlay(Circle()
                        .foregroundColor(Color.gray)
                        .opacity(0.3)) // 뷰 덧씌우기 (투명도)
            .overlay(Text("HuynDai")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .foregroundColor(Color.blue))
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
