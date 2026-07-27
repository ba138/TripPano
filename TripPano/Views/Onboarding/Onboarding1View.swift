//
//  Onboarding1View.swift
//  TripPano
//
//  Created by Basit Ali on 14/07/2026.
//

import SwiftUI

struct Onboarding1View: View {
    @State var nameField : String = ""
    @State var phoneField : String = ""
    @State private var dob: Date = Date()
    @State private var showDatePicker = false
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        return formatter.string(from: dob)
    }

    var body: some View {
        VStack{
            Image("sublogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("Profile Setup")
                .font(.title)
                .bold()
                .foregroundColor(AppColors.fontTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("Lets setup your profile first to know you better")
                .foregroundColor(AppColors.subTitle)
            
            
            DividerView(progress: "1")
                .padding(.vertical)
            
            Text("Full Name")
               .font(.system(size: 12))
               .bold()
               .frame(maxWidth: .infinity,alignment: .leading)

           TextField("Enter Your Full Name", text: $nameField)
                .foregroundColor(.fontTitle)
                .accentColor(.fontTitle)
               .frame(height: 56)
               .padding(.horizontal ,20)

               .background(AppColors.textfield)
               .cornerRadius(10)
            Text("Phone Number")
               .font(.system(size: 12))
               .bold()
               .frame(maxWidth: .infinity,alignment: .leading)

            TextField("Enter Your Phone Number", text: $phoneField)
            
                .foregroundColor(.fontTitle)
                .accentColor(.fontTitle)
                .keyboardType(.phonePad)
                .textContentType(.telephoneNumber)
                .frame(height: 56)
                .padding(.horizontal, 20)
                .background(AppColors.textfield)
                .cornerRadius(10)
            Text("Date of Birth")
                .font(.system(size: 12))
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)

            Button {
                showDatePicker.toggle()
            } label: {
                HStack {
                    Text(formattedDate)
                        .foregroundColor(AppColors.fontTitle)
                    
                    Spacer()
                    
                    Image(systemName: "calendar")
                        .foregroundColor(AppColors.primary)
                }
                .frame(height: 56)
                .padding(.horizontal, 20)
                .background(AppColors.textfield)
                .cornerRadius(10)
            }
            .sheet(isPresented: $showDatePicker) {
                VStack {
                    DatePicker(
                        "Select Date of Birth",
                        selection: $dob,
                        displayedComponents: .date
                    )
                    .datePickerStyle(.graphical)
                    .padding()
                    
                    Button("Done") {
                        showDatePicker = false
                    }
                    .foregroundColor(AppColors.primary)
                    .padding()
                }
                .presentationDetents([.medium])
            }
            Spacer()
            NavigationLink(destination: Onboarding2View()){
                Text("Next")
                        .font(.system(size: 15))
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,maxHeight: 55)
                        .background(AppColors.primary)
                        .cornerRadius(12)

            }
            
            .padding(.vertical,40)




            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
            .toolbar(.hidden, for: .navigationBar)
        .padding(.horizontal,20)
    }
    
}

#Preview {
    NavigationStack{
        Onboarding1View()
        
    }
}
