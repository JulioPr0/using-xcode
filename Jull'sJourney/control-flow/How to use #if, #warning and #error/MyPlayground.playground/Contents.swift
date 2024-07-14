//#if os(iOS)
//    print("iOS")
//#elseif os(watchOS)
//    print("watchOS")
//#elseif os(tvOS)
//    print("tvOS")
//#else
//    print("macOS")
//#endif
//
//#if canImport(SwiftUI)
//    import SwiftUI
//#else
//    import UIKit
//#endif

#if targetEnvironment(simulator)
    let environment = "Simulator"
#endif

#if targetEnvironment(simulator)
    #warning("Running on Simulator")
#else
    #error("We need to test with the simulator")
#endif
