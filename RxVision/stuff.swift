//
//  stuff.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/02/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import RxSwift
import Vision
import RxVision


extension Reactive where Base: VNRequest {
    
    func tewetr() {
        let ch = self.base.completionHandler
    }
    
    //    static func createCompletionHandler() -> Vision.VNRequestCompletionHandler {
    //
    //    }
    
    
    var results: Maybe<Any> {
        return Maybe<Any>.create { maybe in
            let _ = VNRequestMaybeResults(observer: maybe)
            return Disposables.create()
        }
    }
    
    public static func competionHandler(request: VNRequest, error: Error?) {
        request.rx.tewetr()
    }
    
}


class MyStuff {
    
    func faegtadfg() {
    }
    
    func fdsa(request: VNRequest) -> Maybe<Any> {
        return Maybe<Any>.create { maybe in
            let results = VNRequestMaybeResults(observer: maybe)
            return Disposables.create()
        }
        
    }
}

class VNRequestMaybeResults {
    
    typealias Observer = (MaybeEvent<Any>) -> ()
    
    private let observer: Observer
    
    init(observer: @escaping Observer) {
        self.observer = observer
    }
    
    private func competionHandler(request: VNRequest, error: Error?) {
        if let error = error {
            observer(.error(error))
            return
        }
        guard let results = request.results else {
            observer(.completed)
            return
        }
        if results.isEmpty {
            observer(.completed)
            return
        }
        observer(.success(results))
    }
    
}
