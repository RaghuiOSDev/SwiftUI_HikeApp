//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by Raghu on 29/09/23.
//

import SwiftUI

struct CustomListRowView: View {
    @State var rowLable: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDescription: String? = nil
    var body: some View {
        LabeledContent{
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if (rowLinkLabel != nil && rowLinkDescription != nil){
                Link(rowLinkLabel!, destination: URL(string: rowLinkDescription!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(rowTintColor)
                Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                }
                Text(rowLable)
            }
            
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(rowLable: "website", rowIcon: "globe", rowContent: nil, rowTintColor: .red,rowLinkLabel: "Credo Academy",rowLinkDescription: "https://credo.academy")
        }
    }
}
