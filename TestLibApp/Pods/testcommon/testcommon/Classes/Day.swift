
public class Day {
    
    private init() {}
    
    public class func current() -> String {
        let f = DateFormatter()
        let now = Date()
        let weekdayIndex = Calendar.current.component(.weekday, from: now) - 1
        return f.weekdaySymbols[weekdayIndex]
    }
    
}
