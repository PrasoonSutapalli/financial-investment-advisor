# Financial Investment Advisor – Prolog Expert System

## Project Overview

This project is a Prolog-based Expert System that provides financial investment recommendations based on a user's financial profile.

The system analyzes multiple factors and uses rule-based reasoning to suggest suitable investment options.

---

##  System Description

The expert system evaluates the following parameters:

1. Annual Income
2. Savings Amount
3. Number of Dependents
4. Risk Appetite (low, medium, high)
5. Investment Goal (growth, preservation, liquidity)

Based on these inputs, the system recommends one of the following:

- Stocks
- Bonds
- Savings Account
- Balanced Portfolio
- Liquid Assets

The system also explains the reasoning behind each recommendation.

---

##  Concepts Used

This project demonstrates:

- Facts
- Rules
- Logical conditions
- Negation as failure
- Knowledge-based reasoning
- Rule-based decision making

---

##  Project Structure

financial-investment-advisor/
│
├── advisor.pl
├── README.md
└── LICENSE

---

##  How to Run the Program

### Step 1: Install SWI-Prolog

Download and install:
SWI-Prolog

### Step 2: Open Terminal and Run

swipl

### Step 3: Load the file

consult('advisor.pl').

### Step 4: Run the recommendation query

Example query:

recommendation(Income, Savings, Dependents, Risk, Goal).

Replace parameters with actual values.

Example:

recommendation(800000, 200000, 2, medium, growth).

---

##  Example Use Case

If a user has:

- High income
- Moderate savings
- Few dependents
- Medium risk appetite
- Growth goal

The system may recommend:

Balanced Portfolio

Along with explanation based on rules.

---

##  Learning Outcome

This project demonstrates how Artificial Intelligence concepts such as Expert Systems and Rule-Based Reasoning can be implemented using Prolog.

---

##  License

This project is licensed under the MIT License.
