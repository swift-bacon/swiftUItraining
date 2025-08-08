//
//  PeopleView.swift
//  swiftUItraining
//
//  Created by Unit27 on 07/08/2025.
//

import SwiftUI

struct PeopleView: View {
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    @State private var users: [User] = []
    @State private var shouldShowCreate = false
    
    var body: some View {
        NavigationView {
            ZStack {
                background
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(users, id: \.id) { item in
                            NavigationLink {
                                DetailView()
                            } label: {
                                PersonItemView(user: item)
                            }
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
            .onAppear {
                NetworkingManager.shared.request("https://reqres.in/api/users", type: UsersResponse.self) { response in
                    switch response {
                    case .success(let res):
                        users = res.data
                    case .failure(let error):
                        print(error)
                    }
                }
            }
            .sheet(isPresented: $shouldShowCreate) {
                CreateView()
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
            shouldShowCreate.toggle()
        } label: {
            Symbols.plus
                .font(
                    .system(.headline, design: .rounded)
                    .bold()
                )
        }
    }
    
}
