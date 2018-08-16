//
//  HttpResponseCode.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 8/16/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class HttpResponseCode: Equatable {
    
    public enum Codes: Int {
        case Unknown = -1
        case FrameworkError = 0
        case Ok = 200
        case BadRequest = 400
        case Unauthorized = 401
        case Forbidden = 403
        case NotFound = 404
        case MethodNotAllowed = 405
        case UnsupportedMediaType = 415
        case NotRecorded = 422
        case RateLimitExceeded = 429
        case InternalServerError = 500
        case BadGateway = 502
        case ServiceUnavailable = 503
        case GatewayTimeout = 504
    }
    
    public var code: Codes
    public var codeValue: Int {
        return self.code.rawValue
    }
    
    public init(_ code: Codes) {
        self.code = code
    }
    
    public init(_ code: Int) {
        switch code {
        case 0:
            self.code = .FrameworkError
        case 200:
            self.code = .Ok
        case 400:
            self.code = .BadRequest
        case 401:
            self.code = .Unauthorized
        case 403:
            self.code = .Forbidden
        case 404:
            self.code = .NotFound
        case 405:
            self.code = .MethodNotAllowed
        case 415:
            self.code = .UnsupportedMediaType
        case 422:
            self.code = .NotRecorded
        case 429:
            self.code = .RateLimitExceeded
        case 500:
            self.code = .InternalServerError
        case 502:
            self.code = .BadGateway
        case 503:
            self.code = .ServiceUnavailable
        case 504:
            self.code = .GatewayTimeout
        default:
            self.code = .Unknown
        }
    }
    
    public static func == (lhs: HttpResponseCode, rhs: HttpResponseCode) -> Bool {
        return lhs.code == lhs.code
    }
    
    public static func ==(left: HttpResponseCode, right: HttpResponseCode.Codes) -> Bool {
        return left.code == right
    }
}
