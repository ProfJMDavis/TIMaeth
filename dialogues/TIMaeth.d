BEGIN ~TIMaeth~

CHAIN IF ~Global("TIMaethMet","GLOBAL",0)~ THEN ~TIMaeth~ m1
~Greetings, friend. May we speak?~ [TIM01]
DO ~SetGlobal("TIMaethMet","GLOBAL",1)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~By Shar! I've never seen such a s'lurppuk inlul!~
== XZARJ IF ~InParty("Xzar") InMyArea("Xzar") !StateCheck("Xzar",CD_STATE_NOTVALID)~ THEN ~We could well stand to have another warrior, <CHARNAME>.~
== KIVANJ IF ~InParty("Kivan") InMyArea("Kivan") !StateCheck("Kivan",CD_STATE_NOTVALID)~ THEN ~Mae l'ovannen, kinsman.~
== TIMaeth ~I am honored to have met you. I have a proposal for you if you would but hear it.~
END
++ ~Certainly.~ EXTERN ~TIMaeth~ m1.1
++ ~Not at this time.~  EXTERN ~TIMaeth~ m1.2

CHAIN ~TIMaeth~ m1.1
~My name is Maethor Grenfell, a paladin in the service of Corellon. My sister Liria and I are seeking the help of adventurers to locate a missing man; my mentor, Sir Tybalt Grenfell. If you are interested, I'd like to accompany you to our house in Beregost, where Liria can tell you more. I can promise a generous reward for your help plus the use of my services as a warrior.~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~This one is probably useless, <CHARNAME>. (Aren't they all, really, compared to my brilliance?)~
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN ~Heya, Maethor! <CHARNAME>, let's see what she has to say. She seems interesting.~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~She would be a worthy companion, <CHARNAME>.~
== AJANTJ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN ~Well met, Maethor. I am pleased to see a sister in arms. We should help her.~
== TIMaeth~So what say you? Will you come with me to Beregost and hear our proposal?~
END
++ ~I'm not interested right now. Perhaps later.~ EXTERN TIMaeth m1.2
++ ~We are meeting with friends north of here at the Friendly Arm Inn. Can we meet with your sister after that?~ EXTERN TIMaeth m1.joina
++ ~All right, let's go.~ EXTERN TIMaeth m1.join

CHAIN ~TIMaeth~ m1.2
~Very well. I will remain here should you change your mind.~
EXIT

CHAIN ~TIMaeth~ m1.joina
~Fine with me. When we eventually reach Beregost, our house is the dark-colored four-story near the main entrance.~
DO ~JoinParty()~
EXIT


CHAIN ~TIMaeth~ m1.join
~Our house is the dark-colored four-story house near the main entrance to Beregost south of here.~
DO ~JoinParty()~
EXIT

APPEND ~TIMaeth~

IF ~Global("TIMaethMet","GLOBAL",1)~ m2
SAY ~Perhaps you have changed your mind?~
++ ~I have indeed. Welcome.~ + m1.1
++ ~Not at the moment.~ + m1.2
END
END // This is an end to APPEND
