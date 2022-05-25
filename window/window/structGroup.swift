//
//  structGroup.swift
//  window
//
//  Created by RobertW. on 5/23/22.
//

import SwiftUI
struct BlueTwoView: View {
    @ObservedObject var arDelegate = ARDelegate()
    var color: Color
    var body: some View {
        ZStack {
            ARViewRepresentable(arDelegate: arDelegate)
            VStack {
                Spacer()
                Text(arDelegate.message)
                    .foregroundColor(Color.primary)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
                    .background(Color.secondary)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

            
  
struct GreenThreeView: View {
    var body: some View {
        
            CircleNumberView(color: .green, number: 3)
                .navigationTitle("Green Three")
                .offset( y: -60)
           
        }
    
}


struct CircleNumberView: View{
    var color: Color
    var number: Int
    
    var body: some View{
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text(String(number))
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}
