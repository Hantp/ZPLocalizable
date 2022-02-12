import Foundation

public struct LocalizablePackage {
    public private(set) var text = "Hello, World!"
    
    public let greeting = NSLocalizedString("Greet", tableName: nil, bundle: Bundle.main , value: "nihao", comment: "greeting")

    public init() {
    }
}
