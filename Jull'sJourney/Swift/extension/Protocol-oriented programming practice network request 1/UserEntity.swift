//
//  UserEntity.swift
//  Protocol-oriented programming practice network request 1
//
//  Created by Julio Pramaitama on 01/09/24.
//

import Foundation

struct User
{
    let name: String
    let hobbies: String
    let birthdate: String
    
    init?(data: Data)
    {
        guard let obj = try? JSONSerialization.jsonObject(with: data, options: [])
                as? [String: Any] else { return nil }
        
        guard let name = obj["name"] as? String else { return nil }
        guard let hobbies = obj["hobbies"] as? String else { return nil }
        guard let birthdate = obj["birthdate"] as? String else { return nil }
        
        self.name = name
        self.hobbies = hobbies
        self.birthdate = birthdate
    }
}

extension User: DecodableEntity
{
    static func parse(data: Data) -> User?
    {
        return User(data: data)
    }
}
