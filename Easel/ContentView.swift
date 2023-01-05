//
//  ContentView.swift
//  Easel
//
//  Created by Fadhli Rahim on 1/1/23.
//

import SwiftUI
import PencilKit

struct ContentView: View {
    var body: some View {
        PencilKitView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// PencilKit for pencil input
struct PencilKitView: UIViewRepresentable {
    typealias UIViewType = PKCanvasView
    
    let toolPicker = PKToolPicker()
    
    func makeUIView(context: Context) -> PKCanvasView {
        let pencilKitCanvasView = PKCanvasView()
        
        pencilKitCanvasView.drawingPolicy = PKCanvasViewDrawingPolicy.anyInput
        
        toolPicker.addObserver(pencilKitCanvasView)
        toolPicker.setVisible(true, forFirstResponder: pencilKitCanvasView)
        
        pencilKitCanvasView.becomeFirstResponder()
        
        return pencilKitCanvasView
        
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context){
        
    }
    
}

