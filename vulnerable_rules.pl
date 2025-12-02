% Auto-generated vulnerability rules

vuln_rule_0(S) :- Call(S,'').
vuln_rule_1(S) :- Call(S,'DPRINTF').
vuln_rule_2(S) :- Call(S,'assert').
vuln_rule_3(S) :- Call(S,'error_report').
vuln_rule_4(S) :- Call(S,'error_setg').
vuln_rule_5(S) :- Call(S,'exit').
vuln_rule_6(S) :- Call(S,'g_free').
vuln_rule_7(S) :- Call(S,'strcmp').
vuln_rule_8(S) :- Quantifier(S,'err').
vuln_rule_9(S) :- Quantifier(S,'fd').
vuln_rule_11(S) :- Quantifier(S,'i').
vuln_rule_12(S) :- Quantifier(S,'len').
vuln_rule_13(S) :- Quantifier(S,'ret').
vuln_rule_14(S) :- Quantifier(S,'i'), Quantifier(S,'ret').

% tie into vulnerable/1
vulnerable(S) :- vuln_rule_0(S).
vulnerable(S) :- vuln_rule_1(S).
vulnerable(S) :- vuln_rule_2(S).
vulnerable(S) :- vuln_rule_3(S).
vulnerable(S) :- vuln_rule_4(S).
vulnerable(S) :- vuln_rule_5(S).
vulnerable(S) :- vuln_rule_6(S).
vulnerable(S) :- vuln_rule_7(S).
vulnerable(S) :- vuln_rule_8(S).
vulnerable(S) :- vuln_rule_9(S).
vulnerable(S) :- vuln_rule_11(S).
vulnerable(S) :- vuln_rule_12(S).
vulnerable(S) :- vuln_rule_13(S).
vulnerable(S) :- vuln_rule_14(S).
