//
//  AppDelegate.swift
//  ViewControl
//
//  Created by Juan Pablo Claude on 2/17/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow?


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let flowViewController = ImageViewController()
        flowViewController.title = "Flow"
        flowViewController.image = NSImage(named: NSImageNameFlowViewTemplate)
        let columnViewController = ImageViewController()
        columnViewController.title = "Column"
        columnViewController.image = NSImage(named: NSImageNameColumnViewTemplate)
        
        let tabViewController = NerdTabViewController()
        tabViewController.addChildViewController(flowViewController)
        tabViewController.addChildViewController(columnViewController)
        
        let window = NSWindow(contentViewController: tabViewController)
        window.makeKeyAndOrderFront(self)
        self.window = window
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

