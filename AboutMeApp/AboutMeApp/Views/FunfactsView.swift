//
//  FunfactsView.swift
//  LearnSampleApp
//
//  Created by BIYING on 2023/12/18.
//

import SwiftUI

struct FunfactsView: View {
    
    @State private var fact = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
            
            Text(fact)
                .frame(height: 400)
                .padding(20)
            
            Button("Show Random Fact") {
                
                //randomElement()方法返回的是一个可选值（Optional），某些情况下可能为nil
                //感叹号！用来进行强制解包，告诉编译器“我确定这里有一个值，请直接使用它”
                fact = information.funFacts.randomElement()!
            }
            .font(.headline)
            .frame(width: 220, height: 40)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
    }
}

#Preview {
    FunfactsView()
}
