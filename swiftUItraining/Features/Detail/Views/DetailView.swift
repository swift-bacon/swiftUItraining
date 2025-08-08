//
//  DetailView.swift
//  swiftUItraining
//
//  Created by Unit27 on 08/08/2025.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            background
            
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    Group {
                        general
                        link
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 18)
                    .background(Theme.detailBackground, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                }
                .padding()
            }
        }
    }
}

#Preview {
    DetailView()
}

private extension DetailView {
    
    var background: some View {
        Theme.background
            .ignoresSafeArea()
    }
    
    var link: some View {
        Link(destination: .init(string: "https://youtube.com")!) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Support Reqrs")
                    .foregroundColor(Theme.text)
                    .font(
                        .system(.body, design: .rounded)
                        .weight(.semibold)
                    )
                Text(
                    "https://youtube.com"
                )
            }
            Spacer()
            Symbols
                .link
                .font(.system(.title3, design: .rounded))
        }
    }
    
}

private extension DetailView {
    
    var general: some View {
        VStack(alignment: .leading, spacing: 8) {
            PillView(id: 0)
            
            Group {
                firstName
                lastName
                email
            }
            .foregroundColor(Theme.text)
            
        }
    }
    
    @ViewBuilder
    var firstName: some View {
        Text("First Name")
            .font(
                .system(.body, design: .rounded)
                .weight(.semibold)
            )
        Text("<First name>")
            .font(
                .system(.subheadline, design: .rounded)
            )
        Divider()
    }
    
    @ViewBuilder
    var lastName: some View {
        Text("Last Name")
            .font(
                .system(.body, design: .rounded)
                .weight(.semibold)
            )
        Text("<Last name>")
            .font(
                .system(.subheadline, design: .rounded)
            )
        Divider()
    }
    
    @ViewBuilder
    var email: some View {
        Text("Email")
            .font(
                .system(.body, design: .rounded)
                .weight(.semibold)
            )
        Text("<email>")
            .font(
                .system(.subheadline, design: .rounded)
            )
    }
    
}
