//
//  ContentView.swift
//  AnimationSWUI
//
//  Created by user on 16.03.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      VStack(spacing: 20) {
        Text("Hello World!")
          .font(.system(size: 50))
          .fontWeight(.black)
          .shimmer(.init(tint: .white.opacity(0.5), highlight: .white, blur: 5))
          .padding(.all, 10)
          .background {
            RoundedRectangle(cornerRadius: 15, style:.continuous)
              .fill(.red.gradient)
          }
          .padding(.vertical, 50)
        HStack(spacing: 15) {
          ForEach(["suit.heart.fill", "box.truck.badge.clock.fill", "sun.max.trianglebadge.exclamationmark.fill"], id: \.self) { sfImage
            in
            Image(systemName: sfImage)
              .font(.system(size: 50))
              .fontWeight(.black)
              .shimmer(.init(tint: .white.opacity(0.4), highlight: .white, blur:  5))
              .frame(width: 70, height: 60)
              .padding()
              .background {
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                  .fill(.indigo.gradient)
              }
          }
        }
        Spacer()
          .frame(height: 300)
      }
      .navigationTitle("Shimmer Effect")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
