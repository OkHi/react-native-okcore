import OkCore
import OkVerify

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

// MARK: - OkVerify Delegate
extension Okcore: OkVerifyDelegate {
    func verify(_ okVerify: OkHiVerify, didEncounterError error: OkHiError) {
        return
    }
    
    func verify(_ okVerify: OkHiVerify, didStart locationId: String) {
        return
    }
    
    func verify(_ okVerify: OkHiVerify, didEnd locationId: String) {
        return
    }
}
