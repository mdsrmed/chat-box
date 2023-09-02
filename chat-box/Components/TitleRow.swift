//
//  TitleRow.swift
//  chat-box
//
//  Created by Md Shohidur Rahman on 9/2/23.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1677543167033-af3c688aa4df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWVucyUyMHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60")
    
    var name = "Alex Hamilton"
    
    var body: some View {
        HStack(spacing: 10) {
            AsyncImage(url: imageUrl) { Image in
                Image
                    .resizable()
                    .scaledToFill()
                    .frame(width:50,height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
        }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .bold()
                
                Text("Online")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity)
            
            
            Spacer()
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .clipShape(Circle())
//                .cornerRadius(50)
            Image(systemName: "video.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .clipShape(Circle())
//
            
        }
        .padding()

    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Blue"))
    }
}
