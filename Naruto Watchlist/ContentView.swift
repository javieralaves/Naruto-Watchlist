//
//  ContentView.swift
//  Naruto Watchlist
//
//  Created by Javier Alaves on 27/7/23.
//

import SwiftUI

struct ContentView: View {
    let episodes = Bundle.main.decode([Episode].self, from: "episodesData.json")
    
    var body: some View {
        List(episodes, id: \.self) { episode in
            NavigationLink {
                Text(episode.title)
            } label: {
                HStack {
                    Circle()
                        .fill(episode.isFiller ? .red : .green)
                        .frame(width: 8)
                    VStack (alignment: .leading) {
                        Text("\(episode.episode): \(episode.title)")
                            .font(.headline)
                        Text(episode.watched ? "Watched" : "Unwatched")
                            .foregroundColor(.secondary)
                    }
                    .padding(4)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
