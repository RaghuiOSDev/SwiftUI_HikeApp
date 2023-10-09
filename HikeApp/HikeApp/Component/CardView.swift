//
//  CardView.swift
//  HikeApp
//
//  Created by Raghu on 28/09/23.
//

import SwiftUI

struct CardView: View {
     //MARK: - Properties
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
     //MARK: - Functions
    
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
       
        imageNumber = randomNumber
    }
    var body: some View {
         //MARK: - CARD Component
        ZStack {
            CustomBackgroundView()
            
            VStack {
                 //MARK: - Header
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                        .foregroundStyle(LinearGradient(colors: [Colors.grayLight,Colors.grayMedium], startPoint: .top, endPoint: .bottom)
                    )
                        Spacer()
                        Button{
                            print("The Button is pressed")
                            isShowingSheet.toggle()
                        } label: {
                            CustomButton()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    Text("fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(Colors.grayMedium)
                }// : HEADER
                .padding(.horizontal,25)
                 //MARK: - Main Content
                ZStack {
                  CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumber)
                }
                 //MARK: - FOOTER
                
                Button {
                    randomImage()
                }label: {
                    Text("Explore More")
                        .fontWeight(.heavy)
                        .font(.title2)
                        .foregroundStyle(LinearGradient(colors: [Colors.greenLight,Colors.greenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25,x: 1,y: 2)
                }
                .buttonStyle(GradientButton())
                .cornerRadius(40.0)
                
            }// : VSTACK
            
        }// : Card
        .frame(width: 320,height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
