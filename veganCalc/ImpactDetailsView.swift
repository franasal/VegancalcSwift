import SwiftUI


struct ImpactDetailsView: View {
    var veganDays: Int
    @Binding var isPresented: Bool  // Binding to control the sheet's presentation

    var body: some View {
        VStack {
            // Display impact details based on veganDays
            Text("💧 \(Int(Double(veganDays) * 4.164)) Liters of Water")
            Text("🌽 \(veganDays * 18) Kg of Grain")
            Text("🌲 \(veganDays * 3) Sq.m of Forested land")
            Text("☁️ \(veganDays * 9) kg of CO2 &")
            Text("🐄 \(Int(Double(veganDays) * 0.22)) Animal Lives!!")
            Text("🐄 \(Int(Double(veganDays) * 0.22) + 1) Animals thank you!")
            Text("\n💚")
            
            // Add a button to close the view
            Button("Close") {
                isPresented = false  // Set this binding to false to dismiss the sheet
            }
            .padding()
        }
        .padding()
    }
}




