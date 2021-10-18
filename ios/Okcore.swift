import OkCore

@objc(Okcore)
class Okcore: NSObject {
    private let okhiLocationService = OkHiLocationService()
    @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }
    @objc func isLocationServicesEnabled(_ resolve:RCTPromiseResolveBlock, reject:RCTPromiseRejectBlock) {
        resolve(okhiLocationService.isLocationServicesAvailable())
    }
}