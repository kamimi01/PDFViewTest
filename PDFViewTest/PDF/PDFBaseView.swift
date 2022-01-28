//
//  PDFBaseView.swift
//  PDFViewTest
//
//  Created by Mika Urakawa on 2022/01/28.
//

import SwiftUI

struct PDFBaseView: View {
    @Environment(\.dismiss) var dismiss
    private let url = "<url>"
    
    var body: some View {
        NavigationView {
            PDFViewer(urlString: url)
                .navigationBarItems(leading: closeButton)
        }
    }
}

extension PDFBaseView {
    private var closeButton: some View {
        Button(action: {
            dismiss()
        }) {
            Text("閉じる")
        }
    }
}

struct PDFBaseView_Previews: PreviewProvider {
    static var previews: some View {
        PDFBaseView()
    }
}
