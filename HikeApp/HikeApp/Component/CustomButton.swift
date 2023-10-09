//
//  CustomButton.swift
//  HikeApp
//
//  Created by Raghu on 28/09/23.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [.white,Colors.greenLight,Colors.greenMedium], startPoint: .top, endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(colors: [Colors.grayLight,Colors.grayMedium], startPoint: .top, endPoint: .bottom),lineWidth: 4)
            Image(systemName: "figure.walk")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [Colors.grayLight,Colors.grayMedium], startPoint: .top, endPoint: .bottom))
            
            
        }
        .frame(width: 58,height: 58)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
