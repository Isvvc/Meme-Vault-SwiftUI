//
//  MemeView.swift
//  Meme Vault
//
//  Created by Isaac Lyons on 7/22/20.
//

import SwiftUI
import Photos

struct MemeView: View {
    @ObservedObject var meme: Meme
    let image: UIImage
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                let scaledHeight = image.size.height * proxy.size.width / image.size.width
                let staticHeight = scaledHeight > proxy.size.width ? proxy.size.width : scaledHeight
                
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width, height: staticHeight < (proxy.size.height - 52) ? staticHeight : (proxy.size.height - 52))
                    .border(Color(.cyan), width: 2)
                
                TextField("Name", text: $meme.wrappedName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading)
                    .padding(.trailing)
                
                List {
                    Text("Destination 1")
                    Text("Destination 2")
                    Text("Destination 3")
                    Text("Destination 4")
                    Text("Destination 5")
                    Text("Destination 6")
                    Text("Destination 7")
                    Text("Destination 8")
                    Text("Destination 9")
                }
            }
        }
        .border(Color(.green), width: 2)
        .navigationBarTitle("Meme")
        .navigationBarTitleDisplayMode(.inline)
    }
}