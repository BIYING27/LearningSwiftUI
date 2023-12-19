//
//  FavoritesView.swift
//  AboutMe
//
//  Created by BIYING on 2023/12/19.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(40)
            
            Text("Hobbies")
                .font(.title2)
            
            HStack(spacing: 20) {
                ForEach(information.hobbies, id: \.self){ hobbie in
                    Image(systemName: hobbie)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                }
            }
            .padding(20)
            
            Text("Foods")
                .font(.title2)
            
            HStack(spacing: 40) {
                ForEach(information.foods, id:\.self) { food in
                    Text(food)
                        .font(.largeTitle)
                }
            }
            .padding(12)
            
            Text("Favorite Color")
                .font(.title2)
            
            HStack(spacing: 20) {
                ForEach(information.colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width:60, height:60)
                        .foregroundColor(color)
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    FavoritesView()
}
