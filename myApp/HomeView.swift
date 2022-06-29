//
//  HomeView.swift
//  myApp
//
//  Created by 김소현 on 2022/06/11.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    Button(action: {}){
                        Image(systemName : "camera")
                        .font(.title)
                        .foregroundColor(.black)
                    }.padding(.leading)

                    Text("Clonegram")
                        .font(.title)
                        .fontWeight(.semibold)
                        .fontWeight(.light)
                        .foregroundColor(.indigo)
                        .multilineTextAlignment(.leading)
                        .frame(width: 150, height: 40)

                    Spacer()


                    Button(action: {}){
                        Image("paper-plane")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }.padding(.trailing, 30)

                }.frame(height: 50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                        PreviewViewTop()
                    }
                }.frame(height: 70)
                
                TimelineDetailView().padding(.top, 20)
                
                BottomView()
                // 탭 뷰를 쓰는게 더 좋지 않을까?
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PreviewViewTop: View {
    var body: some View {
        ZStack(alignment: .bottom){
            HStack{
                VStack {
                    Image("night")
                    .resizable()
                    .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .shadow(radius: 3)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 2.2))
                        .padding(.top, 3)
                    
                    Text("Your Stories")
                        .font(.caption)
                }
                .customShadow()
            }
        }
    }
}