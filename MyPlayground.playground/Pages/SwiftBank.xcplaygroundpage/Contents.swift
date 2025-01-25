//: [Previous](@previous)

import Foundation

struct SwiftBank {
    static let depositBonusRate: Double = 0.01
    private var depositCounter: Int = 0
    private let password: String

    // Add observer to check balance property
    private var balance: Double = 0.0 {
        didSet {
          if self.balance <= 100 {
            displayLowBalanceMessage()
          }
        }
    }

    init(password: String, initialDeposit: Double) {
    self.password = password
    makeDeposit(ofAmount: initialDeposit)
    }

    // Using 'mutating' because we are overwriting 'balance' property
    mutating func makeDeposit(ofAmount depositAmount: Double) {
        if !isValidAmount(of: depositAmount) {
            print("Operation not valid, deposit amount must be positive.")
            return
        }
        
        if depositAmount >= 1000 {
            self.depositCounter += 1
        }

        let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
        print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is $\(depositWithBonus).")
        self.balance += depositWithBonus
    }

    func displayBalance(usingPassword password: String) {
        let validPassword = isValid(password)

        if validPassword {
          print("Your current balance is $\(self.balance)")
        } else {
          print("Error: Invalid password. Cannot retrieve balance.")
          return
        }
    }

    // Using 'mutating' because we are overwriting 'balance' property
    mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
        let validPassword = isValid(password)

        if validPassword {
            if !isValidAmount(of: withdrawalAmount) {
                print("Operation not valid, withdrawal amount must be positive.")
                return
            }
            
            if self.balance >= withdrawalAmount {
                self.balance -= withdrawalAmount
                print("Making a $\(withdrawalAmount) withdrawal")
            } else {
                print("You don't have enought money to make a withdrawal of $\(withdrawalAmount)")
            }
        } else {
            print("Error: Invalid password. Cannot make withdrawal.")
            return
        }
    }

    private func isValid(_ enteredPassword: String) -> Bool {
        return self.password == enteredPassword
    }

    private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
        if self.depositCounter == 1 {
            print("It's your first deposit! You get a 1% bonus.")
            let bonus = deposit * SwiftBank.depositBonusRate
            return deposit + bonus
        } else {
            return deposit
        }
    }

    private func displayLowBalanceMessage() {
        print("Alert: Your balance is under $100.")
    }
    
    private func isValidAmount(of amount: Double) -> Bool {
        return amount > 0
    }
}


var myAccount: SwiftBank = SwiftBank(password: "123456", initialDeposit: 500)
myAccount.makeDeposit(ofAmount: 50)
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "12345")
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "123456")
myAccount.displayBalance(usingPassword: "123456")

