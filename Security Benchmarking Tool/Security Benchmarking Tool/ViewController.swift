//
//  ViewController.swift
//  Security Benchmarking Tool
//
//  Created by Victoria Belinschi on 9/3/20.
//  Copyright © 2020 Victoria Belinschi. All rights reserved.
//

import Cocoa



class ViewController: NSViewController {
    var path  =  ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
      
    @IBOutlet  weak var filename_field: NSTextField!
     @IBAction func browseFile(sender: AnyObject) {
         
         let dialog = NSOpenPanel();
         
         dialog.title                   = "file";
         dialog.showsResizeIndicator    = true;
         dialog.showsHiddenFiles        = false;
         dialog.canChooseDirectories    = true;
         dialog.canCreateDirectories    = true;
         dialog.allowsMultipleSelection = false;
         dialog.allowedFileTypes        = ["audit"];

         if (dialog.runModal() == NSApplication.ModalResponse.OK) {
             let result = dialog.url // Pathname of the file
             
             if (result != nil)
             {
                  path = result!.path
                 filename_field.stringValue = path
                performSegue(withIdentifier: "name", sender: self)
                
                
           
             }
         } else
         {
             // User clicked on "Cancel"
             return
         }
        
       
    

        
}
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        let vc = segue.destinationController as! ViewControllerB
        vc.FinalPath = self.path
              
    }
    
           }
          


