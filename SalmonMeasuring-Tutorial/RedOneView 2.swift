//
//  RedOneView.swift
//  SalmonMeasuring-Tutorial
//
//  Created by RobertW. on 6/3/22.
//

import SwiftUI


struct RedOneView: View {
    private var colors = ["Pink Salmon", "Chum Salmon", "Coho Salmon", "Sockeye Salmon", "Chinook Salmon", "Black Cod", "Black Rockfish", "YellowEye Rockfish", "Pacific Halibut", "Human"]
    
    @State private var selectedColorIndex = 0
    var body: some View {
        NavigationView{
            GeometryReader {geo in
                ZStack {
                    Image("coverFour")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .opacity(1.0)
                    
                    
                    VStack{
                        Text("What Type of Fish?")
                            .font(.system(size: 20))
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        //.lineSpacing(50)
                        //.padding()
                            .offset(x:0, y: -180)
                        Picker("Favorite Color", selection: $selectedColorIndex, content: {
                            ForEach(0..<colors.count, content: { index in // <2>
                                Text(colors[index]) // <3>
                            })
                        })
                        .pickerStyle(WheelPickerStyle())
                        //Text("Selected color: \(selectedColorIndex)")
                        .offset(x: 100, y:-30)
                        
                        .padding(.bottom, 200)
                        //CircleNumberView(color: .red, number: 1)
                        //.navigationTitle("Which Fish?")
                        .offset( y: -60)
                       
                        NavigationLink(destination: BlueTwoView(selectedColorIndex: self.selectedColorIndex
                                ), label:{ Text("Measure")
                                .font(.system(size: 20))
                                .bold()
                                .frame(width: 280, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            
                        })
                    }
                }
            }
        }
        .accentColor(Color(.label))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RedOneView()
                .preferredColorScheme(.light)
            RedOneView()
        }
    }
}
