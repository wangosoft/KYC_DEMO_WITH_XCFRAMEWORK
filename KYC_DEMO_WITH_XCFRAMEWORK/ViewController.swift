//
//  ViewController.swift
//  KYC_DEMO_XCFRAMEWORK
//
//  Created by Onur GÜLER on 08.09.2022.
//

import UIKit
import KYC_SDK

class ViewController: UIViewController {

    let kycCore: KycCore = KycCore.getInstance()
    let signKey = "086822688fc94de29075e7acf7ad3951"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        kycCore.apply(navigationController: self.navigationController!, delegate: self, signatureKey: signKey, environment: .STAGING)
        kycCore.startKyc()
    }

}

extension ViewController: KycCoreProtocol {
    func onCompleted() {
        
    }
    
    func onCancelled() {
        
    }
    
    func onFailure(exception: KycCoreSdkException?) {
        
    }
    
    func onPermissionEvent(permissionEvents: PermissionEvents) {
        
    }
}

