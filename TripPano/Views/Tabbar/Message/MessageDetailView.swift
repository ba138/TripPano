import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isMe: Bool
}

struct MessageDetailView: View {

    @State private var message = ""

    @State private var messages: [Message] = [
        Message(text: "Hi 👋", isMe: false),
        Message(text: "Hello!", isMe: true),
        Message(text: "How are you?", isMe: false),
        Message(text: "I'm doing great. What about you?", isMe: true),
        Message(text: "All good 😊", isMe: false)
    ]

    var body: some View {
        VStack(spacing: 0) {
            // Chat Messages
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(messages) { msg in
                            HStack {
                                if msg.isMe {
                                    Spacer()

                                    Text(msg.text)
                                        .padding()
                                        .background(AppColors.primary)
                                        .foregroundColor(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 18))
                                } else {
                                    Text(msg.text)
                                        .padding()
                                        .background(Color.gray.opacity(0.15))
                                        .clipShape(RoundedRectangle(cornerRadius: 18))

                                    Spacer()
                                }
                            }
                            .id(msg.id)
                        }
                    }
                    .padding()
                }
                .onChange(of: messages.count) { _ in
                    if let last = messages.last {
                        withAnimation {
                            proxy.scrollTo(last.id, anchor: .bottom)
                        }
                    }
                }
            }


            // Bottom Input Bar
            HStack(spacing: 12) {
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(AppColors.primary)
                    
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                    
                }

                TextField("Type a message...", text: $message)
                    .padding(.horizontal, 14)
                    .frame(height: 45)
                    .background(Color(.systemGray6))
                    .clipShape(Capsule())

                Button {
                    guard !message.trimmingCharacters(in: .whitespaces).isEmpty else {
                        return
                    }

                    messages.append(
                        Message(text: message, isMe: true)
                    )

                    message = ""
                } label: {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .frame(width: 45, height: 45)
                        .background(AppColors.primary)
                        .clipShape(Circle())
                }
            }
            .padding()
            .background(Color(.systemBackground))
        }
        .padding(.vertical,20)

        .  ignoresSafeArea()

        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Justine Blake")
                        .font(.headline)

                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }

            ToolbarItem(placement: .topBarTrailing) {
                Button {

                } label: {
                    Image(systemName: "ellipsis")
                }
            }
        }
        
    }
}

#Preview {
    NavigationStack {
        MessageDetailView()
    }
}
