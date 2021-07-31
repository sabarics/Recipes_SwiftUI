//
//  RecipeDetailsView.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 28/07/21.
//

import Foundation
import SwiftUI
import UIKit

struct RecipeDetailsView: View {
    
    @State var recipeId: Int = 0
    @State var recipeName: String = ""
    @StateObject var viewModel:RecipeDetailsViewModel = RecipeDetailsViewModel()
    
    var body: some View{
        ZStack{
            ScrollView{
                if let _ = viewModel.recipeDetails{
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                        RecipeDetailsHeaderView(viewModel: viewModel)
                        RecipeDetailsIngredientListView(ingridentList: viewModel.recipeDetails?.extendedIngredients ?? [])
                        if viewModel.recipeDetails?.analyzedInstructions?.count ?? 0 > 0{
                            RecipeDetailsInstructionView(analyzedInstructions: viewModel.recipeDetails.analyzedInstructions?[0].steps ?? [])
                        }
                    }
                    .padding()
                }
                
            }
            if viewModel.isLoading{
                LoaderView()
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear{
            viewModel.getRecipeDetails(recipeID: recipeId)
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView()
    }
}

struct RecipeDetailsHeaderView: View{
    
    @ObservedObject var viewModel:RecipeDetailsViewModel
    
    
    var body: some View{
        VStack{
            Text(viewModel.recipeDetails.title ?? "")
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(3)
                .frame(maxWidth:.infinity)
            NetworkImage(url: URL(string: viewModel.recipeDetails?.image ?? ""))
                .frame(width: 250, height: 250)
                .cornerRadius(125)
            RecipeDetailsInfoView(recipeDetails: viewModel.recipeDetails)
        }
    }
}


struct RecipeDetailsInfoView: View {
    
    @State var recipeDetails:RecipeDetails!
    
    var body: some View{
        
        HStack(spacing:30){
            VStack{
                Image(systemName: "clock")
                    .foregroundColor(.orange)
                Text("\(recipeDetails?.readyInMinutes ?? 0) mins")
                    .foregroundColor(.orange)
            }
            
            VStack{
                Image(systemName: "heart")
                    .foregroundColor(.orange)
                Text("\(recipeDetails?.aggregateLikes ?? 0) likes")
                    .foregroundColor(.orange)
            }
            
            VStack{
                Image(systemName: "circle.grid.cross")
                    .foregroundColor(.orange)
                Text("\(recipeDetails?.servings ?? 0) Serving")
                    .foregroundColor(.orange)
            }
            
            VStack{
                Image(systemName: "star")
                    .foregroundColor(.orange)
                Text("\(recipeDetails?.spoonacularScore ?? 0)/100")
                    .foregroundColor(.orange)
            }
        }
        .frame(maxWidth:.infinity)
        .padding()
        .background(Color.orange.opacity(0.17))
        .cornerRadius(10)
    }
}

struct RecipeDetailsIngredientListView: View {
    
    @State var ingridentList: [ExtendedIngredient] = []
    var body: some View{
        VStack(alignment:.leading){
            HStack{
                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("\(ingridentList.count) Ingredients")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
                .frame(height:10)
            ForEach(ingridentList){ ingrident in
                RecipeDetailsIngredientView(ingrident: ingrident)
            }
            
        }
    }
}

struct RecipeDetailsIngredientView:View {
    
    @State var ingrident: ExtendedIngredient!
    var body: some View{
        HStack{
            let url = "https://spoonacular.com/cdn/ingredients_100x100/\( ingrident?.image ?? "")"
            NetworkImage(url: URL(string: url))
                .frame(width: 60, height: 60)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(7)
            VStack(alignment:.leading){
                Text(ingrident.originalString ?? "")
                    .foregroundColor(Color.gray)
            }
            Spacer()
        }
        .padding(.bottom,10)
        .frame(maxWidth:.infinity)
    }
}

struct RecipeDetailsInstructionView: View {
    @State var analyzedInstructions: [Step] = []
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        VStack(alignment:.leading,spacing:10){
            Text("Instruction")
                .font(.title2)
                .fontWeight(.bold)
            ForEach(analyzedInstructions){ instruction in
                HStack{
                    Text("\(instruction.number ?? 0).)\(instruction.step ?? "")")
                        .foregroundColor(Color.gray)
                    Spacer()
                }
            }
            
            Button(action: {
                print("Start Cooking")
                self.presentationMode.wrappedValue.dismiss()
            }){
                Text("Start Cooking")
                    .fontWeight(.medium)
            }
            .frame(maxWidth:.infinity)
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(20)        }
            .frame(maxWidth:.infinity)
            .padding()
    }
}

