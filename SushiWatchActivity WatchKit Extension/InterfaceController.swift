//
//  InterfaceController.swift
//  SushiWatchActivity WatchKit Extension
//
//  Created by Sruthi on 2019-10-30.
//  Copyright © 2019 Ankita. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity


class InterfaceController: WKInterfaceController,WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        super.awake(withContext: context)
        
        
        // 1. Check if teh watch supports sessions
        if WCSession.isSupported() {
            WCSession.default.delegate = self
            WCSession.default.activate()
    }
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pressLeftButton() {
        if (WCSession.default.isReachable == true) {
            print("left direction")
            // Here is the message you want to send to the watch
            // All messages get sent as dictionaries
            let message = ["direction":"hello left button pressed"] as [String : Any]
            
            // Send the message
            WCSession.default.sendMessage(message, replyHandler:nil)
        }
    }
    @IBAction func pressRightButton() {
       
        
        if (WCSession.default.isReachable == true) {
            print("right direction")
            // Here is the message you want to send to the watch
            // All messages get sent as dictionaries
            let message = ["direction":"hello right buttton pressed"] as [String : Any]

            // Send the message
            WCSession.default.sendMessage(message, replyHandler:nil)


        }
        else {

            //logLabel.setText("Cannot reach watch!")
        }
    }
    
    }

