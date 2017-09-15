//: Playground - noun: a place where people can play

import UIKit
import RxSwift
import Foundation

var str = "Hello, playground"

func example1() {
    let scheduler = SerialDispatchQueueScheduler(qos: .default)
    
    let subscription = Observable<Int>.interval(0.3, scheduler: scheduler).subscribe({
        event in
        print(event)
    })
    Thread.sleep(forTimeInterval: 2.0)
    subscription.dispose()
}

example1()

func myJust<E>(_ elemennt: E) -> Observable<E> {
    return Observable.create({ (observer) -> Disposable in
        observer.on(.next(elemennt))
        observer.onCompleted()
        return Disposables.create()
    })
}

func searchWikipedia(_ searchTerm: String) -> Observable<String> {
    return Observable<String>.just(searchTerm)
}

func example2() {
//    let searchForMe = searchWikipedia("me")
    // no requests are performed, no work is being done, no URL requests were fired
}

myJust(0).subscribe({
    event in
    print(event)
})

