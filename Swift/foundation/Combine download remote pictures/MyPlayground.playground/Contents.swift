import UIKit
import Combine

enum DemoError:Error
{
    case statusCode
    case decoding
    case invalidImage
    case invalidURL
    case other(Error)
    
    static func map(_ error: Error) -> DemoError
    {
        return (error as? DemoError) ?? .other(error)
    }
}

func download(url: String) -> AnyPublisher<UIImage, DemoError>
{
    guard let url = URL(string: url) else
    {
        return Fail(error: DemoError.invalidURL).eraseToAnyPublisher()
    }
    
    return URLSession.shared.dataTaskPublisher(for: url).tryMap { response
        -> Data in
        guard let httpURLResponse = response.response as? HTTPURLResponse,
              httpURLResponse.statusCode == 200 else {
            throw DemoError.statusCode
        }
        return response.data
    }
    .tryMap { data in
        guard let image = UIImage(data: data) else {
            throw DemoError.invalidImage
        }
        return image
    }
    .mapError { DemoError.map($0) }
    .eraseToAnyPublisher()
}
