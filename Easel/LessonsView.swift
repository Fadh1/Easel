//
//  Welcome.swift
//  Easel
//
//  Created by Fadhli Rahim on 6/1/23.
//

import SwiftUI

struct LessonsView: View {
    let lessons : [Lesson]
    var body: some View {
        List{
            ForEach(lessons) { Lesson in
                CardView(lesson: Lesson).listRowBackground(Lesson.theme.mainColor)
            }
        }
    }
}

struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView(lessons : Lesson.sampleData)
    }
}
