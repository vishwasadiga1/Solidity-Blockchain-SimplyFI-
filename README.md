# Solidity Blockchain Assignments – SimplyFI Internship

This repository contains two smart contract assignments created using **Solidity** for the internship evaluation process. These projects are designed to demonstrate understanding of blockchain logic, smart contract safety, and basic decentralized workflows.

## 📄 Contents

### 1. 🗳️ Decentralized Voting System (`DecentralizedVotingSystem.sol`)
A voting system built on blockchain that:
- Allows users to register before a deadline
- Permits only one vote per user
- Blacklists any user who tries to vote more than once
- Tracks total votes per candidate
- Provides transparency through public vote counts

### 2. 🔐 Escrow Marketplace (`EscrowServices.sol`)
A simple escrow-based marketplace that:
- Lets sellers list items with a fixed price
- Locks funds from buyers until delivery is confirmed
- Releases payment to sellers only after buyer approval
- Ensures trust and dispute reduction using smart contract logic

---

## 🧪 How to Run & Test

Both contracts can be tested using the **Remix IDE**:

1. Visit [https://remix.ethereum.org](https://remix.ethereum.org)
2. Create a new file and paste the contract code
3. Compile using Solidity version `^0.8.0`
4. Deploy using `Remix VM (Prague)` environment
5. Use different accounts (provided in Remix) to test:
   - Voter registration and voting
   - Item listing, purchasing, and delivery confirmation

---

## 🔧 Technologies Used

- **Solidity** (version `^0.8.0`)
- **Remix Ethereum IDE** (browser-based testing)
- **Git & GitHub** (version control & hosting)

---

## 🧠 Key Concepts Demonstrated

- Smart Contract state management
- `require` validations and user restrictions
- Mappings for vote tracking and blacklisting
- ETH transaction handling via payable functions
- `receive()` and `fallback()` usage for fallback safety

---

## ✍️ Author

**Vishwas Adiga**  
Built as part of the **SimplyFI Blockchain Internship Assignment**  
[GitHub Profile →](https://github.com/vishwasadiga1)

---