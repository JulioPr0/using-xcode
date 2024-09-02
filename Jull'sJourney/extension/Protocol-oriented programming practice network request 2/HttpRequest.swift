//
//  HttpRequest.swift
//  Protocol-oriented programming practice network request 2
//
//  Created by Julio Pramaitama on 02/09/24.
//

import Foundation

enum HttpRequestMethod: String
{
    case GET
    case POST
    case PUT
    case DELETE
}

protocol HttpRequest
{
    var path: String { get }
    var method: HttpRequestMethod { get }
    var parameter: [String: Any] { get }
    
    associatedtype Response: DecodableEntity
}

extension HttpRequest
{
    var host : String { return "https://websitejulio.com" }
}
