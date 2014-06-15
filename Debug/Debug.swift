//
//  Debug.swift
//  Debug
//
//  Created by Matt Warren on 2014-06-14.
//  Copyright (c) 2014 Halotis. All rights reserved.
//

import Foundation


func Debugger(name:String) -> (String) -> () {
    
    
    func noop(m:String){}
    func printMsg(msg: String) { println(msg) }
    
    let env = NSProcessInfo.processInfo().environment

    if let debugVar = env["DEBUG"] as? String {
        let list = debugVar.componentsSeparatedByString(",")
        for flag in list {
            if flag.hasPrefix(name) {
                return printMsg
            }
        }
    }
    
    
    return noop
    
}