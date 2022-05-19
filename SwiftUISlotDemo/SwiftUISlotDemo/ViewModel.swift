//
//  ViewModel.swift
//  SwiftUISlotDemo
//
//  Created by Sahil Arora on 2022-05-18.
//

import Foundation

struct ViewModel {
    
   
    func checkRandomNumbers(contentView:ContentView){
        
        let slot1Rand = Int.random(in: 1...3)
        
        let slot2Rand = Int.random(in: 1...3)
        
        let slot3Rand = Int.random(in: 1...3)
        print(slot2Rand)
        print(slot1Rand)
        print(slot3Rand)
        
        contentView.slot1 = AppStrings.imageName + ("\(slot1Rand)")
        contentView.slot2 = AppStrings.imageName + ("\(slot2Rand)")
        contentView.slot3 = AppStrings.imageName + ("\(slot3Rand)")
        
        if (slot1Rand, slot2Rand) == (slot2Rand, slot3Rand) {
            contentView.creditScore += 50
        }else {
            if contentView.creditScore == 0 {
                print(AppStrings.youLost)
            }else {
                contentView.creditScore -= 50
            }
        }

        
    }
    
}
