//
//  ContentView.swift
//  Hamstargram
//
//  Created by Ahmed Elhasan on 2024-01-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Feedview()
                .navigationTitle("HamstarGram")
        }
    }
}

#Preview {
    ContentView()
}
