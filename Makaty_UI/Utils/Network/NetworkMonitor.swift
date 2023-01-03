//
//  NetworkMonitor.swift
//  Makaty_UI
//
//  Created by Madiapps on 29/12/2022.
//

import SwiftUI
import SystemConfiguration
import Network

class NetworkMonitor: ObservableObject {
    let queue = DispatchQueue(label: "NetworkMonitorQueue")
    let pathMonitor = NWPathMonitor()
    @Published var isConnected = false

    init() {
        // Check initial network connectivity using SCNetworkReachability
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)

        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            self.isConnected = false
            return
        }

        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            self.isConnected = false
            return
        }

        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)

        self.isConnected = isReachable && !needsConnection

        // Start NWPathMonitor to monitor for subsequent changes
        pathMonitor.pathUpdateHandler = { path in
            self.isConnected = path.status == .satisfied
        }
        pathMonitor.start(queue: queue)
    }
}
