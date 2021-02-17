//
//  ContentView.swift
//  ImageTest
//
//  Created by damduc on 2021/02/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "star.circle")
                    .frame(width: 50, height: 50)
                Image(systemName: "star.circle")
                    .resizable(resizingMode: .tile)
                    .frame(width: 50, height: 50, alignment:.center)
                Image(systemName: "star.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 100, alignment: .center)
                Image(systemName: "star.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 100, alignment: .center)
                    .clipped()
            }
            

            
            HStack(spacing: 30) {
                Image(systemName: "star.circle").clipShape(Circle())
                Image(systemName: "star.circle").clipShape(Rectangle().inset(by: 10))
                Image(systemName: "star.circle").clipShape(Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110)))
            }
            
            HStack(spacing: 30) {
                Image(systemName: "star.circle")
                Image(systemName: "star.circle").renderingMode(.original)
                Image(systemName: "star.circle").renderingMode(.template)
            }.foregroundColor(.red)
            
            HStack(spacing: 30) {
                Image(systemName: "book.fill").imageScale(.small)
                    .foregroundColor(.red)
                Image(systemName: "book.fill").imageScale(.medium)
                    .foregroundColor(.green)
                Image(systemName: "book.fill").imageScale(.large)
                    .foregroundColor(.blue)
            }
            HStack(spacing: 30) {
                Image(systemName: "speaker.3").font(.body)
                Image(systemName: "speaker.3").font(.title)
                Image(systemName: "speaker.3").font(.system(size: 40))
                Image(systemName: "speaker.3").imageScale(.large)
                    .font(.system(size: 40))
            }
            HStack(spacing: 30) {
                Image(systemName: "arrow.up").font(Font.title.weight(.black))
                Image(systemName: "arrow.left").font(Font.title.weight(.semibold))
                Image(systemName: "arrow.down").font(Font.title.weight(.light))
                Image(systemName: "arrow.right").font(Font.title.weight(.ultraLight))
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
