BEGIN ~TICholly~

IF ~NumTimesTalkedTo(0) !InParty("TIMaeth")~ THEN BEGIN 01
SAY ~Greetings, stranger. Welcome to Nashkel.~
++ ~Who are you?~ + 01A
++ ~Are you Cholly?~ + 01A
++ ~Thanks.~ EXIT
END

IF ~~ THEN BEGIN 01A
SAY ~Who I am is none of your business. Now...If you let me get back to work.~
++ ~Oh. Okay. Thanks anyway.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ChollyRehash
SAY ~Leave me alone, stranger.~
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(0) Inparty("TIMaeth")~ THEN BEGIN 02
SAY ~Hullo, Maethor! My father's been to see me. Says to tell you he's left a message with Rogan.~
+ ~Global("TIChollyID","LOCALS",0)~ + ~Who are you?~ ~SetGlobal("TIChollyID","LOCALS",1)~ + 02A
+ ~Global("TIChollyWhere","LOCALS",0)~ + ~Do you know where he is now?~ ~SetGlobal("TIChollyWhere","LOCALS",1)~  + 02B
+ ~Global("TIChollyTrouble","LOCALS",0)~ + ~Is he in some kind of trouble?~ ~SetGlobal("TIChollyTrouble","LOCALS",1)~ + 02C
END

IF ~~ THEN BEGIN 03
SAY ~Any other questions you have for me...?~
+ ~Global("TIChollyID","LOCALS",0)~ + ~Who are you?~ ~SetGlobal("TIChollyID","LOCALS",1)~ + 02A
+ ~Global("TIChollyWhere","LOCALS",0)~ + ~Do you know where he is now?~ ~SetGlobal("TIChollyWhere","LOCALS",1)~  + 02B
+ ~Global("TIChollyTrouble","LOCALS",0)~ + ~Is he in some kind of trouble?~ ~SetGlobal("TIChollyTrouble","LOCALS",1)~ + 02C
+ ~Global("TIChollyOpen","LOCALS",0)~ + ~Thank you for the information.~ ~SetGlobal("TIChollyOpen","LOCALS",1)~ +11E
END

IF ~~ THEN BEGIN 02A
SAY ~I'm Cholly Grenfell. Sir Tybalt is my father.~
IF ~~ THEN + 03
END

IF ~~ THEN BEGIN 02B
SAY ~He said he was hired by several families in Athkatla to investigate their sons' kidnappings. Must be slave labor, so he thought he'd check out the Nashkel mines. The miners here, though, aren't slaves. Near enough to, if you ask my opinion, what with their pitiful wages... Anyway, he said he would be heading up to Baldur's Gate next.~
IF ~~ THEN + 03
END

IF ~~ THEN BEGIN 02C
SAY ~My father is always in some kind of trouble. But this time, I think he's messing with a more powerful organization than he's used to.~
IF ~~ THEN + 03
END

IF ~~ THEN BEGIN 11E
SAY ~No problem. Take care.~
IF ~~ EXIT
END
