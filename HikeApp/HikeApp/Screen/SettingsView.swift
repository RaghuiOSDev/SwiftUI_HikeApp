//
//  SettingsView.swift
//  HikeApp
//
//  Created by Raghu on 29/09/23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
   private let alternativeAppIcon: [String] = [
   "AppIcon-Backpack",
   "AppIcon-Camera",
   "AppIcon-Campfire",
   "AppIcon-MagnifyingGlass",
   "AppIcon-Map",
   "AppIcon-Mushroom"
   ]
        
    var body: some View {
        List{
            Section{
                HStack{
                    //MARK: - Header Section
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        Text("Editior's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [Colors.grayLight,Colors.greenMedium,Colors.greenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top,8)
                VStack(spacing: 8){
                    Text("Where can you find \nPerfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(Colors.greenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }// : HEADER SECTION
            .listRowSeparator(.hidden)
            
             //MARK: - Section : ICON
            Section(header: Text("Alternative Icons")){
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 12) {
                        ForEach(alternativeAppIcon.indices,id: \.self) { item in
                            Button{
                                print("Icon Pressed")
                                UIApplication.shared.setAlternateIconName(alternativeAppIcon[item]){ error in
                                    if error != nil{
                                        print("Failed request to update the app icon\(String(describing: error?.localizedDescription))")
                                    }else{
                                        print("Profile image updated successfully - \(alternativeAppIcon[item])")
                                    }
                                }
                            }label: {
                                Image("\(alternativeAppIcon[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(16)
                                    .frame(width: 80,height: 80)
                        }
                        }
                    }
                }//: ScrollView
                .padding(.top, 12)
                Text("Choose your favourite icon from the collection above.")
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                
            }//: Section App ICON
            .padding(.bottom, 12)
            .listRowSeparator(.hidden)
             //MARK: - Section: ABOUT
            Section(
                header: Text("About the app"),
                footer: HStack{
                    Spacer()
                    Text("Copyrights © All rights reserved.")
                    Spacer()
                }
                    .padding(.vertical,8)
            ){
                // 1: Labeled Content
//                LabeledContent("Application", value: "Hike")
                
                // 2: Advanced Labeled Content
                CustomListRowView(rowLable: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRowView(rowLable: "Compatibility", rowIcon: "info.circle", rowContent: "iOS,iPadOS", rowTintColor: .red)
                CustomListRowView(rowLable: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLable: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLable: "Application", rowIcon: "ellipsis.curlybraces", rowContent: "Hike", rowTintColor: .mint)
                CustomListRowView(rowLable: "Developer", rowIcon: "paintpalette", rowContent: "Rockers Raghu", rowTintColor: .pink)
                CustomListRowView(rowLable: "Website", rowIcon: "globe", rowContent: nil, rowTintColor: .indigo,rowLinkLabel: "Credo Academy",rowLinkDescription: "https://credo.academy")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
