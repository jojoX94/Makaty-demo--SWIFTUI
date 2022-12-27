//
//  TipViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import Foundation
import SwiftUI

@MainActor
class TipViewModel: ObservableObject {
    @Published var tipList = [TipDataModel]()
    
    init() {
        tipList = [
            TipDataModel(imageUrl: "https://images.unsplash.com/photo-1514849543360-3228a8766079?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bm9lbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", title: "Lorem ipsum dolor sit amet consectetur.", description: "<p><b>Faucibus eget eget egestas fermentum tincidunt. Nunc netus curabitur tristique tristique sagittis tellus mi lacus. Imperdiet adipiscing dui volutpat laoreet morbi.</b> <br> \nUrna sagittis metus facilisis sollicitudin lacus porta morbi turpis sit. Amet morbi tortor turpis commodo nisi vel quam. Donec duis arcu ut posuere mauris sit. Augue pellentesque habitant sed penatibus lacinia elit fermentum commodo. Eu id malesuada nibh sit. Tempus odio interdum scelerisque mollis fringilla arcu. Nibh fermentum quam diam vel. Dui cursus et vel id pharetra dignissim amet dictum. Gravida viverra aenean commodo ut habitant faucibus. Congue tempus ultricies mauris eget nibh. Ac eros egestas sit suspendisse in.<br>In arcu duis eget sem. At senectus et ultricies elit. Erat pellentesque id id a ullamcorper varius. Arcu euismod fusce enim molestie imperdiet enim.</p>", category: .Mac),
            TipDataModel(imageUrl: "https://images.unsplash.com/photo-1608096281339-5bcae1ec2f12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Watch),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .iPhone),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .iPad),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .iPad),
        ]
    }
}
