//
//  TipScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 27/12/2022.
//

import SwiftUI
import Kingfisher

struct TipScreen: View {
    let model: TipDataModel
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "chevron.backward")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .zIndex(99)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 16) {
                    KFImage.url(URL(string: model.imageUrl))
                        .placeholder{Image("AstuceImg")}
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .ignoresSafeArea()
                    
                    VStack(alignment: .leading, spacing: 34.5) {
                        VStack(alignment: .leading, spacing: 11.5) {
                            
                            Text(model.title)
                                .textSubtitleStyle()
                                .foregroundColor(Color("Blue"))
                            LabelWithIcon(type: .shop, text: model.category.title)
                            HStack {
                                Spacer()
                            }
                            .frame(maxWidth: 1)
                        }
                        
                        Text(html: model.description)
                        
                    }
                    .padding(.horizontal, 16)
                }
            }
            .ignoresSafeArea(edges: .top)
        }
        .navigationBarBackButtonHidden()
        
        
    }
}

struct TipScreen_Previews: PreviewProvider {
    static var previews: some View {
        TipScreen(model: TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "<b>Faucibus eget eget egestas fermentum tincidunt. Nunc netus curabitur tristique tristique sagittis tellus mi lacus. Imperdiet adipiscing dui volutpat laoreet morbi.</b> /n Urna sagittis metus facilisis sollicitudin lacus porta morbi turpis sit. Amet morbi tortor turpis commodo nisi vel quam. Donec duis arcu ut posuere mauris sit. Augue pellentesque habitant sed penatibus lacinia elit fermentum commodo. Eu id malesuada nibh sit. Tempus odio interdum scelerisque mollis fringilla arcu. Nibh fermentum quam diam vel. Dui cursus et vel id pharetra dignissim amet dictum. Gravida viverra aenean commodo ut habitant faucibus. Congue tempus ultricies mauris eget nibh. Ac eros egestas sit suspendisse in.\nIn arcu duis eget sem. At senectus et ultricies elit. Erat pellentesque id id a ullamcorper varius. Arcu euismod fusce enim molestie imperdiet enim.", category: .Mac))
    }
}
