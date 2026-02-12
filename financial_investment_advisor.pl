% ----------------------------
% FACTS
% ----------------------------

% income(User, Amount).
income(rahul, 1500000).
income(priya, 800000).
income(arjun, 350000).
income(meena, 500000).
income(amit, 2500000).
income(sunita, 300000).
income(vikram, 1200000).
income(anjali, 100000).
income(raj, 700000).
income(kavita, 450000).
income(ramesh, 2200000).
income(seema, 900000).
income(mahesh, 3000000).
income(neha, 600000).
income(suresh, 400000).
income(pooja, 1000000).
income(gaurav, 1800000).
income(deepa, 200000).
income(akshay, 250000).
income(swati, 1200001).

% savings(User, Amount).
savings(rahul, 200000).
savings(priya, 40000).
savings(arjun, 20000).
savings(meena, 70000).
savings(amit, 800000).
savings(sunita, 1000).
savings(vikram, 100000).
savings(anjali, 20000).
savings(raj, 60000).
savings(kavita, 30000).
savings(ramesh, 1000000).
savings(seema, 200000).
savings(mahesh, 500000).
savings(neha, 150000).
savings(suresh, 20000).
savings(pooja, 250000).
savings(gaurav, 300000).
savings(deepa, 5000).
savings(akshay, 10000).
savings(swati, 70000).

% dependents(User, Count).
dependents(rahul, 2).
dependents(priya, 1).
dependents(arjun, 3).
dependents(meena, 4).
dependents(amit, 0).
dependents(sunita, 2).
dependents(vikram, 2).
dependents(anjali, 1).
dependents(raj, 0).
dependents(kavita, 2).
dependents(ramesh, 1).
dependents(seema, 2).
dependents(mahesh, 3).
dependents(neha, 2).
dependents(suresh, 1).
dependents(pooja, 2).
dependents(gaurav, 1).
dependents(deepa, 0).
dependents(akshay, 2).
dependents(swati, 1).

% risk(User, Level).
risk(rahul, high).
risk(priya, low).
risk(arjun, medium).
risk(meena, medium).
risk(amit, high).
risk(sunita, low).
risk(vikram, medium).
risk(anjali, low).
risk(raj, medium).
risk(kavita, low).
risk(ramesh, high).
risk(seema, medium).
risk(mahesh, high).
risk(neha, medium).
risk(suresh, low).
risk(pooja, medium).
risk(gaurav, high).
risk(deepa, low).
risk(akshay, low).
risk(swati, medium).

% goal(User, Type).
goal(rahul, growth).
goal(priya, preservation).
goal(arjun, preservation).
goal(meena, growth).
goal(amit, growth).
goal(sunita, liquidity).
goal(vikram, preservation).
goal(anjali, liquidity).
goal(raj, growth).
goal(kavita, preservation).
goal(ramesh, growth).
goal(seema, preservation).
goal(mahesh, growth).
goal(neha, growth).
goal(suresh, liquidity).
goal(pooja, preservation).
goal(gaurav, growth).
goal(deepa, liquidity).
goal(akshay, preservation).
goal(swati, growth).

% ----------------------------
% RULES
% ----------------------------

:- discontiguous recommend/2.
:- discontiguous explain/2.

steady_income(U) :- income(U, I), I > 1200000.

adequate_savings(U) :- savings(U, S), dependents(U, D), S >= 5000*D.



recommend(U, (stocks, '23bcs139')) :-
    steady_income(U),
    adequate_savings(U),
    risk(U, high),
    goal(U, growth).

recommend(U, (bonds, '23bcs139')) :-
    risk(U, medium),
    goal(U, preservation).

recommend(U, (savings_account, '23bcs139')) :- risk(U, low).
recommend(U, (savings_account, '23bcs139')) :- \+ adequate_savings(U).

moderate_savings(U) :-
    savings(U, S),
    S > 50000,
    S < 200000.

recommend(U, (balanced_portfolio, '23bcs139')) :-
    moderate_savings(U),
    risk(U, medium),
    goal(U, growth).

recommend(U, (liquid_assets, '23bcs139')) :-
    goal(U, liquidity).

% ----------------------------
% Other rules
% ----------------------------

no_risky_investment(U) :- income(U, I), I =< 400000.
no_risky_investment(U) :- \+ adequate_savings(U).

explain(U, Reason) :-
    recommend(U, (stocks, '23bcs139')),
    Reason = 'Invest in stocks for high risk, high savings, and steady income (23bcs139)'.

explain(U, Reason) :-
    recommend(U, (bonds, '23bcs139')),
    Reason = 'Invest in bonds for medium risk and preservation goals (23bcs139)'.

explain(U, Reason) :-
    recommend(U, (savings_account, '23bcs139')),
    Reason = 'Use savings account for low risk or insufficient savings (23bcs139)'.

explain(U, Reason) :-
    recommend(U, (balanced_portfolio, '23bcs139')),
    Reason = 'Balanced portfolio for medium risk, growth, and moderate savings (23bcs139)'.

explain(U, Reason) :-
    recommend(U, (liquid_assets, '23bcs139')),
    Reason = 'Hold liquid assets for liquidity goal (23bcs139)'.

