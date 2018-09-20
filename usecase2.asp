:- obl_publish, obl_not_publish.

obl_not_use :- not -obl_not_use.
-obl_not_use :- hasLicense, not violation. 
obl_not_publish :- not -obl_not_publish, not obl_publish.
obl_remove :- publish, obl_not_publish.
-obl_not_publish :- hasLicense, hasApproval, not violation.
obl_not_comment :- not -obl_not_comment.
-obl_not_comment :- -obl_not_publish.	
obl_publish :- hasLicense, isCommissioned, not violation.
-obl_not_publish :- hasLicense, isCommissioned, not violation.
obl_not_use :- violation.
obl_not_publish :- violation.

hasLicense.
publish.