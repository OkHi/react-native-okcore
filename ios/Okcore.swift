import Dollar

@objc(Okcore)
class Okcore: NSObject {
    @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }
    @objc func isLocationServicesEnabled(_ resolve:RCTPromiseResolveBlock, reject:RCTPromiseRejectBlock) {
        resolve(Dollar.contains([1, 2, 3, 1, 2, 3], value: 2))
    }
}