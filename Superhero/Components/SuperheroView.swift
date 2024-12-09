import SwiftUI

struct SuperheroView: View {
    
    @State var isAlertPresented: Bool = false
    @State var isScaling: Bool = false
    @State var isSliding: Bool = false
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    var superH: Superheros
    
    var body: some View {
        
        ZStack {
            
            Image(superH.image)
                .resizable()
                .scaledToFill()
                .scaleEffect(isScaling ? 1 : 0.6)
                .animation(.easeOut(duration: 1.5), value: isScaling)
            
            VStack{
                
                Text(superH.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                   
                
                Button {
                    // Action
                    isAlertPresented.toggle()
                    hapticImpact.impactOccurred()
                    playSound(sound: "chimeup", type: "mp3")
                    
                } label: {
                    
                    HStack{
                        
                        Text("About")
                        Image(systemName: "arrow.right.circle")
                    } // HStack
                    .padding()
                    .font(.title2)
                    .foregroundStyle(.white)
                    .background(
                        LinearGradient(gradient: Gradient(colors: superH.gradientColors), startPoint: .bottomTrailing, endPoint: .topLeading)
                    )
                    .clipShape(.capsule)
                    .shadow(radius: 10)
                    .alert(superH.alertTitle, isPresented: $isAlertPresented) {
                        // Button Actions
                    } message: {
                        Text(superH.alertMessage)
                    }
                    
                } // Lable
                
                
            } // VStack
            .offset(x: 0, y: 150)
            .offset(y: isSliding ? 0 : 300)
            .animation(.easeOut(duration: 1.5), value: isSliding)
            
            
            
        } // ZStack
        .frame(width: 340, height: 550, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: superH.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(16)
        .shadow(color: Color.black, radius: 8, x: 2, y: 2)
        .onAppear {
            isScaling = true
            isSliding = true
        }
        
        
    }
}

#Preview {
    SuperheroView(superH: superherosData[1])
}
