//
//  ContentView.swift
//  SamplePhoneApp
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        VStack {
            Text("Click buttons below to change the counter")
            
            Text("\(count)")
            
        }
        HStack(){
            Button(action:{
                count += 1
            }, label:{
                Button("Increment", action: increase)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            Button("Decrement", action: decrease)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding()
    }
    func decrease(){
        if count > 0{
            count -= 1
        }
    }
    
    func increase()
    {
    if count == 50{
    return
    }
    else{
    count += 1
            
        }
        
    }
}

#Preview {
    ContentView()
}
