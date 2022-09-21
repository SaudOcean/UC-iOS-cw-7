//
//  ContentView.swift
//  Movies
//
//  Created by Saud Al Mutairi on 9/21/22.
//

import SwiftUI

struct Movieinfo: Identifiable{
    let id = UUID()
    let title: String
    var CastMembers: [String]
}
struct ContentView: View {
    let movies = [
        Movieinfo(title: "Spider-Man", CastMembers: ["tom","tobey","zen"]),
        Movieinfo(title: "The-Batman", CastMembers: ["zoe","colin","rob","paul","john"]),
        Movieinfo(title: "Joker", CastMembers: ["joaquin"])
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(movies) { movie in
                    NavigationLink(destination: {
                        DetailedView(movieName: movie.title, movieCast: movie.CastMembers)
                    }, label: {
                        MovieListItem(movie: movie)
                    })
                    
            .navigationTitle("Movies")
            }
            }
        }
        
    }
}
        
struct MovieListItem: View{
    let movie: Movieinfo
    var body: some View {
        HStack{
            Image(movie.title)
            .resizable()
            .scaledToFill()
            .frame(width: 70.0, height: 70.0, alignment: .top)
        .clipShape(Circle())
            Text(movie.title)
                .font(.largeTitle)
                
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

