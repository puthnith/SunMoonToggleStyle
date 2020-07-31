//
//  SunMoonToggleStyle.swift
//
//
//  Created by Puthnith on 2020-07-31.
//

import SwiftUI

/// The Sun and Moon `ToggleStyle` for light and dark mode `Toggle`.
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct SunMoonToggleStyle: ToggleStyle {
  public init() { }

  public func makeBody(configuration: Configuration) -> some View {
    HStack {
      configuration.label
      Spacer()
      ZStack {
        shape(configuration.isOn)
          .foregroundColor(Color.white)
          .offset(x: configuration.isOn ? 10 : -10)
          .frame(width: 23.0, height: 23.0)
          .shadow(color: Color.black.opacity(0.1), radius: 3, x: configuration.isOn ? -2 : 2, y: 1)
      }
      .frame(width: 51.0, height: 31.0)
      .background(background(configuration.isOn))
      .clipShape(Capsule())
      .offset(x: 2)
      .animation(Animation.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 0))
    }
    .onTapGesture {
      configuration.isOn.toggle()
    }
  }

  private func shape(_ isOn: Bool) -> some View {
    isOn ? AnyView(Moon()) : AnyView(Circle())
  }

  private func background(_ isOn: Bool) -> some View {
    LinearGradient(
      gradient: isOn ? lightGradient : darkGradient,
      startPoint: .top,
      endPoint: .bottom
    )
     .background(isOn ? Color.black : Color.white)
  }

  private var darkGradient: Gradient {
    Gradient(colors: [Color.blue.opacity(0.6), Color.blue.opacity(0.4), Color.blue.opacity(0.6)])
  }

  private var lightGradient: Gradient {
    Gradient(colors: [Color.blue.opacity(0.3), Color.blue.opacity(0.5), Color.blue.opacity(0.3)])
  }
}
