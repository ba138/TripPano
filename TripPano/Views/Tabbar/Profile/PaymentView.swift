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
            PayementMethodComponent(imageName: "visa", title: "Pay with Apple")
            PayementMethodComponent(imageName: "applepay", title: "Pay with Apple")
            PayementMethodComponent(imageName: "paypal", title: "Pay with Apple")
            PayementMethodComponent(imageName: "stripe", title: "Pay with Apple")
            Spacer()
        }
        .navigationTitle("Chose Payement Method")
        .padding()
    }
    
}

#Preview {
    PaymentView()
}
