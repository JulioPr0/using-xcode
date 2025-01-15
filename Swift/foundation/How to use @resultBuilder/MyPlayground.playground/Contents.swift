@resultBuilder
struct StringComposer
{
    static func buildBlock(_ strings: String...) -> String
    {
        strings.joined(separator: "\n")
    }
    
    static func buildEither(first component: String) -> String//p3
    {
        return component
    }
    
    static func buildEither(second component: String) -> String//p3
    {
        return component
    }
}

let result = StringComposer.buildBlock(
    "It was many and many a year ago,",
    "In a kingdom by the sea,",
    "That a maiden there lived whom you may know",
    "By the name of ANNABEL LEE;"
)

@StringComposer func composeString() -> String
{
    "It was many and many a year ago,"
    "In a kingdom by the sea,"
    "That a maiden there lived whom you may know"
    "By the name of ANNABEL LEE;"
}
print(composeString())

@StringComposer func composeString2() -> String
{
    "It was many and many a year ago,"
    "In a kingdom by the sea,"
    "That a maiden there lived whom you may know"
    "By the name of ANNABEL LEE;"
    
    if Bool.random() {
        "Annabel Lee"
    }
    else {
        "侯永.城"
    }
}

composeString2()
