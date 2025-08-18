import Network

class NetworkManager {
    static let shared = NetworkManager()
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "NetworkMonitor")
    
    private init() {
        monitor.start(queue: queue)
    }
    
    func checkConnection(completion: @escaping (Bool) -> Void) {
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                completion(path.status == .satisfied)
            }
        }
    }
}
