//
//  ContentView.swift
//  Soccer
//
//  Created by Nihad  on 19/03/2025.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State var selected = "Baseball"
    @State private var id = 1

    var body: some View {
        VStack{
            Text("Selected Activity...")
                    .font(.largeTitle.bold())
            Spacer()

            Circle()
                .fill(colors.randomElement() ?? .blue).padding() .overlay(
                Image(systemName: "figure.\(selected.lowercased())")
            )  .font(.system(size: 144))
                .foregroundColor(.white);
            Text("\(selected)!")
                .font(.title)
            
            Spacer()

            Button("Try again") {
                withAnimation(.easeInOut(duration: 1)) {
                      selected = activities.randomElement() ?? "Archery"
                    id += 2
                    

                  }
                

            }
            .buttonStyle(.borderedProminent)
        }.transition(.slide)
            .id(id)
    }
}

#Preview {
    ContentView()
}
