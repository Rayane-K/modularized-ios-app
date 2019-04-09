//
//  BigModuleClass.swift
//  BigModule
//
//  Created by Kurrimboccus Rayane on 09/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import Foundation

// You can use pods like in a non-modularized project, check the podfile
import RxSwift

// This module is accessible since it is declared in build phases and scheme of BigModule target
import LittleModule




// You must declare this class as public if you want to access it from the outside of the module
public class BigModuleClass {
    
    public static var bigModuleText = "Hello ! I am from the big module"
    public static var littleModuleText = LittleModuleClass.littleModuleText
    
    
    /*
     Using RxSwift stuff... if you want to use it in one of your framework, add it in your podfile in your target part.
     Please check Podfile for details
     */
    var rxObservable = Observable<Bool>.just(true)
}
