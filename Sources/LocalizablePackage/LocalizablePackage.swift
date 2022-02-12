import Foundation

public struct LocalizablePackage {
    public private(set) var text = "Hello, World!"
    
    public init() {
    }
}

public class ThisConstants {
    public static let greeting = NSLocalizedString("Greet", bundle: Bundle.module , value: "nihao", comment: "greeting")
}
