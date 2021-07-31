//
//  LandingView.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 27/07/21.
//

import SwiftUI

struct LandingView: View {
    
    @State var isPresentList: Bool = false
    var body: some View {
        ZStack{
            Image("landing")
                .resizable()
            Color.black.opacity(0.6)
            VStack(alignment: .center, spacing: 25){
                Spacer()
                Text("Cooking Experience Like a Chef")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("Let's make a delicious dish with the best recipe for the family")
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    isPresentList = true
                }){
                    Text("Get Started")
                        .fontWeight(.medium)
                }
                .frame(width: 200)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(20)
                
                Spacer()
                    .frame(height: 150)
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.width)
        .edgesIgnoringSafeArea(.all)
        .fullScreenCover(isPresented: $isPresentList, content: {
            RecipeListView()
        })
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
            
    }
}

