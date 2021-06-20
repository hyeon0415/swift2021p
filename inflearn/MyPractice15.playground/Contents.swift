import UIKit

// Deinit  메모리 해제될떄 정상적으로 호출되는 부분 
// 해제

var a: Int? = 10

a = nil

class Game {
    var score = 0
    var name = ""
    var round: Round?
    init() {
    print("game init")
    }
    deinit {
    print("game deinit")
  }
}

class Round {
   // weak: 원본 사라지면 나도 사라지겠다.
    weak var gameInfo: Game?
    var lastRound = 10
    var roundTime = 20
    deinit {
        print("round deinit")
    }
}
    
// 옵셔널 이용해 필요없을때 끄면 메모리에 도움
var game: Game? = Game()
//var game2: Game? = game
// 다 nil을 넣어줘야 deinit됨
//game = nil
//game2 = nil



var round: Round? = Round()
// 서로 참조중이라 무한반복
round?.gameInfo = game
game?.round = round

game = nil
round = nil
// 티가 안난다.



