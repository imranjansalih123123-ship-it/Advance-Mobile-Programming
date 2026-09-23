class BankAccount with Logger {
  // Private field
  double _balance = 0.0;

  // Getter
  double get balance => _balance;

  // Deposit money
  void deposit(double amount) {
    // Basic validation
    if (amount <= 0) {
      print("Deposit failed: Amount must be greater than 0.");
      return;
    }

    _balance += amount;

    // Log the deposit
    log("Deposited \$${amount.toStringAsFixed(2)}");
    log("New balance: \$${_balance.toStringAsFixed(2)}");
  }
}


// Logger mixin
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}


void main() {
  final BankAccount account = BankAccount();

  print("Initial balance: \$${account.balance}");

  account.deposit(500);
  account.deposit(250);

  // Invalid deposit
  account.deposit(-100);

  print("Final balance: \$${account.balance}");
}
