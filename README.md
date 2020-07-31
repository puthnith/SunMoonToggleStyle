# SunMoonToggleStyle

A custom SwiftUI `ToggleStyle` for switching between light and dark mode.

## How-to

```swift
Toggle(isOn: .constant(true), label: { Text("Sun and Moon") })
  .toggleStyle(SunMoonToggleStyle())
```
