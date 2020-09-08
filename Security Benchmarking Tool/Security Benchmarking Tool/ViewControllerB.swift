//
//  ViewControllerB.swift
//  Security Benchmarking Tool
//
//  Created by Victoria Belinschi on 9/7/20.
//  Copyright © 2020 Victoria Belinschi. All rights reserved.
//

import Cocoa


class ViewControllerB: NSViewController {
    var allWords = [String]()
    var usedWords = [String]()
 
    var FinalPath = ""
    override func viewDidLoad() {
       do {
            let data = try String(contentsOfFile: FinalPath, encoding: .utf8)
            let myStrings = data.components(separatedBy: .newlines)
          let text = myStrings.joined(separator: "\n")
       print("\(text)")
        
    //  let linesCount = myStrings.reduce(into: 0) { (count, letter) in
    //       if letter == "\r\n" {
    //         count += 1
      //     }
     //   }
       // var j = 0
     //     for line in myStrings {
      //      for i in stride(from: 0, through: k, by: 1) //{ print("i=\(i)") }{
       //              if let startIndex = line.range(of: "description :")?.lowerBound {
        //                print(line)
                        
        //            }
                 
         //   }
        //    j += 1
                      
           //       }
       
       }
       catch {
     print(error)
       }
    //    for line in myStrings {
       //         if let startIndex = line.range(of: "type:")?.lowerBound {
      //          print(line[..<startIndex])
      //          }
                
     //       }
        
        
    //    var function1(var FinalPath)
        super.viewDidLoad()
        // Do view setup here.
    }
    
}

