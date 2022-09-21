//
//  DetailedView.swift
//  Movies
//
//  Created by Saud Al Mutairi on 9/21/22.
//

import SwiftUI

struct DetailedView: View {
    
    @State var movieName: String
    @State var movieCast: [String]
    
    var body: some View {
        ZStack{
            Image(movieName)
                .resizable()
                .blur(radius: 10)
                .ignoresSafeArea()
        VStack{
            Text(movieName)
                .foregroundColor(.white)
            Image(movieName)
                .resizable()
                .scaledToFill()
                .frame(width: 70.0, height: 70.0, alignment: .top)
                .clipShape(Circle())
           
            ScrollView(.horizontal){
                HStack{ForEach(movieCast,id: \.self){
                    act in VStack{
                        Image(act)
                        Text(act)
                            .foregroundColor(.white)
                    }
                }
                
            }
        }
        }
      }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(movieName: "", movieCast: [""])
    }
}
