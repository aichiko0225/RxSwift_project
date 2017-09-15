//
//  ViewController.swift
//  RxSwift_project
//
//  Created by Apple on 2017/9/11.
//  Copyright © 2017年 ehjr. All rights reserved.
//

import UIKit
import RxSwift

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

enum Event<Element> {
    /// Next element is produced.
    case next(Element)
    /// Sequence terminated with an error.
    case error(Swift.Error)
    /// Sequence completed successfully.
    case completed
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        var possibleInteger: OptionalValue<Int> = .none
//        possibleInteger = .some(100)
        
        let disposeBag = DisposeBag()
        
        Observable.just("ash").subscribe{
            event in
            print(event)
        }.disposed(by: disposeBag)
        
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

