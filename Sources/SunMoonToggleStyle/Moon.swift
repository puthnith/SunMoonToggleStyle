//
//  Moon.swift
//
//
//  Created by Mays on 2020-07-31.
//

import SwiftUI

/// The beautiful chubby `Moon` shape
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Moon: Shape {
  public init() { }

  public func path(in rect: CGRect) -> Path {
    let side = min(rect.width, rect.height)
    let center = CGPoint(x: rect.midX, y: rect.midY)
    let path = Path { path in
      path.addArc(
        center: center,
        radius: side * 0.5,
        startAngle: .degrees(165.5),
        endAngle: .degrees(265.5),
        clockwise: true
      )
      path.addArc(
        center: CGPoint(x: center.x - side * 0.35, y: center.y - side * 0.25),
        radius: side * 0.4,
        startAngle: .degrees(321.5),
        endAngle: .degrees(109.5),
        clockwise: false
      )
      path.closeSubpath()
    }
    return path
  }
}
