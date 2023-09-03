//
//  chat_boxApp.swift
//  chat-box
//
//  Created by Md Shohidur Rahman on 9/2/23.
//

import SwiftUI
import Firebase

@main
struct chat_boxApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
