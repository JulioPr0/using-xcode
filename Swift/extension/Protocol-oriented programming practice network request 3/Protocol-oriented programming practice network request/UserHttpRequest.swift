//
//  UserHttpRequest.swift
//  Protocol-oriented programming practice network request 2
//
//  Created by Julio Pramaitama on 03/09/24.
//

import Foundation

struct UserHttpRequest: HttpRequest
{
    var path = "/json/jsonUser.json"
    let method: HttpRequestMethod = .GET
    let parameter: [String: Any] = [:]
    
    typealias Response = User
}
