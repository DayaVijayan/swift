//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by daya vijayan on 09/11/23.
//

import SwiftUI

struct AFButton: View {
    var title : String
    var body: some View {
    
            Text(title)
                .frame(width:280,height:50)
                .font(.title2)
                .fontWeight(.semibold)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
                
        
    }
}

#Preview {
    AFButton(title: "Learn More")
}
