//
//  Entity.swift
//  Protocol-oriented programming practice network request 1
//
//  Created by Julio Pramaitama on 01/09/24.
//

import Foundation

protocol DecodableEntity
{
    static func parse(data: Data)
}
