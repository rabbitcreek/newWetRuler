//
//  structGroup.swift
//  window
//
//  Created by RobertW. on 5/23/22.
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
                
                Text ( String(format: "%.2f",tommy.fishFinder(keyNumber: selectedColorIndex, distNumber: arDelegate.answer) ))
                
                
                //Text(String(arDelegate.answer))
                Text(arDelegate.message)
                //Text(String(selectedColorIndex))
                    .foregroundColor(Color.primary)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
                    .background(Color.secondary)
            }
                
            }.edgesIgnoringSafeArea(.all)
        }
    }


