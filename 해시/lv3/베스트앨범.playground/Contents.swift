import Foundation

struct Album {
    let index: Int
    let playCount: Int
    let genre: String
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var poputaion = [String: Int]()
    var albums = [Album]()
    var counts = [String: Int]()
    
    for i in 0..<genres.count {
        poputaion[genres[i]] = (poputaion[genres[i]] ?? 0) + plays[i]
        
        albums.append(Album(index: i,
                            playCount: plays[i],
                            genre: genres[i]))
    }
    var answer: [Album] = []
    albums.sorted(by: { a, b in
        if poputaion[a.genre]! != poputaion[b.genre]! {
            return poputaion[a.genre]! > poputaion[b.genre]!
        }
        if a.playCount != b.playCount {
            return a.playCount > b.playCount
        }
        return a.index < b.index
    }).forEach { albem in
            counts[albem.genre] = (counts[albem.genre]  ?? 0) + 1
            if (counts[albem.genre]! <= 2) {
                answer.append(albem)
            }
    }
    return answer.map { $0.index }
}

let genres = ["classic",
              "pop",
              "classic",
              "classic",
              "pop"]

let plays = [500,
             600,
             150,
             800,
             2500]

solution(genres, plays)
