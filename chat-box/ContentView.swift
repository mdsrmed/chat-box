//
//  ContentView.swift
//  chat-box
//
//  Created by Md Shohidur Rahman on 9/2/23.
//

import SwiftUI

struct ContentView: View {
    var messageList = ["hi there","hello", "what r u doing now", "making chat box"]
    
    var body: some View {
        VStack {
            VStack {
                    TitleRow()
                        .background(Color("Blue").opacity(0.7))
                    
                    ScrollView{
                        ForEach(messageList,id: \.self){ text in
                            MessageBubble(message: Message(id: "123", text: text, received: false, timestamp: Date()))
                            
                        }
                    }
                    .padding(.top,10)
                    .background(.white)
                    .cornerRadius(15, corners: [.topLeft, .topRight])
                }
            .background(Color("Blue"))
            
            MessageField()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
