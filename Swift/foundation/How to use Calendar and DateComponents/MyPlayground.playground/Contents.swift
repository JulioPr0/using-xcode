import Foundation

let date = Date()
let currentCalendar = Calendar.current
let dateComponents =
    currentCalendar.dateComponents(
        [Calendar.Component.era, Calendar.Component.year, Calendar.Component.month, Calendar.Component.hour, Calendar.Component.second, Calendar.Component.minute], from: date)
dateComponents.era
dateComponents.year
dateComponents.month
dateComponents.day
dateComponents.hour
dateComponents.minute
dateComponents.second

var componrnts = DateComponents()
componrnts.year = 2024
componrnts.month = 09
componrnts.day = 15
let compents = currentCalendar.date(from: componrnts)
