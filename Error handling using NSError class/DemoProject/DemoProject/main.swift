//
//  main.swift
//  DemoProject
//
//  Created by Julio Pramaitama on 09/10/26.
//

import Foundation

enum NewsError: Error {
    case invalidID
    case newsNotFound(Int)
    case noInternet
    case serverUnavailable
}

func requestNewsByID(
    _ newsID: Int,
    isConnected: Bool = true,
    serverAvailable: Bool = true
) throws -> String {

    guard newsID > 0 else {
        throw NewsError.invalidID
    }

    guard isConnected else {
        throw NewsError.noInternet
    }

    guard serverAvailable else {
        throw NewsError.serverUnavailable
    }

    let newsList: [Int: String] = [
        1: "No news is good news.",
        2: "Today I am learning Swift."
    ]

    guard let news = newsList[newsID] else {
        throw NewsError.newsNotFound(newsID)
    }

    return news
}

func testRequest(
    _ newsID: Int,
    isConnected: Bool = true,
    serverAvailable: Bool = true
) {
    print("\nRequesting news with ID \(newsID)...")

    defer {
        print("Request finished.")
    }

    do {
        let news = try requestNewsByID(
            newsID,
            isConnected: isConnected,
            serverAvailable: serverAvailable
        )

        print("Success: \(news)")

    } catch NewsError.invalidID {
        print("Error: ID must be greater than 0.")

    } catch NewsError.newsNotFound(let id) {
        print("Error: News with ID \(id) was not found.")

    } catch NewsError.noInternet {
        print("Error: No internet connection.")

    } catch NewsError.serverUnavailable {
        print("Error: The server is currently unavailable.")

    } catch {
        print("Unexpected error: \(error.localizedDescription)")
    }
}

testRequest(1)
testRequest(0)
testRequest(99)
testRequest(1, isConnected: false)
testRequest(1, serverAvailable: false)

print("\nAll tests completed.")
