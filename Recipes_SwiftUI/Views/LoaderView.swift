//
//  LoaderView.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 27/07/21.
//

import SwiftUI

struct LoaderView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        ZStack{
        ZStack{
            Color.white
            Circle()
                .trim(from: 0.0, to: 0.8)
                .stroke(Color.orange,style: .init(lineWidth: 5, lineCap: .round))
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .animation(isAnimated ? .linear(duration: 0.7).repeatForever(autoreverses: false) : .default)
                .frame(width: 60, height: 60)
            
        }
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear{
            DispatchQueue.main.async {
            isAnimated = true
            }
        }
        .onDisappear{
            DispatchQueue.main.async {
            isAnimated = false
            }
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant(""))
    }
}


struct SearchView:View {
    
    @Binding var searchText: String
    var body: some View{
        
        HStack{
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 20, height: 20)
            TextField("Search Recipes", text: $searchText)
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .background(Color.black.opacity(0.05))
        .cornerRadius(6)
        .padding(.horizontal)
    }
}

