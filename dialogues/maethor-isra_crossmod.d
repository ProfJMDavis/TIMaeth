//1

CHAIN IF WEIGHT #-2
~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethrh#Isra1","GLOBAL",0)~ THEN BTIMaeth TIMaethrh#Isra1
~My Lady... Your look and your demeanor... Am I in the presence of another Knight?~
DO ~SetGlobal("TIMaethrh#Isra1","GLOBAL",1)~
== BRH#ISRA ~I am Isra. A squire paladin of the Order of the Ruby Rose. And you are?~
== BTIMaeth ~My name is Maethor. Maethor Grenfell. Squire paladin to the Blade of Corellon. You cannot imagine how pleased I am to have found a sister of the sword. I am sure we will have much to talk about!~
== BRH#ISRA ~Indeed. I admit I already have many questions for you, if you will permit me to ask them.~
== BTIMaeth ~*smiles.* As you will...~
== BRH#ISRA ~I have heard very little of your Order, Maethor. I did not know that any of the Elfin Orders had headquarters in Faerun.~
== BTIMaeth ~For the most part, they do not. Most Orders are centered in either Evereska and Evermeet as they have ever since the Retreat; the few of my kind you meet here have the primary purpose of protecting the communities of those elves who choose to remain here. I personally am squire to Sir Finnilithui, who serves as a liasion at the Order of the Radiant Heart in Athkatla. He personally guided me into service of Corellon.~
== BRH#ISRA ~Fascinating. I was under the impression that elves cannot be paladins because they lack discipline.~
== BTIMaeth ~*mildly.* Could not the same be said of those of your Order? You are a follower of Sune Firehair, are you not? She is akin to our Hanali Celanil in many, many ways. And neither are known for discipline.~
== BRH#ISRA ~True. Perhaps we have a great deal in common, Maethor. More than I expected, to tell the truth.I am most accustomed to arguing the relative merits of mercy versus zeal with other knights. What would your feelings be on that issue?~
== BTIMaeth ~I have been taught that the bounds of my conscience, when well-schooled, can be a more than sufficient boundary for my behavior. Enough that I do not need an external code. So, when my conscience asks me to keep a merciful mind when justice seems too severe, I do listen and weigh the consequences.~
== BRH#ISRA ~*Laughing.* This is most remarkable! I am very pleased to meet you, Maethor Grenfell.~
== BTIMaeth ~And I, you.~
EXIT

//2

CHAIN IF WEIGHT #-2
~InParty("TIMaeth")
See("TIMaeth")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraTIMaeth1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraTIMaeth1
~Maethor? Has something happened to you? You seem...erm...changed.~
DO ~SetGlobal("rh#IsraTIMaeth1","GLOBAL",1)~
== BTIMaeth ~Dear Isra, I am indeed quite changed. <CHARNAME> placed a belt upon my person that has caused me to change genders. I have become male, as it were.~
== BRH#ISRA ~By Sune! How do you feel?~
== BTIMaeth ~Confused. Not only is my body different, but I feel differently about some matters than I did before. Differently and, in some cases, more strongly. My thoughts are now driven by new...motivations...so to speak. It is difficult for me to understand the ease with which my deity changes genders because it has not been easy for me at all.~
== BRH#ISRA ~I can only imagine that it would be quite difficult.~
== BTIMaeth ~*Blushes.* This may sound forward, my friend, but I must humbly beg your forgiveness for some of the thoughts of you that I am experiencing.~
== BRH#ISRA ~Don't worry, Maethor. Not only do I not mind, but it's normal for a young...err...man to have thoughts that would embarrass him if they were publicly known. You've had no time to adjust to your changed...um...circumstances.~
== BTIMaeth ~*dourly.* It's worse than that. One of the aspects of Corellon that attracts me so greatly is his ability to love either gender. 'Gwegwin,' it is called among my people. I had thoughts like these before my change.~
== BRH#ISRA ~So what is the problem now?~
== BTIMaeth ~*Grimaces, and looks down.*~
== BRH#ISRA ~*Looks down as well.* Oh. I see.~
== BTIMaeth ~*Choking with embarassment.* Oh gods. I'm sorry. It happens at the most inopportune times... I was just thinking about your...well, nevermind. Please excuse me.~
EXIT

//3

CHAIN IF WEIGHT #-2
~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethrh#Isra2","GLOBAL",0)~ THEN BTIMaeth TIMaethrh#Isra1
~Isra...Might I ask you a question about Sune? I know so little about the Faerunian pantheon...~
DO ~SetGlobal("TIMaethrh#Isra1","GLOBAL",2)~
== BRH#ISRA ~Certainly. What do you wish to know?~
== BTIMaeth ~She is the goddess of love and beauty, is she not?~
== BRH#ISRA ~Yes. What of it?~
== BTIMaeth ~*Blushes.* Is it true what they say of her ministers? That they, like their goddess, celebrate 'love'?~
== BRH#ISRA ~*Raises an eyebrow.* Yes. We do celebrate love in its many guises. Is there anything else?~
== BTIMaeth ~Erm... I was told that the Sisters and Brothers of the Ruby Rose 'use the power of love to destroy evil and hideous things, and they draw strength from their many romances.' One of your spells, for example, gives heroism with a kiss. If so, it sounds like your Order is composed of more than 'courtly' lovers...~
== BRH#ISRA ~Does that make you uncomfortable? That I might kiss you before a battle?~
== BTIMaeth ~*Blushes even redder.* My Lord Corellon is patron of the Elven arts...beauty, to an extent. Or at least in its abstract. I am sworn to protect it against those who would destroy it. But I still stand wary of confusing gallantry with real affection. The conventions of your Order give me pause. If you kissed me before a battle, beautiful lady, I would prefer it to be out of actual love than merely as a convention of your Order.~
== BRH#ISRA ~I assure you; If ever I kissed you, it would be in line with my feelings. I do not, as you say, 'celebrate 'love' 'in the abstract' if I do not feel it in my heart.~
== BTIMaeth ~I am glad to hear it. Let me, then, prove myself worthy of such an honor.~
EXIT