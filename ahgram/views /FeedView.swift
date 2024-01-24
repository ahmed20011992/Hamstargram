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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .task {
                 try? await model.loadFeed()
                VStack{
                    if model.isLoading{
                        ProgressView()
                    } else {
                        Text("Finish loading!")
                    }
                }
            }
    }
}

#Preview {
    Feedview()
}
