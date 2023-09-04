// VeganDayCalendarView.swift
import SwiftUI

struct VeganDayCalendarView: View {
    @Binding var isPresented: Bool
    @Binding var selectedDate: Date
    @State private var dismissSheet = false
    @State private var showingImpactResult = false

    var body: some View {
        NavigationView {
            VStack {
                DatePicker("Select Vegan Day", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()

                Button("Done") {
                    dismissSheet = true // Set this to true to show the ImpactResultView
                }
                .padding()
                .sheet(isPresented: $dismissSheet, onDismiss: {
                    dismissSheet = false // Reset the state when the sheet is dismissed
                }) {
                    ImpactResultView(selectedDate: $selectedDate, dismissSheet: $dismissSheet)
                }
                Button("Close") {
                    isPresented = false  // Set this binding to false to dismiss the sheet
                }
            }
            .navigationBarTitle("Select Vegan Day")
            
            // Add a button to close the view

        }
    }
}
