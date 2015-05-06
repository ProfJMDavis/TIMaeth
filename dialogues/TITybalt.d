BEGIN ~TITybalt~

IF ~Global("TITybalt","GLOBAL",1)~ THEN BEGIN Talk1
SAY ~I thank whichever god still cares enough about me to send you! New faces! My name is Tybalt Grenfell. Might I know your name?~
++ ~I'm <CHARNAME>, how are you, Tybalt?~ + HiThere
++ ~I'm sorry, but I don't have time to speak with you right now.~ + NoTime
END

IF ~~ THEN BEGIN HiThere
SAY ~You've been kind enough to revive me, but I'm barely back from death. I'm in no shape to do anything but rest. Is... Is Davaeorn dead?~
+ ~Dead("Davaeorn")~ + ~Yes. Davaeorn is dead. We have only to flood the mines and end the mining operation.~ + NoTime
+ ~Dead("Davaeorn")~ + ~Yes. Davaeorn is dead. Is there any information can you provide for us about the Iron Throne?~ + Info
+ ~!Dead("Davaeorn")~ + ~No. He yet lives. Is there anything you can tell us to defeat him?~ + Killing
END

IF ~~ THEN BEGIN NoTime
SAY ~I'll meet you outside the mine, then. I'm sure you would appreciate a reward for freeing me.~
IF ~~ THEN + PlugKey
END

IF ~~ THEN BEGIN Info
SAY ~Given that we're standing here in Davaeorn's personal quarters, I believe you already know as much as I do. My goal was to free the slaves and flood the mine. I very nearly lost my life in the attempt, which tells me I've gotten myself into evil waters well over my head, if you'll pardon the pun.~
=~Davaeorn brought me down here, unarmed and drugged, to keep me well-guarded while he and his thugs tortured me. But your goal is to take on the Iron Throne, I imagine. I cannot provide much assistance, I'm afraid, but I will make sure that the slaves have been freed if you have not done it already.~
IF ~~ THEN + PlugKey
END

IF ~~ THEN BEGIN Killing
SAY ~I know that there are three traps in the main hallway that summon these terrible, armed spirits. It was a group of them that subdued me when I was recognized as being an outsider. If you haven't disarmed the traps already, it would be a good idea to do so. Without these armed spirits, I think Davaeorn will be left to using his own defensive spells, which aren't as deadly.~
=~Besides the guard at the front entry, and Davaeorn's assistant, Stephan, there aren't many other defenses here. Be on the lookout, though, Davaeorn sometimes brings his 'toys' down here, so to speak. I was but one of many who he used for his magical experiments or for his enjoyment.~
=~Here. Take my duplicate key just in case you end up needing it.~
IF ~~ THEN DO ~SetGlobal("DavaeornKey","GLOBAL",1) SetGlobal("FREESLAV", "GLOBAL", 1) GiveItemCreate("MISC83",Player1,0,0,0)~ + Escape
END

IF ~~ THEN BEGIN PlugKey
SAY ~But I'm forgetting that we have much left to do. First things first...Davaeorn carries the river plug key on his person, but I have obtained a duplicate. Do you need it?~
+ ~Global("FREESLAV","GLOBAL",0) PartyHasItem("MISC83")~ + ~No. We got it.~ DO ~SetGlobal("FREESLAV","GLOBAL",1)~ + Escape
+ ~Global("FREESLAV","GLOBAL",1) PartyHasItem("MISC83")~ + ~No. We've got it already.~ + Escape
+ ~Global("DavaeornKey","GLOBAL",0) Global("FREESLAV","GLOBAL", 0) !PartyHasItem("MISC83")~ + ~Yes. We couldn't find it.~ DO ~SetGlobal("DavaeornKey","GLOBAL",1) SetGlobal("FREESLAV", "GLOBAL", 1) GiveItemCreate("MISC83",Player1,0,0,0)~ + Escape
END

IF ~~ THEN BEGIN Escape
SAY ~I am going to collect my gear where I stashed it and make sure the slaves have all escaped. I will meet you outside the mind. Take care, friends.~
IF ~~ THEN DO ~IncrementGlobal("TITybalt","GLOBAL",1) EscapeAreaDestroy(90)~ EXIT
END

// 2. Outside the Mine

IF ~Global("TITybalt","GLOBAL",3)~ THEN BEGIN Talk2
SAY ~Greetings, again. Let me give you some explanation of my presence in the mine. I am a fallen paladin, formerly of Tyr. I lost my faith in the presence of justice in the world and, with only my best intentions to guide me, have aided in the destruction of two families that loved me. I have been... for lack of a better word... greatly immoral.~
=~I have had more than my share of the troubles in the past few years, but somehow found my way back to the faith of my childhood and Lathander, the Bringer of Dawn.~
=~I began service, albeit as a pentitent, to the Temple of Lathander in Amn. My work took me often from Amn to Beregost and Nashkel as I investigated the kidnappings that were occurring up and down the Sword Coast. I happened to discover that this mining operation not only existed, but had begun production again with the use of slaves. Davaeorn and his superiors have been quite successful in kidnapping young, strong men from the roadways.~
=~Both Tyr and the Dawnlord, Lathander, required more of me to regain my knighthood than mere penitence. *Reddens.* My former wife... A woman who deserved better from me... Wished to be free from our vows. That I have done, save for the final paperwork. Then they tasked me to free the slaves however I can or perish in the attempt. Under guise of being a new Black Talon guard from Baldur's Gate, I managed to arrange for the least loyal of guards--ones who would likely accept bribes--to guard the slaves. One of the slaves, Rill, was to aid in the escape.~
=~Unfortunately, I was discovered before my plan could take affect and was captured by that foul mage Davaeorn. He used his magics to subdue me. By freeing me, you have permitted me to complete my task. I need to return to Beregost and the Temple of the Morning. Not only has 'The Most Radiant of Lathander' Kelddath Ormlyr, offered to cast the abjuration spell for my atonement, but I have...erm...some personal business to attend to.~
=~I must reward you for rescuing me, particularly since my girls have no doubt been grieving my unexplained absence. Here! I found some gold in the Black Talon treasury as I was leaving the mine and I thought you would have use for it. Thanks! I will return to my home in Beregost, now.~
IF ~Global("TybGIVEGOLD","GLOBAL",0)~ THEN DO ~GivePartyGold(250) SetGlobal("TybGIVEGOLD","GLOBAL",1) EscapeAreaMove("AR6747",450,300,1)~ EXIT
END
