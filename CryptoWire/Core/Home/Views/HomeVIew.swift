//
//  HomeVIew.swift
//  CryptoWire
//
//  Created by Ravi Ranjan on 30/04/22.
//

import SwiftUI

struct HomeVIew: View {
    
    @State private var showPortfolio : Bool = false
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack {
                HStack {
                    CircleButtonView(iconName: showPortfolio ? "plus": "info")
                        .animation(.none)
                    Spacer()

                    Text("Live Price")
                        .fontWeight(.heavy)
                        .font(.headline)
                        .foregroundColor(Color.theme.accent)
                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                        .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                        .onTapGesture {
                            withAnimation(.spring()){
                                showPortfolio.toggle()
                            }
                        }
                }
                Spacer(minLength: 0)
            }.padding(.horizontal)
        }
    }
}

struct HomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeVIew()
                .navigationBarHidden(true)
        }
    }
}
