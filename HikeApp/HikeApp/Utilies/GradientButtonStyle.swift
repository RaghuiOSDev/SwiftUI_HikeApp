//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by Raghu on 28/09/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
        //Conditional statement with Nil Colescing
        //Condition ? A : B
        configuration.isPressed ?
        // A: User is pressed the Button
            LinearGradient(colors: [Colors.grayMedium,Colors.grayLight], startPoint: .top, endPoint: .bottom)
                        
        
        :
        //B: User is not pressed the button
            LinearGradient(colors: [Colors.grayLight,Colors.grayMedium], startPoint: .top, endPoint: .bottom)
            )
                        
    }
}
