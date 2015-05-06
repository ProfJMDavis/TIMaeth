BEGIN ~TIRogan~

IF ~NumTimesTalkedTo(0) !InParty("TIMaeth")~ THEN BEGIN 01
SAY ~Greetings, stranger. Welcome to Nashkel. If you have need to talk to the cleric of Helm, he is receiving supplicants.~
++ ~Who are you?~ + 01A
++ ~Thanks.~ EXIT
END

IF ~~ THEN BEGIN 01A
SAY ~I'm Rogan. A Dawn Knight in service to the Temple of Lathander in Beregost. I'm also a visitor here, so I'm afraid I can't help you with directions or anything.~
++ ~Oh. Okay. Thanks anyway.~ EXIT
END

IF ~NumTimesTalkedTo(0) InParty("TIMaeth") Global("TIRoScroll","GLOBAL",0)~ THEN BEGIN 02
SAY ~Hullo, Maethor! Good to see you again. I have a message for you and your sister from Sir Tybalt. He gave it to me to take back to Beregost with me, but I've gotten stuck here in Nashkel on business. I see you're travelling with mercenaries. Good. I get the feeling that Tyb's gotten into something bigger than he can handle by himself.~
+ ~Global("TIRoganID","LOCALS",0)~ + ~Who are you?~ + 02A
+ ~Global("TIRoganWhere","LOCALS",0)~ + ~Do you know where he is now?~ + 02B
+ ~Global("TIRoganTrouble","LOCALS",0)~ + ~What kind of trouble?~ + 02C
END

IF ~~ THEN BEGIN 03
SAY ~Any other questions you have for me...?~
+ ~Global("TIRoganID","LOCALS",0)~ + ~Who are you?~ + 02A
+ ~Global("TIRoganWhere","LOCALS",0)~ + ~Do you know where he is now?~ + 02B
+ ~Global("TIRoganTrouble","LOCALS",0)~ + ~What kind of trouble?~ + 02C
++ ~Thank you for the information.~ + 02D
END

IF ~~ THEN BEGIN 02A
SAY ~I'm Rogan. A Dawn Knight in service to the Temple of Lathander in Beregost. I'm a friend of Sir Tybalt Grenfell and the girls; Liria and Maethor. My superior, the Most Radiant Kelddath Ormlyr, sent me on business to Nalin, here at the Temple of Helm.~
IF ~~ THEN DO ~SetGlobal("TIRoganID","LOCALS",1)~ + 03
END

IF ~~ THEN BEGIN 02B
SAY ~Sir Tybalt said he was investigating kidnappings that have been occurring on the road to Baldur's Gate. He'd heard rumours that the kidnappings were for slave labor, so he thought he'd check out the mines and make sure that it was operating properly. I don't know why he thought Nashkel was a problem, though. Mayor Berrun Ghastkill has always been above suspicion as far as business practices go. Anyway, he didn't find anything here, so he said he was going to head back to Baldur's Gate.~
IF ~~ THEN DO ~SetGlobal("TIRoganWhere","LOCALS",1)~ + 03
END

IF ~~ THEN BEGIN 02C
SAY ~There's more to these kidnappings than merely ransom. I'd suspect slave labor myself, since the victims are all young, male, and healthy. The problem is that none of the victims have ended up in the hands of the slave traders in Athkatla and none of the major ports along the sword coast have reported shipments of slaves going elsewhere. So where would one keep a large number of slaves out of sight in Faerun? The number of kidnappings makes this case very troubling.~
IF ~~ THEN DO ~SetGlobal("TIRoganTrouble","LOCALS",1)~ + 03
END

IF ~~ THEN BEGIN 02D
SAY ~No problem. Take care.~
IF ~~ THEN DO ~GiveItemCreate ("TI1SCRL","TIMaeth",0,0,0) SetGlobal("TIRoScroll","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN RoganRehash
SAY ~Hello again.~
IF ~~ THEN EXIT
END
