//
//  main.swift
//  DemoProject
//
//  Created by Julio Pramaitama on 09/10/26.
//

import Foundation

enum WebsiteError: Error {
    case indexOutOfBounds(index: Int, length: Int)
}

func getCharacter(at index: Int, in text: String) throws -> Character {
    guard index >= 0 && index < text.count else {
        throw WebsiteError.indexOutOfBounds(
            index: index,
            length: text.count
        )
    }

    let stringIndex = text.index(
        text.startIndex,
        offsetBy: index
    )

    return text[stringIndex]
}

func testCharacter(at index: Int) {
    let website = "websitejulio.com"
    var character: Character? = nil

    print("\nTesting index \(index)...")

    defer {
        if let character = character {
            print("Final character = \(character)")
        } else {
            print("Final character = unavailable")
        }

        print("The defer block.")
    }

    do {
        let result = try getCharacter(at: index, in: website)
        character = result

        print("character = \(result)")

    } catch WebsiteError.indexOutOfBounds(let index, let length) {
        print("Error: Index \(index) is out of bounds.")
        print("String length = \(length).")

    } catch {
        print("Unexpected error: \(error.localizedDescription)")
    }
}

testCharacter(at: 40)
testCharacter(at: 100)
