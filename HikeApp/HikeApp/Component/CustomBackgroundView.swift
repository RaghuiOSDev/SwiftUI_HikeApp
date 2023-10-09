//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by Raghu on 28/09/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
             //MARK: - 3. Depth
            Colors.greenDark
                .cornerRadius(40)
                .offset(y: 12)
             //MARK: - 2. Light
            Colors.greenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
             //MARK: - 1. Surface
            
            LinearGradient(colors: [Colors.greenLight,Colors.greenMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40.0)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
