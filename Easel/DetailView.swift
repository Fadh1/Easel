//
//  DetailView.swift
//  Easel
//
//  Created by Fadhli Rahim on 5/1/23.
//

import SwiftUI

struct DetailView: View {
    let scrum : DailyScrum
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                Label("Start Meeting", systemImage: "timer").font(.headline).foregroundColor(.accentColor)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
