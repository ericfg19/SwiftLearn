import Foundation

func slotItemsBackpack(fileURL: URL) -> [[Character]] {
    do {
        let fileContents = try String(contentsOf: fileURL)
        let backpacksContents = fileContents.components(separatedBy: .newlines)
        
        var commonItems: [[Character]] = []
        
        for backpackContent in backpacksContents {
            let halfLength = backpackContent.count / 2
            let compartment1 = Set(backpackContent.prefix(halfLength))
            let compartment2 = Set(backpackContent.suffix(halfLength))
            
            let intersection = compartment1.intersection(compartment2)
            commonItems.append(Array(intersection))
        }
        
        return commonItems
    } catch {
        print("Error reading file: \(error)")
        return []
    }
}

let fileURL = URL(fileURLWithPath: "exemplo.txt")
let result = slotItemsBackpack(fileURL: fileURL)

for (index, commonItems) in result.enumerated() {
    let slotNumber = index + 1
    let itemsString = commonItems.map { String($0) }.joined(separator: ", ")
    print("Tipo de item repetido no slot [\(slotNumber)] da mochila: \(itemsString)")
}
