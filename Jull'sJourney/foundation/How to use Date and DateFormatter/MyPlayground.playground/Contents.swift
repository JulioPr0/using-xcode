import UIKit

var date = Date()
date.addTimeInterval(60 * 60)
let secondDate = date.addingTimeInterval(60 * 60)

date.compare(date.addingTimeInterval(60 * 60)).rawValue
date.compare(date.addingTimeInterval(0)).rawValue
date.compare(date.addingTimeInterval(-60 * 60)).rawValue

date.description
date.timeIntervalSince(secondDate)
date.timeIntervalSince1970
date.timeIntervalSinceNow

let dateFormatter = DateFormatter()
dateFormatter.locale = Locale.current

dateFormatter.dateStyle = DateFormatter.Style.full
dateFormatter.string(from: date)

dateFormatter.dateStyle = DateFormatter.Style.long
dateFormatter.string(from: date)

dateFormatter.dateStyle = DateFormatter.Style.medium
dateFormatter.string(from: date)

dateFormatter.dateStyle = DateFormatter.Style.short
dateFormatter.string(from: date)

dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
dateFormatter.string(from: date)

dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
dateFormatter.string(from: date)

dateFormatter.dateFormat = "yyyy-MM-dd"
dateFormatter.string(from: date)

dateFormatter.dateFormat = "yyyy-M-dd"
dateFormatter.string(from: date)

let dateString = "2024-09-11 22:37:59"
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let newDate = dateFormatter.date(from: dateString)

(newDate?.timeIntervalSinceReferenceDate)! > date.timeIntervalSinceReferenceDate
