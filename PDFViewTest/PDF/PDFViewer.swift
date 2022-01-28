//
//  PDFViewer.swift
//  PDFViewTest
//
//  Created by Mika Urakawa on 2022/01/28.
//

import SwiftUI
import PDFKit

struct PDFViewer: UIViewRepresentable {
    var url: URL?
    
    init(urlString: String) {
        url = URL(string: urlString)
    }
    
    func makeUIView(context: UIViewRepresentableContext<PDFViewer>) -> PDFViewer.UIViewType {
        let pdfView = PDFView()
        guard let url = url else {
            return pdfView
        }
        pdfView.autoScales = true
        pdfView.document = PDFDocument(url: url)
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: UIViewRepresentableContext<PDFViewer>) {
        guard let url = url else {
            return
        }
        pdfView.document = PDFDocument(url: url)
    }
    
    func makeCoordinator() -> PDFViewer.Coordinator {
        return Coordinator()
    }
}


extension PDFViewer {
    class Coordinator: NSObject, PDFViewDelegate {
        // PDF内にあるリンクのタップを検知する
        func pdfViewWillClick(onLink sender: PDFView, with url: URL) {
            print(url.baseURL)
        }
    }
}
