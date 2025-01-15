//
//  HttpClient.swift
//  Protocol-oriented programming practice network request 3
//
//  Created by Julio Pramaitama on 05/09/24.
//

import Foundation

protocol Client
{
    func send<T : HttpRequest>(_ request: T, handler: @escaping (T.Response?) -> Void)
}

struct HttpClient: Client
{
    func send<T : HttpRequest>(_ request: T, handler: @escaping (T.Response?) -> Void)
    {
        let hostAndPath = request.host.appending(request.path)
        var urlRequest = URLRequest(url: URL(string: hostAndPath)!)
        urlRequest. httpMethod = request.method.rawValue
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest)
        {
            data, _, error in
            guard let data = data, let entity = T.Response.parse(data: data)else {
                return
            }
            DispatchQueue.main.async { handler(entity) }
        }
        dataTask.resume()
    }
}
