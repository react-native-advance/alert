import UIKit

@objc(Alert)
class Alert: NSObject {

    // @objc(multiply:withB:withResolver:withRejecter:)
    // func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    //     resolve(a*b)
    // }

    @objc func showMessage(title:NSString, _ message:NSString, duration:Double) ->  Void {
    let alert = UIAlertController(title:title as String, message: message as String, preferredStyle: .alert);
    let seconds:Double = duration;
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated:true, completion:nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline:DispatchTime.now()+seconds, execute:{
      alert.dismiss(animated: true, completion:nil);
    })
  }

  @objc func showMessage(_ message:NSString, duration:Double) ->  Void {
    let alert = UIAlertController(title:nil, message: message as String, preferredStyle: .alert);
    let seconds:Double = duration;
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated:true, completion:nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline:DispatchTime.now()+seconds, execute:{
      alert.dismiss(animated: true, completion:nil);
    })
  }

  @objc func showMessage(title:NSString, _ message:NSString) ->  Void {
    let alert = UIAlertController(title:title as String, message: message as String, preferredStyle: .alert);
    let seconds:Double = 1;
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated:true, completion:nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline:DispatchTime.now()+seconds, execute:{
      alert.dismiss(animated: true, completion:nil);
    })
  }

    @objc func showMessage(_ message:NSString) ->  Void {
    let alert = UIAlertController(title:nil, message: message as String, preferredStyle: .alert);
    let seconds:Double = 1;
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated:true, completion:nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline:DispatchTime.now()+seconds, execute:{
      alert.dismiss(animated: true, completion:nil);
    })
  }
}
