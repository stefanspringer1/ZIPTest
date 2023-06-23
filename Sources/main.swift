import Foundation
import ZIPFoundation

let directory = URL(fileURLWithPath: CommandLine.arguments[1])
let zipped = URL(fileURLWithPath: CommandLine.arguments[2])

do {
    try FileManager().zipItem(at: directory, to: zipped, shouldKeepParent: true)
} catch {
    print("Creation of ZIP archive failed with error: \(error.localizedDescription)")
}
