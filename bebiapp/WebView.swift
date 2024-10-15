import SwiftUI
import Combine
import WebKit

public class WebViewStore: ObservableObject {
    @Published public var webView: WKWebView

    public init() {
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        configuration.mediaTypesRequiringUserActionForPlayback = []
        
        let webView = WKWebView(frame: UIScreen.main.bounds, configuration: configuration)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        webView.scrollView.bounces = false
        webView.allowsBackForwardNavigationGestures = true
        
        self.webView = webView
        setupObservers()
    }
    
    private func setupObservers() {
        // ... (mevcut gözlemci kodu burada kalabilir)
    }
    
    private var observers: [NSKeyValueObservation] = []
    
    deinit {
        observers.forEach { $0.invalidate() }
    }
}

public struct WebView: UIViewRepresentable {
    public let webView: WKWebView
    
    public init(webView: WKWebView) {
        self.webView = webView
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        webView
    }
    
    public func updateUIView(_ uiView: WKWebView, context: Context) {
        // Güncelleme gerekirse buraya kod ekleyebilirsiniz
    }
}
