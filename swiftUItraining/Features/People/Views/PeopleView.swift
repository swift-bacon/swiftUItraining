//
//  PeopleView.swift
//  swiftUItraining
//
//  Created by Unit27 on 07/08/2025.
//

import SwiftUI

struct PeopleView: View {
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            ZStack {
                background
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(0...5, id: \.self) { item in
                            PersonItemView(user: item)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Poeple")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    create
                }
            }
        }
    }
}

#Preview {
    PeopleView()
}

private extension PeopleView {
    
    var background: some View {
        Theme.background
            .ignoresSafeArea()
    }
    
    var create: some View {
        Button {
            
        } label: {
            Symbols.plus
                .font(
                    .system(.headline, design: .rounded)
                    .bold()
                )
        }
    }
    
}
