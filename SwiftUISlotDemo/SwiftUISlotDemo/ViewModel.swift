//
//  ViewModel.swift
//  SwiftUISlotDemo
//
//  Created by Sahil Arora on 2022-05-18.
//

import Foundation

struct ViewModel {
    
   
    func checkRandomNumbers(contentView:ContentView){
        
        contentView.numbers[0] = Int.random(in: 0..<contentView.symbols.count)
        
        contentView.numbers[1] = Int.random(in: 0..<contentView.symbols.count)
        
        contentView.numbers[2] = Int.random(in: 0..<contentView.symbols.count)
        
        
        if (contentView.numbers[0], contentView.numbers[1]) == (contentView.numbers[1], contentView.numbers[2]) {
            contentView.creditScore += 50
            contentView.backgroundColor = .green
        }else {
            if contentView.creditScore == 0 {
                print(AppStrings.youLost)
            }else {
                contentView.creditScore -= 50
                contentView.backgroundColor = .white
            }
        }

        
    }
    
}
