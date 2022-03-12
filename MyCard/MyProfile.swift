//
//  MyProfile.swift
//  MyCard
//
//  Created by 박힘찬 on 2022/03/12.
//

import SwiftUI

struct MyProfile: View {
    let my_tistory = "https://himnimal.tistory.com"
    let my_github = "https://github.com/himchan05"
    let my_notion = "https://shelled-shift-84a.notion.site/PARK-HIM-CHAN-73190156c22f46c481676024a066f6d8"
    
    var body: some View {
        VStack {
            Image("MybgImage")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2) // or use ZStack
            VStack {
                ImageView()
                    HStack {
                        NavigationLink(destination: WebView(urlToLoad: my_tistory)) {
                            Text("My Tistory")
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(15)
                                .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                        }
                        NavigationLink(destination: WebView(urlToLoad: my_github)) {
                            Text("My Github")
                                .padding()
                                .background(Color.cyan)
                                .cornerRadius(15)
                                .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                            }
                        NavigationLink(destination: WebView(urlToLoad: my_notion)) {
                            Text("My Notion")
                                .padding()
                                .background(Color.green)
                                .cornerRadius(15)
                                .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                        }
                    }
                    .padding(.vertical)
                }
                .offset(y: -200)
        }
        .navigationBarTitle("Chan's Profile")
        .navigationBarItems(trailing: NavigationLink(destination: Text("설정 화면입니다.").font(.system(size: 40, weight: .bold))) {
            Image(systemName: "person.circle.fill")
                                    .font(.system(.largeTitle))
                                    .foregroundColor(Color.red)
        })
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
