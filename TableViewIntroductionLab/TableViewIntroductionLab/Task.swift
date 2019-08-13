 import Foundation

 struct Task: CustomStringConvertible {
    enum Status {
        case notStarted
        case inProgress
        case completed
    }
    let name: String
    let status: Status
    let dueDate: Date
    var description: String {
        return "\(name): status: \(status), dueDate: \(dueDate)"
    }
}
