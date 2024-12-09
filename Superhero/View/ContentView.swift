 import SwiftUI

struct ContentView: View {
    
    var superheros: [Superheros] = superherosData
    
    
    var body: some View {
        
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(superheros) { item in
                    SuperheroView(superH: item)
                }.padding(5)
               
            } // HStack
            .padding(10)
        }
    
    }
}

#Preview {
    ContentView()
}
