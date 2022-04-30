//
//  CircleButtonAnimationView.swift
//  CryptoWire
//
//  Created by Ravi Ranjan on 30/04/22.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    @Binding var animate: Bool
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .scale(animate ? 0.0 : 1)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
            .opacity(animate ? 1.0 : 0.0)
            .onAppear{
                animate.toggle()
            }
    }
    
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100, alignment: .center)
    }
}
