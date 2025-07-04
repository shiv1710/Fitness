//
//  WorkoutCard.swift
//  FitnessTracker
//
//  Created by Shiv Patel on 23/03/25.
//

import SwiftUI

struct Workout{
    let id: Int
    let titles: String
    let image: String
    let tintColor: Color
    let duration: String
    let date: String
    let calories: String

    
}

struct WorkoutCard: View {
    @State var workout: Workout
    
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width:48, height: 48)
                .foregroundColor(.green)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing: 16){
                HStack{
                    Text(workout.titles)
                    Spacer()
                    Text(workout.duration)
                }
                
                HStack{
                    Text(workout.date)
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
            
        }
        .padding(.horizontal)
    }
}

struct WorkoutCard_Previews: PreviewProvider{
    static var previews: some View{
        WorkoutCard(workout: Workout(id: 0, titles: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Aug 1", calories: "550 kcal"))
    }
}
