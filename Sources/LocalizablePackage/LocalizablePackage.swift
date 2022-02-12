import Foundation

public struct LocalizablePackage {
    public private(set) var text = "Hello, World!"
    
    public init() {
    }
}

public class ThisConstants {
    public static let greeting = NSLocalizedString("Greet", tableName: nil, bundle: Bundle.main , value: "nihao", comment: "greeting")
}
