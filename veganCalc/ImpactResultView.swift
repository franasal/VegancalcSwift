// ImpactResultView.swift
import SwiftUI

struct ImpactResultView: View {
    @Binding var selectedDate: Date
    @Binding var dismissSheet: Bool

    var body: some View {
        let veganDays = calculateVeganDays()

        return ImpactDetailsView(veganDays: veganDays, isPresented: $dismissSheet)
    }
    
    private func calculateVeganDays() -> Int {
        let calendar = Calendar.current
        let currentDate = Date()
        
        let components = calendar.dateComponents([.day], from: selectedDate, to: currentDate)
        return components.day ?? 0
    }
}
