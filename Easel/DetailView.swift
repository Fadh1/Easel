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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
