//
//  HomeViewModel.swift
//  FitnessTracker
//
//  Created by Shiv Patel on 04/07/25.
//
import SwiftUI

class HomeViewModel: ObservableObject{
    
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    @Published var mockActivities = [
        Activity(id: 0, title: "today's step", subtitle: "Goal 12,000", image: "figure.walk", tinColor: .green, amount: "9223"),
        
        Activity(id: 1, title: "Running", subtitle: "Goal 2km", image: "figure.run", tinColor: .red, amount: "1.8km"),
        
        Activity(id: 2, title: "Strength Training", subtitle: "This Week", image: "figure.gym", tinColor: .blue, amount: "0 mins"),
        
        Activity(id: 3, title: "Calorie", subtitle: "today", image: "figure.food", tinColor: .purple, amount: "600")
        
    ]
    
    var mockWorkouts = [
        Workout(id: 0, titles: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Aug 1", calories: "550 kcal"),
        Workout(id: 1, titles: "Strength Training", image: "figure.run", tintColor: .blue, duration: "51 mins", date: "Aug 1", calories: "550 kcal"),
        Workout(id: 2, titles: "Running", image: "figure.run", tintColor: .red, duration: "51 mins", date: "Aug 1", calories: "550 kcal"),
        Workout(id: 3, titles: "Running", image: "figure.run", tintColor: .green, duration: "51 mins", date: "Aug 1", calories: "550 kcal")
        
    ]
}
