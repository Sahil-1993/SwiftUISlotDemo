//
//  SwiftUIView.swift
//  SwiftUISlotDemo
//
//  Created by Sahil Arora on 2022-05-20.
//

import SwiftUI

struct CardView: View {
    @Binding var symbol:String
    var body: some View {
        Image(symbol)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("image1"))
    }
}
