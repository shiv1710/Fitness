//
//  ActivityCard.swift
//  FitnessTracker
//
//  Created by Shiv Patel on 02/12/24.
//

import SwiftUI

struct Activity{
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tinColor: Color
    let amount: String
}

struct ActivityCard: View {
    @State var activity: Activity
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading,spacing: 8){
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tinColor)
                }
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
        }
        
    }
}

struct ActivityCard_Preview: PreviewProvider{
    static var previews: some View{
        ActivityCard(activity: Activity(id: 0, title: "Today's Steps", subtitle: "Goal 12,000", image: "figure.walk", tinColor: .green, amount: "9812"))
                     
                     
    }
}
