protocol HtmlElement
{
    func getTag() -> String
    func getDefinition() -> String
}

class Header: HtmlElement
{
    func getTag() -> String { return "<header>" }
    func getDefinition() -> String
    { 
        return "The <header> element represents a container for instroductory content or a set of navigational links."
    }
}

class Body: HtmlElement
{
    func getTag() -> String { return "<body>" }
    func getDefinition() -> String
    { 
        return "The <body> element represents the content of a document."
    }
}

enum Html
{
    case body, head, div, table
}

enum HtmlFactory
{
    static func getHtmlElement(country:Html) -> HtmlElement
    {
        switch country
        {
        case .body: return Body()
        case .head: return Header()
        default: return nil
        }
    }
}

Body().getTag()
Header().getDefinition()

HtmlFactory.getHtmlElement(country: .body)?.getTag()
HtmlFactory.getHtmlElement(country: .head)?.getDefinition()
