BEGIN ~TIMaethP~

IF ~Global("MaethJoined","LOCALS",1)~ THEN BEGIN KickOut
SAY ~Do you need me to leave the party?~
IF ~~ THEN REPLY ~Oops, sorry~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~That's right, I don't need you anymore.~ DO ~SetGlobal("MartaJoined","LOCALS",0)~ EXIT
END

IF ~Global("TIMaethJoined","LOCALS",0)~ THEN BEGIN Rejoin
SAY ~You want me to rejoin?~
IF ~~ THEN REPLY ~That's right, Maethor. I really do need you around.~ DO ~SetGlobal("TIMaethJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY ~Not right now.~ EXIT
END