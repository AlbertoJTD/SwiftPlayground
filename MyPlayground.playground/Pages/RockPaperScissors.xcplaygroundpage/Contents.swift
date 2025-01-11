//: [Previous](@previous)

func getUserChoice(userInput: String) -> String {
    let choices = ["rock", "paper", "scissors"]
    let lowercasedInput = userInput.lowercased()
    if choices.contains(lowercasedInput) {
        return lowercasedInput
    } else {
        return "You can only enter rock, paper, or scissors. Try again."
    }
}

func getComputerChoice() -> String {
    let choices = ["rock", "paper", "scissors"]
    return choices.randomElement() ?? "Something went wrong"
}

//func getComputerChoice() -> String {
//  let randomNumber: Int = Int.random(in: 0...2)
//
//  switch randomNumber {
//    case 0:
//      return "rock"
//    case 1:
//      return "paper"
//    case 2:
//      return "scissors"
//    default:
//      return "Something went wrong"
//  }
//}

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
    if userChoice == compChoice {
        return "It's a tie"
    }

    let winningConditions: [String: String] = [
        "rock": "scissors",
        "paper": "rock",
        "scissors": "paper"
    ]

    if winningConditions[userChoice] == compChoice {
        return "The user won"
    } else {
        return "The computer won"
    }
}


//func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
//  var decision: String = "It's a tie"
//
//  switch userChoice {
//    case "rock":
//      if compChoice == "paper" {
//        decision = "The computer won"
//      } else if compChoice == "scissors" {
//        decision = "The user won"
//      }
//    case "paper":
//      if compChoice == "rock" {
//        decision = "The user won"
//      } else if compChoice == "scissors" {
//        decision = "The computer won"
//      }
//    case "scissors":
//      if compChoice == "rock" {
//        decision = "The computer won"
//      } else if compChoice == "paper" {
//        decision = "The user won"
//      }
//    default:
//      return "Something went wrong"
//  }
//
//  return decision
//}


// print(getUserChoice(userInput: "paper"))
// print(getComputerChoice())

let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))


