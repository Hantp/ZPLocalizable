public struct LocalizablePackage {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

public class YourPackageBundle {
   public static let yourPackageBundle = Bundle.module
}
