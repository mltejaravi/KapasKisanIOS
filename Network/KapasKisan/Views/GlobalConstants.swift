struct GlobalConstants{
    //static let BASE_URL = "https://onesoftsys.com/kapaskisanapi/";
    //static let BASE_URL = "http://4.240.111.195:8097/";
    static let BASE_URL = "https://kapaskisanapi-d9cdamcrcbemf9hb.centralindia-01.azurewebsites.net/";
    static let USERNAME = "onesoft.markets.authuser";
    static let PASSWORD = "f2ad06f5-baa4-4eb8-87b9-908763ea79ce";
}

import SwiftUI
import Combine

class KeyboardObserver: ObservableObject {
    static let shared = KeyboardObserver() // ✅ Singleton (global instance)

    @Published var isVisible = false
    private var cancellables: Set<AnyCancellable> = []

    private init() {
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
            .map { _ in true }
            .merge(with:
                NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
                    .map { _ in false }
            )
            .removeDuplicates()
            .assign(to: \.isVisible, on: self)
            .store(in: &cancellables)
    }
}
