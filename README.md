# SunMoonToggleStyle

A custom SwiftUI `ToggleStyle` for switching between light and dark mode.

## How-to

1. First, **File** → **Swift Packages** → **Add Package Dependancy...**
2. Then, paste the repo link **https://github.com/puthnith/SunMoonToggleStyle**, then click **Next** and **Finish**
3. Now add `import SunMoonToggleStyle`
4. And use it as `Toggle(...).toggleStyle(SunMoonToggleStyle())`

## Example

```swift
struct ContentView: View {
  @State private var isOn: Bool = false

  var body: some View {
    VStack {
      Toggle(isOn: $isOn, label: label)
        .toggleStyle(SunMoonToggleStyle())
    }
    .padding()
  }

  func label() -> Text {
    isOn ? Text("Moon") : Text("Sun")
  }
}
```
