import Foundation

public struct LocalizablePackage {
    public private(set) var text = "Hello, World!"
    
    public init() {
    }
}

extension Bundle {
    public static var localizationBundleModule = Bundle.module
}
