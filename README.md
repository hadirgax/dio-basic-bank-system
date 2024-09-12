# BcBk - Basic Bank

BcBk is a basic bank system, which simulates simple transactions like cash deposits, cash withdrawals,
balance inquiries, and exiting the system.

## Table of Contents

* [Features](#features)
* [System Requirements](#system-requirements)
* [Installation](#installation)
* [Usage](#usage)
* [Transaction Types](#transaction-types)
* [Example Usage](#example-usage)
* [Troubleshooting](#troubleshooting)
* [Contributing](#contributing)
* [License](#license)

## Features

* **Account Creation:** Create a new bank account with an initial balance.
* **Cash Deposit:** Deposit funds into an existing account.
* **Cash Withdrawal:** Withdraw funds from an existing account.
* **Balance Inquiry:**  Check the current balance of an account.
* **User-Friendly Interface:** Simple and intuitive command-line or text-based interface.

## System Requirements

* Programming Language: Python v3.12
* Operating System: Windows, macOS, Linux
* Other Dependencies: Docker, Make

## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/hadirgax/dio-basic-bank-system.git
   ```
2. **Navigate to the project directory:**
    ```bash
    cd dio-basic-bank-system
    ```
3. **Install dependencies (if any):**
    ```bash
    make env-update
    conda activate basic-bank
    ```

## Usage
1. **Run the program:**
    ```bash
    make run
    ```
2. **Follow the on-screen prompts:**
    * The system will guide you through creating an account or using an existing one.
    * You will be prompted to enter transaction details as needed.

## Transaction Types

* **Deposit:** Increase the account balance.
* **Withdraw:**  Decrease the account balance (must have sufficient funds).
* **Balance:**  View the current account balance.
* **Exit:** End the banking session.

## Example Usage
```
Welcome to BcBk!

1. Create Account
2. Login

Enter your choice: 1

Enter account name: John Doe
Enter initial deposit: 1000

Account created successfully!

1. Deposit
2. Withdraw
3. Balance
4. Exit

Enter your choice: 3

Current balance: $1000.00

1. Deposit
2. Withdraw
3. Balance
4. Exit

Enter your choice: 4

Thank you for using BcBk!
```

## Troubleshooting

* **Error messages:** Pay close attention to any error messages displayed, as they usually provide clues about the problem.
* **Check dependencies:** Ensure that all required libraries and dependencies are installed correctly.
* **Review code:**  If encountering unexpected behavior, examine the code for potential errors.

## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
