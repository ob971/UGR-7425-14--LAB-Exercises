class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
        require(amount > 0) { "Deposit amount must be positive" }
        balance += amount
    }

    fun withdraw(amount: Double) {
        require(amount > 0) { "Withdrawal amount must be positive" }
        if (amount <= balance) {
            balance -= amount
        } else {
            println("Insufficient funds. Withdrawal failed.")
        }
    }

    fun printBalance() {
        println("Account Balance: $balance")
    }
}

fun main() {
    val account = BankAccount("123456789", 1000.0)
    
    account.printBalance() // Output: Account Balance: 1000.0
    
    account.deposit(500.0)
    account.printBalance() // Output: Account Balance: 1500.0
    
    account.withdraw(200.0)
    account.printBalance() // Output: Account Balance: 1300.0
    
    account.withdraw(2000.0) // Output: Insufficient funds. Withdrawal failed.
}
