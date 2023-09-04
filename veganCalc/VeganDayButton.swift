// VeganDayButton.swift
import SwiftUI

struct VeganDayButton: View {
    @State private var isPresentingCalendar = false
    @State private var selectedDate = Date()
    

    var body: some View {
        Button(action: {
            isPresentingCalendar.toggle()
        }) {
            Image(systemName: "leaf.circle.fill") // Replace with your icon
                .font(.system(size: 80))
                .foregroundColor(.green)
        }
        .sheet(isPresented: $isPresentingCalendar) {
            VeganDayCalendarView(isPresented: $isPresentingCalendar, selectedDate: $selectedDate)
        }
    }
}
