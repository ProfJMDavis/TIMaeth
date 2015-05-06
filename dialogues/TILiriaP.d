BEGIN ~TILyricP~

IF ~Global("LyricaJoined","LOCALS",1)~ THEN BEGIN KickOut
SAY ~Do you need me to leave the party?~
IF ~~ THEN REPLY ~Oops, sorry~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~That's right, I don't Need you anymore.~ DO ~SetGlobal("LyricaJoined","LOCALS",0)~ EXIT
END

IF ~Global("LyricaJoined","LOCALS",0)~ THEN BEGIN Rejoin
SAY ~You want me to rejoin?~
IF ~~ THEN REPLY ~That's right Lyrica. I really do need you around.~ DO ~SetGlobal("LyricaJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY ~Not right now.~ EXIT
END