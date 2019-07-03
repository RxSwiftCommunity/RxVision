//
//  VNSequenceRequestHandler+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 08/02/2019.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNSequenceRequestHandler {
    
    // MARK: - CGImage
    
    public func perform(_ requests: [RxVNRequest<CGImage>], on value: CGImage) throws {
        let _requests = RxVNRequest<CGImage>.setAndMap(requests, on: value)
        try self.base.perform(_requests, on: value)
    }

    public func perform(_ requests: [RxVNRequest<CGImage>], on value: CGImage, orientation: CGImagePropertyOrientation) throws {
        let _requests = RxVNRequest<CGImage>.setAndMap(requests, on: value)
        try self.base.perform(_requests, on: value, orientation: orientation)
    }
    
    // MARK: - CIImage

    public func perform(_ requests: [RxVNRequest<CIImage>], on value: CIImage) throws {
        let _requests = RxVNRequest<CIImage>.setAndMap(requests, on: value)
        try self.base.perform(_requests, on: value)
    }

    public func perform(_ requests: [RxVNRequest<CIImage>], on value: CIImage, orientation: CGImagePropertyOrientation) throws {
        let _requests = RxVNRequest<CIImage>.setAndMap(requests, on: value)
        try self.base.perform(_requests, on: value, orientation: orientation)
    }
    
    // MARK: - CVPixelBuffer
    
    public func perform(_ requests: [RxVNRequest<CVPixelBuffer>], on value: CVPixelBuffer) throws {
        let _requests = RxVNRequest<CVPixelBuffer>.setAndMap(requests, on: value)
        try self.base.perform(_requests, on: value)
    }

    public func perform(_ requests: [RxVNRequest<CVPixelBuffer>], on value: CVPixelBuffer, orientation: CGImagePropertyOrientation) throws {
        let _requests = RxVNRequest<CVPixelBuffer>.setAndMap(requests, on: value)
        try self.base.perform(_requests, on: value, orientation: orientation)
    }
    
    // MARK: - Data

    public func perform(_ requests: [RxVNRequest<Data>], onImageData: Data) throws {
        let _requests = RxVNRequest<Data>.setAndMap(requests, on: onImageData)
        try self.base.perform(_requests, onImageData: onImageData)
    }
    
    public func perform(_ requests: [RxVNRequest<Data>], onImageData: Data, orientation: CGImagePropertyOrientation) throws {
        let _requests = RxVNRequest<Data>.setAndMap(requests, on: onImageData)
        try self.base.perform(_requests, onImageData: onImageData, orientation: orientation)
    }
    
    // MARK: - URL

    public func perform(_ requests: [RxVNRequest<URL>], onImageURL: URL) throws {
        let _requests = RxVNRequest<URL>.setAndMap(requests, on: onImageURL)
        try self.base.perform(_requests, onImageURL: onImageURL)
    }
    
    public func perform(_ requests: [RxVNRequest<URL>], onImageURL: URL, orientation: CGImagePropertyOrientation) throws {
        let _requests = RxVNRequest<URL>.setAndMap(requests, on: onImageURL)
        try self.base.perform(_requests, onImageURL: onImageURL, orientation: orientation)
    }

}
