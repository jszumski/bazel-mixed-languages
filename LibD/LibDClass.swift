import Foundation

public struct LibDStruct {
    public let property: String?
}

@objc
public class LibDClass: NSObject {
	public let property: Int = 0

	func something() {
		let obj = LibDObject()

		print(obj)
	}
}