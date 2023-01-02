//
//  ContentView.swift
//  Easel
//
//  Created by Fadhli Rahim on 1/1/23.
//

import SwiftUI
import PencilKit

/**
 Goal here is to create a drawing app from where I am now.
 First up, let's figure out the stuff on the sdie here
 Okay pencil kit seems to be the
 What is helpful is the idea of pencilKit
 I think I just need to add pencilkit
 */

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

