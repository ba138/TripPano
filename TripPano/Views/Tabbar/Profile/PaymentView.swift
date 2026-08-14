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
            PayementMethodComponent(imageName: "visa", title: "Visa/MasterCard")
            PayementMethodComponent(imageName: "applepay", title: "Apple Pay")
            PayementMethodComponent(imageName: "paypal", title: "PayPal")
            PayementMethodComponent(imageName: "stripe", title: "Stripe")
            Spacer()
        }
        .navigationTitle("Chose Payement Method")
        .padding()
    }
    
}

#Preview {
    PaymentView()
}
