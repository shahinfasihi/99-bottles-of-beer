import UIKit

func beerSong (forThisManyBottlesOfBeer totalNumberOfBottle: Int) -> String {
    
    var lyrics: String = ""
    
    for number in (1...totalNumberOfBottle).reversed(){
        var newLine: String = ""
        if number != 1 {
            newLine = "\n\(number) bottles of beer on the wall,\(number) bottles of beer. \nTake one down and pass it around,\(number - 1) bottles of beer on the wall.\n"
        }
        else {
            newLine = "\n\(number) bottles of beer on the wall,\(number) bottles of beer. \nTake one down and pass it around,no more bottles of beer on the wall.\n"
        }
        lyrics += newLine
    }
    
    lyrics += "\nNo more bottles of beer on the wall,no more bottles of beer. \nGo to the store and buy some more,\(totalNumberOfBottle) bottles of beer on the wall."
    return lyrics
}

print(beerSong(forThisManyBottlesOfBeer: 99))
