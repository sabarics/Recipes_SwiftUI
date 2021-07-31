//
//  RecipeListView.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 27/07/21.
//

import SwiftUI

struct RecipeListView: View {
    
    init() {
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    @State var cusinesList:[String] = getCusinesList()
    
    @StateObject var viewModel:RecipeListViewModel = RecipeListViewModel()
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    VStack{
                        SearchView(searchText: $viewModel.searchtext)
                        CusineListView(cusinesList: $cusinesList, cuisineText: $viewModel.cuisineText, viewModel: viewModel)
                        
                        TrendingListView(viewModel: viewModel)
                        
                        MainRecipeListView(viewModel: viewModel)
                    }
                }
                if viewModel.isLoading || viewModel.isTrendingLoading{
                    LoaderView()
                }
            }
            .navigationTitle("Find Best Recipe")
            .onAppear{
                if apiKey != "" && apiKey != "your api key"{
                    viewModel.getRecipeList(cusine: viewModel.cuisineText, searchText: "")
                    viewModel.getRecommendedRecipes()
                }
                else{
                    fatalError("Api key is missing, SignIn to spoonacular and get api key ")
                }
            }
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}




struct CusineListView:View {
    
    @Binding var cusinesList:[String]
    @Binding var cuisineText: String
    @ObservedObject var viewModel:RecipeListViewModel
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 70, maximum: 170), spacing: 20)]){
                ForEach(cusinesList, id:\.self){ cusine in
                    Text(cusine)
                        .padding(.horizontal)
                        .padding(.vertical,6)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(cusine == cuisineText ? Color.orange : Color.gray, lineWidth: 1)
                        )
                        .foregroundColor(cusine == cuisineText ? .orange : .gray)
                        .onTapGesture {
                            cuisineText = cusine
                            viewModel.getRecipeList(cusine: cusine, searchText: "")
                        }
                }
            }
        }
        .padding()
        .frame(height: 70)
    }
}


struct TrendingView:View {
    
    @State var recipe:RecipeDetails!
    var body: some View{
        NavigationLink(
            destination: RecipeDetailsView(recipeId: recipe.id ?? 0, recipeName: recipe.title ?? "")){
            VStack(alignment: .leading, spacing: 12){
                
                Text(recipe.title ?? "")
                    .font(.headline)
                    .lineLimit(2)
                    .frame(height: 50)
                    .foregroundColor(.black)
                
                HStack{
                    Spacer()
                    NetworkImage(url: URL(string: recipe.image ?? ""))
                        .frame(width: 120, height: 120, alignment: .center)
                        .cornerRadius(60)
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 10)
                
                HStack{
                    VStack(spacing:5){
                        Image(systemName: "clock")
                            .foregroundColor(.gray)
                        Text("\(recipe.readyInMinutes ?? 0) mins")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack(spacing:5){
                        Image(systemName: "heart")
                            .foregroundColor(.gray)
                        Text("\(recipe.aggregateLikes ?? 0) likes")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack(spacing:5){
                        Image(systemName: "star")
                            .foregroundColor(.gray)
                        Text("\(recipe.spoonacularScore ?? 0)")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
            }
            .frame(width: 180,height: 300)
            .padding()
            .background(Color.orange.opacity(0.19))
            .cornerRadius(20)
        }
    }
}
struct TrendingListView: View {
    
    @ObservedObject var viewModel:RecipeListViewModel
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Recommended")
                .bold()
                .font(.title2)
            ScrollView(.horizontal){
                LazyHGrid(rows: [GridItem.init(.adaptive(minimum: 170, maximum: 180), spacing: 20)]){
                    ForEach(viewModel.trendingRecipeList){ recipe in
                        
                        TrendingView(recipe: recipe)
                    }
                }
            }
            .frame(height: 330)
        }
        .padding(.leading, 20)
    }
}



struct RecipeView:View {
    @State var recipe: Recipe!
    var body: some View{
        NavigationLink(
            destination: RecipeDetailsView(recipeId: recipe.id ?? 0, recipeName: recipe.title ?? "")){
            VStack{
                ZStack{
                    NetworkImage(url: URL(string: recipe.image ?? ""))
                    //.resizable()
                    Color.black.opacity(0.5)
                    VStack{
                        Spacer()
                        Text(recipe.title ?? "")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .lineLimit(10)
                            .multilineTextAlignment(.leading)
                            .padding(.leading,4)
                            .padding(.bottom)
                    }
                }
                .frame(height: 180)
            }
            .cornerRadius(10)
        }
    }
}

struct MainRecipeListView: View {
    
    @ObservedObject var viewModel:RecipeListViewModel
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Recipes")
                .bold()
                .font(.title2)
            ScrollView(.vertical){
                LazyVGrid(columns: [GridItem.init(.adaptive(minimum: 170, maximum: 180), spacing: 20)]){
                    ForEach(viewModel.recipeList){ recipe in
                    RecipeView(recipe: recipe)
                   
                    }
                }
            }
        }
        .padding(.leading, 20)
    }
    
}



import Combine
import SwiftUI

struct NetworkImage: View {
    @StateObject private var viewModel = ViewModel()

    let url: URL?

    var body: some View {
        Group {
            if let data = viewModel.imageData, let uiImage = UIImage(data: data) {
                Image(uiImage: uiImage)
                    .resizable()
                    //.aspectRatio(contentMode: .fill)
            } else if viewModel.isLoading {
                ProgressView()
            } else {
                Image(systemName: "photo")
            }
        }
        .onAppear {
            viewModel.loadImage(from: url)
        }
    }
}

extension NetworkImage {
    class ViewModel: ObservableObject {
        @Published var imageData: Data?
        @Published var isLoading = false

        private static let cache = NSCache<NSURL, NSData>()

        private var cancellables = Set<AnyCancellable>()

        func loadImage(from url: URL?) {
            isLoading = true
            guard let url = url else {
                isLoading = false
                return
            }
            if let data = Self.cache.object(forKey: url as NSURL) {
                imageData = data as Data
                isLoading = false
                return
            }
            URLSession.shared.dataTaskPublisher(for: url)
                .map { $0.data }
                .replaceError(with: nil)
                .receive(on: DispatchQueue.main)
                .sink { [weak self] in
                    if let data = $0 {
                        Self.cache.setObject(data as NSData, forKey: url as NSURL)
                        self?.imageData = data
                    }
                    self?.isLoading = false
                }
                .store(in: &cancellables)
        }
    }
}
