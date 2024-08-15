import SwiftUI
import FirebaseAnalytics


struct ContentView: View {
    
    @ObservedObject var webViewStore = WebViewStore()
    
    var body: some View {
        ZStack {
            Color.init("Color").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            WebView(webView: webViewStore.webView)
            
        }.onAppear {
            self.webViewStore.webView.load(URLRequest(url: URL(string: "https://bebisocial.com")!))
            logCustomEvent()
        }
    }
    func logCustomEvent() {
        Analytics.logEvent("custom_event", parameters: [
            "event_name": "custom_event_triggered",
            "description": "This is a custom event"
        ])
    }
}
