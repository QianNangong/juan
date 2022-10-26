//
//  ContentView.swift
//  juan Watch App
//
//  Created by 刻晴 on 2022/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Now you see me")
            Text("Soon you won't")
        }
        .padding()
        .task {
            UIApplication.shared().delegate().window.rootViewController().present(SafariViewController(url: "https://vscode.dev"), animated: true) {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
