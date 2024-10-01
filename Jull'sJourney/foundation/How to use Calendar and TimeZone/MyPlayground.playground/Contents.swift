import Foundation

var calendar:Calendar = Calendar.current

calendar.locale = Locale(identifier: "zh_CN")
calendar.timeZone = TimeZone(abbreviation: "EST")!
calendar.timeZone = TimeZone(secondsFromGMT: +28800)!

calendar.firstWeekday = 2
calendar.minimumDaysInFirstWeek = 3
calendar.locale
calendar.timeZone

calendar.isDateInToday(Date())
calendar.isDateInTomorrow(Date())
calendar.isDateInYesterday(Date())
