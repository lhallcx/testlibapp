import testcommon

public class DateInfo {
    
    private init() {}
    
    public class func now() -> String {
        let dayName = Day.current()
        
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd"
        let dateString = df.string(from: Date())
        
        return "LibA: date is \(dateString), day is \(dayName)"
    }
}
