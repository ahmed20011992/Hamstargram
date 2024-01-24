//
//  Feedview.swift
//  Hamstargram
//
//  Created by Ahmed Elhasan on 2024-01-24.
//

import SwiftUI

struct Feedview: View {
    @State private var model = FeedModel()
    var body: some View {
        VStack{
            if model.isLoading {
                ProgressView()
            } else {Text("Finish loading!")}
        }
            .task {
                 try? await model.loadFeed()
              
            }
    }
}

#Preview {
    Feedview()
}
