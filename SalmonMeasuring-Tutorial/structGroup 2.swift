//
//  structGroup.swift
//  SalmonMeasuring-Tutorial
//
//  Created by RobertW. on 6/3/22.
//

import SwiftUI
struct BlueTwoView: View {
    @ObservedObject var arDelegate = ARDelegate()
    var tommy = fishyCalc()
    
    
    
    //var color: Color
    var selectedColorIndex: Int
    var body: some View {
        ZStack {
            ARViewRepresentable(arDelegate: arDelegate)
            VStack {
                
                Spacer()
                if selectedColorIndex==9 {
                    let human =  (22 * (pow((arDelegate.answer/100),2)) * 2.2)
                    Text(String(format: "%.2f Human Pounds", human))
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                else { Text ( String(format: "%.2f Pounds",tommy.fishFinder(keyNumber: selectedColorIndex, distNumber: arDelegate.answer) ) )
                    .font(.system(size: 20))
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)}
                
                //Text(String(arDelegate.answer))
                Text(arDelegate.message)
                //Text(String(selectedColorIndex))
                    .font(.system(size: 20))
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                
            }
                
            }.edgesIgnoringSafeArea(.all)
        }
    }


