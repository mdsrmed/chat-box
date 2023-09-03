//
//  ContentView.swift
//  chat-box
//
//  Created by Md Shohidur Rahman on 9/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var messagesManager = MessageManager()
    var messageList = ["hi there","hello", "what r u doing now", "making chat box"]
    
    var body: some View {
        VStack {
            VStack {
                    TitleRow()
                        .background(Color("Blue").opacity(0.7))
                    
                ScrollViewReader { proxy  in
                    
                    ScrollView{
                            ForEach(messagesManager.messages,id: \.id){ message in
                                MessageBubble(message: message)
                                
                            }
                        }
                        .padding(.top,10)
                        .background(.white)
                    .cornerRadius(15, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
                }
            .background(Color("Blue"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
