//
//  ContentView.swift
//  Tic-Tac-Toe
//
//  Created by Ali Yetim on 31.10.2022.
//

import SwiftUI



struct ContentView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    @State private var moves: [Move?] = Array(repeating: nil, count: 9)
    @State private var isGameBoardDisabled = false
    @State private var alertItem: AlertItem?
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Spacer()
                LazyVGrid(columns: columns){
                    ForEach(0..<9) { i in
                        ZStack{
                            Circle()
                                .foregroundColor(.red).opacity(0.8)
                                .frame(width: geometry.size.width/3-15, height: geometry.size.width/3-15).cornerRadius(.pi)
                            Image(systemName: moves[i]?.indicator ?? "")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            if isSquareOccupied(in: moves, forIndex: i) {return}
                            moves[i] = Move(player: .human , boardIndex: i)
                            isGameBoardDisabled = true
                            
                            if checkWinCondition(for: .human, in: moves) {
                                alertItem = AlertContext.humanWin
                                return
                            }
                            
                            if checkForDraw(in: moves){
                                alertItem = AlertContext.draw
                                return
                            }
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                let computerPosition = determineComputerMovePosition(in: moves)
                                moves[computerPosition] = Move(player: .computer, boardIndex: computerPosition)
                                isGameBoardDisabled = false
                                
                                if checkWinCondition(for: .computer, in: moves) {
                                    alertItem = AlertContext.computerWin
                                    return
                                }
                                if checkForDraw(in: moves){
                                    alertItem = AlertContext.draw
                                    return
                                }
                                
                            }
                            
                            
                            
                        }
                    }
                }
                Spacer()
            }
            .disabled(isGameBoardDisabled)
            .padding()
            .alert(item: $alertItem, content: {alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: { resetGame() }))
            })
        }
        
    }
    
    func isSquareOccupied (in moves: [Move?], forIndex index: Int) -> Bool {
        return moves.contains(where: {$0?.boardIndex == index})    }
    
    
    // If AI can win, then win
    // If AI can't win, then block.
    // If AI can't block, then take middle square
    // If AI can't take middle square, then random available square
    func determineComputerMovePosition (in moves: [Move?]) -> Int {
        // If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
        
        let computerMoves = moves.compactMap { $0 }.filter { $0.player == .computer}
        let computerPositions = Set(computerMoves.map {$0.boardIndex})
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1 {
                let isAvailable = !isSquareOccupied(in: moves, forIndex: winPositions.first!)
                if isAvailable {return winPositions.first!}
            }
        }
        
        
        
        
        
        
        
        // If AI can't take middle square, then random available square
        var movePosition = Int.random(in: 0..<9)
        
        while (isSquareOccupied(in: moves, forIndex: movePosition)) {
             movePosition = Int.random(in: 0..<9)
            
        }
        return movePosition
    }
    
    
    func checkWinCondition(for player: Player, in moves: [Move?]) -> Bool{
        let winPatterns: Set<Set<Int>> = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
        let playerMoves = moves.compactMap { $0 }.filter { $0.player == player}
        let playerPositions = Set(playerMoves.map { $0.boardIndex })
        
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {return true}
        
        return false
    }
    
    func checkForDraw(in moves: [Move?]) -> Bool {
        return moves.compactMap { $0 }.count == 9
    }
    
    func resetGame(){
        moves = Array(repeating: nil, count: 9)
        isGameBoardDisabled = false
        
    }
    
    enum Player {
        case human, computer
    }
    
    
    struct Move {
        let player : Player
        let boardIndex : Int
        
        var indicator: String {
            return player == .human ? "xmark" : "circle"
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

