BEGIN ~TIArta~

IF ~NumTimesTalkedTo(0) !InParty("TIMaeth")~ THEN BEGIN 01
SAY ~Mama said I wasn't supposed to talk to strangers.~
++ ~Who are you?~ + 01A
++ ~Thanks.~ EXIT
END

IF ~~ THEN BEGIN 01A
SAY ~I'm Artamir.~
++ ~Oh. Okay. Thanks anyway.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ArtaRehash
SAY ~Leave me alone, stranger.~
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0) Inparty("TIMaeth")~ THEN BEGIN 02
SAY ~Hullo, Mae-Mae! Are these people going to help us find Uncle Tybalt?~
+ ~Global("TIArtaID","LOCALS",0)~ + ~Who are you?~ ~SetGlobal("TIArtaID","LOCALS",1)~ + 02A
+ ~Global("TIArtaParents","LOCALS",0)~ + ~Who are your parents?~ ~SetGlobal("TIArtaParents","LOCALS",1)~  + 02B
+ ~Global("TIArtaTybalt","LOCALS",0)~ + ~Do you have any idea where Uncle Tybalt might be?~ ~SetGlobal("TIArtaTybalt","LOCALS",1)~ + 02C
END

IF ~~ THEN BEGIN 03
SAY ~Any other questions you have for me...?~
+ ~Global("TIArtaID","LOCALS",0)~ + ~Who are you?~ ~SetGlobal("TIArtaID","LOCALS",1)~ + 02A
+ ~Global("TIArtaParents","LOCALS",0)~ + ~Who are your parents?~ ~SetGlobal("TIArtaParents","LOCALS",1)~  + 02B
+ ~Global("TIArtaTybalt","LOCALS",0)~ + ~Do you have any idea where Uncle Tybalt might be?~ ~SetGlobal("TIArtaTybalt","LOCALS",1)~ + 02C
+ ~Global("TIArtaOpen","LOCALS",0)~ + ~Thank you for the information, little one.~ ~SetGlobal("TIArtaOpen","LOCALS",1)~ + 02D
END

IF ~~ THEN BEGIN 02A
SAY ~I'm Artamir Taurverir. My Ada is the commander of all the elven forces in Suldanessellar!~
IF ~~ THEN + 03
END

IF ~~ THEN BEGIN 02B
SAY ~My Nana is Liria Sullussaerchen and my Ada is Elhan Taurverir. Isn't Nana pretty? Everyone says she's the prettiest lady since Ellesime!~
IF ~~ THEN + 03
END

IF ~~ THEN BEGIN 02C
SAY ~No, but Nana misses Uncle Tybalt a lot. Sometimes she cries at night when she thinks I'm asleep. I hope you'll find Uncle Tyb soon.~
IF ~~ THEN + 03
END

IF ~~ THEN BEGIN 02D
SAY ~Please help my Nana and Mae-Mae.~
IF ~~ THEN EXIT
END
