import Foundation
import SwiftUI

struct Superheros: Identifiable {
    
    let id = UUID()
    let name: String
    let image: String
    let alertTitle: String
    let alertMessage: String
    let gradientColors: [Color]
}


let superherosData: [Superheros] = [
    
    Superheros(name: "Hulk", image: "hulk", alertTitle: "More about hulk", alertMessage: "Hulk is very green", gradientColors: [Color("ColorHulk01"), Color("ColorHulk02")]),
    
    Superheros(name: "Ironman", image: "ironman", alertTitle: "More about ironman", alertMessage: "ironman can fly", gradientColors: [Color("ColorIronman01"), Color("ColorIronman02")]),
    
    Superheros(name: "Spiderman", image: "spiderman", alertTitle: "More about spiderman", alertMessage: "Spiderman is not a real spider", gradientColors: [Color("ColorSpiderman01"), Color("ColorSpiderman02")]),
    
    Superheros(name: "Superman", image: "superman", alertTitle: "More about superman", alertMessage: "Superman is from another planet", gradientColors: [Color("ColorSuperman01"), Color("ColorSuperman02")]),
    
    Superheros(name: "Wolverine", image: "wolverine", alertTitle: "More about wolverine", alertMessage: "Wolverine has knives in his hand", gradientColors: [Color("ColorWolverine01"), Color("ColorWolverine02")])
    
]

