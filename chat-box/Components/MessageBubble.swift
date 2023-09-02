//
//  MessageBubble.swift
//  chat-box
//
//  Created by Md Shohidur Rahman on 9/2/23.
//

import SwiftUI

struct MessageBubble: View {
    let message: Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing){
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Blue"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300,alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing, 17)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal,10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "1", text: "Hi there", received: false, timestamp: Date()))
    }
}
