//
//  ContentView.swift
//  PDFViewTest
//
//  Created by Mika Urakawa on 2022/01/28.
//

import SwiftUI

struct ContentView: View {
    @State private var isShownModal = false
    
    var body: some View {
        Button(action: {
            isShownModal.toggle()
        }) {
            Text("モーダル開く")
        }
        .fullScreenCover(isPresented: $isShownModal) {
            PDFBaseView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
