//
//  CardView.swift
//  Easel
//
//  Created by Fadhli Rahim on 6/1/23.
//

import SwiftUI

struct CardView: View {
    let lesson : Lesson
    var body: some View {
        VStack(alignment: .leading){
            Text(lesson.title).font(.headline)
            Spacer()
            HStack{
                Label("\(lesson.LengthInMinutes)", systemImage: "clock")
            }.font(.caption)
        }.padding().foregroundColor(lesson.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var lesson = Lesson.sampleData[0]
    static var previews: some View {
        CardView(lesson : lesson).background(lesson.theme.mainColor).previewLayout(.fixed(width:400, height: 60))
    }
}
