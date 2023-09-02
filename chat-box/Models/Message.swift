//
//  Message.swift
//  chat-box
//
//  Created by Md Shohidur Rahman on 9/2/23.
//

import Foundation

struct Message: Identifiable, Codable {
    let id: String
    let text: String
    let received: Bool
    let timestamp: Date
}
