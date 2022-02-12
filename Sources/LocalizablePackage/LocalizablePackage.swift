import Foundation

public struct LocalizablePackage {
    public private(set) var text = "Hello, World!"
    
    public init() {
    }
}

public class LocalizationBundle {
    public static var module = Bundle.module
}
