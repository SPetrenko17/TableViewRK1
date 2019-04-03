
import Foundation

class CellModel {
    var imagename: String?
    var name: String?
    var count: Int?
    
    init(with titleData: TitleData) {
        self.imagename = titleData.file
        self.name = titleData.name
        self.count = titleData.episodes
    }
}
