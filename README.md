# 🍬 NetworkState

![swift v5.3](https://img.shields.io/badge/swift-v5.3-orange.svg)
![platform iOS](https://img.shields.io/badge/platform-iOS-blue.svg)
![deployment target iOS 13](https://img.shields.io/badge/deployment%20target-iOS%2013-blueviolet)

**NetworkState** is a lightweight `Reachability/Internet Connection` library for `SwiftUI`.

## 💻 Installation
### 📦 Swift Package Manager
Using <a href="https://swift.org/package-manager/" rel="nofollow">Swift Package Manager</a>, add it as a Swift Package in Xcode 11.0 or later, `select File > Swift Packages > Add Package Dependency...` and add the repository URL:
```
https://github.com/rebeloper/NetworkState.git
```
### ✊ Manual Installation
Download and include the `NetworkState` folder and files in your codebase.

### 📲 Requirements
- iOS 13+
- Swift 5.3+

## 👉 Import

Import `NetworkState` into your `View`

```
import NetworkState
```

## 🧳 Features

Here's the list of the awesome features `NetworkState` has:
- [X] has a `@Published` `isOnline` variable to inspect
- [X] access it as an `@EnvironmentObject` throughout your app
- [X] easy to set up; easier to use

## 💻 How to use

First create a `NetworkState` object and add it as an `environmentObject` to your root `View`.

```
import SwiftUI
import NetworkState

@main
struct NetworkStateDemoApp: App {
    
    // 1.
    let networkState = NetworkState()
    
    var body: some Scene {
        WindowGroup {
            // 2.
            ContentView().environmentObject(networkState)
        }
    }
}
```

Grab that `EnvironmentObject` (1.) and use the `isOnline` `@Published` variable (2.) to render out your UI. Optionally you could refres/check the connectivity with `isConnected()`. 

```
import SwiftUI
import NetworkState

struct ContentView: View {
    
    // 1.
    @EnvironmentObject var networkState: NetworkState
    
    @State var isOnline = false
    
    var body: some View {
        VStack(spacing: 12) {
            // 2.
            if networkState.isOnline {
                Image(systemName: "wifi").font(.largeTitle)
            } else {
                Image(systemName: "wifi.slash").font(.largeTitle)
            }
            
            // or 
            // Image(systemName: networkState.isOnline ? "wifi" : "wifi.slash").font(.largeTitle)
            
            // 3.
            Button(action: {
                if let isConnected = networkState.isConnected(), isConnected {
                    isOnline = isConnected
                } else {
                    isOnline = false
                }
            }, label: {
                Text("Refresh manually")
            })
            
            if isOnline {
                Text("Showing this text only after we tapped the Button and if network is Connected")
            }
            
        }
    }
}
```

## 🪁 Demo project

For a comprehensive Demo project check out: 
<a href="https://github.com/rebeloper/NetworkStateDemo">NetworkStateDemo</a>

## ✍️ Contact

<a href="https://rebeloper.com/">rebeloper.com</a> / 
<a href="https://www.youtube.com/rebeloper/">YouTube</a> / 
<a href="https://store.rebeloper.com/">Shop</a> / 
<a href="https://rebeloper.com/mentoring">Mentoring</a>

## 📃 License

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


