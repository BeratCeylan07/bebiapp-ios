import SwiftUI
import FirebaseAnalytics

struct ContentView: View {
    @StateObject var webViewStore = WebViewStore()

    var body: some View {
        WebView(webView: webViewStore.webView)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                if let url = URL(string: "https://www.bebisocial.com/") {
                    self.webViewStore.webView.load(URLRequest(url: url))
                }
            }
    }
}
