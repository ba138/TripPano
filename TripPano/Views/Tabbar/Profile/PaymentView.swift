//
//  PaymentView.swift
//  TripPano
//
//  Created by Basit Ali on 14/08/2026.
//

import SwiftUI

struct PaymentView: View {
    var body: some View {
        VStack(spacing : 20){
            PayementMethodComponent(imageName: "apple", title: "Pay with Apple")
            PayementMethodComponent(imageName: "apple", title: "Pay with Apple")
            PayementMethodComponent(imageName: "apple", title: "Pay with Apple")
            PayementMethodComponent(imageName: "apple", title: "Pay with Apple")
            Spacer()
        }
        .navigationTitle("Chose Payement Method")
        .padding()
    }
    
}

#Preview {
    PaymentView()
}
