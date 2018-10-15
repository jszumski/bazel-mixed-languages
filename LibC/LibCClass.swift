import Foundation

@objc public enum LibCEnumeration: UInt {
    case someCase = 0
    case otherCase
    case lastCase
}

public struct LibCStruct {
    public let property: String?
}

public class LibCClass {
	public let property: Int = 0
}