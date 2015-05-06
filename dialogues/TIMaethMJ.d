//(MaethTalk #1) Introductions (Friend Talk, With Belt)

IF ~Global("TIMaethTalks","GLOBAL",2) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT1
SAY ~*Maethor steps out of line, smiles, and waves you to one side.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360) SetGlobal("TIMaethOffend","GLOBAL",0) SetGlobal("TIMaethLove","GLOBAL",0) SetGlobal("TIMaethPutOff","GLOBAL",0)~ + A00
END

IF ~~ THEN BEGIN A00
SAY ~<CHARNAME>? Do you have a spare moment to talk?~
++ ~Yes.~ + A01
++ ~Not right now.~ + A01A
++ ~No.~ + A01A
END

IF ~~ THEN BEGIN A01A
SAY ~Very well. If we find anything that suggests where Tybalt is, I'll speak up. Am I correct in assuming that you prefer distance between us?~
++ ~Yes. You have engaged my services in finding your teacher. I'd rather not complicate matters.~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
++ ~No, of course not. I just don't have time for this right now. Perhaps later?~ DO ~SetGlobal("TIMaethLT1Delay","GLOBAL",1) IncrementGlobal("TIMaethDelayLT","GLOBAL",1) IncrementGlobal("TIMaethPutOff","GLOBAL",1)~ + A01B
END

IF ~~ THEN BEGIN A01B
SAY ~Very well.~
IF ~~ THEN EXIT
END

IF ~~THEN BEGIN A01
SAY ~Now that we're going to work together, it would seem introductions are in order. As I mentioned before, my name is Maethor Grenfell. Most lately of Beregost. And you are?~
++ ~I am <CHARNAME>. From Candlekeep.~ + A02A
++ ~To be honest, I am <CHARNAME>, of nowhere in particular.~ + A02B
++ ~I'm <CHARNAME>. That's all there is to know about me.~ + A02E
+ ~Class(Player1,PALADIN) Gender(Player1,MALE)~ + ~Sir <CHARNAME>, but you can call me just <CHARNAME>.~ + A02C
+ ~Class(Player1,PALADIN) Gender(Player1,FEMALE)~ + ~Dame <CHARNAME>, but you can call me just <CHARNAME>.~ + A02D
END

IF ~~ THEN BEGIN A02A
SAY ~*nods* I've heard of it, although I have never had the good fortune to go there. You must be a scholar at heart.~
++ ~I am. I loved the books and my teachers. They made even the most boring lessons seem worth the trouble of sitting still even when I was very young.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A03A
++ ~I suppose. I've certainly had a better education than most.~ + A03A
++ ~Not really. I was just raised there. I was an active, noisy child. That doesn't work out well in a library.~ + A03B
++ ~*You laugh bitterly* No. I hated the library. I hated reading. And I hated the constant lessons. I would rather have trained with Candlekeep's soldiers.~ + A03C
++ ~Look, I've very recently lost everything that mattered to me in my life. I'm in no mood for idle chatter.~ + A03D
END

IF ~~ THEN BEGIN A03A
SAY ~Well, a good education is always a blessing. Whether one knows it or not.~
IF ~~ THEN + A03A_01
END

IF ~~ THEN BEGIN A03B
SAY ~I guess not. Still, you must have learned a lot even without wanting to. A good education is always a blessing. Whether one knows it or not.~
IF ~~ THEN + A03A_01
END

IF ~~ THEN BEGIN A03C
SAY ~Believe it or not, there was a time I would have agreed with the sentiment. But time has a funny way of altering one's viewpoints.~
IF ~~ THEN + A03A_01
END

IF ~~ THEN BEGIN A03D
SAY ~Oh. You have my condolences, although those seem inadequate against the magnitude of your loss...~
IF ~~ THEN + A03A_01
END

IF ~~ THEN BEGIN A03A_01
SAY~So how is it you happen to be here now?~
++ ~I'd rather you didn't ask me that.~ + A04
++ ~*Shrugging* It was a forced departure, but nothing to be ashamed of. I left on good terms with everyone there.~ + A04A
++ ~My father and I fled Candlekeep. He felt we were in danger and some of my experiences there lead me to agree with him.~ + A04B
END

IF ~~ THEN BEGIN A02B
SAY ~*raises an eyebrow* I guess I should be sorry to hear you say that, although it implies you're free to be wherever you wish; an often desirable state of affairs. Did you leave of your own volition? *pauses, thoughtfully* Or should I not ask that question?~
++ ~I'd rather you didn't.~ + A04
++ ~*Shrugging* It was a forced departure, but nothing to be ashamed of. I left on good terms with everyone there.~ + A04A
++ ~My father and I fled Candlekeep. He felt we were in danger and some of my experiences there lead me to agree with him.~ + A04B
END

IF ~~ THEN BEGIN A02E
SAY ~From that, I take it that you want a purely business relationship between us with minimal pleasantries?~
++ ~Yes.~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethFriendActive","GLOBAL",3)~ + A04
++ ~Oh, no. I didn't mean that. I meant, all I have right now IS my name. I've lost home and family.~ + A03D
END

IF ~~ THEN BEGIN A04
SAY ~That's fine, <CHARNAME>. I will not pry.~
IF ~~ DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A04A
SAY ~Eh! Life does force us to move on to new pastures sometimes. *sighs* Far too often, for my liking. But let us meditate on more pleasant thoughts. The road lies ahead and ever tempts us to new adventures.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN A04B
SAY ~*Looks concerned* And are you still in danger?~
++ ~Oh yes. No doubt about that. But I'm sure we'll be able to handle ourselves.~ + A05A
++ ~Yes. To tell the truth, I'm terrified at times.~ + A05B
END

IF ~~ THEN BEGIN A05A
SAY ~*His hand settles onto his sword-hilt* You have a soldier's way about you, <CHARNAME>. Let us keep a positive outlook. That, alone, may keep fear in check.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A05B
SAY ~*His hand settles onto his sword-hilt* Well, <CHARNAME>, if it is any comfort, my sword is at your disposal. And, truly, I sense no weakness in your words... only the prudent thoughts of one who has seen trouble. But let us keep a more positive outlook. That may help keep fear in check.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A02C
SAY ~Hmmm! So I am standing beside a <BROTHERSISTER> of the sword; one of my own profession! I must admit that I am most pleased to be in your company.~
IF ~~ THEN + A02C_01
END

IF ~~ THEN BEGIN A02D
SAY ~*smiles* Ah! you are one of those rare gems of the profession; a 'Ladyknight.' The poet Spenser had much praise for women of the lance: 'But if thou knew what person overthrew thee, much greater griefe and shameful regret would thou feel. A single damsel met thou on a level plain, and there so hard beset thee.'~
IF ~~ THEN + A02C_01
END

IF ~~ THEN BEGIN A02C_01
SAY~Your modesty reminds me of my mentor Sir Tybalt Grenfell. He never stood on ceremony. 'Just call me Tyb... I learned a long time ago that, in the end, I have no social status or wealth--only my own humanity... And a pint to drain!' *smiles* A great pity Tyb never got to meet you. He might have helped you with that. Acceptance by an established Order is often difficult and he has friends and associates in many of the established ones.~
++ ~I expected as much, but I plan to make an unforgettable impression. You've noted, no doubt, my wit. You shall be equally impressed with my prowess in battle.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A06A
++ ~Yes, but I'll be accepted nevertheless. I'm persistant.~ + A06B
++ ~I have no desire to join an Order. I follow the laws of society and the will of my god. I don't need anyone else in my life to guide my decisions--at least as long as I am romantically unattached.~ + A06C
END

IF ~~ THEN BEGIN A06A
SAY ~*smiles* I have indeed. And I look forward to further demonstration of both.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A06B
SAY ~I applaud your attitude. If at once you don't succeed... and all that. A Knightly Order demands patience and persistance of its applicants. Keep your chin up, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A06C
SAY ~*grinning* Indeed. Our sweethearts do have expectations!~
IF ~~ THEN EXIT
END

//(MaethTalk #2) Getting to Know You (Friend Talk, With Belt)

IF ~Global("TIMaethTalks","GLOBAL",4) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT2
SAY ~*Maethor calls you over to speak to him.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A10
END

IF ~~ THEN BEGIN A10
SAY ~*Maethor approaches you, shyly, and smiles.* It's a good thing that you decided to give us a hand. We need the help. It occurred to me, though, that you might have questions about me.~
++ ~No offense, but no. I'm more interested in keeping focused on our goals.~ + A10A
++ ~Sure.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A11
++ ~One or two.~ + A11
END

IF ~~ THEN BEGIN A10A
SAY ~Very well. Do you wish for me to remain silent when not directly addressed?~
++ ~Yes. I'm really not interested in socializing.~ DO ~SetGlobal("TIMaethRomanceActive","LOCALS",3) SetGlobal("TIMaethFriendActive","LOCALS",3)~ EXIT
++ ~No, of course not. I just don't have time right now.~ DO ~SetGlobal("TIMaethLT2Delay","GLOBAL",1) IncrementGlobal("TIMaethDelayLT","GLOBAL",1) IncrementGlobal("TIMaethPutOff","GLOBAL",1)~ + A10B
END

IF ~~ THEN BEGIN A10B
SAY ~Very well.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A11
SAY ~Ok, then. What would you like to know?~
+ ~Global("TIMaethSexy","LOCALS",0)~ + ~I don't want this to sound wrong, but you are a little different from other elves I've met~ ~SetGlobal("TIMaethSexy","LOCALS",1)~ + A11A
+ ~Global("TIMaethPaladin","LOCALS",0)~ + ~So you're a paladin, eh? Are you one of those sorts that's always moralizing and poking into other peoples' business?~ ~SetGlobal("TIMaethPaladin","LOCALS",1)~ + A11B
+ ~Global("TIMaethChildhood","LOCALS",0)~ + ~Tell me about your childhood. Where did you grow up?~ ~SetGlobal("TIMaethChildhood","LOCALS",1)~ + A11C
+ ~Global("TIMaethFamily","LOCALS",0)~ + ~What about your family?~ ~SetGlobal("TIMaethFamily","LOCALS",1)~ + A11D
+ ~Global("TIMaethName","LOCALS",0)~ + ~You have an unusual name.~ ~SetGlobal("TIMaethName","LOCALS",1)~ + A11G
END

IF ~~ THEN BEGIN A11F
SAY ~Any other questions you have for me...?~
+ ~Global("TIMaethSexy","LOCALS",0)~ + ~I don't want this to sound wrong, but you are a little different from other elves I've met~ ~SetGlobal("TIMaethSexy","LOCALS",1)~ + A11A
+ ~Global("TIMaethPaladin","LOCALS",0)~ + ~So you're a paladin, eh? Are you one of those sorts that's always moralizing and poking into other peoples' business?~ ~SetGlobal("TIMaethPaladin","LOCALS",1)~ + A11B
+ ~Global("TIMaethChildhood","LOCALS",0)~ + ~Tell me about your childhood. Where did you grow up?~ ~SetGlobal("TIMaethChildhood","LOCALS",1)~ + A11C
+ ~Global("TIMaethFamily","LOCALS",0)~ + ~What about your family?~ ~SetGlobal("TIMaethFamily","LOCALS",1)~ + A11D
+ ~Global("TIMaethName","LOCALS",0)~ + ~You have an unusual name.~ ~SetGlobal("TIMaethName","LOCALS",1)~ + A11G
++ ~Thank you for your openness.~ + A11E
END

IF ~~ THEN BEGIN A11E
SAY ~You're welcome. I'd like to hear about you when we talk next time.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A11G
SAY ~Well, I have two names, really. When Elven parents name their child, they gift him or her a nick-name that everyone knows and a personal name that is known only to the child's family. In Low Elven, 'Maethor' means 'warrior.' Apparently, I came out of the womb very early.~
=~I struggled even to breathe and it was thought that I might not survive early childhood. But, here I am. As for 'Grenfell,' well, Sir Tybalt Grenfell adopted me while I was still in my adolescent years. It is, as you might expect, a very old human name meaning 'from the green field.'~
=~Do you know about Elven names, <CHARNAME>?~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~Yes. Even though I was not raised amongst our people, I was told about Elven names when I was young. So... do you speak 'Low Elven'?~ DO ~SetGlobal("TIMaethName","LOCALS",1)~ + A11GA
+ ~!RACE(Player1, ELF) !RACE(Player1,HALF_ELF)~ + ~Yes. I was told about Elven names at Candlekeep by one of my tutors. So... do you speak 'Low Elven'?~ DO ~SetGlobal("TIMaethName","LOCALS",1)~ + A11GA
++ ~Interesting. What do you mean by 'Low Elven'?~ DO ~SetGlobal("TIMaethName","LOCALS",1)~ + A11GB
++ ~So you were adopted by a human family?~ DO ~SetGlobal("TIMaethName","LOCALS",1)~ + A11GC
END

IF ~~ THEN BEGIN A11GA
SAY ~Well, I understand Low Elven and speak it moderately fluently because it was my mother's language of choice. My caretaker, Cýrontîr, however, was raised at Evermeet speaking High Elven and only learned our dialect after he arrived at the port of Athkatla. He and my mother would speak High Elven when they were trying to keep their words private.~
=~Unfortunately for them, one of my few intellectual talents is affinity with languages, so I had a way of understanding what they said regardless. When I left Tethyr, Sir Tybalt taught me common and I heard the Atkatlan elves speak their own slang... With all the different influences on my language, I'm sure my grammar and pronunciation is far from perfect.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11GB
SAY ~'Low' Elven is the common name for the language the Elves speak here in Faerûn. We have several different dialects, depending on what region we're from, but we all pretty much understand each other. 'High' Elven is the common name for the language the Elves speak in Evermeet and in Evereska. It's said to be a lot closer to the language our deities speak...~
++ ~Do you only speak Low Elven?~ + A11.2A
++ ~Are Elvish names always so unusual?~ + A11.2B
END

IF ~~ THEN BEGIN A11GC
SAY ~Yes, but I'll get to that in a minute. That's a rather complicated story in its own right...~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11.2A
SAY ~No, I can speak both. I'm far more fluent in Low Elven because it was my mother's language of choice. My caretaker, Cýrontîr, however, was raised with High Elven and tried to teach it to me. When I left Tethyr, Sir Tybalt taught me common. And then Sir Finnilithui taught me the two different Drowish dialects so that I wouldn't accidentally hurt or kill our Drow allies (Drow rebels, really) who follow Eilistraee, Corellon's daughter. With all the different influences on my language, I'm something of a polyglot; I speak several languages.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11.2B
SAY ~Elvish names are no different than any others. All names have meanings, after all.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11A
SAY ~Is it that I look different? Or that I behave differently?~
++ ~Don't take this the wrong way, but you're...well...striking.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A12
++ ~You have unusual abilities.~ + A13
++ ~Both.~ + A14
END

IF ~~ THEN BEGIN A12
SAY ~*Maethor smiles broadly, revealing an astonishing three sets of sharp, pointed canines.* Most paladins are attractive or charismatic. It's typical to see unusual beauty or magnetism. If you see such traits in me, then I suppose I am no different than the rest. I would have gotten those from my mother.~
=~Naneth...that's how my people say 'Mother'...was a well-known courtesan. The wealthy and powerful amongst both men and elves in Tethir sought her out not just because of her beauty, but also for her wit and her charm. I have always found it amusing that the traits that best suit a courtesan--beauty and persuasiveness--also benefit the paladin. *laughs.*~
+ ~Global("TIMaethAttention","LOCALS",0)~ + ~You're right. I've noticed that paladins are unusually fair or good speakers. Do you get a lot of attention?~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A12A
+ ~Global("TIMaethReligious","LOCALS",0)~ + ~Yes, but unlike the courtesan, the religious life of the paladin usually demands modesty and purity. Doesn't your faith have a moral code to follow?~ + A12B
+ ~Global("TIMaethTeeth","LOCALS",0)~ + ~What about your...uhhh...teeth?~ + A12C
+ ~Global("TIMaethShort","LOCALS",0)~ + ~Actually, I was referring to your height.~ + A12D
END

IF ~~ THEN BEGIN A12.1
SAY ~Anything else about how I look?~
+ ~Global("TIMaethAttention","LOCALS",0)~ + ~You're right. I've noticed that paladins are unusually fair or good speakers. Do you get a lot of attention?~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A12A
+ ~Global("TIMaethReligious","LOCALS",0)~ + ~Yes, but unlike the courtesan, the religious life of the paladin usually demands modesty and purity. Doesn't your faith have a moral code to follow?~ + A12B
+ ~Global("TIMaethTeeth","LOCALS",0)~ + ~What about your...uhhh...teeth?~ + A12C
+ ~Global("TIMaethShort","LOCALS",0)~ + ~Actually, I was referring to your height.~ + A12D
++ ~Nope.~ + A11F
END

IF ~~ THEN BEGIN A12A
SAY ~*shrugs.* Tyb... Sir Tybalt... also had a magnetic personality. Fortunately, we've lived in Beregost so long that the locals are used to us. I've noticed that Liria has had a lot of male friends and that I haven't had a difficult time establishing a comfortable association with Tyb's colleagues, but otherwise, I haven't thought much about it one way or the other.~
IF ~~ THEN DO ~SetGlobal("TIMaethAttention","LOCALS",1)~ + A12.1
END

IF ~~ THEN BEGIN A12B
SAY ~That's a little difficult to answer. Corellon is different from other deities who have orders of knights. There is no formal code of behavior. Nor does there need to be--only those who already embrace his ideals would seek to serve him. As a general rule, the Knights of my Order do recognize that modesty and purity are virtues to be pursued.~
=~But application of those virtues is determined by a balance between personal preference and community expectation. For example, consider purity: some of my order believe 'pure' means virginity and chastity. Some define 'pure' as being true to one's vows at the time that they were made...hence, celibacy for those who are not virgins.~
=~Some define 'pure' as being true to the vows that one chooses to make...hence, fidelity to spouse and deity. The larger community defines 'purity' as a social virtue--the 'pure' are those who do not disrupt the marital and affectionate relationships of those around them. That's a lot different than being handed a code that says exactly what one can do or not do.~
IF ~~ THEN DO ~SetGlobal("TIMaethReligious","LOCALS",1)~ + A12.1
END

IF ~~ THEN BEGIN A12C
SAY ~*Maethor's cheeks redden, and he places his hand before his mouth.* Ai! I forgot about them. Do...do they frighten you?~
++ ~I wouldn't say they frighten me. But it is a bit of a surprise. Makes you look demonic.~ DO ~SetGlobal("TIMaethTeeth","LOCALS",1)~ + A12.2
++ ~Actually, yes. A little bit. It's rather unexpected, given that you're a paladin.~ DO ~SetGlobal("TIMaethTeeth","LOCALS",1)~ + A12.3
+ ~RACE(Player1,TIEFLING) RACE(Player1,HALFORC)~ + ~What? Those little things? Look at these! *You show her your long fangs.*~  DO ~SetGlobal("TIMaethTeeth","LOCALS",1)~ + A12.4
+ ~Global("TIMaethRomanceActive","LOCALS",1)~ + ~They're actually kind of sexy.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)  SetGlobal("TIMaethTeeth","LOCALS",1)~ + A12.5
+ ~RACE(Player1,TIEFLING) Global("TIMaethRomanceActive","LOCALS",1)~ + ~They're actually really sexy.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethTeeth","LOCALS",1)~ + A12.4
END

IF ~~ THEN BEGIN A12.2
SAY ~Demonic? Ugh. Trust me when I say that I would not be here with you if I were. Think of it this way: if the only downside of having extreme strength is having an unusual...erm...smile, I'll happily accept the trade-off. The teeth, unlike my abilities, are purely a cosmetic issue.~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A12.3
SAY ~At this point, all I can do is ask that you trust me when I say that I personally believe the chivalric ideals shared by all paladins are worthy pursuits and that I would not be here with you if I were more fey'ri than I am. Fortunately, at some point, you'll be so used to my...erm...grin that you won't notice the difference.~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A12.4
SAY ~*Maethor moves his hand away from his mouth, smiling.* Nice! Now I feel much better about myself. Thank you!~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A12.5
SAY ~*Maethor's cheeks redden, but he moves his hand away from his mouth, smiling shyly.* I think that's the first time I've ever heard THAT! You...you really think they're attractive?~
++ ~Absolutely. A little dangerous, you know?~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A12.5A
++ ~*Laugh.* No, not really. They're fine... But I just had to get your mind off of them. They're just teeth! Who cares what they look like?!~ + A12.6
+ ~RACE(Player1,TIEFLING) Global("TIMaethRomanceActive","LOCALS",1)~ + ~Absolutely. They're so little... Take a look at these. *You show him your long fangs.* I'm a tiefling, so we have something in common.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A12.7
END

IF ~~ THEN BEGIN A12.5A
SAY ~Thank you. I...I don't know what to say except that I'm grateful for your kindness.~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A12.6
SAY ~*Maethor rolls his eyes.* Ah. I see. I suppose you're right. But still... it would've been nice to find someone who not only didn't care, but actually liked them. I've tried to file them, but the sensation of the file was painful, so I gave up.~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A12.7
SAY ~*He blushes even redder.* Thank you. It's nice to be understood...~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A12D
SAY ~*Maethor blushes.* I'm sorry. You must think I'm vain. Yes... You would not be the first to laugh. One of Tyb's friends used to call me 'half-pint paladin.' In my boots, I am five feet tall. At least!~
+ ~!Global("TIMaethorRomance Active","LOCALS",1) RACE(Player1,HALFLING)~ + ~I don't think you're vain. I like your size! It's great that you're close to my height! Would you ever consider taking OFF the boots?~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethShort","LOCALS",1)~ + A13.1
+ ~Global("TIMaethorRomance Active","LOCALS",1) RACE(Player1,HALFLING)~ + ~I don't think you're vain. I like your size! I think it's sexy! Would you ever consider taking OFF the boots? It might even make us close enough to comfortably kiss. *wink.*~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethShort","LOCALS",1)~ + A13.1
+ ~Global("TIMaethorRomance Active","LOCALS",1) RACE(Player1,GNOME)~ + ~I don't think you're vain. I like your size! It's sexy that you're close to my height! Would you ever consider taking off the tall boots and making it even closer? We might even be able to comfortably kiss, then. *wink.*~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethShort","LOCALS",1)~ + A13.1
+ ~!Global("TIMaethorRomance Active","LOCALS",1) RACE(Player1,GNOME)~ + ~I don't think you're vain. I like your size!~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethShort","LOCALS",1)~ + A13.1
+ ~Global("TIMaethorRomance Active","LOCALS",1) RACE(Player1,DWARF)~ + ~Lassie, every woman should be your size. I find it rather appealing...especially for an elf!~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethShort","LOCALS",1)~ + A13.2
+ ~!Global("TIMaethorRomance Active","LOCALS",1) RACE(Player1,DWARF)~ + ~Lassie, everyone should be your size! The world is by far too tall for my liking!~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethShort","LOCALS",1)~ + A13.2
++ ~You're not vain... Not very vain, anyway. I'm a <PRO_RACE> and I don't mind your height. It's just a little different.~  DO ~SetGlobal("TIMaethShort","LOCALS",1)~ + A11F
END

IF ~~ THEN BEGIN A13.1
SAY ~*Embarrassed grin.* Maybe. If the weather is nice enough for it.~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A13.2
SAY ~*Embarrassed grin.* I appreciate the compliment. It makes me feel better about my height.~
IF ~~ THEN + A12.1
END

IF ~~ THEN BEGIN A13
SAY ~Yes, well, that confuses some people who judge me based on my appearance. Because I look like a small elf, some have doubted my usefulness as a warrior. I assure you that that view is mistaken. It's the result of not knowing who my father was, I guess. I actually get less attention among humans than I do among elves. I'm VERY unusual for a female elf and that can be both appealing and disturbing.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~Understood on both counts. On first glance, you look, sound, and seem like one of the people. And yet, there are moments when you move or speak and I see something else there... Not just greater strength, you know...~ + A13B
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~I don't know about that. I'm <PRO_RACE> and you seem pretty unique to me. Not just because of greater strength...~ + A13B
END

IF ~~ THEN BEGIN A13B
SAY ~*Maethor laughs and flexes her biceps.* My mentor, Tyb, grew up toting logs; he did some lumberjacking in his early years. So, he took my strength in stride. He's a lot stronger than I am...~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A14
SAY ~*pauses.* My sister and I have tried to blend in in Beregost. However, my strength and the way both of us look not quite...right...does foil our best efforts. We've been informed at times that our elvish background is not quite as pure as it should be. That makes me angry.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11B
SAY ~Poking into other peoples' business? Well, not really. I can't moralize very well, either, being...ummm...a bastard. And having a dissolute childhood. But I know what you mean. I won't be preaching at you anytime soon.~
++ ~Well, that's a wonder! Have I found a paladin who actually minds her own business?~ DO ~SetGlobal("TIMaethPaladin","LOCALS",1)~ + A15
++ ~I was just trying to be funny.~ DO ~SetGlobal("TIMaethPaladin","LOCALS",1)~ + A16
END

IF ~~ THEN BEGIN A15
SAY ~*He looks offended for a second, then laughs.* Yes. It IS a wonder, isn't it?~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A16
SAY ~Oh. I took you at your word. I'm sorry. You may find that I'm a bit slow on the uptake, <CHARNAME>. As Tyb used to say, I'm only as intelligent as I need to be.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11C
SAY ~As far as I know, Liria and I were both born in the forest of Tethir near Suldanessellar. Our mother was not given to long discussions of her past, so it's hard to pin down details. Anyway, I spent my childhood there, and then lived in Athkatla with Tyb and his family. Suldanessellar is a beautiful city in the trees. Probably not like anything you've seen before. But I have a hard time thinking of it as home; a great many of my experiences there are painful to remember.~
++ ~Tethyr? Amn? They're a long way from here.~ DO ~SetGlobal("TIMaethChildhood","LOCALS",1)~ + A17A
++ ~How did you end up in Beregost, though?~ DO ~SetGlobal("TIMaethChildhood","LOCALS",1)~ + A17B
++ ~A city in the trees. I'd like to see that.~ DO ~SetGlobal("TIMaethChildhood","LOCALS",1)~ + A17C
END

IF ~~ THEN BEGIN A17A
SAY ~It is. But I was forced to leave Tethyr because of insurrection; what my people call the Ten Black Days of Eleint. A civil war erupted after Prince Alemander assassinated his father King Alemander IV. Loyalist factions were pitted against each other, the military was divided, and revolutionary factions arose among the populace determined to change the political system entirely.~
=~And, of course, racial hatred was rampant amongst all edain there, so the civil war gave many the opportunity to destroy the Elven community in Tethir, who represented a tiny minority of the population. Rampaging mobs burned the forests, killing many of my people.~
++ ~I'm sorry about that, Maethor. That must have been a terrible time~+ A18
++ ~I take it your mother finally decided to leave?~+ A17B
END

IF ~~ THEN BEGIN A17B
SAY ~Naneth...my mother... and Cýrontîr decided that it was too dangerous to stay in Tethyr when civil war erupted in 1347. Violence against elves was common then and, as you've noticed, we particularly stand out. To make a complicated story short, I met Sir Tybalt Grenfell on the road to Athkatla, and he protected me from then on. Eventually, my sister and I found our way to Beregost...~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A17C
SAY~Maybe you will someday. Liria would like to go back there--to raise her son among our people. She's been writing to her husband there and he has said it's safer and somewhat peaceful, as there's now a stable government in Tethyr. But it's still not a great place to be Elven. I prefer Beregost, myself.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A18
SAY ~Thank you. I'm grateful for your kind words. Naneth...my mother... and Cýrontîr decided that it was too dangerous to stay in Tethyr. Violence against elves was common then and, as you've noticed, we stand out. To make a complicated story short, I met Sir Tybalt Grenfell on the road to Athkatla, and he protected me from then on. Eventually, my sister and I found our way to Beregost...~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11D
SAY ~Well, you've met Liria. She's about it. I never knew my mother's parents very well because they disapproved of my mother's ways. We lost touch completely during the uprising in Tethyr and I suspect they decided to leave for Evermeet sometime before Naneth was killed.~
=~I never knew my father. That would be difficult for the child of any courtesan, but it was especially hard for me since my mother not only had customers, but was always finding a new favorite during her travels and would bring him home to play with for awhile. It made it confusing, not knowing who would be in Naneth's bed...~
++ ~You mentioned someone else before... Sir Tybalt? Who's he?~ DO ~SetGlobal("TIMaethFamily","LOCALS",1)~ + A19
++ ~Who was that little boy I saw with you in the house at Beregost?~ DO ~SetGlobal("TIMaethFamily","LOCALS",1)~ + A10.1
END

IF ~~ THEN BEGIN A19
SAY ~Oh, Tyb? He raised me, really. He and his wife. He was kind of a foster father to me, although he never acted much like a father. From the beginning, he was more like a mentor.~
++ ~I understand. I'm an orphan myself. I had a foster father. Gorion.~ + A19A
++ ~More like a mentor? What does that mean?~ + A19.1
END

IF ~~ THEN BEGIN A19A
SAY ~Tell me about him. Is he still back in Candlekeep?~
++ ~No. He was recently killed on the road at Lion's Way. He died protecting me.~ DO ~SetGlobal("MKnowsGorDead","GLOBAL",1)~ + A10.2
++ ~No. If you must know, he was killed on the road at Lion's way. But I don't want to talk about it.~ DO ~SetGlobal("MKnowsGorDead","GLOBAL",1)~ + A10.2A
END

IF ~~ THEN BEGIN A19.1
SAY ~*Maethor considers your question for a moment before speaking.* Don't misunderstand me. He did everything that a foster-father would do; he fed me, arranged for my education, and even adopted me. But from the start, he treated me as a younger comrade of his. Never condescending. Even asked my advice on personal matters. But he wasn't affectionate with me. More business-like, I guess. I'm not sure how to express the difference in words.~
++ ~I wish my foster-father Gorion had been like that. He was always condescending.~ + A19A
++ ~It's nice to have someone that you know loves you. Gorion was very affectionate.~ + A19A
END

IF ~~ THEN BEGIN A10.2
SAY ~Oh! That's like us! When we were leaving Tethyr, we were caught on the road to Amn by a mob. They killed our guards first and then Naneth's lover Cýrontîr. They beat me and Naneth severely. We were fortunate that Tyb came along, but it was too late for my mother.~
IF ~~ THEN + A10.2_01
END

IF ~~ THEN BEGIN A10.2A
SAY ~You don't have to explain. We were caught on the road to Amn by a mob. They killed our guards first and then Mother's lover Cýrontîr. They beat me and Naneth severely. We were fortunate that Tyb came along, but it was too late for my mother.~
IF ~~ THEN + A10.2_01
END

IF ~~ THEN BEGIN A10.2_01
SAY~I've long suspected that my mother must have been recognized by someone in the mob because they'd mutilated her...~
++ ~It's a sign we live in troubled times.~ + A11F
++ ~Were her killers ever caught?~ + A11.1
++ ~I'm sorry. It seems we have both suffered.~ + A11.1a
END

IF ~~ THEN BEGIN A11.1
SAY ~Most of them. Tyb and his comrades were very thorough in tracking down and arresting the few who escaped the initial conflict. They were only unsure whether they had gotten the warparty's ringleader. Sometimes I have nightmares that they missed him somehow and he comes back...~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A11.1a
SAY ~Yes. If it helps any, I understand the pain you must be feeling. You will come to your own terms with it. Trust me on that. You know, it seems to me that there are few intact families in Faerun these days. At least, that's been my observation.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A10.1
SAY ~That was Artamir...our son. Well, my sister's son, actually. I've been very active in raising him. When the civil way erupted, Liria stayed in Suldanessellar with her husband. But she became anxious when she became pregnant. The constant attacks on the city made Liria fear for the life of her unborn child.~
=~She sent agonizing letters to me regarding her situation. Because Sir Tybalt and other Knights in his Order were providing assitance to the remaining Tethyrean nobility with the goal of reestablishing law and order, Tyb wanted to form a rescue party to bring Liria to Athkatla.~
++ ~That's a noble thought, but what did her husband think about the idea?~ + A10.1A
++ ~Somehow, being an elf, I think she might have regarded that as human meddling.~ + A10.1B
++ ~But it really wasn't his business. I take it that he and your sister...~ + A10.1AB
END

IF ~~ THEN BEGIN A10.1A
SAY ~Simple. Her husband would not leave and expected her to remain as well. Tyb got so angry at times that he would have to go outside our house and chop wood. Not to mention rant for hours about misplaced loyalty. Ugh. After many bitter letters back and forth--they inspired six winters' supply of wood, I recall--Liria finally agreed to leave Tethyr.~
=~Unfortunately, once here, Liria's presence caused problems. Tyb's wife Alia was jealous of Liria and suspicious of her relationship with Tyb. In desperation, I suggested taking Liria up to Tyb's mother's house in Beregost. At least until Tethyr was pacified.~
IF ~~ THEN + A10.1B_01
END

IF ~~ THEN BEGIN A10.1B
SAY ~Liria didn't. She wanted Tyb's meddling. Made her feel desirable or something along those lines. But, obviously, her husband did. He would not leave. Not that Tyb cared so much about that--he understood about Elhan's military responsibilities--but he was furious that he would expect Liria, pregnant and terrified, to remain as well. Tyb got so angry at times that he would have to go outside our house and chop wood.~
=~Tyb and Liria's letters supplied our house with six winters' worth of wood, I recall. Anyway, Liria finally agreed to leave Tethyr. Unfortunately, living here was no solution; Tyb's wife Alia was jealous of Liria and suspicious of her relationship with Tyb. In desperation, I suggested taking Liria up to Tyb's mother's house in Beregost until Tethyr was pacified.~
IF ~~ THEN + A10.1B_01
END

IF ~~ THEN BEGIN A10.1AB
SAY ~Had formed an attachment to each other? Yes. From the first letter she sent me, there was an...erm...attraction. He wrote a flowery post-script on the letter I first sent back to her and she responded both to me and to him. He read her letters eagerly and wrote long-winded replies. But he also got too involved. Her husband would not leave his Queen's forest and expected Liria to remain as well. Tyb got so angry at times that he would have to go outside our house and chop wood.~
=~Not to mention rant for hours about misplaced loyalty. Ugh. After many bitter letters back and forth--they inspired six winters' supply of wood, I recall--Liria finally agreed to leave Tethyr. Unfortunately, once here, Liria's presence caused problems. Tyb's wife Alia was jealous of Liria and suspicious of her relationship with Tyb. In desperation, I suggested taking Liria up to Tyb's mother's house in Beregost. At least until Tethyr was pacified.~
IF ~~ THEN + A10.1B_01
END

IF ~~ THEN BEGIN A10.1B_01
SAY~*Maethor pauses* I couldn't let her give birth and raise the child alone, though. Artamir seems as much mine as Liria's. It is the one issue I have with Artamir's father that he put his duty to Queen Ellesime over his professed 'love' for his wife and his child.~
++ ~I think I might have been suspicious as well. Does Sir Tybalt live with you or with his wife in Athkatla?~ + A10.1CE
++ ~Sometimes one's duty has to interfere with family life. That's just the way the military can be.~ + A10.1AD
++ ~No offense, Maethor, but your family has some big problems...~ + A10.1CD
END

IF ~~ THEN BEGIN A10.1CE
SAY ~Officially, Athkatla. Until recently, however, he would visit Beregost whenever he could. About every six weeks or so, his travels would take him along the coast and he'd stop in for a few days. *Frowning.* Alia's suspicions were well-founded, unfortunately...The locals gossip about 'Old Tyb's mistress' and I often have to grit my teeth when I know that Liria does share her bed with him... But enough about that. I can't change Liria if she has to have a man in her life. It's none of my business, anyway.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A10.1AD
SAY ~We'll just have to respectfully disagree about that. To my mind, nothing should interfere with whether or not you provide the safest environment for your child.~
IF ~~ THEN + A11F
END

IF ~~ THEN BEGIN A10.1CD
SAY ~No arguments from me about that. But I'm pretty used to raised voices and frustrating situations in my life. Liria's always been unconventional... Not as unconventional as our mother, but far more so than me. That's one reason I'm glad to join your party; I feel like I'm doing something to resolve, rather than create problems.~
IF ~~ THEN + A11F
END

//(MaethTalk #3) Education (Friend Talk, With Belt)

IF ~Global("TIMaethTalks","GLOBAL",6) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT3
SAY ~*Maethor catches your eye as if he has something to say.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A20
END

IF ~~ THEN BEGIN A20
SAY ~<CHARNAME>, when you were growing up at Candlekeep, I'm sure you must have had a lot of classes and instructors.~
++ ~Candlekeep is under the protection of Oghma. No big surprise education is a big deal.~ + A20.1
++ ~What did you want to know about it?~ + A20.1A
++ ~Please, Maethor. No more questions.~ + A20.1B
END

IF ~~ THEN BEGIN A20.1B
SAY ~I really don't mean to pry. Is this a subject you would prefer not to discuss?~
++ ~I'll be happy to talk about it with you later. Just not right now~ + A22
++ ~Yes!~ + A22A
++ ~I didn't enjoy life at Candlekeep. I'd rather not relive it.~ + A22A
END

IF ~~ THEN BEGIN A22
SAY ~Very well. Later, then.~
IF ~~ THEN DO ~SetGlobal("TIMaethA3Delay","GLOBAL",1) IncrementGlobal("TIMaethPutOff","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A22A
SAY ~You can be honest with me. Would you prefer I not question you at all?~
++ ~In a word, yes.~ DO ~SetGlobal("TIMaethRomanceActive","LOCALS",3)~ + A23A
++ ~No... I don't mind your thoughts. Just not this particular topic.~ DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ + A23A
END

IF ~~ THEN BEGIN A23A
SAY ~Very well. I shall return my attention to the road ahead.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A20.1
SAY ~Oghma. Yes, that makes a lot of sense. Of course, he is also the patron deity of Bards. The connection of bards with Knowledge explains why they have to learn to identify so many obscure items--often as easily as a mage.~
+ ~Class(Player1,BARD)~ + ~Indeed.~ + A20.1A
+ ~OR(5) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_MAGE) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_MAGE_THIEF)~ + ~Not any bard that I knew! Mages are the true keepers of knowledge.~ + A20.1A
+ ~OR(5) Class(Player1,THIEF) Class(Player1,MAGE_THIEF) Class(Player1,FIGHTER_THIEF) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_MAGE_THIEF)~ + ~Heh! A rogue could help you just as well.~ + A20.1A
++ ~I guess.~ + A20.1A
++ ~Interesting.~ + A20.1A
END

IF ~~ THEN BEGIN A20.1A
SAY ~So what topics did you study?~
+ ~Class(Player1,PALADIN) Global("TIMaethPaladin1","LOCALS",0)~ + ~Paladins have to make a personal connection to their deity, so I spent much time in religious studies.~ + A20A
+ ~Class(Player1,PALADIN) Global("TIMaethPaladin2","LOCALS",0)~ + ~Leadership and negotiation skills.~ + A20B
+ ~OR(7) Class(Player1,FIGHTER) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,FIGHTER_MAGE_CLERIC) Global("TIMaethFighter1","LOCALS",0)~ + ~I studied tactics and the history of warfare.~ + A20C
+ ~OR(7) Class(Player1,FIGHTER) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,FIGHTER_MAGE_CLERIC) Global("TIMaethFighter2","LOCALS",0)~ + ~I trained with the 'watchers'--Candlekeep's local militia.~ + A20D
+ ~OR(2) Class(Player1,RANGER) Class(Player1,CLERIC_RANGER) Global("TIMaethRanger1","LOCALS",0)~ + ~Forest skills, mainly--a lot of botany and herbal lore.~ + A20E
+ ~OR(2) Class(Player1,RANGER) Class(Player1,CLERIC_RANGER) Global("TIMaethRanger2","LOCALS",0)~ + ~I learned to communicate with animals, actually.~ + A20F
+ ~Kit(Player1,BARBARIAN) Global("TIMaethBarbarian1","LOCALS",0)~ + ~Strength training. I was a very active child and needed a lot of exercise.~ + A20G
+ ~Kit(Player1,BARBARIAN) Global("TIMaethBarbarian2","LOCALS",0)~ + ~The handling of larger weapons. And agility training. Barbarians tend not to wear as much armor.~ + A20H
+ ~OR(5) Class(Player1,CLERIC) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_RANGER) Global("TIMaethCleric1","LOCALS",0)~ + ~Religious studies. The healing sphere of magic.~ + A20I
+ ~OR(5) Class(Player1,CLERIC) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_RANGER) Global("TIMaethCleric1","LOCALS",0)~ + ~Public speaking, believe it or not. Clerics have to be good at conducting ceremonies.~ + A20J
+ ~OR(2) Class(Player1,DRUID) Class(Player1,FIGHTER_DRUID) Global("TIMaethDruid1","LOCALS",0)~ + ~Botany. Herbal lore. Medical uses for plants.~ + A20K
+ ~OR(2) Class(Player1,DRUID) Class(Player1,FIGHTER_DRUID) Global("TIMaethDruid2","LOCALS",0)~ + ~Communication with nature. Mostly animals, but plant awareness was also a topic.~ + A20L
+ ~Class(Player1,MONK) Global("TIMaethMonk1","LOCALS",0)~ + ~Hand-to-hand unarmed combat skills. Monks tend not to carry weapons.~ + A20M
+ ~Class(Player1,MONK) Global("TIMaethMonk2","LOCALS",0)~ + ~Religious studies. Meditation. Self-awareness.~ + A20N
+ ~OR(5) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_MAGE) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethMage1","LOCALS",0)~ + ~Arcane lore. The major classes and kinds of artifacts and magical weapons.~ + A20O
+ ~OR(5) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_MAGE) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethMage2","LOCALS",0)~ + ~Spellcraft. More than you ever wanted to know about learning, scribing, and casting spells.~ + A20P
+ ~Class(Player1,SORCERER) Global("TIMaethSorcerer1","LOCALS",0)~ + ~Arcane knowledge. Artifacts, magical weapons, that sort of thing.~ + A20Q
+ ~Class(Player1,SORCERER) Global("TIMaethSorcerer2","LOCALS",0)~ + ~Spellcraft. Drawing off the energies of your sphere and effective spell application--enchanting items and weapons.~ + A20R
+ ~OR(5) Class(Player1,THIEF) Class(Player1,FIGHTER_THIEF) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethThief1","LOCALS",0)~ + ~A lot of hand-eye coordination work. The mechanical arts of lock-picking, setting and disarming traps.~ + A20S
+ ~OR(5) Class(Player1,THIEF) Class(Player1,FIGHTER_THIEF) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethThief1","LOCALS",0)~ + ~Stealth, hiding in shadows, and effective methods of skulking. Fun stuff like that.~ + A20T
+ ~Class(Player1,BARD) Global("TIMaethBard1","LOCALS",0)~ + ~Musical studies, as you'd expect. Musical instruments and vocal training.~ + A20U
+ ~Class(Player1,BARD) Global("TIMaethBard1","LOCALS",0)~ + ~Singing, musical presentation. Music composition and some studies of poetry.~ + A20V
+ ~Global("TIMaethGeneric1","LOCALS",0)~ + ~I learned to handle weapons in melee and ranged combat.~ + A20W
+ ~Global("TIMaethGeneric2","LOCALS",0)~ + ~Reading, composition, and rhetoric--the study of effective argument.~ + A20X
+ ~Global("TIMaethGeneric3","LOCALS",0)~ + ~Basic living skills. Cooking, first aid, orienteering, and some woodcraft.~ + A20Y
+ ~Global("TIMaethGeneric4","LOCALS",0)~ + ~A lot of other skills I can't even remember now!~ + A20Z
END

IF ~~ THEN BEGIN A20AB
SAY ~Did you study anything else?~
+ ~Class(Player1,PALADIN) Global("TIMaethPaladin1","LOCALS",0)~ + ~Paladins have to make a personal connection to their deity, so I spent much time in religious studies.~ + A20A
+ ~Class(Player1,PALADIN) Global("TIMaethPaladin2","LOCALS",0)~ + ~Leadership and negotiation skills.~ + A20B
+ ~OR(7) Class(Player1,FIGHTER) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,FIGHTER_MAGE_CLERIC) Global("TIMaethFighter1","LOCALS",0)~ + ~I studied tactics and the history of warfare.~ + A20C
+ ~OR(7) Class(Player1,FIGHTER) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,FIGHTER_MAGE_CLERIC) Global("TIMaethFighter2","LOCALS",0)~ + ~I trained with the 'watchers'--Candlekeep's local militia.~ + A20D
+ ~OR(2) Class(Player1,RANGER) Class(Player1,CLERIC_RANGER) Global("TIMaethRanger1","LOCALS",0)~ + ~Forest skills, mainly--a lot of botany and herbal lore.~ + A20E
+ ~OR(2) Class(Player1,RANGER) Class(Player1,CLERIC_RANGER) Global("TIMaethRanger2","LOCALS",0)~ + ~I learned to communicate with animals, actually.~ + A20F
+ ~Kit(Player1,BARBARIAN) Global("TIMaethBarbarian1","LOCALS",0)~ + ~Strength training. I was a very active child and needed a lot of exercise.~ + A20G
+ ~Kit(Player1,BARBARIAN) Global("TIMaethBarbarian2","LOCALS",0)~ + ~The handling of larger weapons. And agility training. Barbarians tend not to wear as much armor.~ + A20H
+ ~OR(5) Class(Player1,CLERIC) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_RANGER) Global("TIMaethCleric1","LOCALS",0)~ + ~Religious studies. The healing sphere of magic.~ + A20I
+ ~OR(5) Class(Player1,CLERIC) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_RANGER) Global("TIMaethCleric1","LOCALS",0)~ + ~Public speaking, believe it or not. Clerics have to be good at conducting ceremonies.~ + A20J
+ ~OR(2) Class(Player1,DRUID) Class(Player1,FIGHTER_DRUID) Global("TIMaethDruid1","LOCALS",0)~ + ~Botany. Herbal lore. Medical uses for plants.~ + A20K
+ ~OR(2) Class(Player1,DRUID) Class(Player1,FIGHTER_DRUID) Global("TIMaethDruid2","LOCALS",0)~ + ~Communication with nature. Mostly animals, but plant awareness was also a topic.~ + A20L
+ ~Class(Player1,MONK) Global("TIMaethMonk1","LOCALS",0)~ + ~Hand-to-hand unarmed combat skills. Monks tend not to carry weapons.~ + A20M
+ ~Class(Player1,MONK) Global("TIMaethMonk2","LOCALS",0)~ + ~Religious studies. Meditation. Self-awareness.~ + A20N
+ ~OR(5) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_MAGE) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethMage1","LOCALS",0)~ + ~Arcane lore. The major classes and kinds of artifacts and magical weapons.~ + A20O
+ ~OR(5) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_MAGE) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethMage2","LOCALS",0)~ + ~Spellcraft. More than you ever wanted to know about learning, scribing, and casting spells.~ + A20P
+ ~Class(Player1,SORCERER) Global("TIMaethSorcerer1","LOCALS",0)~ + ~Arcane knowledge. Artifacts, magical weapons, that sort of thing.~ + A20Q
+ ~Class(Player1,SORCERER) Global("TIMaethSorcerer2","LOCALS",0)~ + ~Spellcraft. Drawing off the energies of your sphere and effective spell application--enchanting items and weapons.~ + A20R
+ ~OR(5) Class(Player1,THIEF) Class(Player1,FIGHTER_THIEF) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethThief1","LOCALS",0)~ + ~A lot of hand-eye coordination work. The mechanical arts of lock-picking, setting and disarming traps.~ + A20S
+ ~OR(5) Class(Player1,THIEF) Class(Player1,FIGHTER_THIEF) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Global("TIMaethThief1","LOCALS",0)~ + ~Stealth, hiding in shadows, and effective methods of skulking. Fun stuff like that.~ + A20T
+ ~Class(Player1,BARD) Global("TIMaethBard1","LOCALS",0)~ + ~Musical studies, as you'd expect. Musical instruments and vocal training.~ + A20U
+ ~Class(Player1,BARD) Global("TIMaethBard1","LOCALS",0)~ + ~Singing, musical presentation. Music composition and some studies of poetry.~ + A20V
+ ~Global("TIMaethGeneric1","LOCALS",0)~ + ~I learned to handle weapons in melee and ranged combat.~ + A20W
+ ~Global("TIMaethGeneric2","LOCALS",0)~ + ~Reading, composition, and rhetoric--the study of effective argument.~ + A20X
+ ~Global("TIMaethGeneric3","LOCALS",0)~ + ~Basic living skills. Cooking, first aid, orienteering, and some woodcraft.~ + A20Y
+ ~Global("TIMaethGeneric4","LOCALS",0)~ + ~A lot of other skills I can't even remember now!~ + A20Z
++ ~That's about it.~ + A20AA
END

IF ~~ THEN BEGIN A20A
SAY ~*nods* I'm a paladin, myself. Seeking Corellon is one of the key aspects of my prayers.~
IF ~~ THEN DO ~SetGlobal("TIMaethPaladin1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20B
SAY ~You're blessed to be skilled at leading. Not everyone is capable of it and it always helps to have someone else to share the responsibility.~
IF ~~ THEN DO ~SetGlobal("TIMaethPaladin2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20C
SAY ~Ah. The history of fighting. Very necessary if you want to end conflict as quickly as possible.~
IF ~~ THEN DO ~SetGlobal("TIMaethFighter1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20D
SAY ~The practical application of theoretical knowledge. I know it well. I think we all have had to do that!~
IF ~~ THEN DO ~SetGlobal("TIMaethFighter2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20E
SAY ~Oh, that's very useful knowledge. You'll never go hungry if you understand what's edible in the woods.~
IF ~~ THEN DO ~SetGlobal("TIMaethRanger1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20F
SAY ~Wow. I'm supposed the eventually form a connection with a horse or another kind of mount, but it makes sense that it works with other animals.~
IF ~~ THEN DO ~SetGlobal("TIMaethRanger2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20G
SAY ~*nods* I had that, too. I'm gifted with unusual strength for an elf, so my mentor made me work with weights. Now, as a male, I find my strength to be increased.~
IF ~~ THEN DO ~SetGlobal("TIMaethBarbarian1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20H
SAY ~Paladins and fighters usually have to wear heavy armor. You're lucky to be able to do without it.~
IF ~~ THEN DO ~SetGlobal("TIMaethBarbarian2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20I
SAY ~Clerics and Paladins have similar training. I had many feywardens--the clerics of Corellon--overseeing my education. I'm always grateful for a talented healer, though. My power of healing touch has its limits.~
IF ~~ THEN DO ~SetGlobal("TIMaethCleric1","LOCALS",1)~  + A20AB
END

IF ~~ THEN BEGIN A20J
SAY ~I believe it, although I never had a lot of talent in that myself. I'll have to listen to one of your sermons.~
IF ~~ THEN DO ~SetGlobal("TIMaethCleric2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20K
SAY ~Nontraditional medicine is the basis of medical knowledge in many cultures. I'm sure I'll appreciate your expertise.~
IF ~~ THEN DO ~SetGlobal("TIMaethDruid1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20L
SAY ~I've always wondered what animals thought about us. Most elves enjoy a strong connection with nature.~
IF ~~ THEN DO ~SetGlobal("TIMaethDruid2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20M
SAY ~*gasp* Unarmed, you say? What a concept. I'd be lost without my longsword in hand.~
IF ~~ THEN DO ~SetGlobal("TIMaethMonk1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20N
SAY ~I've heard that self-awareness is the basis of any of the military arts, but I never learned anything else about that. You'll have to demonstrate some of the more esoteric applications for me.~
IF ~~ THEN DO ~SetGlobal("TIMaethMonk2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20O
SAY ~Well, we'll probably run across important items that you'll be able to recognize. That'll come in handy and save us the expense of having a shopkeeper identify stuff.~
IF ~~ THEN DO ~SetGlobal("TIMaethMage1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20P
SAY ~Arcane lore, huh? My deity, Corellon, is the patron of Elven magic, but I'm a little afraid of some of the magical schools. Rather dangerous knowledge. I'm glad to leave that sort of thing to you.~
IF ~~ THEN DO ~SetGlobal("TIMaethMage2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20Q
SAY ~That will prove to be an extremely useful and money-saving skill, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("TIMaethSorcerer1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20R
SAY ~I'm personally a bit cautious around some of the schools of magic. Perhaps it's better that you handle the spell-casting.~
IF ~~ THEN DO ~SetGlobal("TIMaethSorcerer2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20S
SAY ~Lock-picking, eh? I hope you'll limit the practice of your skills to locked chests in abandoned dungeons. I can't condone housebreaking and stealing.~
IF ~~ THEN DO ~SetGlobal("TIMaethThief1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20T
SAY ~My armor makes me about as stealthy as a cow. You're lucky to be able to walk around unseen.~
IF ~~ THEN DO ~SetGlobal("TIMaethThief2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20U
SAY ~I've learned a little about music. Corellon is the patron deity of the elvish arts, so I had to learn to play a lute and sing. I hope we can talk more about that.~
IF ~~ THEN DO ~SetGlobal("TIMaethBard1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20V
SAY ~So you can write music? Wow. You'll have to perform for us. Music makes long marches bearable.~
IF ~~ THEN DO ~SetGlobal("TIMaethBard2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20W
SAY ~That'll come in handy, of course. The roads aren't safe for travel. Everyone has to know how to handle a weapon.~
IF ~~ THEN DO ~SetGlobal("TIMaethGeneric1","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20X
SAY ~Ah yes. Literacy. I wish it was more common among average people. Too many can barely scribble their names.~
IF ~~ THEN DO ~SetGlobal("TIMaethGeneric2","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20Y
SAY ~I hope you're a better cook than I am. I never could get the hang of working over an open flame. Everything is either not cooked enough or is overdone.~
IF ~~ THEN DO ~SetGlobal("TIMaethGeneric3","LOCALS",1)~ + A20AB
END

IF ~~ THEN BEGIN A20Z
SAY ~I've reached that point, too. I remember generally what I've studied, but the specifics are beginning to escape my recollection. Of course, I've been training as a squire for about twenty years now... Ugh...~
IF ~~ THEN DO ~SetGlobal("TIMaethGeneric4","LOCALS",1)~  + A20AB
END

IF ~~ THEN BEGIN A20AA
SAY ~Thank you for being so open with me. I'm glad to see we have something in common.~
IF ~~ THEN EXIT
END

//(MaethTalk #4) Love Talk #1 Reverie (Outdoor, Night, Pre-Rest, With Belt)
CHAIN
IF ~Global("TIMaethTalks","GLOBAL",8)!Global("TIMaethRomanceActive","GLOBAL",1) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT4FO
~*You are sitting by the fire, watching the flames, your body wrapped up in the snug softness of your bedroll. Your body is weary, but your mind will not let go of the events of the day. Even the hypnotic dance of the fire does nothing to soothe you. Then you hear the soft pad of footsteps near you and you look up to see Maethor, barefoot and dressed in his black shirt and breeches, looking down at you.~
==TIMaethJ~I have some extra fruit, <CHARNAME>. Would you like some?~ DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1)~
END
++ ~Certainly.~ + A30FO
++ ~No, thanks.~ + A31FO

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",8) Global("TIMaethRomanceActive","GLOBAL",1) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT4
~*You are sitting by the fire, watching the flames, your body wrapped up in the snug softness of your bedroll. Your body is weary, but your mind will not let go of the events of the day. Even the hypnotic dance of the fire does nothing to soothe you. Then you hear the soft pad of footsteps near you and you look up to see Maethor, barefoot and dressed in his black shirt and breeches, looking down at you.~
==TIMaethJ~May I ask you a personal question, <CHARNAME>?~ DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1)~
END
+ ~RACE(Player1, ELF)~ + ~Certainly.~ + A30.1
+ ~RACE(Player1, ELF)~ + ~That depends. I'm not really in the mood for a philosophical discussion right now.~ + A30.2
+ ~RACE(Player1, ELF)~ + ~No.~ + A30.3
+ ~!RACE(Player1, ELF)~ + ~Certainly.~ + A30.1.1
+ ~!RACE(Player1, ELF)~ + ~That depends. I'm not really in the mood for a philosophical discussion right now.~ + A30.1.2.1
+ ~!RACE(Player1, ELF)~ + ~No.~ + A30.1.3.1

CHAIN
IF ~~ THEN TIMaethJ A30FO
~*Maethor hands you a small bag and smiles.* Try the strawberries. They're delicious.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN TIMaethJ A31FO
~*Maethor nods.* Just thought I'd ask before I finished them.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN TIMaethJ A30.1
~Well, we've been travelling together for a little while now and some things you do are a bit puzzling to me.~
END
IF ~~ THEN + A30.1_01

CHAIN
IF ~~ THEN TIMaethJ A30.2
~*Maethor shrugs, choosing to ignore the barb.* I don't always think about philosophy, <CHARNAME>. Some things you do are a little puzzling to me.~
END
IF ~~ THEN + A30.1_01

CHAIN
IF ~~ THEN TIMaethJ A30.3
~There's no need to get defensive, <CHARNAME>. Some things you do are just a little puzzling to me.~
END
IF ~~ THEN + A30.1_01

CHAIN
IF ~~ THEN TIMaethJ A30.1_01
~*Maethor squats down next to you.* I just wondered why you choose to sleep every night.~
END
++ ~What else would I do? Stay awake?~ + A30.1A
++ ~Is this some kind of strange philosophical question?~ + A30.1B
++ ~Perhaps because I don't have you as a hauthwaid...a bed-partner?~ + A30.1C

CHAIN
IF ~~ THEN TIMaethJ A30.3B
~*Rising and dusting off his legs.* Fine, fine. Have a good night.~
DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1) RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A30.1A
~*Maethor gives you a puzzled frown. Then his forehead clears and he slaps his knee.* I am so dense sometimes! You were raised by humans!~
END
IF ~~ THEN EXTERN TIMaethJ A30.1A_01

CHAIN
IF ~~ THEN TIMaethJ A30.1B
~*Maethor raises his eyebrows.* I heard you. This isn't about philosophy... *He gives you a puzzled look. Then his forehead clears and he slaps his knee.* I am so dense sometimes! You were raised by humans! You don't know what I'm talking about, do you? Let me try again.~
END
IF ~~ THEN EXTERN TIMaethJ A30.1A_01

CHAIN
IF ~~ THEN TIMaethJ A30.1C
~*Maethor smiles thinly, still looking somewhat puzzled. Then his forehead clears and he slaps his knee.* I am so dense sometimes! No, no... I'm not talking about that, although... *He glances at you speculatively.* I'd enjoy having a bed-mate sometimes. I'm quite skilled, in fact.~
END
IF ~~ THEN DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ EXTERN TIMaethJ A30.1_01

CHAIN
IF ~~ THEN TIMaethJ A30.1A_01
~I mean, have you ever walked in memory? Reached out for the weft of our peoples' intertwined life-forces?~
END
++ ~What are you talking about, Maethor?~ + A30.4
++ ~Walked in memory?~ + A30.4
++ ~The what?~ + A30.4

CHAIN
IF ~~ THEN TIMaethJ A30.4
~Nevermind my pitiful poetics. Paladins should never attempt to be bards! I'm talking about Reverie. Every elf can knowingly relive any part of their past or join the memories of other elves or even, if you're particularly fortunate and your deity wishes to communicate with you, you can commune with the divine.~
=~It's actually more restful for your mind. Normally, your mother would've shared your dreams before you were born and directly taught you to reverie while you were still a child.~
END
++ ~So what can I do about it now? I've slept my whole life!~ + A30.4A
++ ~Maybe she had a reason not to when she was pregnant. She died when I was born.~ + A30.4B

CHAIN
IF ~~ THEN TIMaethJ A30.4A
~I can do what your mother should have done, in a way. Will you walk with me, <CHARNAME>?~
END
++ ~Okay.~ + A30.5
++ ~Um, no. This frightens me, Maethor. I mean, I may look like an elf, but that doesn't mean I am one. Maybe it's dangerous.~ + A30.6

CHAIN
IF ~~ THEN TIMaethJ A30.4B
~Perhaps. Does the idea of walking in spirit frighten you too much to try even once?~
END
++ ~No... I'm not frightened. Just cautious. I'll trust you this once...~ + A30.5
++ ~I just want to be cautious. I know almost nothing about my family. Sure, I look like an elf, but maybe I'm not. Maybe it's dangerous.~ + A30.6

CHAIN
IF ~~ THEN TIMaethJ A30.1.1
~Well, we've been travelling together for a little while now and I've been thinking I could show you something special.~
END
IF ~~ THEN + A30.1.1_01

CHAIN
IF ~~ THEN TIMaethJ A30.1.2.1
~*Maethor shrugs, choosing to ignore the barb.* I don't always think about philosophy, <CHARNAME>. I've been thinking that I might show you something...different.~
END
IF ~~ THEN + A30.1.1_01

CHAIN
IF ~~ THEN TIMaethJ A30.1.3.1
~There's no need to get defensive, <CHARNAME>.~
END
IF ~~ THEN + A30.1.1_01

CHAIN
IF ~~ THEN TIMaethJ A30.1.1_01
~*Maethor squats down next to you.* You sleep every night, as far as I've noticed. Would you like to do something else tonight?~
END
++ ~What else would I do? Stay awake?~ + A30.1.1A
++ ~Is this some strange kind of philosophical question? Didn't I just say...~+ A30.1.1B
++ ~*Grin* Well, this is sudden! I didn't think I'd get a bedroll companion tonight! What did you have in mind, Maethor?~ + A30.1.1C
++ ~Maethor, I'm not in the mood for this.~ + A30.3B

CHAIN
IF ~~ THEN TIMaethJ A30.1.1A
~No, no. Well...yes, actually, but also no. Argh! Now you've gotten me confused.~
END
IF ~~ THEN + A30.1.1A_01

CHAIN
IF ~~ THEN TIMaethJ A30.1.1B
~This isn't a philosophical question. Really.~
END
IF ~~ THEN + A30.1.1A_01

CHAIN
IF ~~ THEN TIMaethJ A30.1.1C
~*Maethor smiles thinly, giving you a puzzled look. Then his forehead clears and he slaps his knee.* I am so dense sometimes! No, no... I'm not talking about that, although... *He glances at you speculatively.* I would enjoy a bed-male sometimes. I am quite skilled, in fact.~
END
IF ~~ THEN DO ~ IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A30.1.1A_01

CHAIN
IF ~~ THEN TIMaethJ A30.1.1A_01
~I mean, have you ever wondered why elves don't have to sleep?~
END
++ ~Yes! That memory thing! What ever you call it....~ + A30.1.2
++ ~I suppose. I hadn't really thought about it, actually.~ + A30.1.3
++ ~You mean reverie?~ + A30.1.2
+ ~InParty("Kivan")~ + ~No. From what I can tell from Kivan's reverie, it doesn't seem pleasant.~ + A30.1.5
++ ~Not really. I'm too tired for this, Maethor.~ + A30.1.6

CHAIN
IF ~~ THEN TIMaethJ A30.1.2
~Reverie is the other way elves rest. We can always sleep...Elven children need to sleep a great deal to encourage the growh of their bodies...But once we reach physical adulthood, we can sleep or not sleep as we choose.~
=~Every elf can knowingly relive any part of their past or join the memories of other elves or even, if one is particularly fortunate and one's deity wishes to communicate, one can commune with the divine. It's actually more restful for the mind.~
END
+ ~Global("TIMaethPCnotelf","LOCALS",0)~ + ~But I'm not an elf. I'm a <PRO_RACE>.~ + A30.1.3
+ ~Global("TIMaethPCnogods","LOCALS",0)~ + ~Um...I don't think I'd want to pester the gods, thank you.~ + A30.1.4
+ ~Global("TIMaethorMind","LOCALS",0)~ + ~Could I see your memories, Maethor?~ + A30.1.5
+ ~Global("TIMaethPro","LOCALS",0)~ + ~Have you ever done this before?~ + A30.1.6
+ ~Global("TIMaethRom","LOCALS",0)~ + ~Seems kind of romantic to me.~ + A30.1.5R
+ ~Global("TIMaethPCunwise","LOCALS",0)~ + ~This seems unwise. Possibly dangerous.~ + A30.1.7

CHAIN
IF ~~ THEN TIMaethJ A30.1.2A
~Do you have any other concerns?~
END
+ ~Global("TIMaethPCnotelf","LOCALS",0)~ + ~But I'm not an elf. I'm a <PRO_RACE>.~ + A30.1.3
+ ~Global("TIMaethPCnogods","LOCALS",0)~ + ~Um...I don't think I'd want to pester the gods, thank you.~ + A30.1.4
+ ~Global("TIMaethorMind","LOCALS",0)~ + ~Could I see your memories, Maethor?~ + A30.1.5
+ ~Global("TIMaethPro","LOCALS",0)~ + ~Have you ever done this before?~ + A30.1.6
+ ~Global("TIMaethRom","LOCALS",0)~ + ~Seems kind of romantic to me.~ + A30.1.5R
+ ~Global("TIMaethPCunwise","LOCALS",0)~ + ~This seems unwise. Possibly dangerous.~ + A30.1.7
++ ~No, not really...~ + A30.1.8

CHAIN
IF ~~ THEN TIMaethJ A30.1.3
~*Maethor grins, his pointed teeth making him look a little devious.* Ah, but you have me! If I guide you, you can walk with me in the spirit. It doesn't matter if you're an elf or not.~
END
IF ~~ THEN DO ~SetGlobal("TIMaethPCnotelf","LOCALS",1)~ + A30.1.2A

CHAIN
IF ~~ THEN TIMaethJ A30.1.4
~*Maethor laughs, showing all of his sharp teeth. For a moment, his eyes flash red and he looks devious.* Oh no, <CHARNAME>. I promise you we won't pester any gods. I was referring to those times that my Lord Corellon came to me. They'll only appear if they wish to see you...~
END
IF ~~ THEN DO ~SetGlobal("TIMaethPCnogods","LOCALS",1)~ + A30.1.2A

CHAIN
IF ~~ THEN TIMaethJ A30.1.5
~*Maethor looks at your solemnly and shurgs.* Reverie is about memories. Apparently, Kivan has had some...err...rough times. It is true that we can't always control what memories emerge in reverie, but I suspect that Kivan is deliberately remembering painful times for whatever personal reasons.~
=~In our case, I'd guide you to explore some place you've been before and that you'd love to see again. Someplace that you'd be willing to share with me. At least for a first time.~
END
IF ~~ THEN DO ~SetGlobal("TIMaethorMind","LOCALS",1)~ + A30.1.2A

CHAIN
IF ~~ THEN TIMaethJ A30.1.6
~Actually, yes. I have. But not very often. Anyway, no one has ever been hurt by it.~
END
IF ~~ THEN DO ~SetGlobal("TIMaethPro","LOCALS",1)~ + A30.1.2A

CHAIN
IF ~~ THEN TIMaethJ A30.1.5R
~*Maethor blushes.* I'm not surprised. You most often hear of reverie shared by lovers because elves consider sharing memory to be a bit...uh...intimate.. *His cheeks flush even redder.* But this isn't a proposition, of course. Close friends and family members often share experiences, too.~
END
IF ~~ THEN DO ~ IncrementGlobal("TIMaethLove","GLOBAL",1) SetGlobal("TIMaethRom","LOCALS",1)~ + A30.1.2A

CHAIN
IF ~~ THEN TIMaethJ A30.1.7
~I won't be offended if you say 'no.' It's a bit like holding hands. You may not want to. And that's fine. I like you, <CHARNAME>. I don't want to force any experience on you.~
END
IF ~~ THEN DO ~SetGlobal("TIMaethPCunwise","LOCALS",1)~ + A30.1.2A

CHAIN
IF ~~ THEN TIMaethJ A30.1.8
~I understand caution. If you are willing, I will guide you. We won't do anything more than look at pleasant memories. Are you willing?~
END
++ ~Alright.~ + A30.5
++ ~Sorry. No. I just can't.~ + A30.3B

CHAIN
IF ~~ THEN TIMaethJ A30.6
~I understand caution. But know this: I'm of mixed blood and walking in spirit has never harmed me. If you are willing, I will guide you once. We won't do anything more than look at pleasant memories.~
END
++ ~Alright.~ + A30.5
++ ~Sorry. No. I just can't.~ + A30.3B

CHAIN
IF ~~ THEN TIMaethJ A30.5
~*You rise with Maethor and walk out from the campsite into the darkness beyond. As your eyes quickly adjust, you see that Maethor is taking you far enough away from the camp to ensure your privacy. You feel a vague sense of butterflies in your stomach and you wonder what the little paladin has in mind.*~
==TIMaethJ~This should be good. *Maethor settles in a patch of grass and indicates for you to join him. As you sit, he takes your hands in his small ones and smiles at you. His callused palms feel a little moist.* I'm a bit nervous myself, <CHARNAME>. Now close your eyes. In the darkness before your vision, there will be a mist. I want you to imagine reaching out to touch it with your fingers.~
END
++ ~You nod, waiting for him to continue.~ + A30.5A

CHAIN
IF ~~ THEN TIMaethJ A30.5A
~Now see yourself reaching through. The mist coils around you, becoming grey. Walk through it. Now it's becoming white. There is a dim figure in front of you now, shrouded in the white mist. Can you see who it is?~
END
++ ~Someone I know...~ + A30.51
++ ~Um, give me a second...~ + A30.51
++ ~Maybe...ummm...I don't... You?~ + A30.5B

CHAIN
IF ~~ THEN TIMaethJ A30.51
~Be patient. Use my voice as a guide to look through the mist. *The figure before you is small, male, and dressed in black. The last of the mist fades and you recognize Maethor standing before you.*~
END
++ ~It's you.~ + A30.5B

CHAIN
IF ~~ THEN TIMaethJ A30.5B
~Very good. I'm showing you something in the palm of my hand. What is it? No! Don't open your eyes. Look with your inner eyes. *Maethor's hand is outstretched, his palm facing up. he is holding something. You struggle to clear the mist from her and see what he wants you to see. It is small and it glitters...*~
END
++ ~Something small and round. A ring?~ + A30.5C
++ ~I can't quite tell...~ + A30.51C
++ ~Some kind of gem or piece of jewelry...~ + A30.51C

CHAIN
IF ~~ THEN TIMaethJ A30.51C
~Don't let your mind waver. *The sparkling, glittering thing becomes more clear as you look. It is a tiny ring on a decorative chain. It looks too small to fit on any of Maethor's fingers.*~
END
++ ~A ring! You're holding a ring!~ + A30.5C

CHAIN
IF ~~ THEN TIMaethJ A30.5C
~*Maethor closes his fingers over the ring, smiling at you.* You're ready. If you could show me anywhere you've been, where would we go?~
END
++ ~You consider it, wondering what place has meaning for you. Then you smile. The library. You know the carrels and the study rooms and the rows and rows of bookshelves as intimately as a lover.~ + A30.6.1
++ ~You think about the many restrictions of your childhood. The only place that you truly loved--the only place where you were allowed to run--was the Candlekeep coastline. You smile, recalling the smell of the salt water and the calling of seagulls.~ + A30.7.1
++ ~Your attraction to arms and armaments made the Candlekeep guards' practice room your second home. You think back, remembering the squeaking of the polished pine floorboards under your feet, the smell of the sawdust in the practice dummies, and the feel of your sweat beading on your forehead.~ + A30.8.1

CHAIN
IF ~~ THEN TIMaethJ A30.6.1
~*Maethor nods slowly, even though you have not spoken. Taking your hand, he reaches into the rapidly thinning mist and, suddenly, you stand amongst the halls of Candlekeep Library. The smell of old paper and paste, mildew and cardboard hangs heavily in the air.*~
END
++ ~You breathe deeply, drawing in the familiar scent. I'm home! I'm home!~ + A30.9

CHAIN
IF ~~ THEN TIMaethJ A30.7.1
~*Maethor nods slowly, even though you have not spoken. Taking your hand, he reaches into the rapidly thinning mist and, suddenly, you stand on the rocky beach of Candlekeep. You recognize the northern coastline with pleasure. You had many happy times here. The waves crash against the rocks, sending a spume of salty mist into the air.*~
END
++ ~*You breathe deeply, drawing in the familiar scent.* I'm home! I'm home!~ + A30.9

CHAIN
IF ~~ THEN TIMaethJ A30.8.1
~*Maethor nods slowly, even though you have not spoken. Taking your hand, he reaches into the rapidly thinning mist and, suddenly, you are in the basement practice room commonly used by the guards of Candlekeep. You can see the racks of weapons and armor along the far wall and remember the illusionary magic that brought your practice fights to life. The smell of varnish and paint are welcome reminders of your childhood happiness.*~
END
++ ~*You breathe deeply, drawing in the familiar scent.* I'm home! I'm home!~ + A30.9

CHAIN
IF ~~ THEN TIMaethJ A30.9
~*Maethor smiles.* Show it to me, <CHARNAME>. Show me everything you remember.~ DO ~RestParty()~ EXIT

//(MaethTalk #5) Maethor's Poetry (Outdoor, Day, post-rest, With Belt)

CHAIN
IF ~Global("TIMaethTalks","GLOBAL",10) !Global("TIMaethRomanceActive","GLOBAL",1) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT5FO
~*It is early morning and you are comfortably seated by the coals of last night's fire, poking life back into them with a stick and bits of kindling. You feel surprisingly good, considering that the sun is only beginning to lighten the darkness of the sky above.~
=~You listen to the birds chirping as you sprinkle a mixture of herbs into the strainer assembly inside your teapot. The kettle, resting in the coals, is not quite warm enough to sing, but soon will be and you're in the mood for a strong cup of tea. Nearby, Maethor is sitting in his bedroll and is reading a small book by the faint glow of the coals.*~
== TIMaethJ~How do you feel this morning, <CHARNAME>? *Although he doesn't look up from her book, Maethor's voice is unusually bright and cheery.*~
DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~
END
++ ~I feel good. I guess I must have finally gotten enough rest last night.~ + A40AFO
++ ~I'm upright and breathing. I don't ask more out of life these days~ + A40DFO

CHAIN
IF ~Global("TIMaethTalks","GLOBAL",10) Global("TIMaethRomanceActive","GLOBAL",1) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT5
~*It is early morning and you are comfortably seated by the coals of last night's fire, poking life back into them with a stick and bits of kindling. You feel surprisingly good, considering that the sun is only beginning to lighten the darkness of the sky above.~
=~You listen to the birds chirping as you sprinkle a mixture of herbs into the strainer assembly inside your teapot. The kettle, resting in the coals, is not quite warm enough to sing, but soon will be and you're in the mood for a strong cup of tea. Nearby, Maethor is sitting in his bedroll and is reading a small book by the faint glow of the coals.*~
== TIMaethJ~How do you feel this morning, <CHARNAME>? *Although he doesn't look up from her book, Maethor's voice is unusually bright and cheery.*~
DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~
END
++ ~I feel good. I guess I must have finally gotten enough rest last night.~ + A40A
++ ~I'm upright and breathing. I don't ask more out of life these days~ + A40D
++ ~What's that you're reading, Maethor?~ + A40B
+ ~RACE(Player1, HUMAN)~ + ~How can you possibly read that?~ + A40C

CHAIN
IF ~~ THEN TIMaethJ A40AFO
~Ummm...That's good.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN TIMaethJ A40DFO
~Excellent! I did, too. Perhaps today will be a productive one.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN TIMaethJ A40A
~Ummm...That's good.~
END
IF ~~ THEN + A40_01

CHAIN
IF ~~ THEN TIMaethJ A40D
~Excellent! I did, too. Perhaps today will be a productive one.~
END
IF ~~ THEN + A40_01

CHAIN
IF ~~ THEN TIMaethJ A40_01
~It's rare for me to have had such a peaceful night. Usually, I'm on last watch.~
END
++ ~What's that you're reading, Maethor?.~ + A40B
++ ~*Return to your cooking. You add the water from the now-whistling kettle into the teapot.*~ + A41A
+ ~RACE(Player1, HUMAN)~ + ~How can you possibly read that?~ + A40C

CHAIN
IF ~~ THEN TIMaethJ A40B
~*Maethor looks up, his eyes glowing red in the dimness. He smiles faintly.* Poetry. Want to have a look?~
END
+ ~RACE(Player1, HUMAN)~ + ~Ummm... I can't make out the words. How are you reading that?~ + A41C
++ ~I would, but I'm in the middle of making breakfast. How about you read it to me?~ + A41B
++ ~No, thanks. I don't much like poetry.~ + A40.1B

CHAIN
IF ~~ THEN TIMaethJ A40.1B
~Are you sure? I really like this one.~
END
++ ~Well, okay.~ + A41B
++ ~Maybe later...~ DO ~SetGlobal("TIMaethLT5Delay","GLOBAL",1) IncrementGlobal("TIMaethPutOff","GLOBAL",1)~ EXIT
++ ~Yes, I'm sure. I've never heard a poem I liked. Ever.~ + A40.2B

CHAIN
IF ~~ THEN TIMaethJ A40.2B
~Okay. I'm just going to keep on reading. I'll have some of that tea, though, if you don't mind.~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A40C //human
~*Maethor looks up, his eyes glowing red in the dimness.* Darkvision. Most non-human races can see fairly well in low-light.~
END
++ ~You probably shouldn't read in the dark. You might hurt your eyes.~ + A42A
++ ~Oh. What are you reading?~ + A40.1C

CHAIN
IF ~~ THEN TIMaethJ A40.1C
~Poetry. Want to have a look?~
END
+ ~RACE(Player1, HUMAN)~ + ~Ummm... I can't make out the words.~ + A41A
++ ~I would, but I'm in the middle of making breakfast. How about you read it to me?~ + A41B
++ ~No, thanks. I don't much like poetry.~ + A40.1B

CHAIN
IF ~~ THEN TIMaethJ A41C //human
~Darkvision. Most non-human races can see fairly well in low-light.~
END
++ ~You probably shouldn't read in the dark. You might hurt your eyes.~ + A42A
++ ~Oh.~ + A41A

CHAIN
IF ~~ THEN TIMaethJ A42A
~*Maethor shrugs.* I'll just have to risk getting a headache. I'm in the mood for good poetry.~
END
++ ~Would you mind reading it to me while I fix the tea?~ + A41B
++ ~Good for you!~ + A41A
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Hmmm... Then maybe I do like poetry. Come over here next to me and tell me about it.~ + A42C

CHAIN
IF ~~ THEN TIMaethJ A42C
~*With a smile, Maethor gets up out of his bedroll and sits next to you at the fire. For a moment, it seems as if he might put an arm around your shoulders, but he stretches instead and merely leans against you.* I take it you;re in the mood, too?~
END
IF ~~ THEN DO ~ IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A41B


CHAIN
IF ~~ THEN TIMaethJ A41A
~Ummm. Would you like me to read it to you?~
END
++ ~Sure.~ + A41B
++ ~Nope. I don't much like poetry.~ + A40.1B
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~I'd love to hear it.~ + A41B
++ ~Hey! It doesn't even rhyme! How can it be a poem if it doesn't rhyme?!~ + A43E

CHAIN
IF ~~ THEN TIMaethJ A41B
~'Tarsakh is in my mistress' face,... And Flamerule in her eyes hath place;... Within her bosom is Eleint,... But in her heart a cold Nightal.' *Gushing.* Isn't that lovely!?~
END
++ ~Um...Okay.~ + A43A
++ ~I told you that I don't much like poetry.~ + A43B
++ ~It is nice. But what does it mean?~ + A43C
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Not as lovely as you are.~ + A43D

CHAIN
IF ~~ THEN TIMaethJ A43D
~Well, aren't you being sweet! But do you know what it means?~ DO ~ IncrementGlobal("TIMaethLove","GLOBAL",1)~
END
++ ~Enlighten me.~ + A43C

CHAIN
IF ~~ THEN TIMaethJ A43A
~*In the silence that follows, Maethor seems to be expecting more of a response.* You don't get it, do you?~
END
++ ~No. Care to explain it?~ + A43C
++ ~That's the reason I don't like poetry. It's obscure to everyone except the author!~ + A43B
++ ~I really prefer that poetry at least rhyme, Maethor. Otherwise, how do we know it's poetry?~ + A43E

CHAIN
IF ~~ THEN TIMaethJ A44B
~Well, not really. The idea of poetry is to make comparisons between two or more things that are very different to give the reader or listener a new way of looking at something familiar.~
END
++ ~I take it that this poem is an example of that?~ + A43C
++ ~You know, I really prefer writers to simply say what they mean and mean what they say. I don't really want to waste my time figuring out what someone means.~ + A45B
++ ~But it didn't even rhyme! How do we know it's poetry!?~ + A43E

CHAIN
IF ~~ THEN TIMaethJ A45B
~*Maethor shrugs.* I suppose that's one way of looking at it. Do you want me to explain this one for you, though? Just so that you know?~
END
++ ~Why not? As they say in Waterdeep: 'in for a nib, in for a sun.'~ + A43C
++ ~If it makes you happy, Maethor. *Yawn.*~ + A46B
++ ~No. I just noticed I'm out of salt. I'm going to have to ask around the party...See if anyone has some. (And get out while I can...)~ + A40.2B

CHAIN
IF ~~ THEN TIMaethJ A43B
~Do you not like poetry because it doesn't make sense or because the story doesn't appeal to you?~
END
++ ~It doesn't make sense.~ + A43C
++ ~The stories are always the same. Either someone's in love or someone is dead. Sometimes someone's in love with someone who's dead. *Yawn.*~ + A45.1B
++ ~Both!~ + A43F

CHAIN
IF ~~ THEN TIMaethJ A43F
~Well, it is possible to find poems that have stories that don't have either love or dead people in them.~
END
++ ~Well, okay.~ + A43C
++ ~If you say so.~ + A43C


CHAIN
IF ~~ THEN TIMaethJ A45.1B
~Yesssss... those are the hallmarks of bad poetry... But this poem isn't quite that bad. In fact, I rather like it.~
END
IF ~~ THEN EXTERN TIMaethJ A43C

CHAIN
IF ~~ THEN TIMaethJ A46B
~*Drily.* Don't get so excited on my account, <CHARNAME>.~ DO ~ IncrementGlobal("TIMaethOffend","GLOBAL",1)~
END
IF ~~ THEN EXTERN TIMaethJ A43C

CHAIN
IF ~~ THEN TIMaethJ A43C
~This poem is a comparison of the months of the year with the speaker's lover. You know how when artists draw depictions of each month, they show a range of people from a baby (Hammer) to a very old man (Nightal)? Well, the speaker is doing that here. He says his mistress's face is very young and pretty like how artists depict the Claw of Storms. But there's also the suggestion that, like that month, she acts very passionate and stormy.~
END
++ ~Okay.~ + A47A
++ ~And you're sure that that's what it means?~ + A47B
++ ~I think I've had enough.~ + A40.2B

CHAIN
IF ~~ THEN TIMaethJ A47A
~Most poets tend to use stereotypes as a part of their comparisons. That's probably another reason a lot of people don't like poetry is because the comparisons that some poets don't have the imagination to create unique comparisons.~
==%GARRICK_JOINED% IF ~InParty("Garrick") See("Garrick")!StateCheck("Garrick",CD_STATE_NOTVALID)~ THEN ~Hey, I heard that!!~
==TIMaethJ~Next, the poet compares the lady's eyes to Flamerule. They make her seem older...Not a girl. A grown woman. And hot, like the month of midsummer.~
END
++ ~That seems a reasonable interpretation.~ + A49A
++ ~Hot? Like...sweaty?~ + A48B

CHAIN
IF ~~ THEN TIMaethJ A48B
~*Blushes furiously.* No, no. Hot as in...um...sexually appealing.~
END
++ ~*Grinning.*I think I like 'sweaty' better...~ + A48.1B
++ ~Oh. Okay.~ + A49A

CHAIN
IF ~~ THEN TIMaethJ A48.1B
~Ummm... To each his own, I guess.~
END
IF ~~ THEN EXTERN TIMaethJ A49A

CHAIN
IF ~~ THEN TIMaethJ A47B
~Most poets tend to use stereotypes as a part of their comparisons. That's probably another reason a lot of people don't like poetry is because the comparisons that some poets don't have the imagination to create unique comparisons. So, yes, I'm pretty sure that's what that means.~
==%GARRICK_JOINED% IF ~InParty("Garrick") See("Garrick")!StateCheck("Garrick",CD_STATE_NOTVALID)~ THEN ~Hey, I heard that!!~
== TIMaethJ~Next, the poet compares the lady's eyes to Flamerule. They make her seem older...Not a girl. A grown woman. And hot, like the month of midsummer.~
END
++ ~That seems a reasonable interpretation.~ + A49A
++ ~Hot? Like...sweaty?~ + A48B

CHAIN
IF ~~ THEN TIMaethJ A49A
~Then, the poet is comparing the lady's body to that of Eleint...an older, mature woman. There probably is a sexual connotation to the month of late summer/early fall. An older woman might be more inclined to pleasure than a younger woman, who has to fear getting pregnant.~
==%CORAN_JOINED% IF ~InParty("Coran") See("Coran")!StateCheck("Coran",CD_STATE_NOTVALID)~ THEN ~There is that about older women. As the saying goes, 'she doesn't tell, she doesn't swell, and she's grateful as hells...'~
== TIMaethJ~Finally, the lady's heart--what she feels about the poet--is like Nightul; cold, icy, and cruel as a bitter wind in winter. To be honest, I like the poem because it describes my mother so well. Beautiful in many ways, but cold-hearted.~
END
++ ~Very interesting. Thank you for explaining it to me. It makes a lot more sense now.~ + A49.1A
++ ~Ugh. I guess it makes sense, but I still don't much like poetry.~ + A49.1B

CHAIN
IF ~~ THEN TIMaethJ A49.1A
~Thank you. I'm very happy that you enjoyed it, too. We'll have to talk over some other verse soon.~
END
IF ~~ THEN DO ~IncrementGlobal("TIMaethLove","LOCALS",1)~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A49.1B
~Well, at least you gave the poem a chance. I guess not everyone likes poetry. Now...How about some of that tea?~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A43E
~It doesn't rhyme because it's a literal translation of a poem in another dialect of common. But, even if it wasn't, poetry doesn't have to rhyme. I find the poem's imagery to be strong enough to hold my interest without having to use complex rhyme schemes.~
END
IF ~~ THEN + A43C

APPEND TIMaethJ

//(MaethTalk #6) A Little Elvish (With Belt)

IF ~Global("TIMaethTalks","GLOBAL",12)  HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT6
SAY ~*In the middle of a particularly dull <DAYNIGHT>'s march, you find yourself humming along to the faint sounds of melody coming from somewhere nearby. Focusing your attention, you realize that Maethor is singing under his breath. his voice is not particularly sweet--he has a thin, breathy singing voice that is a too nasal to be truly appealing--but he easily navigates the complex melody.* Gin aphennin... Nin ú-cenol...~
IF ~~ THEN  DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A50
END

IF ~~ THEN BEGIN A50
SAY ~*You call him over.*~
++ ~What's that you're singing?~ + A50A
++ ~Could you sing that later, Maethor? We need to be quiet right now...~ + A50BA
++ ~Please be quiet, Maethor. You're giving me a headache.~ + A50B
END

IF ~~ THEN BEGIN A50B
SAY ~*Maethor stops short, looking at you with surprise and acute embarrassment. You realize that, she, too, was acting without thinking.* Oh, sorry! I can see that would be irritating. Won't do it again.~
IF ~~ THEN DO ~ IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A50BA
SAY ~*Maethor stops short, looking at you with surprise. You realize that, he, too, had been acting without thinking. He pauses, considering.* Yes. I can sing it later. It's just some scattered lines that Cýr... Naneth's man... put to melody. He'd play his smallpipes or Naneth's friend Irusc would play his harp and we'd all sing. It's nothing special.~
IF ~~ THEN DO ~SetGlobal("TIMaethLT6Delay","GLOBAL",1) IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A50A
SAY ~*Maethor stops short, looking at you with surprise. You realize that, he, too, had been acting without thinking. He pauses, considering, as you call a general halt and dig out your waterskin.* It's just some scattered lines that Cýr... Naneth's man... put to melody. He'd play his smallpipes or Naneth's friend Irusc would play his harp and we'd all sing. It's nothing special.~
++ ~Ah, come on. Sing it for me. *You look for support from your teammates...*~ + A51A
++ ~What are the words?~ + A51B
++ ~Fine. Let's get back to the road, then.~ + A51C
END

IF ~~ THEN BEGIN A51C
SAY ~*Maethor clears her throat.* Ummmm... Before we do, <CHARNAME>... *She looks away.* May I ask you a personal question?~
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~What?~ + A54A
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~What?~ + A54AR
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Right now?~ + A54B
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Right now?~ + A54BR
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Please, no.~  + A54C
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Please, no.~  + A54CR
END

IF ~~ THEN BEGIN A51A
SAY ~Very well. Gin aphennin... Dan nin ú-cenol... Ci bain, i rínas lend nîn... Dan nin ú-cenol... Gin melathon an-uir... Dan nin ú-velithol.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~That's very beautiful. It's been awhile since I've heard elvish singing, though... What, exactly, do the words mean? I think I get the sense of it, but I'm rusty...~ + A52A
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~That's very beautiful. What do the words mean?~ + A52A
++ ~Is that some kind of love song?~ + A53A
END

IF ~~ THEN BEGIN A51B
SAY ~I don't remember all of the original poem. I only remember the lyrics Cýr wrote: Gin aphennin/ Dan nin ú-cenol/ Ci bain, i rínas lend nîn/ Dan nin ú-cenol/ Gin melathon an-uir/ Dan nin ú-velithol.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~Interesting. It's been awhile since I've heard elvish poetry, though... What, exactly, do the words mean? I think I get the sense of it, but I'm rusty...~ + A52A
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~It sounds interesting. What do the words mean?~ + A52A
++ ~Is that some kind of love song?~ + A53A
END

IF ~~ THEN BEGIN A52A
SAY ~The words are: 'I followed you... But you see me not... You are beautiful, my sweet memory... But you see me not... I will love you forever... But you love me not.'~
=~I've probably gotten it all wrong... Naneth and the priests of Rillifane taught me correct and proper low elven (that's the Elvish you hear most often...), but I've picked up bits of High Elvish here and there (what the people speak in Evermeet) and gutter slang from friends in the different cities I've visited, so I probably speak a mish-mash of tongues. Forgive my rotten grammar and pronounciation.~
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF)~ + ~I'm hardly any better than you, Maethor. I'm rusty, too. It's just lack of practice and not enough time spent poring over the old stories and legends. Is there a story behind the words?~ + A53A
+ ~OR(3) RACE(Player1,DWARF) RACE(Player1,HALFLING) RACE(Player1,GNOME)~ + ~I'm hardly any better than you with my own tongue, Maethor. It's just lack of practice and not enough time spent poring over the old stories and legends. We should swap stories and songs. Is there a story behind the words?~ + A53A
+ ~OR(2) RACE(Player1,HALFORC) RACE(Player1,TIEFLING)~ + ~I'm hardly any better than you with my own tongue, Maethor. It's just lack of practice. Nobody wants to hear the old legends and stories of my people. Is there a story behind the words?~ + A53A
+ ~RACE(Player1,HUMAN)~ + ~Well, everyone who speaks common has access to my peoples' legends. I'm jealous that you have your own language and songs. Is there a story behind the words?~ + A53A
++ ~You're forgiven. Do you play any musical instruments? I'd like the hear some of the tunes as you must have heard them.~ + A53B
END

IF ~~ THEN BEGIN A53A
SAY ~I think it was a love lament at one time, but all I can remember is that little bit. It's part of the refrain. The story is that a lady has died and the man who wished to be her lover is seated at her bedside and mourning her. Then, in the moonlight, she...or maybe her spirit--the song isn't specific about that...rises and walks out along a riverbank.~
=~He follows her. he steps out on the rocks with the riverwater flowing swiftly around her feet. He follows. But eventually he loses sight of her in the deep mist of a waterfall and, try as he might, he never can find her again.~
++ ~Sad story, then. With a hint of the mystical in it. Thank you for the impromptu recital. You must love music.~ + A53B
++ ~Do you play any musical instruments? I'd like the hear some of the tunes as you must have heard them.~ + A53B
END

IF ~~ THEN BEGIN A53B
SAY ~*Maethor blushes and smiles.* Yes... I love music. I play smallpipes. I inherited Cýrontîr's set. They came from Evermeet and you can disassemble them into a small package. It's somewhere in my pack. *He looks away.* May I ask you a personal question?~
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~What?~ + A54A
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~What?~ + A54AR
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Right now?~ + A54B
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Right now?~ + A54BR
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Please, no.~  + A54C
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Please, no.~  + A54CR
END

IF ~~ THEN BEGIN A54B
SAY ~*Hesitantly.* I'm afraid, <CHARNAME>, that I cannot be put off about this. If my friendship is acceptable to you, I...I'd like to get to know you better and the sharing of art or music is one easy way to learn about each others' likes and dislikes.~
++ ~I'd like to get to know you, too. Forgive me for being so brusque. I was just thinking of everything we have yet to do. I suppose an extra minute or two doesn't matter. Ask away.~ + A54A
++ ~I'm sorry. I don't want to lead you astray. I'm not interested in getting to know you any better.~ + A54C
END

IF ~~ THEN BEGIN A54BR
SAY ~*Hesitantly.* I'm afraid, <CHARNAME>, that I cannot be put off about this. If my interest is acceptable to you, I...I'd like to get to know you better and the sharing of art or music is one easy way to learn about each others' likes and dislikes.~
++ ~I'd like to get to know you, too. Forgive me for being so brusque. I was just thinking of everything we have yet to do. I suppose an extra minute or two doesn't matter. Ask away.~ + A54A
++ ~I'm sorry. I don't want to lead you astray. I'm not interested in getting to know you any better.~ + A54C
END

IF ~~ THEN BEGIN A54C
SAY ~*crestfallen.* Oh. That's fine. I got carried away by the song. Forgive me.~
IF ~~ THEN DO ~SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A54CR
SAY ~*crestfallen.* Oh. That's fine. I got carried away by the song. Forgive me.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A54A
SAY ~That song is a favorite of mine. I have heard it sung and played many times over the course of my childhood. I wanted to know if it appealed to you as well.~
++ ~It's a pretty song, but I can't say I find it personally significant, no. I don't care much for music.~ + A55A
++ ~A story of lost love? Oh yes. I'm a sucker for a conflicted romance.~ + A55B
++ ~I hope I don't hurt your feelings. I actually prefer other kinds of music.~ + A55C
END

IF ~~ THEN BEGIN A54AR
SAY ~That song is a favorite of mine. I have heard it sung and played many times over the course of my childhood. I wanted to know if its message...appealed...to you.~
++ ~It's a pretty song, but I can't say I find it personally significant, no. I don't care much for music.~ + A55AR
++ ~A story of lost love? Oh yes. I'm a sucker for a conflicted romance.~ + A55BR
++ ~I hope I don't hurt your feelings. I actually prefer other kinds of music.~ + A55CR
END

IF ~~ THEN BEGIN A55A
SAY ~A pity. Perhaps we have other things in common, though. Thank you for your kindness...for listening.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A55AR
SAY ~A pity. Perhaps we have other things in common, though. Thank you for your kindness...for listening.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A55B
SAY ~I'm grateful to see, my friend, that we share musical tastes. Perhaps we might ask the bard at the next inn to learn the tune and lyrics. Or to play something similar?  I love music. We could even play music together at camp.~
IF ~~ THEN + A55B_01
END

IF ~~ THEN BEGIN A55C
SAY ~Hmmm. Perhaps we might explore those differences together, then. Let me play the pipes for you, at least. We could even play music together at camp.~
IF ~~ THEN + A55B_01
END

IF ~~ THEN BEGIN A55B_01
SAY~ I have been told I have the ear, if not the voice, of a bard.~
++ ~Sounds good to me.~ + A56C
++ ~Are you suggesting a rendezvous of a more personal type, Maethor?~ + A56A
++ ~If you're looking for someone to listen to music with you, I suppose.~ + A56B
END

IF ~~ THEN BEGIN A55BR
SAY ~I'm grateful to see, then, that we share musical tastes. Perhaps we might ask the bard at the next inn to learn the tune and lyrics. Or to play something similar?  I love music. We could even play music together at camp.~
IF ~~ THEN + A55BR_01
END

IF ~~ THEN BEGIN A55CR
SAY ~Hmmm. Perhaps we might explore those differences together, then. Let me play the pipes for you, at least. We could even play music together at camp.~
IF ~~ THEN + A55BR_01
END

IF ~~ THEN BEGIN A55BR_01
SAY~I have been told I have the ear, if not the voice, of a bard.~
++ ~Sounds good to me.~ + A56CR
++ ~Are you suggesting a rendezvous of a more personal type, Maethor?~ + A56AR
++ ~If you're looking for someone to listen to music with you, I suppose.~ + A56BR
END

IF ~~ THEN BEGIN A56A
SAY ~*Maethor looks a bit puzzled.* No... Oh! You mean... No, no! If you do not wish my friendship, then you have only to say so. I will not be offended.~
++ ~You worry too much, Maethor. I would welcome your friendship.~ + A57A
++ ~Then let me be honest. I don't really have the time or interest in making friends.~ DO ~ SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A56B
SAY ~Oh, I didn't mean a romantic connection.  Just music appreciation. We'll have to make arrangements at the next Inn!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A56C
SAY ~Great! We'll have to make arrangements at the next Inn! We can have a real music fest! *Maethor smiles.* It's been too long since I've had good friends.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A57A
SAY ~*Maethor smiles slowly, his eyes glowing slightly.* That's nice. It's been awhile since I've had friends.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A56AR
SAY ~*Maethor reddens.* Nothing inappropriate, I assure you! If you do not wish a closer association...more than a friendship...then you have only to say so. I will not be offended.~
++ ~You worry too much, Maethor. I would welcome your friendship. Or more, if you wanted...~ + A57AR
++ ~Oh, very well. Let me be honest. Romantically, you're not my type. But I would appreciate your friendship.~ DO ~ SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A56BR
SAY ~*Maethor flushes a deep red.* Oh, I'm sorry! I didn't know. Forgive me!~
++ ~You worry too much, Maethor. I welcome your friendship.~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A56CR
SAY ~*Great! We'll have to make arrangements at the next Inn! We can have a real music fest! *Maethor then looks at you, speculatively.* I've been too long alone...~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A57AR
SAY ~*Maethor smiles slowly, his eyes glowing slightly.* Yes. I want. It is a novelty to me that it might be something you want, as well.~
IF ~~ THEN DO ~ IncrementGlobal("TIMaethLove","GLOBAL",1)~ EXIT
END

// MaethTalk #7 Family shame: Courtesan (With Belt)

IF ~Global("TIMaethTalks","GLOBAL",14) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT7
SAY ~*Maethor has been quiet for some time. Finally, he looks up at you.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A60
END

IF ~~ THEN BEGIN A60
SAY ~Do you believe in tainted blood, my friend?~
++ ~Yes. I believe it is difficult to be a good person if your parents were inclined to evil actions.~ + A60A
++ ~Partly. I believe one's ancestry can partly account for the tendency to evil behavior.~ + A60B
++ ~No. I believe evil action is a result of a deprived or violent upbringing.~ + A60C
++ ~No. I think evil action tends to be the result of an individual's overall environment.~ + A60D
++ ~This is definately not the time to talk.~ + A60.1
END

IF ~~ THEN BEGIN A60.1
SAY ~*Maethor sighs.* Perhaps later? Or have you grown tired of my interest in philosophy?~
++ ~I'm not tired of it, Maethor, I'm just busy.~ + A60.2
++ ~I prefer to mull over reality. The here and now.~ + A60.2A
END

IF ~~ THEN BEGIN A60.2A
SAY ~Would it change matters any if I told you that I had personal motivation for talking about this...That it's important to me to know what you think?~
++ ~I suppose. If it's that important to you.~ + A60.3
++ ~Don't take it so hard, Maethor. It's hard to be interested in discussing theoretical evil when we fight the real kind everyday.~ DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ + A60.3A
++ ~No.~ + A60.3B
END

IF ~~ THEN BEGIN A60.3
SAY ~Ok, then. What is your opinion?~
++ ~Yes. I believe it is difficult to be a good person if your parents were inclined to evil actions.~ + A60A
++ ~Partly. I believe one's ancestry can partly account for the tendency to evil behavior.~ + A60B
++ ~No. I believe evil action is a result of a deprived or violent upbringing.~ + A60C
++ ~No. I think evil action tends to be the result of an individual's overall environment.~ + A60D
++ ~This is definately not the time to talk.~ + A60.1
END

IF ~~ THEN BEGIN A60.2
SAY ~Very well. Later, then.~
IF ~~ THEN DO ~SetGlobal("TIMaethA7Delay","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A60.3B
SAY ~Very well. I can keep my musing to myself.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A60.3A
SAY ~That's the trouble, <CHARNAME>. It isn't theoretical. It's my life. If you give me a chance, you'll understand. I'm willing to put this conversation off for awhile, but I can't let it go completely. It's too important.~
++ ~Alright, alright. You're asking if I believe in inherent evil--what you call 'tainted blood,' right?~ + A60.3
++ ~Later. I promise.~ + A60.2
++ ~Look, I probably should have spoken up before. It's not just this topic. I'm just not that interested in general. Can we get back to business now?~ DO ~ SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethFriendActive","GLOBAL",3)~ + A60.3B
END

IF ~~ THEN BEGIN A60A
SAY ~But what if you never knew your parents? You yourself are an orphan raised in kindness. Could your true parents have had an effect on the morality of a child they never touched?~
++ ~Well, consider the case of a cambion--the child of a human and a demon. I have never heard of one NOT struggling against the burden of their ancestry. I would call that blood taint.~ + A61
++ ~Even I have been affected, I think. I do not believe my true parents were scholars like Gorion. I struggled against his way of life and wished to make my own way in the world.~ + A62
END

IF ~~ THEN BEGIN A60B
SAY ~But what if you never knew your parents? You yourself are an orphan raised in kindness. Could your true parents have had an effect on the morality of a child they never touched?~
++ ~Surely a cambion--the child of a human and a demon--must constantly struggle against the burden of their ancestry. They may still end up acting appropriately because they were raised with kindness, but it is not easy.~ +61
++ ~I do not believe I am unscathed. I doubt my parents were like Gorion. Yet he did have significant influence on me. I sometimes found myself admiring Gorion and wishing to be like him. Other times I struggled against him.~ +62
END

IF ~~ THEN BEGIN A60C
SAY ~I have often tried to adopt that same viewpoint as my own, for it is the one that is the most comforting to me. But it does not always ease my fears.~
IF ~~ THEN + A61
END

IF ~~ THEN BEGIN A60D
SAY ~Thus, the the thief that grows up in poverty can blame his personal responsibility on his neighbors? I've seen too many cases where someone committed evil acts despite the privilege of their surroundings...like an overly pampered child.~
++ ~Do you doubt that living in a cesspit might make someone less likely to seek other ways of life?~ +63CE
++ ~I see your point. Certainly you have enough examples that you could state. But why bring this philosophical discussion up now?~ +61
END

IF ~~ THEN BEGIN A63CE
SAY ~No, but I cannot call stealing out of necessity as evil as stealing out of malice.~
++ ~That depends on whether you believe stealing is absolutely wrong or is relatively wrong depending on motive.~ + A63AB
++ ~Stealing is stealing. You're talking about motive, which is irrelevent.~ + A63AB
END

IF ~~ THEN BEGIN A63AB
SAY ~That's a completely different argument. One I don't know if I wish to get into. My concern is personal, since I am ultimately referring to my own situation.~
IF ~~ THEN + A61
END

IF ~~ THEN BEGIN A62
SAY ~Perhaps I am misunderstanding, but all children struggle against their parents to find their own path in life against the wishes of their kin.~
IF ~~ THEN + A61
END

IF ~~ THEN BEGIN A61
SAY ~I have mentioned before that my mother was a courtesan--hence her name, Míloneth--literally, 'affection-giver.' I have often felt that her blood in my veins might mark me somehow. I have sought the Paladin's way partly to counter my fear.~
++ ~Do you resemble your mother?~ + A61A
++ ~I was speaking more of ancestral evil bloodlines. Many women sell themselves out of necessity. That isn't evil.~ + A61B
++ ~I can't see you becoming a courtesan, Maethor.~ + A61C
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~I wouldn't mind, Maethor. There's nothing wrong with that.~ + A61D
END

IF ~~ THEN BEGIN A61A
SAY ~*Maethor nods.* Yes, but I cannot compare with my mother. She is...was...exquisitely beautiful--beyond beautiful, perhaps. At her birth, she was named Glánfael for her shining fair hair and her bright eyes. But she was openly called 'Hanaliell' by her patrons and lovers. It was whispered that she even rivalled our Queen, Ellesime, who was the daughter of Rillifane!~
=~I grew up hearing my elders express amazement at her beauty. Yet, in the same breath, they often voiced their scorn for her actions. It is perhaps a reflection of the contradictory nature of my people that they have such tolerance for the less-than-noble behavior of those they deem beautiful.~
=~Even my beloved Lord Corellon had to change the beautiful form of his betrayer--Araushnee--to that of a foul spider--Lolth--in order to ensure her eternal exile from Arvandor.~
++ ~I don't see how you might interpret your mother's behavior that way. Unconventional, perhaps, but evil?~ + A61B
++ ~But how do your mother's problems in the community apply to you?~ + A61C
END

IF ~~ THEN BEGIN A61B
SAY ~Had she been less fair, her romantic and physical tastes would have inspired disgust or fury. Not least because she refused the honest courtship of those who were noble or kind. But also because she preferred liaison after liaison. I never knew anyone else who delighted so in her ability to attract men and women only to discard them when she was done with them.~
++ ~I see.~ + A61C
++ ~It doesn't matter how pretty she was... That's still disgusting.~ + A61CC
++ ~I doubt that her lovers were blissfully unaware of what she was like. It's partly their own fault.~ + A61CCC
END

IF ~~ THEN BEGIN A61CC
SAY ~I have to agree with you on that point. Unfortunately, no one wanted my opinion.~
IF ~~ THEN + A61
END

IF ~~ THEN BEGIN A61CCC
SAY ~You would have to have known her to understand. Either that or been tempted by an actual succubus. When she talked to someone one on one, her results of her charm were pretty astounding. She could have anyone eating out of her hand if she could get them alone for a few minutes.~
IF ~~ THEN + A61
END

IF ~~ THEN BEGIN A61C
SAY ~I loved to watch her put on her clothing at evening and delighted when she would embrace me because she smelled so sweet. As a child, I was as drawn to her as anyone else. But I am afraid of what I have learned from her or of the blood she gave me. I am ashamed of the fact that I have been strongly drawn to want intimacy from someone whom I have just met, for example.~
=~If it was the home that shaped us, I might avoid being like her by living differently. Yet if I am shaped more by my blood, I see no way to change that!~
++ ~Your love for your mother and your desire for affection are both natural, Maeth. You judge yourself too harshly.~ + A61.1D
++ ~Alas. Our parents do pass on traits both well and ill. I can see that you grieve the sins of your mother but I also see that you have the strength to redeem or defy your blood. That is all any of us can do.~ + A62.1
++ ~Please stop whining over this. It's unbecoming for a paladin.~ + A62.2
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~You haven't been overly affectionate with me.~ + A63AF
END

IF ~~ THEN BEGIN A61.1D
SAY ~You don't know my history, <CHARNAME>. I do not judge myself harshly enough! Too many times I've wished I had bitten my tongue rather than spoken or had myself tied rather than act. Only my devotion to Corellon has made me persevere as his servant.~
++ ~Good. That means your faith has served you well. Your next task is to remember that you're a different person than your mother. She's gone--she can't change. But you can. Your future is still an open book.~ + A63.1OB
++ ~Since I doubt you've ever been a courtesan, I don't see the conflict.~ + A62CO
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Hells, Maethor, you sound like a virgin who has had her bottom pinched once too often by the houseboy or the greengrocer! I don't believe for one moment that you've allowed a lot of men or women to touch you. All of your angst surely would put off anyone who might consider it.~ + A62.3
END

IF ~~ THEN BEGIN A61D //Romance active response
SAY ~What do you mean?  You wouldn't mind me being a courtesan?~
++ ~I mean there's nothing wrong with being a courtesan. What's wrong with providing affection for those who want or even need it?~ + A62
++ ~I mean I wouldn't mind if you were a courtesan. I like the idea that you could be more affectionate with me.~ + A63AF
END

IF ~~ THEN BEGIN A62CO
SAY ~I find it offensive to sell intimacy. It would turn what should be the gift of one's body and spirit into a commercial service.~
++ ~You don't need to get defensive. I agree with you. But I do think you should clearly separate your mother's behavior from your own. She can no longer choose to behave differently. But you are completely in charge of your future.~ + A63.1OB
++ ~So you would be less offended if everything else was the same, but no money changed hands? Is it the compensation that makes it wrong?~ + A62A
++ ~Is this merely a way of excusing the fact that you're prudish about intimacy? Some people might not think of it as such a special gift.~ + A62B
++ ~You sound envious. How's your love life been going, lately? Not as good as your mother's?~ + A64
END

IF ~~ THEN BEGIN A63.1OB
SAY ~I wish I could accept that... Maybe someday. *Maethor reaches over and takes your hand, giving it a quick squeeze.* But you've been a patient listener. Thank you, <CHARNAME>. It's nice to know you have faith in me.~
END

IF ~~ THEN BEGIN A62.3 //Romanced response
SAY ~*Maethor glares at you.* Don't fool yourself! I've had... and have... my admirers, <CHARNAME>. Probably more than you have had!~
++ ~Name one. *You gesture to the other party members.* Any of THEM, perhaps?~ + A62.4
++ ~*Laugh aloud.* Prove it. Kiss me!~ + A63AF
END

IF ~~ THEN BEGIN A62.4
SAY ~I will not! We were talking about my mother... not our companions.~
++ ~How about talking about your mother AND our companions. I can name one or two of them she would have liked... Hells! Might even have known!~ + A64
++ ~*Laugh aloud.* At some point, Maethor, you're just going to have to take a deep breath and remind yourself that not everyone believes the way you do about rutting. The birds in the trees and the animals of the wood jump on one another more than any of us 'higher' creatures and they seem an awful lot happier, too.~ + A62B
END

IF ~~ THEN BEGIN A63AF //Romanced response
SAY ~*Maethor looks at you in silence, measuring your words.* Then...you're serious when you say you might actually wish for my affection, <CHARNAME> ?~
++ ~Nah, not really. But I was hoping it might lighten the mood.~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ + A63A
++ ~I'd be open to it.~ + A63BR
++ ~I am.~ + A63BR
END

IF ~~ THEN BEGIN A62A
SAY ~I don't think so. I didn't much like that my mother had a string of favorites, either. The last one, Cýrontîr, was viciously murdered for no other reason than he was with my mother on the road to Amn when we were attacked. Like many of her other favorites, he was captivated by the fact that one of the most beautiful of women was paying attention to him.~
=~But unlike them, Cýr was saddled with my care and couldn't accompany her to the festivities she would attend. I felt bad that he had to look after me when she would put on her travel cloak and leave for the night.~
++ ~You shouldn't have felt bad. You were just a child. And probably a sweet one, at that~ + A63B
+ ~Gender(Player1, MALE)~ + ~In a house with two women, I'm sure he was well compensated for his trouble...in one way or another.~ + A62.5
+ ~Gender(Player1, FEMALE)~ + ~In a house with two women, I'm sure he was well compensated for his trouble...in one way or another.~ + A62.5A
++ ~You have a point. Your constant angst gets on my nerves, too.~ + A62.2
+ ~Global("TIMaethRomanceActive","LOCALS",1)~ + ~I understand how he felt. Of course, he WAS getting affection in return, unlike me...~ + A63AF
END

IF ~~ THEN BEGIN A62.5
SAY ~*As your words leave your lips, Maethor recoils as if physically struck. A few seconds later, Maethor steps swiftly and surely towards you, strips his gauntlets off, and executes a beautiful left hook to your jaw. The pain cuts off your startled shout.*~
=~*Maethor looks down at you, bent double with pain.* Cýrontîr is dead, <CHARNAME>. I shared his heart-knowledge when his spirit fled this world. In the end I closed his eyes. Tybalt had to tear me away from his body. If you don't have the decency not to mock me, at least be prepared for the consequences.~
++ ~*Gasp...* Right. Let's *gasp* forget it happened.~ EXIT
++ ~*Gasp...* You're dismissed, Maethor. No one hits me and gets away with it. Count yourself lucky that I don't attack you!~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ + A62.6
++ ~*Gasp...* We all have bad memories, Maethor. You need to be less sensitive.~ + A62.6A
END

IF ~~ THEN BEGIN A62.5A
SAY ~*As your words leave your lips, Maethor recoils as if physically struck. A few seconds later, Maethor steps swiftly and surely towards you, strips his gauntlets off, and smoothly slaps your face. The pain cuts off your startled shout. Maethor looks at you, scowling.*~
=~Cýrontîr is dead, <CHARNAME>. I shared his heart-knowledge when his spirit fled this world. In the end I closed his eyes. Tybalt had to tear me away from his body. If you don't have the decency not to mock me, at least be prepared for the consequences.~
++ ~*Gasp...* Right. Let's *ow* forget it happened.~ EXIT
++ ~*Gasp...* You're dismissed, Maethor. No one hits me and gets away with it. Count yourself lucky that I don't attack you!~ + A62.6
++ ~*Gasp...* We all have bad memories, Maethor. You need to be less sensitive.~ + A62.6A
END

IF ~~ THEN BEGIN A62.6
SAY ~I'm sorry about that. Really I am. But your crudeness pushed me beyond my limit. If you ever come to your senses and realize that I was right... That you did go too far... Then come find me back in Beregost. Galu, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethJoined","GLOBAL",0) EscapeAreaMove("AR6747",450,300,1)~ EXIT
END

IF ~~ THEN BEGIN A62.6A
SAY ~*Maethor stops, grimacing.* I'm sorry about that. Really I am. Maybe I am too sensitive. Cýrontîr was a big part of my life. I sometimes get angry about what happened to him. So please don't mock my feelings.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A62B
SAY ~*Blushes* You've got me there. I suppose it does bother me in particular that some people might not think it's as much of a gift as I do.~
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Well, that's some people feel. But don't confuse their opinions with my personal one. Your affection would be a gift.~ + A63BR
++ ~Well, that's some people feel. But not everyone. When you meet the right person, they'll regard your affection as a gift.~ + A63B
++ ~Well, that's how life works. Even your most cherished opinions are still subject to others' criticism.~ + A62.1
END

IF ~~ THEN BEGIN A64
SAY ~Arggghhhhh!!! By Corellon! My mother was a profoundly unhappy woman seeking something she could not find. I may not have the most fulfilling romantic life, but I do not have her regrets, either! End Of Discussion!!~
++~Alright, alright. Don't get so defensive.~ + A64A
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Thus spake the virgin. You *need* to have your bottom pinched...~ + A63.1
END

IF ~~ THEN BEGIN A64A
SAY ~*Maethor stops, grimacing.* I'm sorry about that. Really I am. Maybe I am too sensitive. I'll think over what we've said... Thanks for listening.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A62.1
SAY ~*Maethor sighs.* Your words do have the ring of truth. I will ponder this matter in silence. Thank you for listening, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A62.2
SAY ~You sound like Tyb. 'Straighten up! Stop your whining!' *He mimics, sourly.* But your words do have the ring of truth. I will ponder this matter in silence. Thank you for listening, <CHARNAME>.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A63A
SAY ~*Maethor shakes his head, chuckling as he turns away* Indeed. I have been too grim.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A63.1
SAY ~Try it and see how quickly you lose some fingers! And I'm NOT a virgin! *Maethor tries to glare, but then starts laughing at herself.*  You're awful! You know that? How do I ever manage to take myself so seriously with you around?~
++ ~Does that mean I get a kiss?~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A63BR
++ ~You shouldn't. You'll live a lot longer and be a lot happier if you don't.~ + A63B
END

IF ~~ THEN BEGIN A63B
SAY ~*Maethor reaches over and takes your hand, giving it a quick squeeze.* You've been a patient listener. Thank you, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A63BR // Romanced response
SAY ~*Maethor stops for a moment, gazing at you solemnly with his dark eyes, then, swiftly, leans over to give you a kiss on the lips. When he pulls away, you see that he is blushing furiously.* You've been a patient listener. Thank you, <CHARNAME>. As to gaining my affection? Perhaps you'd best be sure you want it before you go further.~
IF ~~ THEN EXIT
END

END

//(TIMaethTalk #8) LoveTalk 2: First Rest at Inn (Inn, Night, Pre-Rest, With Belt)

CHAIN
IF ~Global("TIMaethTalks","GLOBAL",16) !Global("TIMaethRomanceActive","GLOBAL",1) !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT8FO
~*Sometimes, the work of a leader never comes to an end. Not even when night falls. After having made arrangements to stay overnight at the inn, you find yourself still on duty passing out room keys and placating the usual assortment of complaints from your companions.~
=~You make sure that the kitchen is prepared for a late dinner for your party and then, well after nightfall, you head up stairs to your room to get ready for the evening. Your room is located next to the tubroom, and you notice that you can easily hear the sound of water being poured. You close your door with a thump.*~
=~*You dump your belongings in the chair next to the bed and stretch out on the bed for a moment. You roll over to face the wall and scrunch your pillow tightly under your neck...You sleep somewhat fitfully, waking reluctantly to the sound of pounding on your door.*~
DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1)~
END
++ ~*Ignore the door.*~ + A70FO
++ ~*Get up and answer the door.*~ + A71FO

CHAIN
IF ~~ THEN TIMaethJ A70FO
~*Although you try to ignore the knock, it grows louder and more insistent. You climb out of bed, grumbling, and open the door. One of the innkeeper's lackeys stands before you. He gazes sullenly at you.* 'Are you with the party of mages that came in this afternoon with Albertus the Magnificent?' 'Uh, no.' *The lackey squints at the writing on a piece of paper in his hand and then nods.* 'Sorry. Wrong room.' *As he shuffles off, down the hall, Maethor emerges from the tubroom next door, fully clothed, his wet hair neatly braided.*~
== TIMaethJ~Good evening, <CHARNAME>.~
END
++ ~Good evening.~ + A71.1

CHAIN
IF ~~ THEN TIMaethJ A71FO
~*As you hurry to the door, the knocking grows louder and more insistent. You open the door. One of the innkeeper's lackeys stands before you. He gazes sullenly at you.* 'Are you with the party of mages that came in this afternoon with Albertus the Magnificent?' 'Uh, no.' *The lackey squints at the writing on a piece of paper in his hand and then nods.* 'Sorry. Wrong room.' *As he shuffles off, down the hall, Maethor emerges from the tubroom next door, fully clothed, his wet hair neatly braided.*~
==TIMaethJ~Good evening, <CHARNAME>.~
END
++ ~Good evening.~ + A71.1

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",16) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT8
~*Sometimes, the work of a leader never comes to an end. Not even when night falls. After having made arrangements to stay overnight at the inn, you find yourself still on duty passing out room keys and placating the usual assortment of complaints from your companions.~
=~You make sure that the kitchen is prepared for a late dinner for your party and then, well after nightfall, you head up stairs to your room to get ready for the evening. Your room is located next to the tubroom, and you notice that you can easily hear the sound of water being poured. You close your door with a thump.~
=~You dump your belongings in the chair next to the bed and stretch out on the bed for a moment. You roll over to face the wall, scrunch your pillow tightly under your neck,... and are disturbed by the flicker of light in your eyes from a crack in the wall... It takes your eyes a couple of seconds to adjust to the light, but the interior of the room next door becomes astonishingly clear. You can just make out Maethor standing by the tub and pouring water out of a copper kettle.*~
DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1)~
END
++ ~*Get out of bed, intending to inform Maethor of your discovery.*~ + A70.1
++ ~*Roll over in the other direction, cover the crack with a pillow, and try to sleep.*~ + A70.2
++ ~*Do nothing.*~ + A70.3

CHAIN
IF ~~ THEN TIMaethJ A70.1
~*With a groan, you force yourself to sit up and climb out of your comfortable bed. You make the quick trip to the tubroom and pound on the door.* Don't get undressed, yet, Maethor. There's a crack in the far wall. Cover that before you do anything--maybe check for others, as well.~
==TIMaethJ~Thanks, <CHARNAME>!~
END
++ ~*You return to your bed.*~ + A70.1A

CHAIN
IF ~~ THEN TIMaethJ A70.1A
~*You observe that the sliver of light next to your bed has gone dark. Whatever Maethor covered it with is solid. Gratefully, you climb into bed.~
END
++ ~*You close your eyes.*~ + A70.2

CHAIN
IF ~~ THEN TIMaethJ A70.2
~*You sleep somewhat fitfully, waking reluctantly to the sound of pounding on your door.*~ DO ~SetGlobal("MaethorNaked","GLOBAL",1)~
END
++ ~*Ignore the door.*~ + A70.9B
++ ~*Get up and answer the door.*~ + A71

CHAIN
IF ~~ THEN TIMaethJ A70.3
~*Maethor returns the kettle to the sideboard well out of view, then returns with a bucket of cold water from the sink. he apparently has been at this for awhile already. He smiles, satisfied that the tub is sufficiently full, and takes the bucket back out of sight.~
=~You wonder how wrong it might be to secretly watch a paladin disrobe. Maethor comes back into view, rubbing his arms, and proceeds to carefully unbraid his hair. It is longer than you expected, since you've never seen it loose, and it falls to the middle of his back. He rubs his neck, tiredly, and, crossing his arms, grabs the hem of his shirt, pulling it up over his head.*~ DO ~SetGlobal("MaethorNaked","GLOBAL",1)~
END
++ ~*To watch any further would be wrong. You get out of bed, intending to inform Maethor of your discovery.*~ + A70.1
++ ~*Roll over in the other direction, intending to inform the landlord later.*~ + A70.2
++ ~*Do nothing.*~ + A70.6

CHAIN
IF ~~ THEN TIMaethJ A70.6
~*Now that you can see Maethor shirtless, you are a little surprised to see how slender he is. His chest and shoulders are muscled, but lean, and his chest is still boyishly narrow. On his chest dangles a small, sparkling ring on a leather cord and around his hips is settled the belt of gender that changed Maethor so dramatically. He tugs at it, briefly, as if hoping it will loosen enough to remove, but it stubbornly stays fastened. Overall, Maethor looks younger than you would expect.~
=~He ducks his hand into the water in the tub and swishes the surface. A wide smile lightens his usually solemn face, revealing his small, pointed teeth. He takes his time unlacing his breeches, then, gracefully, shoves them down in a single, fluid movement. He kicks his slim, white legs free.~
=~He touches his ring momentarily, as if lost in thought, and then, agonizingly slowly, slides his black undershorts down his thighs and onto the floor. Maethor stands there a moment, beautiful in his nakedness, and then starts to climb into the tub.*~ DO ~SetGlobal("MaethorNaked","GLOBAL",2)~
END
++ ~*Loosen your own laces.*~ + A70.7
++ ~*Do nothing.*~ + A70.8
++ ~*Roll over and sleep, determined to forget what you've seen.*~ + A70.2

CHAIN
IF ~~ THEN TIMaethJ A70.7
~*You attend to the matter of your restrictive laces with urgency, being careful not to lose sight of the entrancing spectacle next door. As little as he is, Maethor has some difficulty climbing into the wooden tub. You catch a particularly arousing glimpse of his manhood as he maneuvers his leg over the edge. He's surprisingly well-endowed for his size and has little body hair. You gasp. To your horror, Maethor turns his head in your direction.~
=~He stands still, apparently unsure, and then returns his attention to the tub. He sinks down into the water and mostly out of sight. From that moment, you get only brief glimpses of him as he washes himself, but such moments are exquisitely enjoyable, his soapy hands running over the smooth lines of his body. You are unable to look away. Then, you hear someone banging on your door.* ~ DO ~SetGlobal("MaethorNaked","GLOBAL",3)~
END
++ ~Just a moment!~ + A70.9A
++ ~*Ignore the door.*~ + A70.9A
++ ~*Get up and answer the door.*~ + A71A

CHAIN
IF ~~ THEN TIMaethJ A70.8
~*With a start, you realize you haven't been breathing. You gasp, breathing in sharply, and, to your horror, Maethor turns his head in your direction. He stands still, apparently unsure, and then returns his attention to the tub. As little as he is, he has some difficulty climbing into the wooden tub. You catch a particularly arousing glimpse of his manhood as he maneuvers his leg over the edge. He's surprisingly well-endowed for his size and has little body hair.~
=~Then, with a splash, he sinks down into the water and mostly out of sight. From that moment, you get only brief glimpses of him as he washes himself, but such moments are exquisitely enjoyable. You are unable to look away. Then, to your consternation, you hear someone banging on your door.*~ DO ~SetGlobal("MaethorNaked","GLOBAL",3)~
END
++ ~Just a moment!~ + A70.9A
++ ~*Ignore the door.*~ + A70.9
++ ~*Get up and answer the door.*~ + A71

CHAIN
IF ~~ THEN TIMaethJ A70.9
~*Although you try to ignore the knock, it grows louder and more insistent. Regrettably, Maethor also seems to be disturbed by the noise. he hurriedly emerges from the water, grabbing a towel from off a nearby rack, and covers himself. You climb out of bed, grumbling, and open the door.~
=~One of the innkeeper's lackeys stands before you. He gazes sullenly at you.* 'Are you with the party of mages that came in this afternoon with Albertus the Magnificent?' 'Uh, no.' *The lackey squints at the writing on a piece of paper in his hand and then nods.* 'Sorry. Wrong room.' *As he shuffles off, down the hall, Maethor emerges from the tubroom next door, fully clothed, his wet hair neatly braided.*~
== TIMaethJ~Good evening, <CHARNAME>.~
END
++ ~Good evening.~ + A71.1

CHAIN
IF ~~ THEN TIMaethJ A71
~*As you hurry to the door, the knocking grows louder and more insistent. You open the door. One of the innkeeper's lackeys stands before you. He gazes sullenly at you.* 'Are you with the party of mages that came in this afternoon with Albertus the Magnificent?' 'Uh, no.' *The lackey squints at the writing on a piece of paper in his hand and then nods.* 'Sorry. Wrong room.' *As he shuffles off, down the hall, the tubroom door opens and Maethor emerges, fully clothed, his wet hair neatly braided.*~
==TIMaethJ~Good evening, <CHARNAME>.~
END
++ ~Good evening.~ + A71.1

CHAIN
IF ~~ THEN TIMaethJ A70.9A
~*Although you try to ignore the knock, it grows louder and more insistent. Regrettably, Maethor also seems to be disturbed by the noise. he hurriedly emerges from the water, grabbing a towel from off a nearby rack, and covers himself. You climb out of bed, grumbling, and open the door.~
=~One of the innkeeper's lackeys stands before you. He gazes sullenly at you.* 'Are you with the party of mages that came in this afternoon with Albertus the Magnificent?' 'Uh, no.' *The lackey squints at the writing on a piece of paper in his hand and then nods.* 'Sorry. Wrong room.' *As he shuffles off, down the hall, Maethor emerges from the tubroom next door, fully clothed, his wet hair neatly braided.*~
==TIMaethJ~Good evening, <CHARNAME>. *He looks you over, his gaze settling somewhere below the waist.* Your...uh...laces?~
END
++ ~*You pull your breeches closed and tie your laces, feeling your cheeks redden.* Uh, good evening.~ + A71.1
++ ~*You pull your breeches closed and tie your laces.* Ooops. Sorry about that. Call of nature...~ + A71.1

CHAIN
IF ~~ THEN TIMaethJ A70.9B
~*Although you try to ignore the knock, it grows louder and more insistent. You climb out of bed, grumbling, and open the door. One of the innkeeper's lackeys stands before you. He gazes sullenly at you.* 'Are you with the party of mages that came in this afternoon with Albertus the Magnificent?' 'Uh, no.' *The lackey squints at the writing on a piece of paper in his hand and then nods.* 'Sorry. Wrong room.' *As he shuffles off, down the hall, Maethor emerges from the tubroom next door, fully clothed, his wet hair neatly braided.*~
==TIMaethJ~Good evening, <CHARNAME>.~
END
++ ~Good evening.~ + A71.1

CHAIN
IF ~~ THEN TIMaethJ A71A
~*As you hurry to the door, the knocking grows louder and more insistent. You open the door. One of the innkeeper's lackeys stands before you. He gazes sullenly at you.* 'Are you with the party of mages that came in this afternoon with Albertus the Magnificent?' 'Uh, no.' *The lackey squints at the writing on a piece of paper in his hand and then nods.* 'Sorry. Wrong room.' *As he shuffles off, down the hall, Maethor emerges from the tubroom next door, fully clothed, his wet hair neatly braided.*~
==TIMaethJ~Good evening, <CHARNAME>. *He looks you over, his gaze settling somewhere below the waist.* Your...uh...laces?~
END
++ ~*You pull your breeches closed and tie your laces, feeling your cheeks redden.* Uh, good evening.~ + A71.1
++ ~*You pull your breeches closed and tie your laces.* Ooops. Sorry about that. Call of nature...~ + A71.1

CHAIN
IF ~~ THEN TIMaethJ A71.1
~I'm utterly exhausted. A good meal and a clean bed sounds so good right now. It looks like you've started early on the bed part.~
END
++ ~Not really. Just putting my gear away. I agree with the sentiment, by the way. Sounds good.~ + A71A1
++ ~You left out good companionship, I think.~ + A71B
++ ~I thought paladins preferred hard rations, cold showers, and lying on the ground! You're sounding positively self-indulgent!~ + A71C
++ ~Yes. Um, I'm even more exhausted than you must be.~ + A71D
++ ~Uh, no. It's the bar for me! Want to have a drink or two with me?~ + A71E

CHAIN
IF ~~ THEN TIMaethJ A71A1
~Which part of that sounded good?  Or did you mean all of it?~
END
++ ~I'm too tired to make distinctions like that. The bed, I guess. Have a good night, Maethor.~ + A71D
++ ~The good meal, mostly, but I'd also welcome a soft bed and maybe, if you're willing, a companion. *wink*~ + A71F

CHAIN
IF ~~ THEN TIMaethJ A71B
~That depends on what you mean by good companionship.~
END
++ ~Beer definitely. Good music if possible. I was thinking about physical closeness and whispering of sweet nothings. *chuckle* Want to join me?~ + A71F
++ ~Try not to be jealous, Maethor. It's just an expression.~ + A71G
++ ~I'll have you know I'm an excellent companion! A drink of small beer and some small talk by the fire sounds good, doesn't it?~ + A71.1A

CHAIN
IF ~~ THEN TIMaethJ A71F
~I don't think so, <CHARNAME>. Don't think that I'm not tempted..., but I don't think it's a good idea right now. I've been feeling strange ever since I took my bath. However, I hope you have a good evening. There are a lot of people still awake downstairs. As for me, I am going to reverie...Have a good night. I'll see you at breakfast.~
IF ~~ THEN DO ~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A71G
~I'm not jealous. I'm just not up to figuring out your jokes, <CHARNAME>. Not tonight. Eh! I don't feel very good. Every muscle aches. I'm going to reverie by the fire for awhile downstairs...Have a good night. I'll see you at breakfast.~
IF ~~ THEN DO ~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A71.1A
~It does sound good. I would join you, but I just don't feel very good. Every muscle aches. How about we share breakfast instead? I'll be far more companionable with some rest...Have a good night.~
IF ~~ THEN DO ~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A71C
~Only the paladins of Ilmater prefer that kind of life in my experience.  The rest of us believe in moderation.~
END
++ ~How moderate is your moderation?  Does Corellon permit, say, a moderately soft bed but no hot bath? Or is he a sybarite at heart and permits his paladins anything they wish?~ + A75
++ ~I was always a fan of moderation.  Want to eat together?~ + A71
++ ~Now that's a turnoff.  Don't talk about paladins of Ilmater! Ugh. Strip yourself bare and wander the desert. Strange.~ + A76

CHAIN
IF ~~ THEN TIMaethJ A71D
~Have a good night, <CHARNAME>.  I'll see you at breakfast.~
IF ~~ THEN DO ~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A71E
~The bar?  Not me. The least amount of drink puts me under the table. Aren't you afraid of getting drunk?~
END
++ ~Why drink if not to get drunk?~ + A72A
++ ~I have a high tolerance for alcohol.~ + A72B
++ ~I only meant one or two.  I won't get drunk.~ + A72B

CHAIN
IF ~~ THEN TIMaethJ A72A
~Now that's an interesting question. You must not have had any hangovers lately. I'll see you at breakfast tomorrow...Have a good night.~
END

CHAIN
IF ~~ THEN TIMaethJ A72B
~Well, you enjoy yourself. I'll see you at breakfast. Have a good night.~
END
++ ~I always enjoy myself, Maethor. Good night.~ DO ~RestParty()~ EXIT
++ ~You too.~ DO ~RestParty()~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A75
~Corellon is one of the more lenient gods as far as life is concerned.  My feeling was always that seeking experience was more important to him than restricting one's experiences. But, again, all things in moderation. I'm still a paladin. But I didn't mean to start a religious conversation.  Seeking experience right now means time spent in reverie.  I'll see you at breakfast. Have a good night.~
IF ~~ THEN DO ~RestParty()~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A76
~Well, it isn't strange to the paladin of Ilmater. There's reason behind what they do, even if those of us who prefer a...softer lifestyle don't agree. But I didn't mean to start a religious conversation. I need time in reverie.  I'll see you at breakfast. Have a good night.~
IF ~~ THEN DO ~RestParty()~ EXIT

// (TIMaethTalk #9) Love Talk #3 First Night at the Inn: Morning After (Inn, Day, Post-Rest, With Belt)

CHAIN
IF ~Global("TIMaethTalks","GLOBAL",18) !Global("TIMaethRomanceActive","GLOBAL",1) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT9FO
~*When you come down the stairs and into the common room, you spy Maethor seated at a far table next to the window. In front of him, he has a platter with a selection of breakfast items; cheese, fruit, fresh rolls, butter, and jam, amongst other delicacies. Your stomach grumbles loudly, so you decide that you could do a lot worse than join Maethor for a morning repast.~
=~As if sensing the flow of your thoughts, Maethor looks up from the plate of rolls he has been gorging on and turns his head in your direction. He waves briefly, a smile lighting his face, and indicates an empty chair next to him. You ease yourself into the proffered seat.~
DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~
==TIMaethJ~*Maethor lays his hand on your arm.* Good morning.~
END
++ ~Good morning to you.~ + A82FO
++ ~How was your evening?~ + A82FO

CHAIN
IF ~~ THEN TIMaethJ A82FO
~*Maethor's smile widens.* I hope you don't mind. I arranged for this breakfast so that you wouldn't have to carry all the mundane responsibilities. I was just thinking about the last time I had a bath. I'm truly sorry for being so rude to you. I was weary from our day and thought a hot bath might make me feel better.~
END
++ ~And?~ +  A83FO
++ ~How was it?~ + A83FO
++ ~Well, I still enjoyed that evening, more or less...~ + A83FO

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",18) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT9
~*When you come down the stairs and into the common room, you spy Maethor seated at a far table next to the window. In front of him, he has a platter with a selection of breakfast items; cheese, fruit, fresh rolls, butter, and jam, amongst other delicacies.~
=~Your stomach grumbles loudly, so you decide that you could do a lot worse than join Maethor for a morning repast. As if sensing the flow of your thoughts, Maethor looks up from the roll he has been nibbling and turns his head in your direction. He waves briefly, a smile lighting his face, and indicates an empty chair next to him. You ease yourself into the proffered seat.~
DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~
==TIMaethJ~*Maethor lays his hand on your arm.* Good morning.~
END
++ ~Good morning to you.~ +  A82
++ ~How was your evening?~ +  A82

CHAIN
IF ~~ THEN TIMaethJ A82
~*Maethor's smile vanishes and he reflectively takes a bite out of his roll.* I had a difficult evening, <CHARNAME>. I'm truly sorry for not spending more time with you. I was weary from our day and thought a hot bath might make me feel better.~
END
++ ~But?~ +  A83
++ ~How was it?~ + A83
++ ~I enjoyed my evening, more or less...~ + A83

CHAIN
IF ~~ THEN TIMaethJ A83FO
~*Maethor sips from a mug of tea, taking a minute to compose his thoughts before speaking.* No hot water. Soaking in cold water doesn't relieve muscle aches. But I realized this morning that I'd been grumpy and wanted to apologize. I don't want to jeopardize our friendship.~
END
++ ~Well, I appreciate that. Our friendship is important to me, too.~ + A84FO
++ ~Apology accepted. *You stuff another biscuit in your mouth.*~ + A85FO
++ ~Huh? We're friends now?~ + A86FO

CHAIN
IF ~~ THEN TIMaethJ A84FO
~*Maethor nods and returns to his own breakfast.* I'm glad. Let's have a great day today.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN TIMaethJ A88FO
~*Maethor sheepishly returns to his own breakfast.* Sorry. I'll be quiet now.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN TIMaethJ A85FO
~*Maethor looks a little disappointed.* You don't sound very happy... We are friends, aren't we?~
END
++ ~Yes. But it's also early morning. No need to worry.~ + A84FO
++ ~Maethor, you're making a lot out of nothing. Eat. We have a long day ahead of us.~ + A84FO
++ ~We work together. Have some goals in common. But I'm not interested in being friends.~ + A87FO

CHAIN
IF ~~ THEN TIMaethJ A86FO
~*Maethor frowns.* I thought we were. Am I mistaken?~
END
++ ~Maethor, you read too much into everything I say. I was just a bit surprised because I don't think about these things much. I guess we are friends.~ + A84FO
++ ~You will be if you don't stop poking at me this early in the morning. I prefer quiet friends.~ + A88FO
++ ~We work together. Have some goals in common. But I'm not interested in being friends.~ + A87FO

CHAIN
IF ~~ THEN TIMaethJ A87FO
~I guess you're right. We should maintain a professional distance and all that. *She rises and shoves her chair under the table.* We do have a lot to do today. I'd best get my packing finished.~
END
IF ~~ THEN DO ~SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A83
~*Maethor appears decidedly uncomfortable and takes a minute to compose his thoughts before speaking.* I felt a distinct lack of privacy when I was bathing. Maethor looks at you evenly as he says this, making you realize that he is actually asking a question.~
END
++ ~Don't worry, Maethor, As soon as I noticed there was a crack in the wall, I told you about it. I didn't intentionally watch you.~  +  A83.1
+ ~Global("MaethorNaked","GLOBAL",1)~ + ~I'm sorry about the crack in the wall, Maethor. Before I knew what was happening, you had taken off your shirt. But then I realized it was wrong and I told you about it. Believe me, I wouldn't take advantage of you in that way.~ +  A83.1
+ ~Global("MaethorNaked","GLOBAL",2)~ + ~*You blush.* I'm...I'm so sorry, Maethor. You have to understand... You're a beautiful man.~ +  A83.2
+ ~Global("MaethorNaked","GLOBAL",3)~ + ~*You blush and are unable to speak for a moment. The image of his soapy body pops back into your mind.* By the gods, Maethor. Forgive me. You have no idea how attractive you are. Trust me on this. The <MANWOMAN> who could turn away from...from looking at you doesn't like men.~ +  A83.3
++ ~Grab another biscuit and jam it into your mouth.~ +  A83.4

CHAIN
IF ~~ THEN TIMaethJ  A83.1
~*Maethor rests his head on his fist, but continues to gaze at you. Strangely, he doesn't seem to be angry. Rather, his dark eyes are momentarily lit with amusement.* I know. Protector of my virtue. In a way, it's funny that you would be so protective of the child of a prostitute. Thank you.~ DO ~IncrementGlobal("TIMaethLove","LOCALS",1)~
END
++ ~You're a paladin. It felt wrong.~ +  A84A
++ ~Don't say that about yourself. It doesn't matter who your mother was.~ +  A84B

CHAIN
IF ~~ THEN TIMaethJ  A84A
~I'm glad for that feeling. It means you value me enough to protect my modesty. I grew up without much privacy, for one. It was bad enough to live with Cýrontîr and Naneth in what amounted to four rooms, but to also have houseguests hanging around!~
END
IF ~~ THEN EXTERN TIMaethJ  A81

CHAIN
IF ~~ THEN TIMaethJ  A84B
~Possibly true. I still feel affected by her, though. I grew up without much privacy, for one. It was bad enough to live with Cyrontir and Naneth in what amounted to four rooms, but to also have houseguests hanging around!~
END
IF ~~ THEN EXTERN TIMaethJ  A81

CHAIN
IF ~~ THEN TIMaethJ A83.2
~You say that, but that means nothing to me. I just don't see myself that way. *Sigh.* You would understand better if you'd had much experience living with my mother. She was the beautiful one... The one who attracted stares.~
END
IF ~~ THEN EXTERN TIMaethJ A83.2_01

CHAIN
IF ~~ THEN TIMaethJ A83.3
~Look... I'm not surprised. It's happened to me often enough when I still lived with my mother. But telling me it's because I'm beautiful sounds like it's somehow my fault. Which it isn't.~
END
IF ~~ THEN EXTERN TIMaethJ A83.2_01

CHAIN
IF ~~ THEN TIMaethJ  A83.2_01
~*Maethor rests his head on his fist, but continues to gaze at you. Strangely, he doesn't seem to be angry. Rather, he seems both amused and irritated.* Anyway, when you and I met in the hallway, I could tell you'd seen rather a lot of me. *He looks away.*~
END
++ ~I really am sorry. What do you want to do?~ +  A84C
++ ~Can we...um...just forget this happened?~ +  A84D
++ ~*shrug.* As I said before; you're very attractive. In a way, it's surprising that this hasn't happened before. On the road, the whole party is constantly stumbling over each other. *grimace.* You don't want to know who I've already seen naked... Ugh.~ +  A84E

CHAIN
IF ~~ THEN TIMaethJ  A83.4
~*Maethor picks up an apple and, rubbing it briskly on his shirt, takes a bite.* I don't blame you for not wanting to answer. I know I wouldn't want to say anything. *He chews, considering what to say further.*~
=~But I know you must have seen something. When we met in the hallway, it was clear to me that you were embarrassed to run into me. You aren't very good at hiding your feelings. *He looks away.* But I can't let go of whatever happened last night. Be honest with me.~
END
++ ~Honestly. Nothing happened. I let you know about the crack in the wall as soon as I saw it. I wouldn't take advantage of you like that.~ +  A83.1
+ ~Global("MaethorNaked","GLOBAL",1)~ + ~I'm sorry about the crack in the wall, Maethor. Before I knew what was happening, you had taken off your shirt. But then I realized it was wrong and I told you about the crack. Believe me, I wouldn't take advantage of you in that way.~ +  A83.1
+ ~Global("MaethorNaked","GLOBAL",2)~ + ~*You blush.* I'm...I'm so sorry, Maethor. You have to understand... You're a beautiful man.~ +  A83.2
+ ~Global("MaethorNaked","GLOBAL",3)~ + ~*You blush and are unable to speak for a moment. The image of his soapy body pops back into your mind.* By the gods, Maethor. Forgive me. You have no idea how good you look naked. Trust me on this. The <MANWOMAN> who could turn away from...from looking at you doesn't like men.~ +  A83.3
++ ~*shrug.* You're very attractive. In a way, it's surprising that this hasn't happened before. On the road, the whole party is constantly stumbling over each other. *grimace.* You don't want to know whom I've already seen naked... Ugh.~ +  A84E

CHAIN
IF ~~ THEN TIMaethJ  A84C
~I don't plan on leaving the group over this, if that's what you mean, <CHARNAME>. I'm actually not even offended, although I should remind you that it's particularly sinful to watch a paladin undress while thinking lustful thoughts. *Laughs.*~
=~Vandia's tears! I'm ashamed to say that I'm not even embarrassed. As the child of a prostitute, I became accustomed to a lack of privacy. My mother routinely left me with one of her lovers...Cýrontîr...and he oversaw my care throughout my childhood--diapers, bathtime, dressing and undressing...And then, of course, my mother always had other friends staying over.~
END
++ ~Well, Maethor, you've given me yet another reason to not follow a deity that cares. If I have a choice between seeing you naked and gaining the approval of a stick-up-the-ass divine like Helm, I'd choose seeing you naked every time.~ +  A85A
++ ~Ashamed? Whatever for? Just because you aren't embarrassed when you discover that a <MANWOMAN>'s attracted to you? I've done worse than that without even thinking.~ +  A85B
++ ~*You roll your eyes, reaching for the cheese.* I seem to recall having already apologized. Can we not turn this into another angst-driven, self-hate session?~ +  A85C

CHAIN
IF ~~ THEN TIMaethJ  A85A
~Strange. I don't know whether I should be happy or annoyed that you've said that. *Shrugs.* In any case, My Lord Corellon is not, as you would say, a 'stick-up-the-ass' type. Lacking any formal code of law, I doubt he much cares if you've seen me naked, either.~
=~You know, when I was a child, my mother routinely left me with Cýrontîr, one of his lovers, and he oversaw my care throughout my childhood--diapers, bathtime, dressing and undressing...Everything a mother would normally do. And then, of course, my mother always had other friends staying over. Your behavior, really, is no different. I shouldn't harass you about it. Let's just finish breakfast and leave this place.~ EXIT

CHAIN
IF ~~ THEN TIMaethJ  A85B
~I'm not ashamed because you're attracted to me... I'm ashamed because I have grown to expect a lack of modesty. My mother routinely left me with Cýrontîr, one of his lovers, and he oversaw my care throughout my childhood--diapers, bathtime, dressing and undressing...Everything a mother would normally do. And then, of course, my mother always had other friends staying over. Your behavior, really, is no different. Let's just finish breakfast and leave this place.~EXIT

CHAIN
IF ~~ THEN TIMaethJ A85C
~Certainly, <CHARNAME>. It's not a good topic over breakfast, is it? Should I keep my mouth shut in the future to avoid subjecting you to my angst-driven, self-hate sessions?~ DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~
END
++ ~No, of course not, Don't be so damned sensitive!~ + A84D
++ ~Yes, please! I'm tired of walking on eggshells all of the time.~ + A85QU

CHAIN
IF ~~ THEN TIMaethJ A85QU
~*Maethor scowls, then rises and leaves the room.*~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT

CHAIN
IF ~~ THEN TIMaethJ  A84D
~You can relax, <CHARNAME>. I'm not offended. Vandia's tears! I'm ashamed to say that I'm not even embarrassed. I am, after all, the child of a prostitute. I am sadly accustomed to a lack of privacy. My mother routinely left me with Cýrontîr, one of his lovers, and he oversaw my care throughout my childhood--diapers, bathtime, dressing and undressing...Everything a mother would normally do. And then, of course, my mother always had other friends staying over.~
END
++ ~Friends? Your mother didn't...um...bring work home?~ +  A81
++ ~Gods, Maethor! You actually saw her customers?~ +  A81

CHAIN
IF ~~ THEN TIMaethJ  A84E
~*Sighs.* I wish you wouldn't take this so casually,<CHARNAME>. Vandia's tears! I'm ashamed to say that I expect just such a lack of privacy as I had last night. My mother routinely left me with Cýrontîr, one of her lovers, and he oversaw my care throughout my childhood--diapers, bathtime, dressing and undressing...Everything a mother would normally do.~
=~And then, of course, my mother always had other friends staying over. Your behavior, really, is no different. So...let's just finish breakfast and leave this place.~ DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT


CHAIN
IF ~~ THEN TIMaethJ  A81
~No, fortunately. She always said children ruined the mood. Her patrons were always wealthy enough to either collect her or pay for her working lodgings. Supposedly she had rooms elsewhere more suited to the mistress of a wealthy man. I never saw them.~
=~Occasionally, of course, Naneth and I would run into this patron or that one at public places and I would be shown off like a prize horse, but most of the time I only had to deal with whoever was mother's 'hauthwaid'...bed partner...at the moment. But, enough of that. Let us finish our breakfast and leave this place.~ EXIT

APPEND TIMaethJ

//MaethTalk #10: Faith (Friend Talk, With Belt)

IF ~Global("TIMaethTalks","GLOBAL",20)  HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT10
SAY ~*During a short break, Maethor calls you over.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + 90
END

IF ~~ THEN BEGIN A90
SAY ~<CHARNAME>, might I ask you a personal question?~
++ ~I guess.~ + A91
++ ~Personal in what way?~ + A90A
++ ~Only if I can ask you the same question.~ + A90B
++ ~I'd rather you didn't.~ + A90A
END

IF ~~ THEN BEGIN A90B
SAY ~Of course you can. In fact, you probably will. My question concerns religion, a topic about which I am quite open.~
++ ~Oh. Okay, Maethor. I'm willing to talk about religion.~ + A91
++ ~I'll be happy to talk about it with you later. Just not right now~ + A92
++ ~The worst fights are caused by discussing politics and religion. Let's not go there, okay?~ + A92A
END

IF ~~ THEN BEGIN A90A
SAY ~I don't mean to pry. My question concerns religion, which is a very personal subject for some. Is this a subject you would prefer not to discuss?~
++ ~No...That's okay, Maethor. I'm willing to talk about religion.~ + A91
++ ~I'll be happy to talk about it with you later. Just not right now~ + A92
++ ~The worst fights are caused by discussing politics and religion. Let's not go there, okay?~ + A92A
END

IF ~~ THEN BEGIN A92
SAY ~Very well. Later, then.~
IF ~~ THEN DO ~SetGlobal("TIMaethLT10Delay","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A92A
SAY ~You can be honest with me. Would you prefer I not question you at all?~
++ ~In a word, yes.~ DO ~SetGlobal("TIMaethRomanceActive","LOCALS",3)~ + A93EX
++ ~No... I don't mind your thoughts. Just not this particular topic.~ DO ~ IncrementGlobal("TIMaethOffend","GLOBAL",1)~ + A93A
END

IF ~~ THEN BEGIN A93EX
SAY ~Very well. I shall return my attention to the road ahead.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A91
SAY ~Very well. I was curious whether or not you would describe yourself as a '<MANWOMAN> of faith'?~
+ ~Class(Player1,CLERIC)~ + ~Indeed. That's almost a textbook definition for being a cleric.~ + A91A
+ ~Class(Player1,PALADIN)~ + ~I'm like you. Aren't paladins always defined by their faith in their deity?~ + A91B
++ ~Yes. My faith in my god is strong.~ + A91FA
++ ~I wouldn't define myself as a '<MANWOMAN> of faith,' but I do have faith in a deity.~ + A91FA
++ ~No. I'm not religious. I only have faith in myself.~ + A91E
++ ~I don't concern myself with religion at all.~ + A91F
END

IF ~~ THEN BEGIN A91A
SAY ~*Grin*. Well, it could be one of the definitions, anyway... For obvious reasons, I find myself often considering the nature of faith in a deity. But...~
IF ~~ THEN + A91FA
END

IF ~~ THEN BEGIN A91B
SAY ~*Grin*. Yes. That is one of the ways I describe myself. For obvious reasons, I find myself often considering the nature of faith in a deity. But...~
IF ~~ THEN + A91FA
END

IF ~~ THEN BEGIN A91FA
SAY ~Outside of my own faith, I am really quite ignorant. Do you revere one of the traditional racial pantheons?~
+ ~RACE(Player1,HUMAN)~ + ~I revere one of the good-aligned Faerûnian deities.~ + A92AG
+ ~RACE(Player1,HUMAN)~ + ~I revere one of the neutral-aligned Faerûnian deities.~ + A92AN
+ ~RACE(Player1,HUMAN)~ + ~I revere one of the evil-aligned Faerûnian deities.~ + A92AE
+ ~RACE(Player1,ELF)~ + ~I revere one of the good-aligned Seldarine.~ + A92BG
+ ~RACE(Player1,ELF)~ + ~I revere one of the neutral-aligned Seldarine.~ + A92BN
+ ~RACE(Player1,HALF_ELF)~ + ~I revere one of the good-aligned Faerûnian pantheon.~ + A92AG
+ ~RACE(Player1,HALF_ELF)~ + ~I revere one of the neutral-aligned Faerûnian pantheon.~ + A92AN
+ ~RACE(Player1,HALF_ELF)~ + ~I revere one of the evil-aligned Faerûnian pantheon.~ + A92AE
+ ~RACE(Player1,HALF_ELF)~ + ~I revere Khalreshaar, god of half-elves.~ + A92AF
+ ~RACE(Player1,HALF_ELF)~ + ~I revere one of the good-aligned Seldarine.~ + A92BG
+ ~RACE(Player1,HALF_ELF)~ + ~I revere one of the neutral-aligned Seldarine.~ + A92BN
+ ~RACE(Player1,ELF)~ + ~Given my Drow heritage, I follow one of the Dark Seldarine.~ + A92F
+ ~RACE(Player1,HALFORC)~ + ~I tend to follow my human blood in this. I revere one of the good-aligned Faerûnian pantheon.~ + A92AG
+ ~RACE(Player1,HALFORC)~ + ~I tend to follow my human blood in this. I revere one of the neutral-aligned Faerûnian pantheon.~ + A92AN
+ ~RACE(Player1,HALFORC)~ + ~I tend to follow my human blood in this. I revere one of the evil-aligned Faerûnian pantheon.~ + A92AE
+ ~RACE(Player1,HALFORC)~ + ~I tend to follow my orc blood in this. I revere one of the Orc pantheon.~ + A92GO
+ ~RACE(Player1,DWARF)~ + ~Given my Dwarf heritage, I follow one of the good-aligned Morndinsamman.~ + A92IG
+ ~RACE(Player1,DWARF)~ + ~Given my Dwarf heritage, I follow one of the neutral-aligned Morndinsamman.~ + A92IN
+ ~RACE(Player1,DWARF)~ + ~Given my Dwarf heritage, I follow one of the evil-aligned Morndinsamman.~ + A92IE
+ ~RACE(Player1,HALFLING)~ + ~Given my Halfing heritage, I follow one of the good-aligned Children of Yondalla.~ + A92JG
+ ~RACE(Player1,HALFLING)~ + ~Given my Halfing heritage, I follow one of the neutral-aligned Children of Yondalla.~ + A92JN
+ ~RACE(Player1,TIEFLING)~ + ~I tend to follow my human blood in this. I revere one of the good-aligned Faerûnian pantheon.~ + A92AG
+ ~RACE(Player1,TIEFLING)~ + ~I tend to follow my human blood in this. I revere one of the neutral-aligned Faerûnian pantheon.~ + A92AN
+ ~RACE(Player1,TIEFLING)~ + ~I tend to follow my human blood in this. I revere one of the evil-aligned Faerûnian pantheon.~ + A92AE
+ ~RACE(Player1,TIEFLING)~ + ~I tend to follow my demonic blood in this. I revere one of the Demonic pantheon.~ + A92K
+ ~RACE(Player1,GNOME)~ + ~Given my Gnomic heritage, I follow one of the good-aligned Lords of the Golden Hills.~ + A92LG
+ ~RACE(Player1,GNOME)~ + ~Given my Gnomic heritage, I follow one of the neutral-aligned Lords of the Golden Hills.~ + A92LN
+ ~RACE(Player1,GNOME)~ + ~Given my Gnomic heritage, I follow one of the evil-aligned Lords of the Golden Hills.~ + A92LE
++ ~No. I don't follow a specific racial deity.~ + A91C
END

IF ~~ THEN BEGIN A92AF
SAY ~Ah, yes. The God of the Half-Elven... A fascinating deity, to be sure.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A92AG
SAY ~One of the good-aligned pantheon, huh? I don't know much about the Faerûnian pantheon~
++ ~I honor Ao, the Overpower.~ + A93A
++ ~I honor Chauntea, goddess of agriculture, plants cultivated by humans, farmers, gardeners, summer.~ + A93
++ ~I honor Deneir, god of lesser Glyphs, literacy, scribes, pictorial & literary art, cartography.~ + A93
++ ~I honor Eldath, goddess of quiet places, springs, pools, stillness, peace, waterfalls, druid groves.~ + A93
++ ~I honor Ilmater, god of endurance, suffering, martyrdom, perseverance.~ + A93
++ ~I honor Lathander, god of Spring, dawn, birth, renewal, creativity, youth, vitality, self-perfection, athletics.~ + A93
++ ~I honor Lliira, goddess of joy, happiness, dance, festivals, carefree celebration, contentment, hospitality, freedom.~ + A93
++ ~I honor Mielikki, goddess of forests, forest creatures, rangers, dryads, autumn.~ + A93
++ ~I honor Milil, god of poetry, song, eloquence.~ + A93
++ ~I honor Mystra, goddess of magic, spells, the Weave.~ + A93
++ ~I honor Selune, goddess of the stars, navigation, navigators, wanderers, seekers, good and neutral lycanthropes.~ + A93
++ ~I honor Sharess, goddes of quick, intense, passionate love.~ + A93
++ ~I honor Sune, goddess of beauty, love, passion.~ + A93
++ ~I honor Torm, god of duty, loyalty, obedience, paladins.~ + A93
++ ~I honor Tymora, goddess of good fortune, skill, victory, adventuring.~ + A93
++ ~I honor Tyr, god of justice.~ + A93
++ ~I honor someone else.~ + A93
END

IF ~~ THEN BEGIN A92AN
SAY ~One of the neutral-aligned pantheon, huh? I don't know much about the Faerûnian pantheon.~
++ ~I honor Amauntor, god of bureaucracy, contracts, law, order, the sun, rulership.~ + A94
++ ~I honor Ao, the Overpower.~ + A93A
++ ~I honor Akadi, goddess of elemental air, air elementalists, movement, speed, flying creatures.~ + A94
++ ~I honor Azuth, god of lesser Wizards, Monks, spellcasters in general.~ + A94
++ ~I honor Beshaba, goddess of random mischief, misfortune, bad luck, accidents.~ + A94
++ ~I honor Gond, god of artifice, craft, construction, smithwork.~ + A94
++ ~I honor Grumbar, god of elemental earth, earth elementalists, solidity, permanence, oaths.~ + A94
++ ~I honor Helm, god of guardians, protectors, protection.~ + A94
++ ~I honor Hoar, god of revenge, retribution, poetic justice.~ + A94
++ ~I honor Ibrandul, god of caverns, dungeons, Underdark, skulks.~ + A94
++ ~I honor Istishia, goddess of elemental water, water elementalists, purification.~ + A94
++ ~I honor Kelemvor, god of death, the dead.~ + A94
++ ~I honor Kossuth, god of elemental power, fire elementalists, purification through fire.~ + A94
++ ~I honor Leira, goddess of deception, illusion.~ + A94
++ ~I honor Oghma, goddess of knowledge, invention, inspiration, bards.~ + A94
++ ~I honor Shaundakul, god of travel, exploration, long-range traders, miners, caravans, windghosts.~ + A94
++ ~I honor Silvanus, god of wild nature, druids.~ + A94
++ ~I honor Tempus, god of war, battle, warriors.~ + A94
++ ~I honor Waukeen, god of money, wealth, commerce.~ + A94
++ ~I honor someone else.~ + A94
END

IF ~~ THEN BEGIN A92AE
SAY ~*Maethor's eyes widen.* One of the evil-aligned pantheon? That's unusual for one of your alignment. Should I ask which one?~
++ ~I honor Auril, god of lesser Cold, winter.~ + A95
++ ~I honor Bane, god of strife, hatred, tryanny.~ + A95
++ ~I honor Bhaal, god of death, especially violent or ritual death.~ + A95
++ ~I honor Cyric, god of murder, strife, lies, intrigue, deception, illusion.~ + A95
++ ~I honor Gargauth, god of betrayal, cruelty, political corruption and powerbrokers.~ + A95
++ ~I honor Iyachtu Xvim, god of tyranny, hatred.~ + A95
++ ~I honor Loviatar, god of pain, agony, suffering, torture.~ + A95
++ ~I honor Malar, god of hunters, marauding beasts and monsters, blood, blood-lust, evil lycanthropes, stalking.~ + A95
++ ~I honor Mask, god of thieves, theivery, shadows.~ + A95
++ ~I honor Moander, god of rotting death, decay, corruption.~ + A95
++ ~I honor Myrkul, god of the dead, wasting, parasites, old age, exhaustion, dusk, autumn.~ + A95
++ ~I honor Shar, goddess of dark, night, loss, forgetfulness, secrets, caverns, dungeons, the Underdark.~ + A95
++ ~I honor Talona, god of disease, poison.~ + A95
++ ~I honor Talos, god of storms, destruction, rebellion, conflagrations, earth-shaking, vortices.~ + A95
++ ~I honor Umberlee, goddess of oceans, currents, waves, sea winds.~ + A95
++ ~I honor someone else.~ + A95
END

IF ~~ THEN BEGIN A92BG
SAY ~*Maethor nods.* I'm familiar with the Seldarine. Which one?~
++ ~I honor Aerdrie Faenya, goddess of the avariel, air, weather, avians, rain, fertility.~ + A96A
++ ~I honor Angharradh, goddess of birth, fertility, chaos, hope, protection, renewal.~ + A96B
++ ~I honor Corellon Larethian, god of Magic, Music, Arts, Crafts, Poetry, and Warfare.~ + A96C
++ ~I honor Deep Sashelas, god of the aquatic elves, creation, knowledge, beauty, and magic.~ + A96D
++ ~I honor Hanali Celanil, goddess of love, passion.~ + A96E
++ ~I honor Labelas Enoreth, god of knowedge, philosophy, and scholarship.~ + A96F
++ ~I honor Rillifane Rallathil, god of nature.~ + A96G
++ ~I honor Sehanine Moonbow, goddess of death and the moon.~ + A96H
++ ~I honor Solonor Thelandira, god of hunting.~ + A96I
++ ~I honor Elebrin Liothiel, god of gardens, orchards and harvest.~ + A96J
++ ~I honor Trishina, protector of children.~ + A96K
++ ~I honor Zandilar the Dancer, goddess of intense, passionate love which burns quickly and dies out.~ + A96L
++ ~I honor someone else.~  + A96
END

IF ~~ THEN BEGIN A92BN
SAY ~*Maethor nods.* I'm familiar with the Seldarine. Which one?~
++ ~I honor Aerdrie Faenya, goddess of the avariel, air, weather, avians, rain, fertility.~ + A96A
++ ~I honor Erevan Ilesere, god of thieves and tricksters.~ + A97A
++ ~I honor Fenmarel Mestarine, god of feral elves, wild animals, woodlands, jungles, and similar uncivilized places.~  + A97B
++ ~I honor Vandria Gilmadrith, goddess of war and grieving.~ + A97C
++ ~I honor Shevarash, god of vengeance and retribution.~ + A97D
++ ~I honor Tarsellis Meunniduin, patron deity of all elves that reside in or travel through mountains.~ + A97E
++ ~I honor someone else.~ + A97
END

IF ~~ THEN BEGIN A92F
SAY ~*Maethor raises his eyebrows.* The Dark Seldarine? A logical choice, if one that makes me uncomfortable.~
++ ~I honor Eilistraee, goddess of good (renegade) drow, song, beauty, dance, swordwork, hunting and moonlight.~ + A98
++ ~I honor Kiaransalee, goddess of undead and vengeance.~ + A98
++ ~I honor Lolth, goddess of all drow, as well as spiders, evil, darkness, chaos and assassins.~ + A98LO
++ ~I honor Vhaeraun, god of male drow, thievery and evil activity on the surface.~ + A98
++ ~I honor Zinzerena, goddess of chaos and assassins.~ + A98
++ ~I honor someone else.~ + A98
END

IF ~~ THEN BEGIN A92K
SAY ~I'd often heard that Tieflings do not associate themselves with particular deities. Perhaps you can educate me on this?~
++ ~I honor Asmodeus, god of the race of devils.~ + A99
++ ~I honor Beshaba, goddess of random mischief, misfortune, bad luck, accidents.~ + A94
++ ~I honor Cyric, god of aggression god of murder, strife, lies, intrigue, deception, illusion.~ + A95
++ ~I honor Gargauth, god of betrayal, cruelty, political corruption and powerbrokers.~ + A95
++ ~I honor Mask, god of thieves.~ + A95
++ ~I honor Shar, goddess of dark, night, loss, forgetfulness, secrets, caverns, dungeons, the Underdark.~ + A95
++ ~I honor someone else.~ + A99
END

IF ~~ THEN BEGIN A92GO
SAY ~*Maethor quickly suppresses an expression of distaste.* The Orc pantheon, as you might expect, is not a topic I am familiar with.~
++ ~I honor Bahgtru, god of strength and combat.~ + A99.1
++ ~I honor Gruumsh, god of all orcs, as well as conquest, strength, survival and territory.~ + A99.1
++ ~I honor Ilneval, god of warfare.~ + A99.1
++ ~I honor Luthic, goddess of female orcs, fertility, medicine and servitude.~ + A99.1
++ ~I honor Shargaas, god of darkness and thieves.~ + A99.1
++ ~I honor Yurtrus, god of death and disease.~ + A99.1
++ ~I honor someone else.~ + A99.1
END

IF ~~ THEN BEGIN A92IG
SAY ~One of the good-aligned pantheon, huh? I don't know much about the Morndinsamman.~
++ ~I honor Berronar Truesilver, goddess of safety, truth, home and healing.~ + A99.2
++ ~I honor Clanggedin Silverbeard, god of battle and war.~ + A99.2
++ ~I honor Dugmaren Brightmantle, god of scholarship, discovery and invention.~ + A99.2
++ ~I honor Moraddin, god of all dwarves, as well as creation, smithing, protection, metalcraft and stonework.~ + A99.2
++ ~I honor Marthammor Duin, god of Travel and Protection.~ + A99.2
++ ~I honor Mya, goddess of clan, family and wisdom.~ + A99.2
++ ~I honor Sharindlar, goddess of healing, mercy, romantic love, fertility, dancing, courtship, the moon.~ + A99.2
++ ~I honor Tharmekhûl, god of the forge, fire and warfare.~ + A99.2
++ ~I honor Ulaa, goddess of the earth.~ + A99.2
++ ~I honor someone else.~ + A99.2
END

IF ~~ THEN BEGIN A92IN
SAY ~One of the neutral-aligned pantheon, huh? I don't know much about the Morndinsamman.~
++ ~I honor Dumathoin, god of exploration and mining. Keeper of Secrets.~ + A99.2
++ ~I honor Hanseath, god of war, carousing and alcohol.~ + A99.2
++ ~I honor Muamman Duathal, god of expatriates, urban dwarves, travellers and exiles.~ + A99.2
++ ~I honor Roknar, god of greed, intrigue, lies and earth.~ + A99.2
++ ~I honor Thard Harr, god of wild dwarves, jungle survival, hunting~ + A99.2
++ ~I honor Thautam, god of magic and darkness.~ + A99.2
++ ~I honor Valkauna, goddess of oaths, death and birth.~ + A99.2
++ ~I honor Vergadain, god of wealth and luck.~ + A99.2
++ ~I honor someone else.~ + A99.2
END

IF ~~ THEN BEGIN A92IE
SAY ~*Maethor's eyes widen.* One of the evil-aligned pantheon, huh? That's surprising, given your alignment.~
++ ~I honor Abbathor, god of greed.~ + A99.2
++ ~I honor Laduguer, god of magic weapons, artisans, magic and duergar.~ + A99.2
++ ~I honor Thautam, god of magic and darkness.~ + A99.2
++ ~I honor someone else.~ + A99.2
END

IF ~~ THEN BEGIN A92JG
SAY ~One of the good-aligned pantheon, huh? I don't know much about the Children of Yondalla.~
++ ~I honor Yondalla, goddess of all halflings, as well as family, law and protection.~ + A99.3
++ ~I honor Arvoreen, god of protection, vigilance and war.~ + A99.3
++ ~I honor Charmalaine, goddess of heroes and heroines.~ + A99.3
++ ~I honor Cyrrollalee, goddess of friendship, trust and home.~ + A99.3
++ ~I honor someone else.~ + A99.3
END

IF ~~ THEN BEGIN A92JN
SAY ~One of the neutral-aligned pantheon, huh? I don't know much about the Children of Yondalla.~
++ ~I honor Dallah Thaun, goddess of secrets, guile, thieves and rogues, acquisition of wealth and death.~ + A99.3
++ ~I honor Brandobaris, god of stealth, thieves and adventuring.~ + A99.3
++ ~I honor Sheela Peryroyl, goddess of nature, agriculture and weather.~ + A99.3
++ ~I honor Urogalan, god of earth, death and protection of the dead.~ + A99.3
++ ~I honor someone else.~ + A99.3
END

IF ~~ THEN BEGIN A92LG
SAY ~One of the good-aligned pantheon, huh? I don't know much about the Lords of the Golden Hills.~
++ ~I honor Baervan Wildwanderer, god of forests, nature and travel.~ + A99.4
++ ~I honor Flandal Steelskin, god of mining, smithing and fitness.~ + A99.4
++ ~I honor Garl Glittergold, god of all gnomes, as well as protection, humor, trickery, gemcutting and smithing.~ + A99.4
++ ~I honor Nebelun, god of inventions and good luck.~ + A99.4
++ ~I honor Ril Cleverthrush, god of invention, creation and sky.~ + A99.4
++ ~I honor Sheyanna Flaxenstrand, goddess of love, beauty and passion.~ + A99.4
++ ~I honor someone else.~ + A99.4
END

IF ~~ THEN BEGIN A92LN
SAY ~One of the neutral-aligned pantheon, huh? I don't know much about the Lords of the Golden Hills.~
++ ~I honor Baravar Cloakshadow, god of illusions, protection, deception and hatred of goblinoids.~ + A99.4
++ ~I honor Callarduran Smoothhands, god of earth, good, healing and protection.~ + A99.4
++ ~I honor Gaerdal Ironhand, god of protection, vigilance and combat.~ + A99.4
++ ~I honor Gelf Darkhearth, god of entropy and revenge.~ + A99.4
++ ~I honor Segojan Earthcaller, god of earth and nature.~ + A99.4
++ ~I honor someone else.~ + A99.4
END

IF ~~ THEN BEGIN A92LE
SAY ~*Maethor's eyes widen.* One of the evil-aligned pantheon, huh? That's surprising, given your alignment.~
++ ~I honor the Glutton, god of disaster and greed.~ + A99.4
++ ~I honor Urdlen, god of greed, bloodlust, evil, hatred and blind destruction.~ + A99.4
++ ~I honor someone else.~ + A99.9
END

IF ~~ THEN BEGIN A93A
SAY ~*Raises his eyebrows.* You go straight to the top with your prayers, eh? Lord Ao is known as the creator and destroyer of gods... He maintains the cosmic balance!~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A93
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A94
SAY ~Fascinating.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A95
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A97
SAY ~Interesting.~
IF ~~ THEN + A91C
END


IF ~~ THEN BEGIN A96A
SAY ~She is the goddess of the winged elves, I believe. And one of the triune who become Angharradh. A most noble divine. I think of her every time I look up and see a proud falcon soaring above us...~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96B
SAY ~I, too, revere the Goddess of women, fertility and childbirth. Having seen how difficult it can be both to conceive and bear children, it seems wise to have divine help from Angharradh.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96C
SAY ~I am very glad to have a <BROTHERSISTER> in faith. Corellon is a most wise and benevolent deity to us, his children. It feels good to have someone with whom I share a common faith.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96D
SAY ~Perhaps because the ocean and its creatures observe and keep many secrets, Deep Sashelas is known as the 'Knowledgeable One.' He knows all the answers.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96E
SAY ~One should never forget to send blessings to Hanali Celanil, goddess of love. What especially amuses me is that she has an Order of Paladins known as 'Golden Hearts' who hold the code of chivalry and the motto 'Nadath Melas Orthor'(Love Conquers All Things) above everything else. *chuckles.* I wonder if 'tongue-jousting' in the battlefield of the bed is indeed one of their particular skills, as is rumored.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96F
SAY ~The followers of Labelas are some of the deepest thinkers and most respected scholars. You must have a fine mind, <CHARNAME>.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96G
SAY ~I, too, have spent many hours in praise of Rillifane. Were it not for his protection, I fear that my home, Suldanessellar, might cease to exist entirely. The woodlands beloved by elves are often under threat.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96H
SAY ~Sehanine Moonbow... The kindest and gentlest of the Seldarine, yet also so quick and furious in her defense of her loved ones. Not only did she save my Lord Corellon's life, but also his broken heart. It is a most touching legend.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96I
SAY ~So you are a follower of the hunter? You know, Solonor Thelandira is often at odds with Rillifane Rallathil because of his fondness for wild game. It is said that not only do his arrows never miss, but they also always kill.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96J
SAY ~Elebrin Liothiel is an unusual deity to revere, <CHARNAME>. *He smiles.* You must have a fondness for wine, eh? Few elves are much interested in cultivating anything else.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96K
SAY ~Trishina is described as 'The Protector of the Young' because of her love for children of all the races. What a noble goddess to revere.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A96L
SAY ~So you follow Zandilar the Dancer, eh? I shall have to watch my step around you! My mother was a particularly dedicated follower of hers and I, interestingly, was under her protection before I declared my own calling. She is the goddess of intense passion, but few openly acknowledge her because her love is fickle and prone to burn out just as quickly as it emerges.~
=
~InParty("Coran")~ ~There are others in the party...Coran, for one...whom I suspect worship her in secret.~
IF ~~ THEN + A91C

END

IF ~~ THEN BEGIN A97A
SAY ~A follower of Erevan! Well, I shall have to keep a close eye on my purse when I'm around you! I know that there are thieves who steal out of necessity and thieves who steal because they enjoy the challenge, but his followers tend to be in the latter group.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A97B
SAY ~Interesting. You follow the deity of wild places, huh? You must enjoy traveling the roads that others have forgotten. I imagine we have regular need of your talents.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A97C
SAY ~I came very close to joining an Order of knights that serve Vandria Gilmadrith. She is, after all, the daughter of Corellon, and her focus in not merely on organized warfare, but also recognizes the grief that always follows a battle.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A97D
SAY ~I imagine we shall have need to honor Tarsellis Meunniduin, the patron of elves who travel through the mountains. I'm sure we'll be seeing the dangerous, narrow paths to the South soon enough. Interestingly, he, like Corellon, also favors those who fight the evil drow. I keep him close to my heart.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A97E
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A97F
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A98
SAY ~Fascinating.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A98LO
SAY ~*Maethor's expression darkens and he gazes at you solemnly.* You worship the spider goddess, eh? That, I am afraid, will mean enmity between us. I will not try to convert you, <CHARNAME>, but I cannot in good conscience serve with you unless you have spoken in jest and intended someone else... Was that the case?~
++ ~It was. I misspoke.~ + A91FA
++ ~Then, I guess we must be enemies.~ + A98LOA
END

IF ~~ THEN BEGIN A98LOA
SAY ~*Maethor slowly draws him sword.* My Lord Corellon is dedicated to the destruction of all who follow Lloth. *Maethor looks a bit regretful.* I'm sorry, <CHARNAME>, but my honor demands this. I must attempt to kill you unless you willingly give up your faith in Lloth? What say you: aye or nay?~
++ ~Aye. My affection for you is too strong for me to willingly be your enemy. For you, I will leave Lloth's service.~ + A98LLS
++ ~Nay. I will not desert my goddess merely to please someone else's view of what is right.~ + A98NAY
END

IF ~~ THEN BEGIN A98NAY
SAY ~Have at you, <CHARNAME>!!~
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy() Attack(Player1) SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A98LLS
SAY ~*Maethor sheathes his sword, looking relieved.* I truly and affectionately thank you, <CHARNAME>. My heart grieved at the thought of attacking you. I hope you have not spoken thus only to keep the peace, but I will not pry any further into your private affairs to see if that is the case. Your behavior has never reflected the interests of the spider-queen and I must assume that you followed her mistakenly. Let us...let us return to our <DAYNIGHT>'s march.~
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN A99
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.1
SAY ~Fascinating.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.2
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.3
SAY ~Fascinating.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.4
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.5
SAY ~Fascinating.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.6
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.7
SAY ~Fascinating.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.8
SAY ~Interesting.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A99.9
SAY ~Fascinating.~
IF ~~ THEN + A91C
END

IF ~~ THEN BEGIN A91C
SAY ~Some people also honor deities that are patrons of one's work. Is that the case with you?~
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,BARD)~ + ~Yes. I honor the patron god of bards, Oghma.~ + A98.1
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,BARD)~ + ~Yes. I honor the patron god of poetry, Milil.~ + A98.1
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,BARD)~ + ~Yes. I honor the patron god of love poetry, Sune.~ + A98.1
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,BARD)~ + ~Yes. I honor the patron god of music and poetry, Corellon Larethian.~ + A98.1
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,BARD)~ + ~Yes. I honor the patron god of love poetry, Hanali Celanil.~ + A98.1
+ ~RACE(Player1,GNOME) Class(Player1,BARD)~ + ~Yes. I honor the patron god of invention, Nebelun.~ + A98.1
+ ~RACE(Player1,GNOME) Class(Player1,BARD)~ + ~Yes. I honor the patron goddess of love poetry, Sheyanna Flaxenstrand.~ + A98.1
+ ~RACE(Player1,HALFLING) Class(Player1,BARD)~ + ~Yes. I honor the patron god of creation, Yondalla.~ + A98.1
+ ~RACE(Player1,DWARF) Class(Player1,BARD)~ + ~Yes. I honor the patron god of invention, Dugmaren Brightmantle.~ + A98.1
+ ~RACE(Player1,DWARF) Class(Player1,BARD)~ + ~I honor the patron goddess of love poetry, Sharindlar.~ + A98.1
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,FIGHTER)~ + ~Yes. I honor the patron god of warriors, Tempus.~ + A98.2
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,FIGHTER)~ + ~Yes. I honor the patron goddess of warfare, Vandria Gilmadrith.~  + A98.2
+ ~RACE(Player1,GNOME) Class(Player1,FIGHTER)~ + ~Yes. I honor the patron god of combat, Gaerdal Ironhand.~ + A98.2
+ ~RACE(Player1,HALFLING) Class(Player1,FIGHTER)~ + ~Yes. I honor the patron god of warfare, Arvoreen.~ + A98.2
+ ~RACE(Player1,DWARF) Class(Player1,FIGHTER)~ + ~Yes. I honor the patron god of warfare, Clanggedin Silverbeard.~ + A98.2
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,DRUID)~ + ~Yes. I honor the patron god of druids, Silvanus.~ + A98.3
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,DRUID)~ + ~Yes. I honor the patron god of nature, Rillifane Rallathil.~ + A98.3
+ ~RACE(Player1,GNOME) Class(Player1,DRUID)~ + ~Yes. I honor the patron god of nature, Segojan Earthcaller.~ + A98.3
+ ~RACE(Player1,HALFLING) Class(Player1,DRUID)~ + ~Yes. I honor the patron god of nature, Sheela Peryroyl.~ + A98.3
+ ~RACE(Player1,DWARF) Class(Player1,DRUID)~ + ~Yes. I honor the patron god of the earth, Ulaa.~ + A98.3
+ ~OR (3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,MAGE)~ + ~Yes. I honor the patron god of mages, Azuth.~ + A98.4
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,MAGE)~ + ~Yes. I honor the patron god of magic, Corellon Larethian.~ + A98.4
+ ~RACE(Player1,GNOME) Class(Player1,MAGE)~ + ~Yes. I honor the patron god of magic, Baravar Cloakshadow.~ + A98.4
+ ~RACE(Player1,HALFLING) Class(Player1,MAGE)~ + ~Yes. I honor the patron god of secret knowledge, Dallah Thaun.~ + A98.4
+ ~RACE(Player1,DWARF) Class(Player1,MAGE)~ + ~Yes. I honor the patron god of magic, Laduguer.~  + A98.4
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,MONK)~ + ~Yes. I honor my patron god of monks, Azuth.~ + A98.5
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,MONK)~ + ~Yes. I honor my patron god of philosophy, Labelas Enoreth.~ + A98.5
+ ~RACE(Player1,GNOME) Class(Player1,MONK)~ + ~Yes. I honor the patron god of scholarship, Ril Cleverthrush.~ + A98.5
+ ~RACE(Player1,HALFLING) Class(Player1,MONK)~ + ~Yes. I honor the patron god of wisdom, Yondalla.~ + A98.5
+ ~RACE(Player1,DWARF) Class(Player1,MONK)~ + ~Yes. I honor the patron god of scholarship, Dugmaren Brightmantle.~ + A98.5
+ ~RACE(Player1,HUMAN) Class(Player1,PALADIN)~ + ~Yes. I honor the patron god of paladins, Torm.~ + A98.6
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF) Class(Player1,PALADIN)~ + ~Yes. I honor the patron god of elven paladins, Vandria Gilmadrith.~ + A98.6
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(PLayer1,HALFORC) Class(Player1,RANGER)~ + ~Yes. I honor my patron god of rangers, Mielikki.~ + A98.7
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,RANGER)~ + ~Yes. I honor my patron god of hunters, Solonor Thelandira.~ + A98.7
+ ~RACE(Player1,GNOME) Class(Player1,RANGER)~ + ~Yes. I honor the patron god of forests, Baervan Wildwanderer.~ + A98.7
+ ~RACE(Player1,HALFLING) Class(Player1,RANGER)~ + ~Yes. I honor the patron god of stealth, Brandobaris.~ + A98.7
+ ~RACE(Player1,DWARF) Class(Player1,RANGER)~ + ~Yes. I honor the patron god of jungles, survival, and hunting, Thard Harr.~ + A98.7
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(PLayer1,HALFORC) Class(Player1,SORCERER)~ + ~Yes. I honor my patron god of sorcerers, Azuth.~ + A98.8
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,SORCERER)~ + ~Yes. I honor the patron god of sorcerery, Corellon Larethian.~ + A98.8
+ ~RACE(Player1,GNOME) Class(Player1,SORCERER)~ + ~Yes. I honor the patron god of sorcerery, Baravar Cloakshadow.~ + A98.8
+ ~RACE(Player1,HALFLING) Class(Player1,SORCERER)~ + ~Yes. I honor the patron god of secret abilities, Dallah Thaun.~ + A98.8
+ ~RACE(Player1,DWARF) Class(Player1,SORCERER)~ + ~Yes. I honor the patron god of sorcerery, Laduguer.~ + A98.8
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC) Class(Player1,THIEF)~ + ~Yes. I honor my patron god of theives, Mask.~ + A98.9
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF) Class(Player1,THIEF)~ + ~Yes. I honor my patron god of trickery, Erevan Ilesere.~ + A98.9
+ ~RACE(Player1,GNOME) Class(Player1,THIEF)~ + ~Yes. I honor the patron god of humor and trickery, Garl Glittergold.~ + A98.9
+ ~RACE(Player1,HALFLING) Class(Player1,THIEF)~ + ~Yes. I honor the patron god of thieves, Dallah Thaun.~ + A98.9
+ ~RACE(Player1,DWARF) Class(Player1,THIEF)~ + ~Yes. I honor the patron god of greed and intrigue, Roknar.~ + A98.9
+ ~RACE(Player1,DWARF) Class(Player1,THIEF)~ + ~Yes. I honor the patron god of wealth and luck, Vergadain.~ + A98.9
+ ~Alignment(Player1,MASK_GOOD)~ + ~In general, I honor all good-aligned deities.~ + A97.1
+ ~Alignment(Player1,MASK_GENEUTRAL)~ + ~In general, I honor all neutral-aligned deities.~ + A97.2
+ ~OR(3) RACE(Player1,HUMAN) RACE(Player1,HALF_ELF) RACE(Player1,HALFORC)~ + ~Yes. I honor my patron god of adventurers, Tymora.~  + A97.3
+ ~RACE(Player1,GNOME)~ + ~Yes. I honor the patron god of travel, Baervan Wildwanderer.~ + A97.3
+ ~RACE(Player1,HALFLING)~ + ~Yes. I honor the patron god of adventurers, Brandobaris.~ + A97.3
+ ~RACE(Player1,DWARF)~ + ~Yes. I honor the patron god of explorers, Dumathoin.~ + A97.3
++ ~No. I don't honor a patron deity.~ + A97.7
END

IF ~~ THEN BEGIN A98.1
SAY ~The deities that encourage music, poetry, and invention are fascinating. Particularly since Bards can either focus on epic poetry or love poetry, which are sponsored by different deities. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.2
SAY ~Ah, yes. I know a little about most of the various deities that encourage organized warfare. They're different from the protective deities, interestingly enough. I guess that shows the different roles that fighters must fill in society. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.3
SAY ~*Smiles.* The gods of nature are ever around us, you know? It does make one feel a little...erm...watched. Rillifane has close allies in Mielikki, Ulaa, Sheela Perylroyl, and Segojan Earthcaller. I do wonder, however, about the differences between worship of Silvanus, deity of druids and Mielikki, the goddess of nature. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.4
SAY ~My own patron, Corellon, encourages the study of magic and spellcasting. I am obviously less interested in it than you, but I have a healthy respect for the power of mages.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.5
SAY ~The deities that encourage scholarship and philosophy are especially interesting to me since I've always been curious about the deeper questions of existance, life, and purpose. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.6
SAY ~I'm very proud to be one of those with the unusual calling of Knighthood; spiritual as well as physical warfare. I find it interesting that so many paladins revere the Faerûnian deities aligned with law and good: Helm, Ilmater, Torm, and Tyr. Sir Tybalt used to be a knight of Tyr, although he has often expressed doubt about whether Justice truly is possible. I suppose if I had been born human, I might have followed Torm. It's an interesting question.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.7
SAY ~What is fascinating about rangers is that their deities are usually different than the deities of nature. That implies an inherent philosophical different between the guardians of nature and the protectors of the forests--probably the quandry of the acceptability of hunting. You will have to discuss with me your views one of these days. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.8
SAY ~My own patron, Corellon, encourages the study of magic and spellcasting. I am obviously less interested in it than you, but I have a healthy respect for the power of sorcerery. It is much like clerical magic in that spells are granted by one's deity. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A98.9
SAY ~One must always spare some reverence for the deities of thieves. So often they also grant one the luck one needs to accomplish anything of significance. I myself have often taken the time to direct my gratitude to that rogue Erevan Ilsere. I see his hand in my very survival; how unlikely it was that a well-armed squad of knights from Amn would be investigating the woods where my family was attacked by brigands and peasants! Never forget the deities of good luck!! Thank you for your openness, <CHARNAME>.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A97.1
SAY ~It seems a good policy to revere all of the good-aligned deities. But I wonder if your lack of a special calling means you haven't been listening well enough to hear a specific voice...~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A97.2
SAY ~It seems a good policy to revere all of the neutral-aligned deities. But I wonder if your lack of a special calling means you haven't been listening well enough to hear a specific voice...~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A97.3
SAY ~I guess all of us in the party should venerate the patron deities of adventurers. At the very least, we could stand having some divine help at times. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A97.7
SAY ~Well, I suppose that's your call, but one should honor the protectors of one's calling as well as one's particular deity. Unless there's a conflict, it seems a wise policy. Thank you for your openness.~
IF ~~ THEN + A96.1
END

IF ~~ THEN BEGIN A96.1
SAY ~Do you have any questions for me about my deity, Corellon Larethian?~
+ ~Global("TIMaethCorellon","LOCALS",0)~ + ~Tell me about Corellon Larethian.~ DO ~SetGlobal("TIMaethCorellon","LOCALS",1)~ + A96.1A
+ ~Global("TIMaethWhen","LOCALS",0)~ + ~When did you decide to follow him?~ DO ~SetGlobal("TIMaethWhen","LOCALS",1)~ + A96.1B
+ ~Global("TIMaethWhy","LOCALS",0)~ + ~Why do you follow him?~ DO ~SetGlobal("TIMaethWhy","LOCALS",1)~ + A96.1C
+ ~Global("TIMaethDeity","LOCALS",0)~ + ~Have you ever honored another deity?~ DO ~SetGlobal("TIMaethDeity","LOCALS",1)~ + A96.1D
++ ~No.~ + A96.1E
END

IF ~~ THEN BEGIN A96.2
SAY ~Do you have any other questions for me?~
+ ~Global("TIMaethCorellon","LOCALS",0)~ + ~Tell me about Corellon Larethian.~ DO ~SetGlobal("TIMaethCorellon","LOCALS",1)~ + A96.1A
+ ~Global("TIMaethWhen","LOCALS",0)~ + ~When did you decide to follow him?~ DO ~SetGlobal("TIMaethWhen","LOCALS",1)~ + A96.1B
+ ~Global("TIMaethWhy","LOCALS",0)~ + ~Why do you follow him?~ DO ~SetGlobal("TIMaethWhy","LOCALS",1)~ + A96.1C
+ ~Global("TIMaethDeity","LOCALS",0)~ + ~Have you ever honored another deity?~ DO ~SetGlobal("TIMaethDeity","LOCALS",1)~ + A96.1D
++ ~No.~ + A96.1E
END

IF ~~ THEN BEGIN A96.1A
SAY ~My Lord Corellon is known as 'The First of the Seldarine' because he's the head of the Seldarine pantheon. He is the creator and preserver of the Tel'Quessir, governing those things we hold in highest esteem; magic, music, arts, crafts, poetry, and warfare.~
IF ~~ THEN + A96.2
END

IF ~~ THEN BEGIN A96.1B
SAY ~I began to serve Corellon after the death of my mother and i venn nîn, Cýrontîr. My family and I were attacked on the road by a mob of peasants seeking to attack and murder anyone associated with Prince Alemander. They recognized my mother as one of his mistresses and, despite our guards, swarmed us. My mother and Cýrontîr were killed and I lay, dying, in the roadway.~
=~We were found, fortunately, by a group of knights sent from Amn to help quell the rioting. In those moments after Sit Tybatl laid his hands on my body to heal me, I saw the face of Corellon looking back at me from a small pool of the mingled blood of Cýrontîr and myself. It was a powerful sign to me that confirmed earlier suspicions.~
IF ~~ THEN + A96.2
END

IF ~~ THEN BEGIN A96.1C
SAY ~My Lord Corellon is very special to me. For one, he has made his presence known to me through appearances and in reverie. He has even been known to appear as either sex; a behavior which makes me feel akin to him. His interest in music, poetry, and the other arts is one I share. And, finally, the fact of his humility is comforting--just like us mortals, he has made errors in judgement and had to face the consequences of his mistakes.~
IF ~~ THEN + A96.2
END

IF ~~ THEN BEGIN A96.1D
SAY ~I think most of us initially worship those deities favored by our parents. My mother was a dedicated devotee of Zandilar the Dancer--the goddess of intense, short-lived passion. I was dedicated to her at my birth, although I never felt called to serve her. On the other hand, I have always served Angharradh, the patron of elven women.~
=~Cýrontîr followed Corellon Larethian because he was from Evermeet and had grown up in the big Grove of Corellon there. Our larger community. Suldanessellar, was also an early influence. It is ruled by Queen Ellesime, who was said to be the daughter of Rillifane Rallathil. I, consequently, initially sought to serve the God of the forests as his cleric and trained at the temple of Rillifane in Sudanessellar.~
=~But then, of course, came the attack. After the healers took care of my immediate injuries, but before I was out of bed, I was asked to consider what I wanted to do with the rest of my life. Sir Tybalt had noted my unusual strength, so he wanted me to do what he had done; train as a paladin and become an Order Knight. I felt no calling from his deity, Tyr, however, so I thought I would end up serving Vandria Gilmadrith, Corellon's daughter since I heard there were a few Knights of hers in Trademeet.~
=~But then, Tyb introduced me to his friend, Sir Finnilithui, a knight-errant who served at the headquarters of the Order of the Radiant Heart as an associate member and as liasion for several of the major Orders of Elven Knights. I have never felt such immediate kinship to anyone before or since and Finn felt much the same way. *Maethor sighs.* He was close to leblû haran...five hundred of your years... Anyway, Finn initiated me as a Blade. I revere all the good-aligned Seldarine as a matter of course--they are Corellon's friends and allies--but my special communing is reserved for my Lord, the Lifebringer.~
IF ~~ THEN + A96.2
END

IF ~~ THEN BEGIN A96.1E
SAY ~No other questions? Well! Thank you for a most interesting discussion of our religions. I learned some things I did not know.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A91F
SAY ~I find it sad, but you are in good company. Many have been disillusioned or were never much interested in the first place. Obviously that's a failure of the various faiths to properly educate the populace. But that's another issue for another day. Thank you for your openness.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A91E
SAY ~And, admittedly, I have faith in you, too. I wonder if having faith in oneself counts... Well, you've given me something to ponder.~
IF ~~ THEN EXIT
END

//MaethTalk #11 Dreams (Post-Rest, With Belt)

IF ~Global("TIMaethTalks","GLOBAL",22) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT11
SAY ~*Maethor comes over, walking behind you, and gives you an affectionate pat on the back.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A100
END

IF ~~ THEN BEGIN A100
SAY ~*When you look up, Maethor smiles.* How are you doing, <CHARNAME>?  You don't seem to have slept well.~
++ ~I didn't.  I had a nightmare that profoundly disturbed me.~ + A100A
++ ~I'm okay.  I just had a bad dream.~ + A100B
++ ~Thanks for your concern, but I don't want to talk about it.~ + A100C
END

IF ~~ THEN BEGIN A100C
SAY ~Would you like to discuss the dream later? Or should I just drop it?~
++ ~I'm not sure.~ + A100A
++ ~Let's just drop it.~ + A103
++ ~Maybe I'll be able to talk about it later.~ DO ~ SetGlobal("TIMaethLT11Delay","GLOBAL",1)~ + A100D
END

IF ~~ THEN BEGIN A100D
SAY ~Okay. I'll ask you about it in awhile. Give you some time to mull it over, I guess.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A100A
SAY ~Would it make you feel better if you were to talk about it?  Sometimes dreams are a sign of what we fear. Talking may make such fears more bearable so we do not dream of them.~
++ ~Yes, I agree. *You proceed to tell him about your dream.*~ + A101
++ ~It was more than a dream. I woke up with a power I never had before. *You proceed to tell his the details.*~ + A102
++ ~No, I really would rather not.~ + A103
END

IF ~~ THEN BEGIN A100B
SAY ~'Just' a bad dream? In my experience, dreams should never be ignored or minimized. Sometimes they are a form of communication with one's deity. Sometimes dreams are an internal sign of what we fear. Talking may make such fears more bearable so we no longer dream of them.~
++ ~Yes, I agree. *You proceed to tell his about your dream.*~ + A101PA
++ ~It was more than a dream. I woke up with a power I never had before. *You proceed to tell his the details.*~ + A102
++ ~No, I really would rather not.~ + A103
END

IF ~~ THEN BEGIN A101PA
SAY ~Hmmmm. Sometimes paladins will dream that their deity has a message for them. This is considered a significant way that the gods speak to us. Do you think that your deity might be speaking to you?~
++ ~If so, what is the message?  The dream said You Will Learn.  But learn what?~ + A101A
++ ~No.  My god wouldn't send that kind of message.~ + A101B
++ ~I don't know. The dream, overall, was unpleasant. What kind of god would send such a frightening dream?~ + A101C
END

IF ~~ THEN BEGIN A101A
SAY ~I cannot advise you on that. You will have to pay attention to what your heart says about the matter. I have had dreams somewhat similar to yours and I have not always had an answer to what they portend, either. You should start writing down your dreams and see if you observe any consistency between them.~
++ ~A wise idea. I shall do as you suggest.~ + A104
++ ~I have enough to do already.~ + A104
END

IF ~~ THEN BEGIN A101B
SAY ~Even good-aligned gods can send unpleasant dreams. Fallen paladins of Tyr are said to dream of Tyr's sword when they have made a grave offense. But I am not an interpreter. My own dreams have been troubled of late and if I have no answers for myself, I surely can't be much help to you! You will have to listen to your own heart in the matter. If you feel it is not a message from your god, then you should meditate on who...or what... might be sending it to you.~
++ ~Are you suggesting I have made a grave offense?~ + A101C
++ ~Perhaps. I will have to think about this.~ + A104
++ ~I just want to forget the whole thing. I feel bad enough as it is.~ + A107
END

IF ~~ THEN BEGIN A101C
SAY ~I am no cleric, <CHARNAME>. Perhaps a god who has an important message and wishes to speak in a way you are sure to remember upon awakening. Dreams are the messengers of other worlds. I would start writing down my dreams if I were you and see if you observe any consistent themes.~
++ ~A wise idea. I shall do as you suggest.~ + A104
++ ~I have enough to do already.~ + A104
END

IF ~~ THEN BEGIN A104
SAY ~It seems a personal matter. You know best.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A101
SAY ~I was referring to the only similar situation I have heard of that might make sense of your dream. I wouldn't know if you've offended anyone save myself and I do not send dreams. I will let you know directly what I don't like. Come, put this out of your mind. We can discuss it at some other time.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A102
SAY ~An ability?  You mean like my ability to heal others?  That's significant. Or is it like when Paladins gain abilities as they gain connection with their god?~
++ ~Yes, I guess. But I didn't think paladins gained abilities because of dreams.~ + A102.1
++ ~I don't think that this implies a greater connection to my god.  I find it disturbing. Let's...let's just leave it alone.~ + A103
END

IF ~~ THEN BEGIN A102.1
SAY ~They don't, usually. But I was referring to the spontaneous appearance of abilities. With paladins, Lay of Hands emerges as a skill celebrating the first contact with one's deity. I myself could heal others well before I became a paladin because of visions I experienced in childhood. I was just trying to figure out which case your dreams fall into...~
++ ~You have visions?~ + A102.2
END

IF ~~ THEN BEGIN A102.2
SAY ~*He gives you a puzzled look.* Of course I do. All elves do. We transcend time and distance when we reverie. Sometimes we see...unpleasantness.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~This isn't reverie. I'm actually asleep when they happen. Look, I'm tired. Can we forget I said anything?~ + A103
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~I sense that my dreams are different than your reverie. But I couldn't say for sure. I'm...I'm tired. Can we just forget I said anything?~ + A103
END

IF ~~ THEN BEGIN A103
SAY ~That's fine.  I don't mean to pry.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A107
SAY ~I do not wish to cause you to feel worse. Put it out of your mind for now.~
IF ~~ THEN EXIT
END

//(MaethTalk 12) Love Talk 4: Childhood Revisited (Friend Talk, With Belt)

IF ~Global("TIMaethLoveTalks","GLOBAL",24)  HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT12
SAY ~*You've called for a brief halt when you notice that Maethor has come up beside you, impressively quietly considering that he wears plate mail. You nod for him to speak.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A110
END

IF ~~ THEN BEGIN A110
SAY ~I've been wondering what your relationship with your foster-father was like, <CHARNAME>. Do you ever think about your childhood and miss him?~
++ ~Of course I do. I didn't have anyone else. Why do you ask? Something remind you of your own early years?~ + A110A
++ ~Is this is a prelude to a sob story?~ + A110B
++ ~No, not really. Gorion and I rarely saw eye-to-eye. I felt stifled by all the rules I had to follow.~ + A110C
++ ~Later, Maethor.~ DO ~SetGlobal("TIMaethLT13Delay","GLOBAL",1)~ + A110D
END

IF ~~ THEN BEGIN A110D
SAY ~Sure. Whatever.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A110A
SAY ~*Maethor looks a bit embarrassed.* I had hoped we might talk about your childhood. It seems more straightforward than mine.~
++ ~You mean more boring. Essentially, I grew up in a library, Maethor. Nothing ever happened there. Not to me, anyway. That's one reason why Gorion's death is so jarring. I never saw it coming. Never expected to feel fear. You, on the other hand, must've been constantly afraid.~ + A111A
++ ~You're dodging my question.~ + A111B
++ ~*shrug* Whatever. I had exactly the kind of childhood you might expect. I had rules to follow and expectations to live up to. A lot of chores to do. There was, of course, the unspoken rule that I not disturb the tranquility of the library. I don't think Gorion expected to be a father so late in life, but it was clear to me that he relished the opportunity.~ + A111C
END

IF ~~ THEN BEGIN A110B
SAY ~*Maethor blinks.* Of course not! I just hoped we might talk about your childhood. I'm sorry I asked; we needn't discuss anything if you're not in the mood.~
++ ~I'm definately not in the mood. I have too much else to worry about~ + A110.1
++ ~*sigh.* Don't scold me, Maethor. I have a lot of worries on my mind. Look, I grew up in a library. Nothing ever happened there. Not to me, anyway. That's one reason why Gorion's death is so jarring. I never saw it coming. Never expected to feel fear. You, on the other hand, must've been constantly afraid.~ + A111A
++ ~*shrug* I had exactly the kind of childhood you might expect. I had rules to follow and expectations to live up to. A lot of chores to do. There was, of course, the unspoken rule that I not disturb the tranquility of the library. I don't think Gorion expected to be a father so late in life, but it was clear to me that he relished the opportunity.~ + A111C
END

IF ~~ THEN BEGIN A110C
SAY ~A pity that you did not get along. Did you rebel against the rules often?~
++ ~Every chance I got. I don't think I would have any fun at all if I hadn't constantly fought back. *grin.* I did have some fun times, though. Remind me to tell you about the two stablegirls, the hayloft, and the bottle of stolen rum!!~ + A110.2
++ ~Only when I really thought it was important. No one can say I didn't try to follow the rules that made sense.  See, Maethor, I had exactly the kind of childhood you might expect. I had expectations to live up to. A lot of chores to do. There was, of course, the unspoken rule that I not disturb the tranquility of the library. I hated that. You know, I hadn't thought about it before, but I don't think Gorion expected to be a father so late in life. That's the only reason I can think of for why he'd have a child by himself in the middle of a fortress full of scholars.~ + A111C
END

IF ~~ THEN BEGIN A110.1
SAY ~Very well. I shall leave you be, then.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A110.2
SAY ~Um, yes. I'll try to remember to do that.~
++ ~So why are you asking now? Thinking about your own childhood?~ + A111B
END

IF ~~ THEN BEGIN A111A
SAY ~Well, yes and no. I mean, as a young child I could feel the tension my elders lived with day to day, but I didn't fully understand it. Elves were routinely insulted and mistreated outside of our own holdings, but my mother and her parents kept me in ignorance of that. I stayed mostly at home with Cýrontîr.~
++ ~Cýrontîr? Who's that?~ + A112A
++ ~You've mentioned the riots in Tethir before. It was why your mother decided to leave, right?~ + A112B
++ ~Sounds like you were a lonely child.~ + A112C
END

IF ~~ THEN BEGIN A111B
SAY ~I asked because... well... This will sound like nonsense to you, but I asked because I was walking along, not thinking about much, and I looked up and saw that I could see the edge of one of the moons in the sky even though it's full daylight out. I wondered what your childhood had been like and if you had had a special affection with your foster-father. You told me once that Gorion was all you had... It makes me think of Cýrontîr.~
++ ~Ah. I think I understand.~ + A112A
++ ~Sounds like you were a lonely child.~ + A112C
++ ~I had friends. Imoen... Others. They just didn't take the place of parents.~ + A112D
END

IF ~~ THEN BEGIN A111C
SAY ~Yes, I suppose that is exactly what I expected your childhood was like. But I didn't want to assume anything because surface appearances aren't often a good measure of what's actually occurring. And, as for Gorion being surprised by fatherhood, well, I think I understand that, too, in a way.~
=~I asked because... well... This will sound like nonsense to you, but I asked because I was walking along, not thinking about much, and I looked up and saw that I could see the moon and the Tears in the sky even though it's full daylight out. I wondered what your childhood had been like and if you had had a special affection with your foster-father. You told me once that Gorion was all you had... It makes me think of Cýrontîr.~
++ ~Ah. I think I understand.~ + A112A
++ ~Sounds like you were a lonely child.~ + A112C
++ ~I had friends. Imoen... Others. They just didn't take the place of parents.~ + A112D
END

IF ~~ THEN BEGIN A112A
SAY ~I've mentioned that Naneth always had several exceptionally tolerant lovers...she called them her 'favorites'...staying at our house. Most of them were like obnoxious guests; you know, the kind who eat too much, drink too much, stay up carousing and singing too late in the evenings and leave a mess behind. They'd show up, hang around for a night or two to enjoy Naneth's company, and then go back to their other lives.~
=~Cýrontîr was the only one who actually lived with us. Naneth used to tease him and say he was my real nana, but she conveniently forgot that she'd brought him home with that purpose in mind. *Maethor points up at the sky, outlining the faint curve of the moons.* Whenever I can see a moon during the day I think about Cýrontîr.~
=~That's what his name means: 'Looks at the moon.'. He was a scribe for the royal treasury, but he told me once he hoped to work in Ellesime's court as an astronomer. At night, when Naneth would go out to amuse some patron of hers, he would take care of me. Better than my mother ever did. When he would put me to bed, he didn't just expect me to fall asleep--he would tell me stories from one of his big books and talk to me.~
++ ~Hmmm. Isn't that funny! I always regretted not having a mother. But learning about yours makes me grateful that I didn't. It doesn't sound like she was much interested in raising you.~ + A112.1A
++ ~I'm sorry that you lost him. You must miss him.~ + A113A
++ ~I don't understand. Was Cýrontîr your actual father? Or what?~ + A112.2A
END

IF ~~ THEN BEGIN A112D
SAY ~No, friends don't take the place of family. On the other hand, if I'd had more friends, I might have had a better perspective on what family life was suposed to be like. I never really understood how mothers...and fathers, for that matter...usually behave.~
++ ~Yes. I understand that feeling well. I didn't see much in the way of normal family life, either.~ + A112A
++ ~I guess we were both lonely.~ + A112C
END

IF ~~ THEN BEGIN A112.1A
SAY ~Life is odd that way, <CHARNAME>. I have to admit that I would have preferred your childhood as well. No... She wasn't much interested in me. Not as a child, anyway. Still, I think she loved me as much as was possible for her. I suppose I should grateful for the good memories I have of her, but it was difficult to be her daughter. Most of the other childrens' mothers forbade them from playing with me.~
++ ~You must have felt very alone.~ + A112C
END

IF ~~ THEN BEGIN A112.2A
SAY ~*Maethor flushes at your question, clealy uncomfortable.* Oh no. No, no. My mother found him on the streets of Suldanessellar when she was already pregnant with me. He was lost and trying to find the Queen's palace. There's no good way to say this, but my mother had a taste for boys and a talent for finding them. Something about their youth rejuvenated her.~
=~I don't know... Anyway, Cýrontîr had run away from home in search of adventure. The fact that he had neither work nor shelter made him an easy target. I'm sure she offered him bed, board, and easy coin back then. By the time I was born, he wouldn't have easily gotten away from her.~
++ ~Well, he doesn't seem to have gotten that bad a deal. Clearly he became close to you.~ + A113A
++ ~You know, there are easier and even less expensive ways of hiring a nanny.~ + A113E
END

IF ~~ THEN BEGIN A113E
SAY ~*For a moment, Maethor merely stares at you. Then he bursts out laughing.* There are indeed. She might have chosen to mend her strained relationship with her parents, for one. They might well have helped her with me in the way they had helped her with Liria. But her priorities were different. She did not want them interfering in her life and she wasn't really concerned about cost. More than anything else, I think the idea of both having her life exactly the way she wanted it and having a mûl... in your words, a sort of thrall... under her control must have been appealing to her.~
IF ~~ THEN + A113A
END

IF ~~ THEN BEGIN A112B
SAY ~Among my people it is referred to as 'The Ten Black Days of Eleint.' Prince Alemander of Tethyr deposed his father, Alemander IV, with the help of the peasantry. However, his plan backfired when his trusted ally, General Sharboneth, betrayed him and arranged for a fire to be set that would trap the Prince in the castle. With the whole family dead and the military divided into factions, the common folk were left to speculate about their future.~
=~As news of the fall of the royal family spread, so did the chaos and anti-royalist sentiment. For ten days, anyone suspected of intimate connection to the royal family was put to the sword. The nobles who were the biggest supporters of the royal family also came under attack; some living in the countryside discovered their farmhands armed and pounding on their manor doors in those days.~
=~And, royalist plots aside, the common folk always assumed the elves of Tethir must have been involved. Localized violence turned into raging forest fires and unorganized warparties. I don't know who brought up the subject of leaving, first, Naneth or Cýrontîr, but once the topic was broached, we had long arguments over whether it was the best option. There was no question that Naneth and I would leave.~
=~Naneth's patrons were telling her that it was dangerous to live so close to Adan and that her lack of distinction in who she'd take as a customer would come back to punish her.  So Cýrontîr arranged through his connections at court for us to be accompanied by an armed guard.~
++ ~Gods, Maethor. That sounds terrifying.~ + A112.1
++ ~'Intimate connection'? You've mentioned what happened to your mother... Was that related?~ + A112.2
END

IF ~~ THEN BEGIN A112.1
SAY ~It was. It's strange to me that of all those who claimed to love my mother, only Cýr and me would willingly face danger with her. I've mentioned that Naneth always had several exceptionally tolerant lovers...she called them her 'favorites'...staying at our house. Most of them were like obnoxious guests; you know, the kind who eat too much, drink too much, stay up carousing and singing too late in the evenings and leave a mess behind.~
=~They'd show up, hang around for a night or two to enjoy Naneth's company, and then go back to their other lives. Cýrontîr was the only one who actually lived with us. Naneth used to tease him and say he was my real nana, but she conveniently forgot that she'd brought him home with that purpose in mind. *Maethor points up at the sky, outlining the faint curve of the moon.* Whenever I can see the moon and the Tears during the day I think about Cýrontîr.~
=~That's what his name means: 'Looks at the moon.'. He was a scribe for the royal treasury, but he told me once he hoped to work in Ellesime's court as an astronomer. At night, when Naneth would go out to amuse some patron of hers, he would take care of me. He would feed me, brush and braid my hair, give me my bath, dress me in my nightgown... that sort of thing. Frankly, he was better at it than Naneth. When he would put me to bed, he didn't just expect me to fall asleep--he would tell me stories from one of his big books and talk to me.~
++ ~I take it he wasn't terribly fond of the others?~ + A112.1B
++ ~I'm sorry that you lost him. You must miss him.~ + A113A
END

IF ~~ THEN BEGIN A112.1B
SAY ~*Maethor laughs humorlessly.* Oh, I well remember his thinly-veiled disdain for whoever else Naneth was favoring--Hargam or Irusc or Leithian or that other one... what was his name?... Canthui? Or any of the dozen others who stayed with us on occasion. Naneth's constant need for lively company was probably one of the reasons he had lodgings at Court. Most of his belongings were stored in a small room off the kitchen and his favorite chair for reverie was a permanent fixture on our roof, but he would have needed a place to escape to.~
= ~Unlike any of my mother's other lovers, he was constantly attempting to get her to change. When he would drink, he'd speak his mind openly. Then they would have terrible fights. They would argue, she would storm out, and he would yell after her not to expect him to be at home when she came back. *sigh* They both knew that was an empty threat. No matter how long she'd been gone, he would not leave. Tybalt arranged to send his body back to his family in Evermeet, so I suppose he did escape in the end.~
++ ~A tragic end. Gods, Maethor. You didn't see him cut down, did you?~ + A114A
++ ~Sounds like he had a difficult relationship with your mother.~ + A114.1A
++ ~What about your mother?~ + A114.1
END

IF ~~ THEN BEGIN A112.2
SAY ~Perhaps. When I think of what it must have looked like to the peasantry...A well-appointed travel-wagon, six well-armed Elven guards, and an exceptionally beautiful Elven woman riding hell-bent for Amn... I can understand why they recognized her as one of Prince Alemander's mistresses.~
=~She was beaten so severely that her face and body were unrecognizable. *Maethor shakes his head to clear the memory.* I doubt we would have been much safer remaining at home, however. Many of our former neighbors died in the raging forest fires the edain set. That or were cut down trying to flee. We were too close to the edge of the wood and too far away to expect protection from Suldanessellar.~
++ ~I'm truly sorry, Maethor.~ + A113A
END

IF ~~ THEN BEGIN A112C
SAY ~I could say the same for you. And almost for the same reason; we both lived in a place where being a child meant being a nuisance. Looking back, I remember having a few friends... Milui, for one. But he was an orphan who lived and worked at one of the Queen's stables. Noone cared whether he would play with me. Having a courtesan for a mother guaranteed that almost all of the other children I knew weren't allowed to play with me. There was too much unspoken fear that I'd grow up to be just like her and corrupt all those young lads and lasses.~
++ ~Ugh. What an attitude. But back to Cýrontîr. What made you think of him?~ + A112A
END

IF ~~ THEN BEGIN A113A
SAY ~Funny that... It's been years, but my sorrow still seems fresh. Cýrontîr had lodgings at Court, to which he would occasionally retreat. I remember he kept books and his formal clothing there, but most of his belongings were stored in a small room off the kitchen and his favorite chair for reverie was a permanent fixture on our roof. Unlike any of my mother's other lovers, he was constantly trying to get her to change.~
=~When he would drink, he'd speak his mind openly. Then they would have terrible fights about her behavior. They would argue, she would storm out, and he would yell after her not to expect him to be at home when she came back. *sigh* They both knew that was an empty threat. No matter how long she'd been gone, he would not leave. Tybalt arranged to send his body back to his family in Evermeet, so I suppose he did escape in the end.~
++ ~A tragic end. Gods, Maethor. You didn't see him cut down, did you?~ + A114A
++ ~Sounds like he had a difficult relationship with your mother.~ + A114.1A
++ ~What about your mother?~ + A114.1
END

IF ~~ THEN BEGIN A114.1A
SAY ~Yes. He would say that he wanted to have a wife and family. Naneth just laughed and would mockingly enquire when he planned to start looking for them. Whatever his hopes were, I don't believe he ever expected her to marry him or give him children.~
=~He might have had dreams of being the only man in her life, because I remember his thinly-veiled disdain for whoever else Naneth was favoring--Hargam or Irusc or Leithian or that other one... what was his name?... Canthui? Or any of the dozen others who stayed with us on occasion. And he steadfastly hated the prostitution. But he couldn't control her; rather, she mostly controlled him.~
++ ~Did you see what happened to him? I mean in the attack.~ + A114A
++ ~What did you do about your mother?~ + A114.1
END

IF ~~ THEN BEGIN A114.1
SAY ~For reasons I understand, but which make my heart ache, my sister Liria and Tybalt decided to burn her body and scatter the ashes to the winds. They said that if we buried her, there would be those who would try to steal her body and make use of it.~
=~She'd been born Fey'ri... part succubus... from a strain of mixed blood that ran through my mother's family... and that made her a natural spell-caster. What necromancer could resist the opportunity to bring her back and make use of her... So they destroyed her. I hope she is permitted to enter Arvanaith. She was never so much a demon that she belonged in the voids....~
++ ~Do you remember the attack?~ + A114A
END

IF ~~ THEN BEGIN A114A
SAY ~*Maethor pauses at your comment.* That's a story for another time, <CHARNAME>. Your ears surely must be tired by my endless jabbering. Come, let's catch up with the others.~
IF ~~ THEN EXIT
END

//MaethTalk 13: A New Cloak (With Belt)

IF ~Global("TIMaethTalks","GLOBAL",26) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT13
SAY ~*Maethor seems even more nervous than usual. At a break, you call him over.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A120
END

IF ~~ THEN BEGIN A120
SAY ~Do you have a moment, <CHARNAME>? I have something for you!~
++ ~Okay. What's going on?~ + A120A
++ ~Not right now.~ DO ~SetGlobal("TIMaethLT13Delay","GLOBAL",1)~ + A120B
++ ~No. I don't have time for your foolishness.~ + A120C
END

IF ~~ THEN BEGIN A120A
SAY~*He hands you a bundle, wrapped up in burlap.*~
++ ~Thanks.~ + A120AA
END

IF ~~ THEN BEGIN A120AA
SAY~Gin hannon, <CHARNAME>. Gin hannon an pân. I have a present for you.~
+ ~OR(2) RACE(Player1,ELF) RACE(Player1,HALF_ELF)~ + ~You're welcome. *indicating the bundle.* What is this?~ + A121A
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~huh?~ + A121B
++ ~What was that? *indicating the bundle.* And this?~ + A121C
END

IF ~~THEN BEGIN A120B
SAY ~It can wait, I guess.~
IF ~~ THEN EXIT
END

IF ~~THEN BEGIN A120C
SAY ~*Maethor looks heartbroken. He hesitantly stands there a moment, and then nods.* I should have expected as much. Do you at least want to know what's in the package?~
++ ~*Sigh.* Alright, Maethor. I'm sorry for being grumpy. What's in the package?~ + A121A
++ ~No.~ + A120D
END

IF ~~THEN BEGIN A120D
SAY ~*Maethor turns away without another word. You never do find out what it was he wanted to give you.*~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A121A
SAY~Open it and you'll see! *Maethor's excitement is contagious and you eagerly begin to unwrap the bundle.*~
++ ~Uhhhh....~ + A122A
++ ~What the.... What is this, Maethor?~ + A122A
END

IF ~~ THEN BEGIN A121B
SAY~Sometimes you're just thick, <CHARNAME>! I thanked you for everything you've done for me. Now open it! *Maeth's excitement is contagious and you eagerly begin to unwrap the bundle.*~
++ ~Uhhhh....~ + A122A
++ ~What the.... What is this, Maethor?~ + A122A
END

IF ~~ THEN BEGIN A121C
SAY~Sorry. I let my excitement get the best of me. I thanked you for everything you've done for me. Now open it! *Maeth's excitement is contagious and you eagerly begin to unwrap the bundle.*~
++ ~Uhhhh....~ + A122A
++ ~What the.... What is this, Maethor?~ + A122A
END

IF ~~ THEN BEGIN A122A
SAY~*Once upwrapped, the bundle is revealed to be a long cloak of embroidered cloth. Looking at it, and at Maeth's face, you can tell he put a great deal of effort into producing a garment that will admirably fulfil your need to stay dry and warm in the worst of weather.~
=~The problem, however, is that it is, without a doubt, the ugliest cloak you've ever seen. Maethor has evidently painstakingly pieced the hood and selected a fine, dense trim. However, his choice of colors for the hood, body, and trim are both bizarre and garish.~
=~It does not seem possible.  Maethor has selected three incredibly bright and garish colors, managed to combine a hood of one color with a body of another color that clashes and decided to add trim in a third color that not only emphasizes the garishness of all three colors but clashes hideously with both hood and body. You find yourself holding your breath to avoid revealing your shock.* Do you like it? I've been working solidly at it for days!~
++ ~Uhhhh....~ + A123A
++ ~By the gods, Maethor... You have been working hard, haven't you?~ + A123B
++ ~Damn, Maethor. I'm speechless.~ + A123C
END

IF ~~ THEN BEGIN A123A
SAY~*Your lack of reaction, and possibly your facial expression gives you away. Maeth's face falls and, quietly, he lays a hand on your shoulder.* You don't have to wear it, <CHARNAME>. If it disappears from your backpack one day, I'll understand. I...I have a lot of trouble matching colors.~
=~I asked the woman selling cloth at the last town we were at if she had any heavy pieces of elven wool so I could put together a cloak for you. She showed me some samples, but I guess she just wanted to sell some stock that wasn't moving and saw me as a willing fool.~
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~No, no, Maethor. It's not that. It's just...~ + A124AR
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~No, no, Maethor. It's not that. It's just...~ + A124AX
++ ~Probably. You need to be more careful with your money. You might have asked someone else's opinion, you know.~ + A124.1
END

IF ~~ THEN BEGIN A124AR
SAY~*Maethor leans over, giving you a brief, but sweet kiss.* Ugly. You're too kind to me, my darling <CHARNAME>. Perhaps at the next town, we can both pick out a garment you're willing to wear. The important thing is that you're dry in the next rainstorm and warm when it snows. Give that to the next blind beggar you see... I'd like to think someone will enjoy it. *He sticks his hands in the pockets of his tunic and turns away*.~
IF ~~ THEN DO ~GiveItemCreate("UGCLCK",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A124AX
SAY~*Maethor pats you on the shoulder.* Ugly. You're too kind to me, <CHARNAME>. Perhaps at the next town, we can both pick out a garment you're willing to wear. The important thing is that you're dry in the next rainstorm and warm when it snows. Give that to the next blind beggar you see... I'd like to think someone will enjoy it. *He sticks his hands in the pockets of his tunic and turns away*.~
IF ~~ THEN DO ~GiveItemCreate("UGCLCK",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A124.1
SAY~*Maethor sighs.* I know. I was so wrapped up in making it a surprise that I took a chance that my color matching wouldn't be too awful. But I was wrong, wasn't I? It's ugly. Perhaps at the next town, we can both pick out a garment you're willing to wear. The important thing is that you're dry in the next rainstorm and warm when it snows. Give that to the next blind beggar you see... I'd like to think someone will enjoy it. *He sticks his hands in the pockets of his tunic and turns away.*~
IF ~~ THEN DO ~GiveItemCreate("UGCLCK",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A123B
SAY~I have, indeed! *He proudly points out the careful stitching and embroidery.* See? I've even sealed the stitches so that moisture can't get through. And it's been waterproofed and spell-bound to provide some protection from attack. his tilted eyes glow slightly with his eagerness, reminding you of his mixed bloodline.* Try it on and see if it's long enough!~
++ ~Um, no. Frankly, Maethor, it's just not the sort of thing I can wear. I know you tried hard. I'm sorry. It's...~ + A124A
+ ~!Global("TIMaethRomanceActive","LOCALS",1)~ + ~Alright.~ + A125C
+ ~Global("TIMaethRomanceActive","LOCALS",1)~ + ~Alright.~ + A125CR
END

IF ~~ THEN BEGIN A123C
SAY~*You don't consider yourself the sort of person who intentionally sets out to offend someone, but your expression and exclamation make Maethor step back a pace and look at you crossly.* You don't have to wear it, <CHARNAME>, but you might have tried a little harder not to act like you've seen something dead. I know I have trouble matching colors.~
=~There was a woman selling cloth at the last town we were. I asked her if she had any heavy pieces of elven wool. She showed me some samples, but I guess she just wanted to sell some stock that wasn't moving and saw me as a willing fool.~
++ ~Don't be like that, Maethor. I can tell you worked on this and...~ + A124A
++ ~*Choking* No, really, it's lovely. I was just surprised, is all.~ + A124B
++ ~Thanks for the gesture. But yes, it's ugly. Ugliest cloak I've ever laid eyes on.~ + A124C
END

IF ~~ THEN BEGIN A124A
SAY~*Maethor leans in and kisses your cheek.* It's ugly.  I know. Gin gohenon. I forgive you. Perhaps at the next town, we can both pick out a garment you're willing to wear. The important thing is that you're dry in the next rainstorm and warm when it snows. Give that to the next blind beggar you see... I'd like to think someone will enjoy it. *He sticks his hands in the pockets of his tunic and turns away*.~
IF ~~ THEN DO ~GiveItemCreate("UGCLCK",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A124B
SAY~Really? *He proudly points out the careful stitching and embroidery.* See? I've even sealed the stitches so that moisture can't get through. And it's been waterproofed and spell-bound to provide some protection from attack. his tilted eyes glow slightly with his eagerness, reminding you of his mixed bloodline.* Try it on and see if it's long enough!~
++ ~Um, no. Frankly, Maethor, it's just too ugly. I'm sorry.~ + A124C
+ ~!Global("TIMaethRomanceActive","LOCALS",1)~ + ~Alright.~ + A125C
+ ~Global("TIMaethRomanceActive","LOCALS",1)~ + ~Alright.~ + A125CR
END

IF ~~ THEN BEGIN A124C
SAY~*Maethor stares at you for a moment, his face a mixture of disappointment and grim amusement. He tilts his head.* You are refreshingly honest. I can't say I'm surprised that I've managed, once again, to botch up the simple task of giving a present, but at least you aren't trying to hide your feelings. Perhaps at the next town, we can both pick out a garment you're willing to wear. The important thing is that you're dry in the next rainstorm and warm when it snows. Give that to the next blind beggar you see... I'd like to think someone will enjoy it.~
IF ~~ THEN DO ~GiveItemCreate("UGCLCK",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A125C
SAY~*You slip the cloak over your shoulders and realize that it feels wonderfully warm and cozy. If you close your eyes, in fact, you suspect that you have never before had such a well-balanced and well-fitted garment. Somewhere at the base of your neck, you sense the magic flowing through the threads.~
=~It really is a cloak of protection, and one of some considerable power. From the glow on Maethor's cheeks, you realize, with a sickening shudder, that you will have to wear this gods-awful garment for at least a few days to please him. Your only hope, as you hear the amused chuckles and whispers of your other companions, is that there'll be some return for your valiant sacrifice.~
IF ~~ THEN DO ~GiveItemCreate("UGCLCK",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A125CR
SAY~*You slip the cloak over your shoulders and realize that it feels wonderfully warm and cozy. If you close your eyes, in fact, you suspect that you have never before had such a well-balanced and well-fitted garment. Somewhere at the base of your neck, you sense the magic flowing through the threads. It really is a cloak of protection, and one of some considerable power.~
=~From the glow on Maethor's cheeks, you realize, with a sickening shudder, that not only will you have to wear this gods-awful garment for at least a few days to please him, but that, like the love-sick wretch you are, you WILL wear it to please him. Your only hope, as you hear the amused chuckles and whispers of your other companions, is that there'll be some return for your valiant sacrifice.~
IF ~~ THEN DO ~GiveItemCreate("UGCLCK",Player1,0,0,0)~ EXIT
END

// (TIMaethTalk 14) LoveTalk 5: 'Lennas nîn.' (With Belt)

IF ~Global("TIMaethLoveTalks","GLOBAL",28)  HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT13.5
SAY ~*Maethor comes up to you and gestures to get your attention.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1)IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A1350
END

IF ~~ THEN BEGIN A1350
SAY ~I'd like to tell you about my family's last day. The trip to Amn. Will you listen?~
++ ~If it's important to you, yes.~ + A1351
++ ~I'm not so sure that I want to hear about it, Maethor.~ + A1351A
++ ~No. I don't want to talk about it.~ + A1351A
END

IF ~~ THEN BEGIN A1351A
SAY ~This...this is very important to me. Does that make a difference?~
++ ~Yes. I'll listen if it's that important.~ + A1351
++ ~No. I'm getting tired of your whining. If you want to be a paladin, I think you should just grit your teeth and forget the past.~ + A1352
++ ~Can't we discuss this later?~ + A1352A
END

IF ~~ THEN BEGIN A1352
SAY ~*Maethor's face goes white, but otherwise, you see no reaction.* You're right. I've been told that before. But someone who really cared about me would not tell me to suffer in silence. I don't think we're suited for each other.~
++ ~You're right. We aren't.~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ + A1352EX
++ ~Look, you're taking this too far. Can't we talk about this later?~ + A1352A
++ ~Oh, very well. I don't want us to have a fight. Tell me about what happened.~ + A1351
END

IF ~~ THEN BEGIN A1352EX
SAY ~Very well.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A1352A
SAY ~I wish we could, but if I don't tell you about what's happened to me now, I won't have the courage to bring it up again.~
++ ~Very well. Tell me about your family's last day.~ + A1351
++ ~I really am not in the mood for this.~ + A1352B
END

IF ~~ THEN BEGIN A1352B
SAY ~Then I don't think we belong together. I'm...I'm hurting right now. *Maethor gives you one last look, and then turns away.* Let's catch up with the others.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A1351
SAY ~*Maethor pauses.* I didn't see the beginning of the end.  I was so tired from packing that I fell asleep in the wagon and didn't notice when the attack started. I think the rioters fought with the guards first and managed to draw most of them away from the travel wagon. Then they must have fought Cýrontîr and struck him down.~
=~I woke when I heard him shouting and the sounds of a struggle as they grabbed Naneth. I was still disoriented from sleep, but my mother's screams went on and on. Then they tipped over the wagon and I was trapped. In the middle of my struggle to free myself, they set the wagon on fire. The smoke was terrible. From under the wagon, I saw Naneth lying in the roadway and the legs of the rioters as they argued about what to do to her.~
++ ~How did you manage to escape?~ + A1353
++ ~Gods above! What happened to her?~ + A1353A
++ ~Where was Cýrontîr?~ + A1353B
END

IF ~~ THEN BEGIN A1353
SAY~The hardest part was disentangling myself from our belongings. Once I got my body clear of that, I managed to crawl free of the burning debris. By then, Tybalt and the other knights had arrived on the scene and had started attacking the rioters.~
=~In the confusion, I avoided attracting the attention of the rioters. I found Cýrontîr under some trees. Among his other injuries, he'd taken an arrow to the chest and it was buried deep. Blood trickled from his lips when he tried to speak to me and there were watery sounds of air with every breath. I tried to plug the gaps with my fingers. With concentration, I healed as much as I could.~
++ ~Then what happened?~ + A1354
END

IF ~~ THEN BEGIN A1353A
SAY~Everything you can imagine. I...I can't...can't... *Maethor gasps a sob and then takes a breath.* I couldn't help her. And I didn't watch. But I heard it all. I thought I would die, too. The hardest part was disentangling myself from our belongings. Once I got my body clear of that, I managed to crawl free of the burning debris.~
=~I was going to go to my mother--die fighting, perhaps, but by then, Tybalt and the other knights had arrived on the scene and had started attacking the rioters. In the confusion, I avoided attracting the attention of the rioters. I found Cýrontîr under some trees. Among his other injuries, he'd taken an arrow to the chest and it was buried deep. Blood trickled from his lips when he tried to speak to me and there were watery sounds of air with every breath. I tried to plug the gaps with my fingers. With concentration, I healed as much as I could.~
++ ~Then what happened?~ + A1354
END

IF ~~ THEN BEGIN A1353B
SAY~I didn't know. But I knew then I wouldn't be able to find out while I was under that wagon. The hardest part was disentangling myself from our belongings. Once I got my body clear of that, I managed to crawl free of the burning debris. By then, Tybalt and the other knights had arrived on the scene and had started attacking the rioters.~
=~In the confusion, I avoided attracting the attention of the rioters. I found Cýrontîr under some trees. Among his other injuries, he'd taken an arrow to the chest and it was buried deep. Blood trickled from his lips when he tried to speak to me and there were watery sounds of air with every breath. I tried to plug the gaps with my fingers. With concentration, I healed as much as I could.~
++ ~Then what happened?~ + A1354
END

IF ~~ THEN BEGIN A1354
SAY ~It wasn't enough. He gripped me close to him with bloody hands and kissed my face. Then the pain made his teeth chatter and I knew he was dying. Further, he knew it, too, and tried to make me leave him: 'Nin awartho, bessenin niben!' But I wouldn't. He took my hands and shared heart-knowledge with me; his childhood home and his boyhood in Evermeet. And then a ship-voyage greatly enjoyed.~
=~He'd bought his passage working as a deck hand. And then how he'd traveled to Tethyr from Athkatla because he wanted to see the great, beautiful Queen. Amongst these memories were images of me as a baby and the joy he felt in raising me. All tinged with the agony of knowing that this was the last sharing we'd have. Then he gifted me with his final breath: 'Lennas nîn.' And that's the last I remember. One of the rioters came up behind me and struck me hard. I have been told since that, even beaten nearly to death, I refused to let go of Cýrontîr.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~'My sweet'? Ai, Maethor. I'm sorry. I don't know what to say...~ + A115A
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~Lennas nîn? What does that mean?~ + A115B
++ ~I begin to see why you have such mixed emotions when you think about your family...~ + A115A
END

IF ~~ THEN BEGIN A115A
SAY ~*Maethor's eyes grow moist and he closes them, fighting back tears.* Earlier in my childhood, my mother was fond of routine. Every night that she wanted to be away, Cýrontîr would take care of me; supper, bath, and then bedtime.~
=~When she wanted to be home, Naneth and Cýrontîr drank together, fought about her behavior, and then, in the company of another favorite, made her bed sing until late in the night. The hoitha, the fights, Naneth's comings and goings were all regular. But then, as I grew, my world shifted.~
=~My legs grew long and I started noticing the gaze of boys my age. I started caring for myself more and asked Cýr to allow me privacy to bathe and groom myself. He was happy to do it because it gave him more time for his own pursuits--star-gazing and music. My hair, always long and thick, fell far down my back, and Cýr began to braid it in the manner of women he saw at court.~
++ ~I can see that he was close to you.~ + A115A1
++ ~What does this have to do with what happened later?~ + A115A2
++ ~*Yawn.* Another boring scene of domestic bliss...~ + A115A3
END

IF ~~ THEN BEGIN A115A1
SAY ~Yes. He enjoyed seeing me become an adult. He especially liked it when my mother started cutting some of her clothes down to fit me and embellished them with much beadwork and embroidery. When she sewed, she would tell me of the parties she went to. I started honoring Angharradh because I'd had the first blood-cycle that proved my adulthood. The pattern of my nights also changed...~
=~The nights Naneth had to leave, Cýrontîr stopped enforcing Naneth's routines... He'd always been indulgent, but then he'd let me stay awake until the stars and the moons were bright in the sky. Those nights he would let me wear Naneth's nightgowns and would put Naneth's paints on me if I asked.~
=~He'd play whatever game I wanted or take me up to the roof to look at the stars. He called me 'Bainas vorn'--dark beauty. I absolutely adored him then. He even let me drink the mead he'd brewed.~
++ ~The first time I drank I ended up retching my guts out in the grass behind the tavern. My friends all laughed, but mostly they were just glad it wasn't them.~ + A115.1A
++ ~You shouldn't have been drinking Maethor.~ + A116A
++ ~Eccchhhh! That's no life for a child, Maethor.~ + A115.1AB
END

IF ~~ THEN BEGIN A115A2
SAY ~I'll get to that. It's all tied up together in one painful bundle. Anyway, Cýrontîr enjoyed seeing me become an adult. He especially liked it when my mother started cutting some of her clothes down to fit me and embellished them with much beadwork and embroidery. When she sewed, she would tell me of the parties she went to. I started honoring Angharradh because I'd had the first blood-cycle that proved my womanhood. The pattern of my nights also changed...~
=~The nights Naneth had to leave, Cýrontîr stopped enforcing Naneth's routines... He'd always been indulgent, but then he'd let me stay awake until the stars and the moons were bright in the sky. Those nights he would let me wear Naneth's nightgowns and would put Naneth's paints on me if I asked.~
=~He'd play whatever game I wanted or take me up to the roof to look at the stars. He called me 'Bainas vorn'--dark beauty. I absolutely adored him then. He even let me drink the mead he'd brewed.~
++ ~The first time I drank I ended up retching my guts out in the grass behind the tavern. My friends all laughed, but mostly they were just glad it wasn't them.~ + A115.1A
++ ~You shouldn't have been drinking Maethor.~ + A116A
++ ~Eccchhhh! That's no life for a child, Maethor.~ + A115.1AB
END

IF ~~ THEN BEGIN A115A3
SAY ~*Maethor glances at you and laughs bitterly.* Domestic bliss? Hardly. The tension at times was unbearable; my mother never took fewer than two favorites to bed with her in the evening. You could tell that she liked the competition, but what was less obvious was that she really enjoyed the act of forcing her will on someone--more than the act of love itself...~
=~Anyway, Cýrontîr enjoyed seeing me become an adult. He especially liked it when my mother started cutting some of her clothes down to fit me and embellished them with much beadwork and embroidery. When she sewed, she would tell me of the parties she went to.~
=~I started honoring Angharradh because I'd had the first blood-cycle that proved my womanhood. The pattern of my nights also changed... The nights Naneth had to leave, Cýrontîr stopped enforcing Naneth's routines... He'd always been indulgent, but then he'd let me stay awake until the stars and the moons were bright in the sky. Those nights he would let me wear Naneth's nightgowns and would put Naneth's paints on me if I asked.~
=~He'd play whatever game I wanted or take me up to the roof to look at the stars. He called me 'Bainas vorn'--dark beauty. I absolutely adored him then. He even let me drink the mead he'd brewed.~
++ ~The first time I drank I ended up retching my guts out in the grass behind the tavern. My friends all laughed, but mostly they were just glad it wasn't them.~ + A115.1A
++ ~You shouldn't have been drinking Maethor.~ + A116A
++ ~Eccchhhh! That's no life for a child, Maethor.~ + A115.1AB
END

IF ~~ THEN BEGIN A115B
SAY ~It means 'my sweetness.' *Maethor's eyes grow moist and he closes them, fighting back tears.* Earlier in my childhood, my mother was fond of routine. Every night that she wanted to be away, Cýrontîr would take care of me; supper, bath, and then bedtime. When she wanted to be home, Naneth and Cýrontîr drank together, fought over her patrons, and then, in the company of another favorite, made her bed sing until late in the night.~
=~The hoitha, the fights, Naneth's comings and goings were all regular. But then, as I grew, my world shifted. My legs grew long and I started noticing the gaze of boys my age. I started caring for myself more and asked Cýr to allow me privacy to bathe and groom myself. He was happy to do it because it gave him more time for his own pursuits--star-gazing and music. My hair, always long and thick, fell far down my back, and Cýr began to braid it in the manner of women he saw at court.~
++ ~I can see that he was close to you.~ + A115A1
++ ~What does this have to do with what happened later?~ + A115A2
++ ~*Yawn.* Another boring scene of domestic bliss...~ + A115A3
END

IF ~~ THEN BEGIN A115.1A
SAY ~Ugh. What a story! I hope you learned your lesson from that. Fortunately, I didn't drink enough to get nauseated. Just enough to get happy and sleepy.~
++ ~Yes, I learned how to drink moderately.~ + A115.2
++ ~I wish I had learned my lesson. I'm a slow learner sometimes.~ + A115.2A
END

IF ~~ THEN BEGIN A115.1AB
SAY ~No, it isn't. But when does anyone ever have the chance to choose what their life is going to be like? Even adults find that their choices lead to nasty surprises, you know? Take even something as simple as drinking. You take a sip, it makes you feel good. You finish your bottle and everyone around you is your friend. It's only after a night of chasing pleasure that you get the surprise ending--you start feeling nauseated...~
IF ~~ THEN + A115.2A
END

IF ~~ THEN BEGIN A115.2
SAY ~Good for you. My grandmother would have beaten Cýrontîr with a stick if she'd known I was drinking... But how I wanted to be grown. It was deliciously wicked to drink with Cýrontîr. The mead was thick and a little bitter, but I could taste the honey in it and it made me feel warm and happy inside. We'd sing together songs we both knew or I'd dance for him while he played his smallpipes...~
=~*Maethor closes his eyes and his breaths become shallow.* By Corellon, this is hard. When we would drink, instead of putting me in my own bed, Cýrontîr would carry me to Naneth's bed. He'd bring out one or two of these big books he'd acquired and we'd cuddle in the blankets while he read to me these incredible legends of the Seldarine and the grand heroes of old. I always tried to stay awake, but finally I'd fall asleep.~
++ ~That sounds like you had a nice time, Maethor. Why are you so sad about your memories?~ + A117AB
++ ~Go on, Maethor.~ + A117AX
++ ~Okay. All seems well enough. Where's the catch?~ + A117AB
END

IF ~~ THEN BEGIN A115.2A
SAY ~Much in life involves moderate behavior. It can be tough, I know. Anyway, my grandmother would have beaten Cýrontîr with a stick if she'd known... But how I wanted to be grown. It was deliciously wicked to drink with Cýrontîr. The mead was thick and a little bitter, but I could taste the honey in it and it made me feel warm and happy inside. We'd sing together songs we both knew or I'd dance for him while he played his smallpipes...~
= ~*Maethor closes his eyes and his breaths become shallow.* By Corellon, this is hard. When we would drink, instead of putting me in my own bed, Cýrontîr would carry me to Naneth's bed. He'd bring out one or two of these big books he'd acquired and we'd cuddle in the blankets while he read to me these incredible legends of the Seldarine and the grand heroes of old. I always tried to stay awake, but finally I'd fall asleep.~
++ ~That sounds like you had a nice time, Maethor. Why are you so sad about your memories?~ + A117AB
++ ~Go on, Maethor.~ + A117AX
++ ~Okay. All seems well enough. Where's the catch?~ + A117AB
END

IF ~~ THEN BEGIN A116A
SAY ~I know. My grandmother would have beaten Cýrontîr with a stick if she'd known... But how I wanted to be grown. It was deliciously wicked to drink with Cýrontîr. The mead was thick and a little bitter, but I could taste the honey in it and it made me feel warm and happy inside. We'd sing together songs we both knew or I'd dance for him while he played his smallpipes...~
= ~*Maethor closes his eyes and his breaths become shallow.* By Corellon, this is hard. When we would drink, instead of putting me in my own bed, Cýrontîr would carry me to Naneth's bed. He'd bring out one or two of these big books he'd acquired and we'd cuddle in the blankets while he read to me these incredible legends of the Seldarine and the grand heroes of old. I always tried to stay awake, but finally I'd fall asleep.~
++ ~That sounds like you had a nice time, Maethor. Why are you so sad about your memories?~ + A117AB
++ ~Go on, Maethor.~ + A117AX
++ ~Okay. All seems well enough. Where's the catch?~ + A117AB
END

IF ~~ THEN BEGIN A117AB
SAY ~In my life, <CHARNAME>, very little actually was what it appeared to be on the surface. It was like drinking too much. One moment, you're laughing and the next, you're wondering why your stomach is heaving...~
IF ~~ THEN + A117AX
END

IF ~~ THEN BEGIN A117AX
SAY ~*Maethor places his fingers on her lips, biting his nails.* Later on, I wake up because Cýrontîr is undressing me. He slowly takes off Naneth's nightgown and gazes at me fondly...even reverently. He eagerly runs his fingers over my skin. Sometimes he puts perfumed oil on me and rubs my feet or my back. It's so strange.~
=~Cýrontîr saw me naked often enough during my early childhood and never acted like this before. Something had changed in the time since he taught me my numbers by counting on my fingers... I'm not with the Cýrontîr I've known my whole life.~
++ ~By the gods! No!~ + A117.3A
++ ~What?! What HAD changed?~ + A117.1A
++ ~Does this mean what I think it means?~ + A117.1B
END

IF ~~ THEN BEGIN A117.1A
SAY ~Me. I'd reached the age of adulthood. Physically, anyway. And his attitude had changed. Suddenly I wasn't a child to take care of.~
++ ~But he was like a father to you before then... How could he change like that?~ + A117.2A
++ ~That's pretty bad, Maethor. Why would he do that?~ + A117.2
END

IF ~~ THEN BEGIN A117.2A
SAY ~I think that living with my mother, day to day, had changed him. Naneth wasn't...normal. It's not just that she was a courtesan; her personal tastes were unnatural. He and I were both exposed to them. Both of us were forced to personally endure them. Not that that's an excuse...just an explanation.~
IF ~~ THEN + A117.3A
END

IF ~~ THEN BEGIN A117.2
SAY ~*Maethor shakes her head.* I still don't know. No single answer makes sense and thinking too much about it makes me ill.~
IF ~~ THEN + A117.3A
END

IF ~~ THEN BEGIN A117.3A
SAY ~Should...Should I stop here? You look a little sick, <CHARNAME>.~
++ ~Go on if you need to. I'll be fine.~ + A117A
++ ~Please, yes. I get the message. He...touched you. Probably expected you to touch him as well.~ + A117.4A
END

IF ~~ THEN BEGIN A117A
SAY ~Anyway...He takes off his shirt and breeches and wants me to look at him. I've been old enough to recognize male beauty in other men for several years, but I was always blind to Cýr. It's a surprise to realize that he's not only beautiful, but...um...abundantly virile.~
=~I remember his russet hair. I can visualize his pallor and the blue veins on the back of his hands and his throat. I realize he's much older than the others. I also can't help looking where I shouldn't. I've never seen him naked before. Given the nature of Naneth's tastes, he's been remarkably modest.~
=~I'm well aware of the ways of man and woman by then and his size is intimidating to me. He bids me put a hand on him: 'Bainas vorn, telio nan i 'wib nîn anírog?'~
=~My stomach is queasy. My mouth is too dry to respond, but I suppose it doesn't matter. I would never have refused to touch him. These hideously strange nights are all he's ever asked of me. This man I have loved dearly for years. I am now afraid of him.~
=~Afterwards, I lay my head against his chest as he takes apart the braids he has so lovingly plaited earlier in the evening and runs his fingers through my long hair. 'De i 'ell nîn gin garo, lennas nîn...' 'It is my joy to hold you, my sweet.' I... I can't say any more, <CHARNAME>. But that's where those words come from. Spoken in love and death. It's all the same.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A117.4A
SAY ~Yes. And...yes. I would never have refused to touch him. These hideously strange nights are all he's ever asked of me. And truth be told, I realized that he was beautiful. When he bid me put a hand on him: 'Bainas vorn, telio nan i 'wib nîn anírog?' I didn't refuse.~
=~Afterwards, I lay my head against his chest as he takes apart the braids he has so lovingly plaited earlier in the evening and runs his fingers through my long hair. 'De i 'ell nîn gin garo, lennas nîn...' 'It is my joy to hold you, my sweet.' I... I won't say any more to<DAYNIGHT>, <CHARNAME>. But that's where those words come from. Spoken in love and death. It's all the same.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A117.1B
SAY ~Yes. It does. He took off his shirt and breeches and wanted me to look at him. He wanted me to touch him: 'Bainas vorn, telio nan i 'wib nîn anírog?' And...I couldn't refuse. Afterwards, I lay my head against his chest as he takes apart the braids he has so lovingly plaited earlier in the evening and runs his fingers through my long hair.~
=~'De i 'ell nîn gin garo, lennas nîn...' He says. 'It is my joy to hold you, my sweet.' I... I won't say any more to<DAYNIGHT>, <CHARNAME>. But that's where those words come from. Spoken in love and death. It's all the same.~
IF ~~ THEN EXIT
END

// (TIMaethTalk 15) LoveTalk 6: Jealousy (With Belt)

IF ~Global("TIMaethLoveTalks","GLOBAL",30) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT14
SAY ~*You are taking a momentary break to drink some water when you notice Maethor standing close by. You look at him and nod for him to speak.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A130
END

IF ~~ THEN BEGIN A130
SAY ~At times, <CHARNAME>,I've seen you scowling at me when I'm talking to anyone else. Since I've never intended any offense, I'd like to know the reason.~
++ ~Really?~ + A131
++ ~I'm not so sure that you want to hear about it, Maethor.~ + A131
++ ~I don't want to talk about it.~ + A131
END

IF~~THEN BEGIN A131
SAY ~If... If this is going to go any further, I can't have you angry with me and not be able to tell me. Just the same way I should be able to express my anger. It's unpleasant, but necessary.~
+ ~InParty ("Alora") Global("MaethAlora","LOCALS",0)~ + ~It's almost funny the way Alora whistles at you when she sees you taking off your boots... Is there anything I should know about you and her?~ DO ~SetGlobal("MaethAlora","LOCALS",1)~ + A131C
+ ~InParty("Branwen") Global("MaethBranwen","LOCALS",0)~ + ~Look... I don't know what's happened between you and Branwen, but I don't like it. You stare at her every time she walks by.~ DO ~SetGlobal("MaethBranwen","LOCALS",1)~ + A131F
+ ~InParty("Coran") Global("MaethCoran","LOCALS",0)~ + ~I wanted to ask how you felt about Coran, Maethor.~ DO ~SetGlobal("MaethCoran","LOCALS",1)~ + A131A
+ ~InParty("B!Gavin") Global("MaethGavin","LOCALS",0)~ + ~I've noticed you and Gavin are close, Maethor. And you both lived in Beregost at the same time. Is he an old flame of yours?~ DO ~SetGlobal("MaethGavin","LOCALS",1)~ + A131B
+ ~InParty("Imoen") Global("MaethSquashed","GLOBAL",1) Global("MaethImoen","LOCALS",0)~ + ~I overheard Imoen and you talking about the fact that there's some guy in Beregost that you're in love with. Is this true?~ DO ~SetGlobal("MaethImoen","LOCALS",1)~ + A131D
+ ~InParty("Faldorn") Global("MaethFaldorn","LOCALS",0)~ + ~I don't know how you managed it, but I noticed Faldorn weaving a wreath of fallen leaves. When I asked her about it, she said it was for you. What's going on?~ DO ~SetGlobal("MaethFaldorn","LOCALS",1)~ + A131E
+ ~InParty("Jaheira") Global("MaethJaheira","LOCALS",0)~ + ~It's almost funny, but why does Jaheira seem to single you out for herbal training when she doesn't insist on it for anyone else?~ DO ~SetGlobal("MaethJaheira","LOCALS",1)~ + A131G
+ ~InParty("Garrick") Global("MaethGarrick","LOCALS",0)~ + ~I hate to ask you to break Garrick's heart, but his 'lost puppy' look is really getting nauseating.~ DO ~SetGlobal("MaethGarrick","LOCALS",1)~ + A131GA
+ ~InParty("White") Global("MaethWhite","LOCALS",0)~ + ~Um, Maethor... Here's the issue: I've seen you looking at White. And I've also seen him looking at you. I don't like it.~ DO ~SetGlobal("MaethWhite","LOCALS",1)~ + A131J
+ ~InParty("Valerie") Global("MaethValerie","LOCALS",0)~ + ~Um, Maethor... I know you're fond of Valerie. She's very pretty and I've seen you rub her shoulders and try to comfort her when she's not feeling well. But there's a problem: She only likes girls.~ DO ~SetGlobal("MaethValerie","LOCALS",1)~ + A131K
+ ~InParty("GV#Vynd") Global("MaethVynd","LOCALS",1)~ + ~One thing bothers me above all the rest, Maethor: your...um...attraction to Drow males in general, but to Vynd in particular. Vynd may be amusing, Maethor, but you'll quickly discover how much of a pain in the ass he is if you attract his attention. You'll learn how sharp his tongue is.~ DO ~SetGlobal("MaethVynd","LOCALS",1)~ + 131L
++ ~I feel I'm getting close to you, Maethor. I need to know what kind of relationship you have with Sir Tybalt.~ + A131W
++ ~I've noticed you have a (signed!) copy of the collected adventures of Drizzt Do'Urden that you read...well, more often than anything else. The pictures are....um...well-thumbed. Should I be concerned that you have a...a fondness for him?~ + A131X
++ ~I suppose you've answered my concerns. I'm just not very happy about it. Let me alone for awhile.~ + A131Y
++ ~I told you I didn't want to talk about it.~ + A131Z
END

IF ~~ THEN BEGIN A132
SAY ~Anyone else I should tell you about?~
+ ~InParty ("Alora") Global("MaethAlora","LOCALS",0)~ + ~It's almost funny the way Alora whistles at you when she sees you taking off your boots... Is there anything I should know about you and her?~ DO ~SetGlobal("MaethAlora","LOCALS",1)~ + A131C
+ ~InParty("Branwen") Global("MaethBranwen","LOCALS",0)~ + ~Look... I don't know what's happened between you and Branwen, but I don't like it. You stare at her every time she walks by.~ DO ~SetGlobal("MaethBranwen","LOCALS",1)~ + A131F
+ ~InParty("Coran") Global("MaethCoran","LOCALS",0)~ + ~I wanted to ask how you felt about Coran, Maethor.~ DO ~SetGlobal("MaethCoran","LOCALS",1)~ + A131A
+ ~InParty("B!Gavin") Global("MaethGavin","LOCALS",0)~ + ~I've noticed you and Gavin are close, Maethor. And you both lived in Beregost at the same time. Is he an old flame of yours?~ DO ~SetGlobal("MaethGavin","LOCALS",1)~ + A131B
+ ~InParty("Imoen") Global("MaethSquashed","GLOBAL",1) Global("MaethImoen","LOCALS",0)~ + ~I overheard Imoen and you talking about the fact that there's some guy in Beregost that you're in love with. Is this true?~ DO ~SetGlobal("MaethImoen","LOCALS",1)~ + A131D
+ ~InParty("Faldorn") Global("MaethFaldorn","LOCALS",0)~ + ~I don't know how you managed it, but I noticed Faldorn weaving a wreath of fallen leaves. When I asked her about it, she said it was for you. What's going on?~ DO ~SetGlobal("MaethFaldorn","LOCALS",1)~ + A131E
+ ~InParty("Jaheira") Global("MaethJaheira","LOCALS",0)~ + ~It's almost funny, but why does Jaheira seem to single you out for herbal training when she doesn't insist on it for anyone else?~ DO ~SetGlobal("MaethJaheira","LOCALS",1)~ + A131G
+ ~InParty("Garrick") Global("MaethGarrick","LOCALS",0)~ + ~I hate to ask you to break Garrick's heart, but his 'lost puppy' look is really getting nauseating.~ DO ~SetGlobal("MaethGarrick","LOCALS",1)~ + A131GA
+ ~InParty("White") Global("MaethWhite","LOCALS",0)~ + ~Um, Maethor... Here's the issue: I've seen you looking at White. And I've also seen him looking at you. I don't like it.~ DO ~SetGlobal("MaethWhite","LOCALS",1)~ + A131J
+ ~InParty("Valerie") Global("MaethValerie","LOCALS",0)~ + ~Um, Maethor... I know you're fond of Valerie. She's very pretty and I've seen you rub her shoulders and try to comfort her when she's not feeling well. But there's a problem: She only like girls.~ DO ~SetGlobal("MaethValerie","LOCALS",1)~ + A131K
+ ~InParty("GV#Vynd") Global("MaethVynd","LOCALS",0)~ + ~One thing bothers me above all the rest, Maethor: your...um...attraction to Drow males in general, but to Vynd in particular. Vynd may be amusing, Maethor, but you'll quickly discover how much of a pain in the ass he is if you attract his attention. You'll learn how sharp his tongue is.~ DO ~SetGlobal("MaethVynd","LOCALS",1)~ + 131L
++ ~I feel I'm getting close to you, Maethor. I need to know what kind of relationship you have with Sir Tybalt.~ + A131W
++ ~I've noticed you have a (signed!) copy of the collected adventures of Drizzt Do'Urden that you read...well, more often than anything else. The pictures are....um...well-thumbed. Should I be concerned that you have a...a fondness for him?~ + A131X
++ ~I suppose you've answered my concerns. I'm just not very happy about it. Let me alone for awhile.~ + A131Y
END

IF ~~ THEN BEGIN A131Y
SAY ~*Maethor nods and shakes his head.* Amazing that I made it through a 'discussion' about jealousy and am still alive. Whew! I hope when I get my turn I'm equally good at skewering your...erm...misdeeds. *grin.*~
END

IF ~~ THEN BEGIN A131Z
SAY ~*Maethor looks stern.* If you don't air your concerns now, <CHARNAME>, you best keep them to yourself entirely. It's taken me some time to get up the courage to speak with you now...~
++ ~So be it, then.~ + A131Y
++ ~Very well. What is it?~ + A131
END

IF ~~ THEN BEGIN A132A
SAY ~*Are you saying you are done with me? We're barely more than friends.~
++ ~Yes. Better to know sooner about someone than later and regret it.~ DO ~SetGlobal("MaethRomanceActive","GLOBAL",3) SetGlobal("MAROMCUTBYANOTHER","GLOBAL",1)~ + A132G
++ ~I don't know what I'm saying. Let's just drop it.~ + A132B
++ ~No. I'm just saying that you need to be less passive about telling someone to stop. You're not a weakling.~ + A132C
END

IF ~~ THEN BEGIN A132B
SAY ~*Maethor nods* Gladly. Still, I'm glad you spoke up, <CHARNAME>.~
IF ~~ THEN + A132
END

IF ~~ THEN BEGIN A132C
SAY ~*rolls his eyes* Do you think that a fight will solve everything? You're talking about a party member that you allowed to join in the first place. I do try to handle my problems diplomatically, you know!~
++ ~That's true.~ + A132
END

IF ~~ THEN BEGIN A132D
SAY ~We all have a past, <CHARNAME>. *Maethor says, grimly.*~
= ~Gender(Player1,MALE)~ ~I'm sure there's a stablehand or a library assistant back in Candlekeep who was kind enough to demonstrate to you the proper way 'laeg cari i thela gin', but you don't see me obsessing over it.~
= ~Gender(Player1,FEMALE)~ ~I'm sure there's a stablehand or a library assistant back in Candlekeep who was kind enough to demonstrate to you the proper way 'matho i iaul vîw gin', but you don't see me obsessing over it.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF) Gender(Player1,MALE)~ + ~Only because I haven't described someone 'sharpening MY point' as the saying goes in deep, anguished precision... like you have!~ + A132F
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF) Gender(Player1,FEMALE)~ + ~Only because I haven't described someone 'stroking MY cat' as the saying goes in deep, anguished precision... like you have!~ + A132F
++ ~Assuming a past and hearing about it directly are two different things. I wouldn't say anything that would hurt you!!~ + A132H
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF) Gender(Player1,MALE)~ + ~Damn you elves! I don't know what you said just now, but I think I understand it. I should tell you, or maybe Imoen, about all the times I've had some help 'polishing my spear' as the saying goes! And tell every sodding detail ... like you have!!~ + A132F
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF) Gender(Player1,FEMALE)~ + ~Damn you elves! I don't know what you said just now, but I think I understand it. I should tell you, or maybe Imoen, about all the times I've had some help 'stroking my cat' as the saying goes! And tell every sodding detail... like you have!~ + A132F
++ ~Let's move on before this gets heated. Accepted that we've both had a past we don't want to discuss. Can we drop it?~ + A132B
END

IF ~~ THEN BEGIN A132E
SAY ~*Maethor stares daggers, but his voice is even.* She.... Is.... ONLY.... A.... Friend.... That's all you need to know unless I choose to tell you otherwise myself. Of course, you could ask around the other party members and see what THEY have to say about it. No? Then drop it.~
IF ~~ THEN + A132
END

IF ~~ THEN BEGIN A132F
SAY ~*As soon as the words leave your lips, you realize you have made a grave mistake. Maethor's face goes white. He breathes heavily as seconds tick by and then...then he starts screaming wordlessly at you.~
=~He draws his sword with a hand that visibly shakes. You are stunned by the force of his anger--you've seen it before on the battlefield, where he plows ruthlessly through the party's foes, and your hand strays to your own weapon, but then the screams soften to sobs and tears start to run down his cheeks. He wipes them away, angrily. *~
=~Ah, Cýrontîr... I should not have told you, <CHARNAME>. I should not have trusted such pain with you if I'd thought you would use it against me in a petty argument. I admit I've done you wrong. Now you've done me wrong. There is nothing else between us.~
++ ~I'm sorry, Maethor. Really. I didn't mean it. I was angry.~ + A132H
++ ~Fine.~ + A132G
++ ~*You stay silent, believing that nothing you say will take the sting of your words away.*~ + A132G
END

IF ~~ THEN BEGIN A132G
SAY ~*Maethor breathes heavily and tries to regain his composure.* Forgive me, <CHARNAME>, if I admit that I can't face any more accusations now. I already feel emasculated enough. I'll take what you've revealed to me to heart. But... I also can't forget your words.~
=~You want to win an argument so badly that you'll tell anyone who might be listening about my shame. I'll keep our bargain. Until you dismiss me or my search for Sir Tybalt ends, I'll still fight for you... Die for you, if need be... I am at your command. But I won't love you.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL", 3) IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A132H
SAY ~*Maethor breathes heavily and tries to regain his composure.* Forgive me, <CHARNAME>, if I admit that I can't face any more accusations now. I already feel emasculated enough. I'll take what you've revealed to me to heart.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A132I
SAY ~*Maethor considers your words for a moment, and then a deep blush suffuses his face and neck.* I hope I haven't offended him with... You know... unwanted attention.~
++ ~I doubt he's offended. He's probably used to it. But if you want to be with me, you can't act interested around him. Don't go pinching his butt, okay? Shall we...?~ + A132B
END

IF ~~ THEN BEGIN A132J
SAY ~Whatever I said, I didn't mean to open up a conversation about Sir Tybalt. Not when I'm allowing you to roast me over the coals over every man I've ever talked to!! I promise I will tell you about him later. Gods, there's nothing really to tell, anyway!!~
++ ~Fine.~ + A132
END

IF ~~ THEN BEGIN A132K
SAY ~*Maethor stares at you in exasperation.* Of course you're not scum. After some of the conversations we've had, I'm sure you're suspicious of Tyb's motives. But I'm not ready to talk about him. He and I have had some harsh words in the past and I have some mixed feelings, myself, about his reasons for taking my sister and I in. But he never hurt me, <CHARNAME>, and that's the truth.~
++ ~I hope that's true and not just an example of wishful thinking. But we can let it go for the moment. Right?~ + A132
END

IF ~~ THEN BEGIN A131K
SAY ~*Maethor looks surprised, but not embarrassed, which surprises you.* Intriguing. I hadn't thought of her in that way... Only girls? A pity that I'm wearing this...uhhh...nevermind.~
IF ~~ THEN + A132
END

IF ~~ THEN BEGIN A131A
SAY ~Ummm, yeah. Coran. He's from the city where I was born and hearing his accent reminds me of my home and my mother.~
++ ~Reminds you of your mother? Oh please... He was all over you last time I noticed.~ + A133
++ ~And that's all you have to say? What about his leering?!~ + A133
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~And? He's said some offensive things to you! Hells! No one I care about should hear some of the things he's suggested from someone they barely know!~ + A133B
END

IF ~~ THEN BEGIN A131GA
SAY ~*You are a bit surprised by Maethor's reaction. he blushes more deeply than you expect and looks away in embarrassment.* Yes. Garrick. I'm afraid he's got a crush on me. Could we just...not take it seriously?~
++ ~I suppose, but isn't that leading him on?~ + A131GAA
++ ~I think it would be better if you ended his hopes now if you don't intend to encourage him.~ + A131GAB
END

IF ~~ THEN BEGIN A131GAA
SAY ~I suppose you're right. I will attempt to let him down easy, though. He's such a sweet boy.~
++ ~See that you do. Shall we carry on, then?~ + A132B
END

IF ~~ THEN BEGIN A131GAB
SAY ~I suppose you're right. I will attempt to let him down easy, though, No sense in breaking the heart of such a sweet boy.~
++ ~See that you do. Shall we carry on, then?~ + A132B
END


IF ~~ THEN BEGIN A133
SAY ~*embarrassed* I know we've both gotten out of line. I...I think he was one of my mother's lovers before I was born--I remember seeing a picture of him among my mother's things. But, even so, he seems to know exactly what to say to me and I'm sometimes so rattled, I have trouble doing or saying anything in return. I promise I'll set him straight. Is that enough for you?~
++ ~Just as long as you do. I'll set him straight myself, if you won't.~ + A132
++ ~I've seen and heard too much, Maethor. I don't think I can trust you.~ + A132A
END

IF ~~ THEN BEGIN A133AJ
SAY ~If you think you've seen something, it's not because I have encouraged it! *Maethor sighs loudly and mockingly strikes a sexy pose.* So you think she's into my feet? Heh! Of course she would be...she's a halfling! *snort.* Let's not go there, okay?~
++ ~Okay, okay. You're right... Forgive me?~ + A132B
END

IF ~~ THEN BEGIN A133B
SAY ~*Maethor's eyes widen and he blushes* Oh, gods... please don't remind me. You may not understand it, but somehow he can be obscene without it seeming offensive at the time. He has a way about him... The odd part is that I think he was one of my mother's lovers before I was born--I remember seeing a picture of him among my mother's things.~
=~But, even so, he seems to know exactly what to say to me and I'm sometimes so rattled, I have trouble doing or saying anything in return. I promise I'll set him straight. Is that enough for you?~
++ ~Just as long as you do. If I hear him say anything about 'tyavo i 'wib dîn anirog,' I'll set him straight myself.~ + A132C
++ ~I've seen and heard too much, Maethor. I don't think I can trust you.~ + A132A
END

IF ~~ THEN BEGIN A131B
SAY ~*Maethor lowers his head.* I wouldn't say he is an 'old flame.' More a spark that never caught fire. My first taste of love wasn't so straightforward. That's a painful subject, <CHARNAME>. *looks up.* But he's definately not into me in my current state, so, unless the belt goes... So what about us? There might be more to our friendship in the future. Are you willing to wait and see?~
++ ~Yes. We haven't known each other very long. Things could easily change for both of us. Let's move on.~ + A132B
++ ~I have to be honest, Maethor. I can't overlook your affection for another man. I'm sorry.~ + A132A
END

IF ~~ THEN BEGIN A131C
SAY ~*smiles* Is that your big worry? Alora is just a friend. We have a little in common and I'm curious about the differences between our faiths. I can't speak for her, of course, but she's a lot more bark than bite, so to speak...~
++ ~Well, o.k. I suppose my suspicion is misplaced. Forgive me?~ + A132B
++ ~I've seen more than friendly curiosity when she looks at you.~ + A133AJ
END

IF ~~ THEN BEGIN A131D
SAY ~*Maethor's face flushes bright red and he scowls* You happen to have overheard me? I'm not sure I like the implications of you listening in on my conversations.~
++ ~I didn't mean to! Imoen's voice just...carries! The point is, who is this guy in Beregost?~ + A132D
++ ~Nine Hells, man! Just answer the question!~ + A132E
END

IF ~~ THEN BEGIN A131E
SAY ~Faldorn? Cold-hearted Faldorn? You must be joking. We share a common appreciation of nature. That's it. I respect her views, but...good gods, <CHARNAME>, I like my girls to...erm...be very pretty. She could care less about what she looks like!~
++ ~*abashed* You have a point. Forget I said anything about Faldorn.~ + A132B
++ ~She may be strange, but she may 'clean up pretty.' Mind yourself around her more... especially whenever you strip down to your underclothes to go bathe... gods... You make it very difficult to think straight!~ + A133A
END

IF ~~ THEN BEGIN A133A
SAY ~Hey! At least I don't walk around naked! It's not convenient to only wash when noone else is around. *He frowns, a look of worry crossing his features.* Gods... Faldorn?~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~*Laughs* Let's just say I've noticed that she's as fond of a finely-turned elvish ankle and firm elvish thighs as any of our kin. But I suppose you're right. She's pretty harmless. Will you forgive my hasty words?~ + A132B
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~*Laughs* Let's just say I've noticed she likes a finely-turned elvish ankle and firm elvish thighs as much as any female. But I suppose you're right. She's pretty harmless. Will you forgive my hasty words?~ + A132B
++~Just try to keep that in mind when you go out to bathe, Maethor. You attract attention.~ + A132B
END

IF ~~ THEN BEGIN A131F
SAY ~*Maethor lowers his head and deeply sighs.* I'm sorry, <CHARNAME>. It's not her fault. My feelings are so mixed when I speak to Branwen. Perhaps I have wanted to be more to her than just a friend. She is so beautiful and so strong, but expects so little out of life where love is concerned. If I have acted as if her friendship were a means to an unworthy end, that will stop. *He kicks a bit of stray rock off of the path.* She deserves better than that. As do you.~
++ ~I do understand, Maethor. I like her, too. I suppose I let my jealousy get the better of me. Forgive me.~ + A132B
++ ~You must know that even though she would sleep with you if you asked, she's hesitant to really commit to anyone. You shouldn't chase her around like a love-sick fool if you want to be with me!~ + A132E
END

IF ~~ THEN BEGIN A131G
SAY ~Jaheira? Oh gods... I don't know what is going on with her. She thinks I'm an irresponsible kid who needs what she calls an...'education.' But she does love Khalid, so I don't think she's really interested in me all that much. To be honest, she frightens me.~
++ ~*shudder* Me, too. More than anything else, I pity Khalid. Forget I said anything.~ + A132B
++ ~Oh. O.k. I didn't really think anything was going on. Let's just drop it.~ + A132B
END

IF ~~ THEN BEGIN A131J
SAY ~*Maethor blushes* I didn't think I was being that obvious. Sometimes I find myself watching him and the way he moves and I get caught up... His grace and how light he is on his feet... *pauses.* And I admit, he's upfront and straightforward about his affection for me. He's a good friend to have.~
++ ~Well, mind you it never goes beyond that.~ + A132I
+ ~Gender(Player1,MALE)~ + ~Erm...yes. Let's just say he's also been upfront and straightforward with me as well. If we're to make a go of this, though, you shouldn't lead him on.~ + A132I
+ ~Gender(Player1,FEMALE)~ + ~Well, no matter how attractive he is, you're with ME. Keep that in mind.~ + A132I
END

IF ~~ THEN BEGIN A131W
SAY ~*Maethor stares at you for a long time without speaking, his face like well-carved stone. Then he speaks, slowly and with a great effort as if he barely has the strength.* I won't talk about Tyb now. Someday...when you really want to know and aren't driven merely by jealousy, I'll explain how it is between him and me.~
=~He saved my life. Helped my sister. Saw to it that I was properly fed, clothed, and educated. He gave me direction and gainful employment. He even offered to adopt Artamir as his own. How could I ever speak ill of such a man? I owe everything to him.~
++ ~That's exactly what I mean, Maethor. You yourself have said he wasn't like a father.~ + A132J
++ ~And I'm scum for questioning his motives?~ + A132K
++ ~I can see I've touched a nerve. We can talk about this later, can't we?~ + A132B
END

IF ~~ THEN BEGIN A131X
SAY ~*Maethor grins, his cheeks red.* Oh, come on, <CHARNAME>! Haven't you ever had any fantasies? The chance that Drizzt Do'Urden is going to appear and whisk me away to a fantasy land of magical love and fantastic sex is impossibly remote. I...I just like what Drow men look like and Drizzt is both...erm...hot...and heroic. I don't pester you about your impossible fantasies...~
++ ~When you put it that way, I guess not. Try to be less obvious about it, if you please...~ + A132B
END

IF ~~ THEN BEGIN A131L
SAY ~Why so testy, <CHARNAME>? Has he shot your hopes down, too? *Maethor shakes her head slowly.* Ah... Vynd. I can't explain it. I...I just like what Drow men look like and Vynd is sexy in a way that appeals to me. His voice is incredible and his body...Oh, Gods, I find myself watching him peel off a sweaty shirt some evenings and... well, I better not go there. Fortunately for us, I know he thinks of me as emotionally overwrought and intellectually deficient... So, you have nothing to worry about with him.~
++ ~I guess not. but you could try drooling a little less...~ + A132B
++ ~I'm not actually worried about him. I'd just like it if you looked at me that way.~ + A132VY
END

IF ~~ THEN BEGIN A132VY
SAY ~We could try black body paint... *Maethor chuckles.* I'll be more discreet. And I'll try to appreciate you more. I do like what you look like. I'll be more obvious about THAT.~
++ ~Shall we carry on, then?~ + A132B
END

//MaethTalk 16: Beauty, or, Maethor wrestles with Love (no conditions)

IF ~Global("TIMaethTalks","GLOBAL",32)  HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT15
SAY ~*You stop for a moment to catch your breath and tighten a strap on your pack that has somehow worked loose, when you notice Maethor hanging close to the periphery of your vision, wringing his hands. You look up and he reddens, ducking his head.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A140
END

IF ~~ THEN BEGIN A140
SAY ~Might I have a word with you, <CHARNAME>?~
++ ~Certainly.~ + A140A
++ ~That depends. Do you have a real question for me or is this another of the philsophical points you waste time angsting over?~ DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ + A140B
++ ~No. I have too much else I need to think about.~ + A140C
END

IF ~~ THEN BEGIN A140A
SAY ~*Maethor still won't meet your eyes, gazing at a spot on the distant horizon, apparently considering carefully what he wants to say.* How do you define beauty?~
++ ~*You shrug.* Do you mean beauty, generally speaking, or beauty as in 'am I beautiful'?~ + A141A
++ ~I don't try to define it. I know it when I see it.~ + A141B
++ ~I tend to go by the old saying, 'Beauty is as Beauty does.'~ + A141C
END

IF ~~ THEN BEGIN A140B
SAY ~*Maethor scowls.* Yes, it's a real question. Or it will be, if you give me a chance. Do you want to hear my question, or not?~
++ ~Well, okay.~ + A140A
++ ~Just trying to lighten the mood, Maeth. Stop being so serious.~ + A142A
++ ~Actually, no.~ + A140C
END

IF ~~ THEN BEGIN A142A
SAY ~*Maethor sighs.* It's probably good that you have a sense of humor, but it always ends up making me feel like I'm humorless.~
IF ~~ THEN + A140A
END

IF ~~ THEN BEGIN A140C
SAY ~*Maethor nods.* I won't bother you, then. Do you wish to talk about it later?~
++ ~Yes. Let me get a few things done, first.~ DO ~SetGlobal("TIMaethLT15Delay","GLOBAL",1)~ + A140.1A
++ ~No. I've got too much else I need to think about.~ + A140.1
END

IF ~~ THEN BEGIN A140.1
SAY ~This...this is important to me. Are you sure you aren't interested?~
++ ~Look, Maethor. We will discuss this later. I promise.~ DO ~SetGlobal("TIMaethLT15Delay","GLOBAL",1)~ + A140.1A
++ ~Yes, I'm sure.~ + A140.1B
END

IF ~~ THEN BEGIN A140.1A
SAY ~Okay. I'll come back to talk later.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A140.1B
SAY ~Very well. I'll leave you be.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A141A
SAY ~*Maethor splutters for a moment, unsure of how to respond.* I wasn't asking about me!! I'm trying to ask what you think is beautiful.~
++ ~You have to give me a context, Maethor. You're so hesitant to speak definitively that I never know what you're getting at.~ + A141C
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~You are. *Kiss him.*~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A143B
++ ~*Grinning.* Waterfalls. Butterflies. A tree haloed by the setting sun. Whiskers on kittens. That sort of thing.~ + A143C
END

IF ~~ THEN BEGIN A141B
SAY ~Yes, yes. I used to think the same thing. You know: beauty is one's personal taste. But then I was questioned about my taste and I found I couldn't define it strictly as one thing or another. I didn't know why I thought something beautiful.~
IF ~~ THEN + A141B_01
END

IF ~~ THEN BEGIN A141C
SAY ~I've always found goodness of intention and natural charitableness to be incredibly beautiful. But then I was questioned about why I wasn't enraptured by charitable old Bram at the Temple and not only did I feel I didn't know beauty at all, but I questioned what did enrapture me. And hated myself for questioning!~
IF ~~ THEN + A141B_01
END

IF ~~ THEN BEGIN A141B_01
SAY ~The strangest part is when those I respect have said I was beautiful. I look at myself and cannot see it. How did I become so lost and so blind? Please... Can you define beauty in a way even a simpleton like me can understand?~
++ ~Is beauty meant to be defined? I'm comfortable with just accepting it.~ + A144A
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~You are beautiful. Don't question that, at least.~ + A144B
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Why do I always feel like you're hinting at something you won't directly say? Is this about me? Here. Let me prove my feelings, at least! *Kiss him.*~ + A143B
++ ~Don't ever let someone else's ridicule make you question your feelings about someone you love.~ + A144B
++ ~I don't think you're lost. Beauty is like love; it's hard to define. That's probably why both are associated with the same goddess.~ + A144C
END

IF ~~ THEN BEGIN A143B
SAY ~Maethor's lips are warm and moist, and it feels natural to reach out for him, pulling him awkwardly into an embrace. You slide one hand behind his back, pulling his warm body close against you, while you wind the fingers of your other hand into the thick, silky hair at his neck.~
=~For a few moments, he returns your kiss, his hands sliding down and caressing your back. You discover that he has been longing to be touched. The increasing hardness of his groin against yours is arousing as he presses himself against you... But then he pushes himself away, reddening. His hands grip your shoulders, but his arms rigidly keep his body at a distance.~
+ ~Global("TIMaethRomanceActive","GLOBAL", 1)~ + ~Don't shove me away, Maethor. Tell me what's wrong. Don't you want to be loved? Aren't you tired of waiting?~ + A144BA
+ ~Global("TIMaethRomanceActive","GLOBAL", 1)~ + ~Look. I want you and clearly you want me, too. Why the hesitation?~ + A144BB
+ ~Global("TIMaethRomanceActive","GLOBAL", 1)~ + ~Maethor, your hesitation is maddening!~ + A144BC
END

IF ~~ THEN BEGIN A143C
SAY ~*Maethor looks at you and shakes his head.* One of us, frankly, is simpleminded. Unfortunately, I can't tell if it's you or me. Why do I bother, <CHARNAME>?~
++ ~Oh, come on. Don't be that way. I just hate to see you so unhappy. Tell me what's on your mind.~ + A141C
++ ~Because you need me?~ + A141C
++ ~Haven't a clue.~ + A141C
END

IF ~~ THEN BEGIN A144A
SAY ~I hope someday that I will have your wisdom, <CHARNAME>, but I cannot find such acceptance in myself. Not yet, anyway. *Turning away, he shakes his head.* Thank you for clarifying my thoughts.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A144BA
SAY ~Oh gods! YES! I'm tired of waiting. But you don't understand what I'm facing. What's at stake.~
IF ~~ THEN + A144B_01
END

IF ~~ THEN BEGIN A144BB
SAY ~Because the situation is more complicated than that. Because I'm fighting with myself over what to do. Oh hells! I don't know how to explain it to you.~
IF ~~ THEN + A144B_01
END

IF ~~ THEN BEGIN A144BC
SAY ~If you knew why I was hesitating, you wouldn't be so eager to involve yourself with me, <CHARNAME>. Don't you see that?~
IF ~~ THEN + A144B_01
END

IF ~~ THEN BEGIN A144B_01
SAY ~*Maethor opens his mouth to say something, then stops. he starts again, but stops. Finally, he buries his face in his hands. When he finally looks up, you see tears in his eyes. He scrubs his face with his sleeve.* It's not that I'm unsure about my feelings. It's just that I second-guess what to do about them. It's not easy.~
IF ~~ THEN + A144_01
END

IF ~~ THEN BEGIN A144C
SAY ~*Maethor opens his mouth to say something, then stops. he starts again, but stops. Finally, he buries his face in his hands. When he finally looks up, you see tears in his eyes. He scrubs his face with his sleeve. Yes, I guess so. She's a very cruel goddess, too, though. Never forget that. She has toyed mercilessly with me since my childhood.~
IF ~~ THEN + A144_01
END

IF ~~ THEN BEGIN A144_01
SAY~It seems that talking with you has a way of clarifying my thoughts, <CHARNAME>. You don't get tangled up in details. I suppose this is about love, really. And questioning love.~
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ + ~Are you trying to tell me you love me, Maethor?~ + A145A
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ + ~What are you trying to say, Maethor? We're friends. You can open up a little.~ + A145AA
+ ~Global("TIMaethRomanceActive","GLOBAL",1)~ +~I do try to see the bigger picture, Maethor. And I can tell that you're really hurting.~ + A145.1
+ ~!Global("TIMaethRomanceActive","GLOBAL",1)~ +~I do try to see the bigger picture, Maethor. And I can tell that you're really hurting.~ + A145.1A
END

IF ~~ THEN BEGIN A145A
SAY ~*Although you try to meet his gaze, Maethor looks away and steadily keeps his face averted.* Don't ask me that, <CHARNAME>. It seems right and true to love you because you are so...so overwhelming. So impressive. But I can't say it. I shouldn't say that.~
++ ~Come on. It's easy. Say 'I love you, <CHARNAME>.'~ + A146A
++ ~I know that you're conflicted. I know there's someone else in your thoughts. Someone who hasn't claimed you for whatever reason. But you don't have to wait for them, Maethor. I'm here. I want you. And you and I don't have any obstacles between us except the ones you put there.~ + A146A
++ ~Alright. Forget it. I'm sorry.~ + A146A
END

IF ~~ THEN BEGIN A145AA
SAY ~*Although you try to meet his gaze, Maethor looks away and steadily keeps his face averted.* Don't ask me to open up, <CHARNAME>. It seems right and true to be honest with you because you are so...so overwhelming. So impressive. But I shouldn't talk any more about my past.~
++ ~Look, I know you're in love with someone. Someone who hasn't claimed you for whatever reason. It doesn't seem right that you're just waiting for them to act. Talk it out with me. Maybe there's another option.~ + A146AA
++ ~Alright. Forget it. I'm sorry.~ + A146AA
END

IF ~~ THEN BEGIN A145.1
SAY ~Yes...But I should be stronger than this, <CHARNAME>.~
IF ~~ THEN + A146A
END

IF ~~ THEN BEGIN A145.1A
SAY ~Yes...But I should be stronger than this, <CHARNAME>.~
IF ~~ THEN + A146AA
END

IF ~~ THEN BEGIN A146A
SAY ~You deserve better than this. Let us...let us leave this for now. Can you... Can you give me a little time? Or is this it for you?~
++ ~You have all the time you need. My feelings aren't going to change.~ + A147A
++ ~*sigh heavily* I've been waiting, Maethor. I suppose I can wait a little longer. We're both tired from being on the road and all the fighting. Let's find an inn... Have a few drinks... and then see if we can't figure this out.~ + A147B
++ ~*grit your teeth.* I've been waiting, Maethor. Too long already. You need to make up your mind. Either you accept real love when it's offered or keep on chasing fantasies. Now.~ + A147C
END

IF ~~ THEN BEGIN A146AA
SAY ~Don't you see, <CHARNAME>? I'm not like you...I'm a coward. Let us...let us leave this for now.~
++ ~You're not a coward. You're just overwhelmed.~ + A147A
++ ~*sigh heavily* I'm not the best person to talk over your problems with, Maethor, but I'm here for you. We're both tired from being on the road and all the fighting. Let's find an inn... Have a few drinks... and then see if we can't figure this out.~ + A147B
END

IF ~~ THEN BEGIN A147A
SAY ~Bless you, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A147B
SAY ~*Maethor nods slowly*. Yes. I am tired. 'I'm almost dead, but the world demands I stay on my feet,' as Tyb used to say. I used to scoff at that because I thought he was whining about mere physical exhaustion. 'Then lay down and sleep,' I'd respond. 'Problem solved.' But now I see he meant being forced to keep on fighting a battle when there is no clear victory. Perhaps when you know you cannot win. Let us rest and take up the fight later.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A147C
SAY ~*Maethor looks at you for a moment, his eyes welling up with tears.* That's not fair, <CHARNAME>. It's not about needing to make up my mind. My mind has said all along that I should love you and be with you if you wanted me. The problem is my heart. I'm an elf. We have a long tradition of falling in love once, sharing 'gúrist'--'heart-knowledge', and then bonding for life.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~I know. We both are of the blood. It's what all of us expect. What is your point?~ + A147.1
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~And your point is?~ + A147.1A
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~So what are you trying to say? That you're already in love?~ + A147.1
+ ~!RACE(Player1,ELF) RACE(Player1,HALF_ELF)~ + ~So what are you trying to say? That you're already in love?~ + A147.1A
END

IF ~~ THEN BEGIN A147.1
SAY ~My elders taught that while my kind can feel love for the other races, an elf can only share 'gúrist'--'heart-knowledge'--with another elf. For those with pure enough blood, there is a sense of merging and the intimate sharing of sensations and memories that creates a durable, life-long bond of faithful love and devotion.~
=~On the other hand, mankind, halfings, dwarves... an elf can love them, but not share Gúrist with them. Thus, the natural desire for bonding becomes a one-sided trap. If you love anyone besides another elf, you will love without hope of sharing your memories or your intimate self.~
+ ~RACE(Player1,ELF)~ +~Stop avoiding my questions. I know all this. You want to see the waves crash on the beaches of Candlekeep? I can show you the rocks where the seagulls dive! You can show me Tethir and that rotted dump where your heart was trampled!~ + A147.2
+ ~RACE(Player1,HALF_ELF)~ +~So my blood isn't pure enough, eh? I've observed enough evil in my 'purer' brethren to not feel sorry I'm mixed. Are you saying you won't love me because you can't share Gúrist with me? There's more to love than having visions together, Maethor. ~ + A147.2A
+ ~RACE(Player1,ELF)~ + ~*Frustrated.* And??~ + A147.2
+ ~!RACE(Player1,ELF)~ + ~*Frustrated.* And??~ + A147.2A
END

IF ~~ THEN BEGIN A147.1A
SAY ~My elders taught that while my kind can feel love for the other races, an elf can only share 'gúrist'--'heart-knowledge'--with another elf. For those with pure enough blood, there is a sense of merging and the intimate sharing of sensations and memories that creates a durable, life-long bond of faithful love and devotion. The bond one feels with family. Or the bond of the lover.~
=~On the other hand, mankind, halflings, dwarves... an elf can love them, but not share Gúrist with them. Thus, the natural desire for bonding becomes a one-sided trap. If you love anyone besides another elf, you will love without hope of sharing your memories or your intimate self.~
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~Are you saying you won't love me because you can't share... what did you call it? Heart-knowledge? There's more to love than having visions together, Maethor. ~ + A147.2A
END

IF ~~ THEN BEGIN A147.2
SAY ~*Maethor walks over to you and gently touches your face.* I would have loved to see Candlekeep, <CHARNAME>. But I feel a bond has already formed. With someone else. I can do things my elders would never have imagined possible. I can share memories with anyone. I can even feel love for anyone. But it tears my heart to try to pretend that I don't feel a hollowness inside when I should feel complete.~
+ ~RACE(Player1,ELF)~ + ~*slapping his hand away*. I know that there's someone else you love, Maethor. I find their existance very....upsetting. But you CAN move on. We could be together for centuries and drive out any sad memories with the healing balm of time.~ + A147.3
END

IF ~~ THEN BEGIN A147.3
SAY ~But could you be content knowing that another love was still there... under the surface... between us? For centuries? I can't destroy what I have made. Please understand. I do not know if I can even risk opening myself to anyone else. That remains to be seen if you wish to fight the demons that inhabit my memories.~
=~In my loneliness, you tempt me. But we'll have no easier road than the one I was already on. That is the issue. You wanted the truth. Are you happy now that you have it?~
++ ~I couldn't live with the alternative. I'd rather have your friendship than risk losing it by pushing for more when you can't give more. *you turn away.* Come. A long road still lies ahead of us.~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMAROMCUTBYANOTHER","GLOBAL",1)~ + A147.4
++ ~I'll risk anything for the chance of being yours, Maethor. I'm willing to challenge this... this other bond. You still have time. Take another road... Take my road.~ + A147.4
END

IF ~~ THEN BEGIN A147.2A
SAY ~*Maethor walks over to you and gently touches your face.* You should have let me finish, <CHARNAME>. I feel a bond has already formed. With someone else. I can do things my elders would never have imagined possible. I can share memories with anyone. I can even feel love for anyone. But it tears my heart to try to pretend that I don't feel a hollowness inside when I should feel complete.~
+ ~!RACE(Player1,ELF)~ + ~*slapping his hand away*. I know that there's someone else you love, Maethor. If you're saying that you could love me,too, then it is a bitter truth to remind me that I am second in your heart. Surely you're still at a point where you can make a choice?~ + A147.3A
END

IF ~~ THEN BEGIN A147.3A
SAY ~Please understand. If I try to forget my bond and love you...if I share heart-knowledge with you...I will be utterly at your mercy. Are you willing, then, to know all of me? All my past? The threat of the future? And yet to stay with me? I fear your...indecision.~
=~Gúrist doesn't provide the security of knowing one is loved for eternity--it is elven tradition that gives an elf that assurance. My own past challenges the call of my bond since my fey'ri mother could not teach me about life-long devotion. In my loneliness, you tempt me. But we'll have no easier road than the one I was already on. That is the issue. You wanted the truth. Are you happy now that you have it?~
++ ~I couldn't live with the alternative. I'd rather have your friendship than risk losing it by pushing for more when you can't give more. *you turn away.* Come. a long road still lies ahead of us.~ DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3) SetGlobal("TIMAROMCUTBYANOTHER","GLOBAL",1)~ + A147.4
++ ~I'll risk anything for the chance of being yours, Maethor. I know you've never seen me as less simply because I'm not an elf. I'm willing to challenge this... this other bond. You still have time. Take another road... Take my road.~ + A147.4
END

IF ~~ THEN BEGIN A147.4
SAY~There's always the road, isn't there?~
IF ~~ THEN EXIT
END
END

//(TIMaeth Talk #17) Love Talk #7: First Times (Forest, Night, Pre-Rest, With Belt)

CHAIN IF ~Global("TIMaethLoveTalks","GLOBAL",34) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT16
~You finish your turn at watch just past midnight. The moons are bright and the stars seem to dance in the sky above. Despite the difficulties of the day and your increasing uncertainty about what lies ahead, you feel a sense of peace within and you hope to retain that peace as long as you can. As you return to the campsite, you notice Maethor's bedroll and cooking utensils still packed. You unfold the blankets of your bedroll, puzzled, laying them a little distance away from the fire and partly concealed by some tall grass. Your other companions are either asleep, at reverie, or busy with their own concerns, so you decide to look for him without disturbing anyone else.~
= ~The moonlight keeps the night from being utterly dark, but it quickly becomes clear that Maethor has left the campsite without leaving much to indicate where he has gone. You can see the marks of small feet in the wet grass, but little else. Afraid to lose even this faint trail, you find yourself hurrying into the deeper parts of the wood.~ DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1)IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~
END
++ ~Call out to him~ +  A151
++ ~Continue to follow the trail~ + A151a

CHAIN
IF ~~ THEN TIMaethJ A151
~'Maethor?' Your voice shakes a little as you call out for him. Although you listen intently for a return cry, you hear only the sound of the woods around you. An owl, disturbed by your presence, screeches a warning to its mate and flaps overhead.~
END
++ ~Head back towards camp.~ + A152
++ ~Wait.~ + A152a

CHAIN
IF ~~ THEN TIMaethJ A151a
~*The trees start to grow more densely around you. There are rattles and cracking noises, suggesting the night-time presence of animals. Finally, the trail stops completely. You look around, peering into the darkness, but see nothing.*~
END
++ ~Head back towards camp.~ + A152
++ ~Call out to him.~ + A151

CHAIN
IF ~~ THEN TIMaethJ A152a
~You wait for a few moments in the darkness, feeling the cold air slowly seep into your clothing. Even the air is moist. You rub your hands briskly against your legs to warm them up. You can see bats whirling about in the sky above, but no other signs of life.~
END
++ ~Head back towards camp.~ + A152
++ ~Call out his name.~ + A151

CHAIN
IF ~~ THEN TIMaethJ A152
~You double-back on your own trail, afraid of wandering too deeply into the wood. Then, in a small clearing not far from the campsite, you see a flash of white above the level of your head. You look up and observe Maethor crouched, squirrel-like, on the entwined branches of two massive trees. He has found a natural platform about eight feet off the ground and sits, arms wrapped tightly around his knees, nearly concealed by the leaves.~
END
++ ~Call his name.~ + A153
++ ~Climb up to him.~ + A154

CHAIN
IF ~~ THEN TIMaethJ A153
~Maethor! But he does not seem to hear you. he shivers, dressed only in his shirt and undershorts.~
END
++ ~Climb up to him.~ + A154
++ ~Call out to him~ + A153a

CHAIN
IF ~~ THEN TIMaethJ A153a
~Maethor! *You call a little louder. Maethor glances down at you, his face a mixture of anguish and terror.*~
END
++ ~Climb up to him.~ + A154
++ ~Speak to him.~ + A155

CHAIN
IF ~~ THEN TIMaethJ A154
~You climb up the nearer of the two trees and, careful not to put too much weight on his narrow perch, sit as close to his as you can. For whatever reason, he has been drawn to this spot to reverie. His eyes are fixed on some distant point high up in the sky, and his lips are trembling. You gently reach out for him, trying to coax him to move where you can more easily take him in your arms.~
END
++ ~Speak to him.~ + A155
++ ~Encourage him to move off the branch.~ + A156

CHAIN
IF ~~ THEN TIMaethJ A155
~What's wrong, Maethor? *You murmur.*~
==TIMaethJ~*Maethor turns his face towards you, eyes still unrecognizing.* 'Gin melo aníron. Gin melo baur gauron.' *At first a whisper, his voice raises to a moan.* 'Gin ú-velon.'~
END
++ ~Encourage him to move off the branch.~ + LT156
+~OR(2) RACE(Player1,ELF)RACE(Player1,HALF_ELF)~ + ~Huh? What's this about loving me?~ + LT156b
+~!RACE(Player1,ELF)!RACE(Player1,HALF_ELF)~+ ~What are you saying, Maethor? What does that mean?~ + LT156b

CHAIN
IF ~~ THEN TIMaethJ A156
~He finally shifts off his perch and onto a more solid limb. You feel more secure with your back against the body of the tree and your combined weight well-supported. In your arms, he comes alive, kissing and embracing you. You are so startled, you almost lose your balance. You kiss him back, winding your arms firmly around his thin body and pulling him onto your lap. He smells of elanor, you think, somewhat confusedly. He presses his body against yours, wrapping his legs around your waist.~
END
++ ~Climb down.~ + A157
++ ~Kiss him.~ + A157a

CHAIN
IF ~~ THEN TIMaethJ A156b
~*Strangely, Maethor merely looks at you and says nothing more. You realize he is trembling only partly from cold.*~
END
++ ~Encourage him to move off the branch.~ + A156
++ ~Reach over for him.~ + A156

CHAIN
IF ~~ THEN TIMaethJ A157
~Let's climb down, you whisper in his ear. This is no place for love. *He releases you so that you can make the descent, but, as soon as your feet solidly touch the ground, he reaches his arms down to you.*~
END
++ ~Reach up for him.~ + A158
++ ~Call out to him.~ + A158a

CHAIN
IF ~~ THEN TIMaethJ A157a
~*As you kiss him, his hands stroke your back and neck. He feels hot to the touch.*~
END
++ ~Climb down.~ + A157
++ ~Climb down holding him.~ + A157b

CHAIN
IF ~~ THEN TIMaethJ A157b
~*Awkwardly, you start to slowly climb down the tree. Even with Maethor's slight weight, the descent is much harder than expected. His arms grip you tightly, his face pressed against your chest. Finally, when your feet solidly touch the ground, both of you collapse together in an untidy heap.~
END
IF ~~ THEN EXTERN TIMaethJ A158_01

CHAIN
IF ~~ THEN TIMaethJ A158_01
~You find yourself on your back, Maethor straddling your hips, his face and unbound hair a dark shadow against the light of the moon above. He leans down and you feel the brush of his lips and tongue against your mouth. You reach down, gripping his hips in your palms. *He groans a little at your touch.* Nin puhta... *He mouths, barely more than a whisper.*~
END
+ ~Gender(Player1,MALE)~ + ~Make love.~ + A158.1
+ ~Gender(Player1,FEMALE)~ + ~Make love.~ + A158.1F
+ ~Gender(Player1,MALE)~ + ~Not here. Come with me.~ + A158.2
+ ~Gender(Player1,FEMALE)~ + ~Not here. Come with me.~ + A158.2F
++ ~Sorry, honey. Not like this. This is too...sudden.~ + A158.3

CHAIN
IF ~~ THEN TIMaethJ A158
~Maethor drops gently and gracefully into your arms, twining about you like ivy on an oak tree. The two of you sink down onto the moist grass of the clearing, still embracing and kissing.~
END
IF ~~ THEN EXTERN TIMaethJ A158_01

CHAIN
IF ~~ THEN TIMaethJ A158a
~You call out Maethor's name once again, reaching your arms to catch him. At your call, Maethor drops gently and gracefully into your arms, twining about you like ivy on an oak tree. The two of you sink down onto the moist grass of the clearing, still embracing and kissing.~
END
IF ~~ THEN EXTERN TIMaethJ A158_01

CHAIN
IF ~~ THEN TIMaethJ A158.1
~*You help Maethor strip off his shirt, revealing a youthfully narrow chest just beginning to widen and become muscular. Your hands stroke his body; your fingers find him to be delightfully warm and smooth with little body hair. His kisses are warm as well, his mouth open. He reaches for your laces, but they resist his tugging. You unwind the tangles for him, allowing him to draw you out. He rises onto his knees, shifting back a little, and then lowers his head.*~
END
++ ~Love me, Maethor.~ + A158.1A
++ ~Enjoy the moment.~ + A158.1A
++ ~*Groan.*~ + A158.1A

CHAIN
IF ~~ THEN TIMaethJ A158.1F
~*You help Maethor strip off his shirt, revealing a youthfully narrow chest just beginning to widen and become muscular. Your hands stroke his body; your fingers find him to be delightfully warm and smooth with little body hair. His kisses are warm as well, his mouth open. He reaches for your laces, but they resist his tugging. You unwind the tangles for him, allowing him to slide his hands into your breeches and stroke you intimately. Breathing hard, you pull him down to you and kiss him firmly. He awkwardly slides your breeches down, then spreads your knees, fumbling even more as he lowers his drawers.*~
END
++ ~Love me, Maethor.~ + A158.1AF
++ ~Enjoy the moment.~ + A158.1AF
++ ~*Groan.*~ + A158.1AF

CHAIN
IF ~~ THEN TIMaethJ A158.2
~Even as a male, Maethor is exceptionally light. You gather him up in your arms, unable to think of anything other than getting him to your bedroll. You seem to be alone for the moment; whoever is on current watch is not immediately apparent when you step into the firelight, and the others have retreated to their own seclusion. You slowly lower Maethor onto your blankets, beginning to kiss and caress him in earnest. You hold his small body curled against you, helping him strip off his shirt and undo the rudimentary closure of his drawers. Underneath, your fingers find his body to be delightfully warm and smooth with little body hair. His kisses are warm as well, his mouth open. He reaches for your laces, but they resist his tugging. You unwind the tangles for him, allowing him to draw you out. He handles you deftly, bringing shivers down your spine, and then rolls onto his stomach. You move on top of him, and kiss his neck as he cradles your pillow to his chest.~
END
++ ~Let me make love to you, Maethor.~ + A158.2A
++ ~Enjoy the moment.~ + A158.2A
++ ~*Groan.*~ + A158.2A

CHAIN
IF ~~ THEN TIMaethJ A158.2F
~Even as a male, Maethor is exceptionally light. You gather him up in your arms, unable to think of anything other than getting him to your bedroll. You worry about being seen, but, fortunately, whoever is on current watch is not immediately apparent when you step into the firelight. The others have retreated to their own seclusion. You slowly lower Maethor onto your blankets, beginning to kiss and caress him in earnest. You hold his small body curled against you, helping him strip off his shirt and undo the rudimentary closure of his drawers. Underneath, your fingers find his body to be delightfully warm and smooth with little body hair. His kisses are warm as well, his mouth open. He reaches for your laces, but they resist his tugging. You unwind the tangles for him, allowing him to pull your breeches down. You lay down next to him, stroking his body with your hands and fingers.~
END
++ ~Let me love you, Maethor.~ + A158.2AF
++ ~Enjoy the moment.~ + A158.2AF
++ ~*Groan.*~ + A158.2AF

CHAIN
IF ~~ THEN TIMaethJ A158.3
~Something about Maethor's manner seems strange to you. You gather him up in your arms and return to camp. You worry about being seen, but, fortunately, whoever is on current watch is not immediately apparent when you step into the firelight. The others have retreated to their own seclusion. You slowly lower Maethor onto your blankets and give him one last kiss. Now that you can see his face clearly in the firelight, you realize that whatever instinct lead you to refuse was correct about him; his gaze is somehow dull and unfocused. Still mostly in reverie, he clearly does not recognize you.~ DO ~SetGlobal("PCMaethorSex","GLOBAL",0)~
END
++ ~*Lay down beside him, fully clothed.*~ + A158.3A
++ ~*Unroll Maethor's bedroll.*~ + A158.3B

CHAIN
IF ~~ THEN TIMaethJ A158.1A
~*Maethor's mouth is blessedly hot and he is remarkably skilled with it.* Gods...paradise... *You run your fingers through his long hair, losing track of the time you spend making love. All you know is his smell, his deft lips, teeth and tongue, and the bliss of his sinking onto you. You shudder.* Lennas nîn... *He breathes, half-groaning. And your heart seems to stop. You gently dislodge him and sit up so you can stare down at his face. You realize he is not fully out of reverie. His eyes seem unfocused and dark.~ DO ~SetGlobal("PCMaethorSex","GLOBAL",1)~
END
++ ~Wake up, Maethor! Damnit, wake up!! *You grip his shoulders and shake him.* Wake up!!~ + A158.1B
++ ~Pull away from him.~ + A158.1B

CHAIN
IF ~~ THEN TIMaethJ A158.1AF
~*Maethor fumbles even more, apparently trying to decide how to proceed. Kneeling between your thighs, he gently strokes your legs and then carefully lowers himself onto you, groaning as he mounts. You lose track of the time you spend making love; afterwards, all you remember is his smell, his moaning, and the bliss of the movements that bring you repeated waves of pleasure. He finally shudders, allowing his own release, then:* Lennas nîn... *He breathes, half-groaning. And your heart seems to stop. You gently push free of him, sitting up and staring down at his face. To your horror, you realize he is not fully out of reverie. His eyes seem unfocused and dark.~ DO ~SetGlobal("PCMaethorSex","GLOBAL",1)~
END
++ ~Wake up, Maethor! Damnit, wake up!! *You grip his shoulders and shake him.* Wake up!!~ + A158.1B
++ ~*Pull away from him.*~ + A158.1B

CHAIN
IF ~~ THEN TIMaethJ A158.2A
~*Maethor is blessedly hot as you mount.* Gods, how tight... paradise... *You lose track of the time you spend making love. All you know is his smell, his moaning, and the bliss of sinking into him. You shudder and he lifts his hips to meet you.* Lennas nîn... *He breathes, half-groaning. And your heart seems to stop. You shove yourself backwards with your hands, sitting up on your knees. He looks back at you, seeming puzzled, and, to your horror, you realize he is not fully out of reverie. His eyes seem unfocused and dark.~ DO ~SetGlobal("PCMaethorSex","GLOBAL",1)~
END
++ ~'Wake up, Maethor! Damnit, wake up!!' *You grip his shoulders and shake him.* 'Wake up!!'~ + A158.2B
++ ~Pull away from him.~ + A158.2B

CHAIN
IF ~~ THEN TIMaethJ A158.2AF
~*You lose track of the time you spend making love; first to him and then he to you. Afterwards, all you remember is his smell, his moaning, and the bliss of his fingers and mouth as he intently kisses your breasts, belly, and thighs.* Lennas nîn... *He breathes, half-groaning. And your heart seems to stop. You shove yourself backwards with your hands, sitting up on your knees. To your horror, you realize he is not fully out of reverie. His eyes seem unfocused and dark.~ DO ~SetGlobal("PCMaethorSex","GLOBAL",1)~
END
++ ~Wake up, Maethor! Damnit, wake up!! *You grip his shoulders and shake him.* Wake up!!~ + A158.2B
++ ~Pull away from him.~ + A158.2B

CHAIN
IF ~~ THEN TIMaethJ A158.1B
~*Suddenly, he is fully there with you.* <CHARNAME> ?~
END
++ ~Who in nine hells do you think it is!!?~ + A158.1C
++ ~Yes, it's me. Expecting someone else?~ + A158.1C

CHAIN
IF ~~ THEN TIMaethJ A158.2B
~*Suddenly, he is fully there with you.* <CHARNAME> ?~
END
++ ~Who in nine hells do you think it is!!?~ + A158.2C
++ ~Yes, it's me. Expecting someone else?~ + A158.2C

CHAIN
IF ~~ THEN TIMaethJ A158.1C
~*Maethor stares silently at you, at first without comprehension, and then, slowly, quietly, realizes his mistake.* Oh gods... No, no, <CHARNAME>. *You turn your back on him, rubbing your face with your hands. You feel his hands on your shoulders, but you shrug them off with growing irritation.* Don't touch me. I'm not what you want. I'm not him. Or her...or them... Whoever. *You hear his sharp intake of breath and then, before you can stop him, he's slipped his underclothes back on and has darted off into the woods.*~
END
++ ~Follow him.~ + A158.1D
++ ~Return to camp.~ + A158.1E

CHAIN
IF ~~ THEN TIMaethJ A158.2C
~*Maethor stares silently at you, at first without comprehension, and then, slowly, quietly, realizes his mistake.* Oh gods... No, no, <CHARNAME>. *You turn your back on him, rubbing your face with your hands. You feel his hands on your shoulders, but you shrug them off with growing irritation.* Don't touch me. I'm not what you want. I'm not him. Or her...or them... Whoever. *You hear his sharp intake of breath and then, before you can stop him, he's slipped his underclothes back on and has darted off into the woods.*~
END
++ ~Follow him.~ + A158.1D
++ ~Roll yourself up in your blankets and try to sleep.~ + A158.1E

CHAIN
IF ~~ THEN TIMaethJ A158.1E
~*You decide you've had enough of Maethor's complications for one evening. Your bedroll seems a welcome respite. You pull your clothing back together as best you can and start walking, head down. Once back in camp, the world seems to clarify and become less confusing. You sink down into your bedroll, still clothed, and close your eyes.*~
~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A158.2E
~*You decide you've had enough of Maethor's complications for one evening. Even though you're now alone, your bedroll seems warm and welcoming. You pull your blankets around you and close your eyes.*~
~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A158.3A
~Fortunately, Maethor doesn't touch you again. As you are drifting off to sleep, you feel him sit up. He must have come out of his reverie.* I'm sorry, <CHARNAME>. Thank you for...for protecting me from my own foolishness. *You feel him wrap your blankets over you and then darkness takes you.*~
~ RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A158.3B
~Maethor's bedroll is considerably less comfortable than your own. Although it smells wonderful and warms up quickly, it quickly becomes apparent that Maethor's choice of sturdy wool instead of softer fabrics has a downside--the surface scratches against your skin and clothing. Grumbling about the many sacrifices of love, you curl up and close your eyes. As you are drifting off to sleep, you feel Maethor leaning over you and replacing his scratchy wool blanket with another, softer one. He must have come out of his reverie.* I'm sorry, <CHARNAME>. Thank you for...for protecting me from my own foolishness. *You feel him wrap your blankets over you and then darkness takes you.*~
~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A158.1D
~*After an hour of looking and calling, you realize the foolishness of trying to find someone who not only does not want to be found, but who is more comfortable in the woods than you are. You start walking back to camp, head lowered. Once back, however, the world seems to clarify and become less confusing. You sink down into your bedroll, still clothed, and close your eyes.*~
~RestParty()~
END

APPEND TIMaethJ

//(TIMaethTalks #18) Love Talk #8: First Times (Morning After) (Forest, Day, Post-Rest, With Belt)

IF ~Global("TIMaethLoveTalks","GLOBAL",36) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN TILT17
SAY ~*When you wake, you see the grey sky beginning to lighten into a clear dawn. It promises to be a beautiful day. Then you feel a small, cool hand slide up your back and come to rest on the back of your neck. It feels wonderful, tingles radiating from the fingers and easing away all tension and pain. Maethor.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A160
END

IF ~~ THEN BEGIN A160
SAY~Uhmmmm. How does that feel?~
+ ~Global("PCMaethorSex","GLOBAL",0)~ + ~*You reach behind you and grab the hand by the wrist, pulling it forward to your lips.* Incredible.~ + A161A
+ ~Global("PCMaethorSex","GLOBAL",1)~ + ~*You reach behind you and grab the hand by the wrist, pulling it forward to your lips.* Incredible.~ + A161.1A
+ ~Global("PCMaethorSex","GLOBAL",0)~ + ~*You flop down on your back so you can look at the man laying beside you.* Are you...ok?~ + A161BOK
+ ~Global("PCMaethorSex","GLOBAL",1)~ + ~*You flop down on your back so you can look at the man laying beside you.* Are you...ok?~ + A161.1B
+ ~Global("PCMaethorSex","GLOBAL",0)~ + ~*Hold still and let his healing touch suffuse your body. Even the pain from too little rest doesn't stand a chance against him.*~ + A161C
+ ~Global("PCMaethorSex","GLOBAL",1)~ + ~*Hold still and let his healing touch suffuse your body. Even the pain from too little rest doesn't stand a chance against him.*~ + A161.1C
+ ~Global("PCMaethorSex","GLOBAL",0)~ + ~*Gently pull away from his hand.* Maethor, as hard as it is to say this, I think I need to give up. You were right all along.~ + A161D
+ ~Global("PCMaethorSex","GLOBAL",1)~ + ~*Gently pull away from his hand.* Maethor, as hard as it is to say this, I think I need to give up. You were right all along.~ + A161D
END

IF ~~ THEN BEGIN A161D
SAY ~*You feel Maethor sitting up behind you. He sighs.* Perhaps it's just as well. Try to sleep if you can, <CHARNAME>. It's almost morning. *He leans down and gives you a kiss on the forehead. Then, he is gone.*~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A161A
SAY ~I'm glad I'm of some use. *He leans down and gives you a kiss on the forehead.*~
++ ~I have a serious question for you.~ + A162
END

IF ~~ THEN BEGIN A161.1A
SAY ~*Maethor gently disengages his hand from yours.* I'm glad I'm of some use, then. I was beginning to wonder if I had become too much trouble.~
++ ~*You roll over, facing him. * Maethor, I'm glad you returned. Let me say that first. But last night...~ + A161.2
++ ~You are too much trouble. But I don't care. *Lean back against his body.* You probably won't believe me, but you felt...incredible...last night.~ + A161.2A
END

IF ~~ THEN BEGIN A161.2
SAY ~*Maethor sighs.* Yes. I'm sorry you had to...to experience that last night. I wanted to remember what it was like to look up at the stars and trace the constellations from the roof at home. But it's not always possible to remember only the good parts of a memory or to prevent other memories from emerging unbidden. That's why I went away from camp. Without meaning to, you joined my memory. And have seen clearly why I feel such shame at my past. Worse, I was just as awkward a virgin as I was the first time. Gods... All the knowledge in the world doesn't make up for the lack of experience.~
++ ~I understand that now. I have a serious question for you, though.~ + A163
END

IF ~~ THEN BEGIN A161.2A
SAY ~*Several minutes pass without a reponse. Finally, you look over your shoulder to see what's wrong. Maethor is laying behind you, his eyes closed.* I've learned well from every teacher. *He says, barely above a whisper.* I'm still sorry you had to...to experience that last night. I wanted to remember what it was like to look up at the stars and trace the constellations from the roof at home. But it's not always possible to remember only the good parts of a memory or to prevent other memories from emerging unbidden. That's why I went away from camp. Without meaning to, you joined my memory. And have seen clearly why I feel such shame at my past. Worse, I was just as awkward a virgin as I was the first time. Gods... All the knowledge in the world doesn't make up for the lack of experience.~
++ ~I understand that now. I have a serious question for you, though.~ + A163
END

IF ~~ THEN BEGIN A161BOK
SAY ~*Maethor sighs.* Yes. I'm sorry you had to...to experience that last night. I wanted to remember what it was like to look up at the stars and trace the constellations from the roof at home. But it's not always possible to remember only the good parts of a memory or to prevent other memories from emerging unbidden. That's why I went away from camp.~
++ ~I understand that now. I have a serious question for you, though.~ + A162
END

IF ~~ THEN BEGIN A161.1B
SAY ~*Maethor sighs.* Yes. I'm sorry you had to...to experience that last night. I wanted to remember what it was like to look up at the stars and trace the constellations from the roof at home. But it's not always possible to remember only the good parts of a memory or to prevent other memories from emerging unbidden. That's why I went away from camp. Without meaning to, you joined my memory. And have seen clearly why I feel such shame at my past. Worse, I was just as awkward a virgin as I was the first time. Gods... All the knowledge in the world doesn't make up for the lack of experience.~
++ ~I understand that now. I have a serious question for you, though.~ + A163
END

IF ~~ THEN BEGIN A161.1
SAY ~No, <CHARNAME>. I'm not ok. I'm ashamed. I wanted to remember what it was like to look up at the stars and trace the constellations from the roof at home. But it's not always possible to remember only the good parts of a memory or to prevent other memories from emerging unbidden. That's why I went away from camp. But when you came after me...and touched me, you joined my memory. Without meaning to, you became a part of it. And have seen clearly why I feel such shame at my past. Worse, I just as awkward a virgin as I was the first time. Gods... All the knowledge in the world doesn't make up for the lack of experience.~
++ ~I understand that now. I have a serious question for you, though.~ + A163
END

IF ~~ THEN BEGIN A161C
SAY ~Ah, <CHARNAME>... What are we going to do? What am I going to do?~
++ ~*You pause before speaking.* Will you answer a serious question?~ + A162
END

IF ~~ THEN BEGIN A161.1C
SAY ~Ah, <CHARNAME>... What are we going to do? What am I going to do?~
++ ~*You pause before speaking.* Will you answer a serious question?~ + A163
END

IF ~~ THEN BEGIN A162
SAY ~*Maethor braces his head with his fist.* Do I dare answer?~
++ ~I'm afraid you do. When you were in reverie, you offered yourself to me last night. But I refused. Do you know why?~ + A162.1
++ ~*Smiling slightly.* I thought paladins didn't feel fear.~ + A162.1A
END

IF ~~ THEN BEGIN A162.1A
SAY ~*Maethor chuckles.* Sometimes I think warriors feel more fear than anyone else. Why else would we insist on wearing such heavy armor?~
++ ~There's no armor that will protect you from this, I'm afraid. When you were in reverie, you offered yourself to me last night. But I refused. Do you know why?~ + A162.1
END

IF ~~ THEN BEGIN A162.1
SAY ~*Maethor looks at you for a long time and says nothing. He starts chewing a sore-looking spot on his lower lip. Finally he speaks.* When I'm in reverie, I can't easily discern between past and present. The thought that I might have asked for love while still in reverie frightens me.~
++ ~I would imagine so! Maethor, I refused you last night because I wasn't sure who you were talking to. I just can't understand why you would chase after the past when I'm right here in the present.~ + A162.2
END

IF ~~ THEN BEGIN A162.2
SAY ~*Maethor's face is grim, and he sits up, wrapping his arms around his knees.* You were wise to refuse my caress. I hope you can understand, <CHARNAME>. Sometimes the worst pain comes paired with shameful joy. I...I know I'm guilty. Please accept that I'm so sorry... *You sit up as well, and wrap your arms around him in the hope that he won't feel alone. he takes a deep breath.* I am not chasing after the past. It seems irrevocably a part of me. Can you stand to hear another story?~
++ ~Yes. If I want to have you, I don't think I have a choice.~ + A161BCH
++ ~I wish I could, Maethor. But it's just too much to take in.~ + A161CTM
END

IF ~~ THEN BEGIN A163
SAY ~*Maethor braces his head with his fist.* Do I dare answer?~
++ ~I'm afraid you do. For weeks, I have felt jealous of the person who took your heart. I looked around us, wondering who you loved more than me. Even last night, my thoughts were only for myself. My own loss. But now I realize my jealousy was badly misplaced. I must hear it from your own lips. The 'bond' you've described to me. Was it with Cýrontîr?~ + A163.1
END

IF ~~ THEN BEGIN A163.1
SAY ~*Maethor's eyes widen and he swallows with difficulty.* Yes. For that, I feel tremendous guilt and shame.~
= ~But I cannot help feeling that you carry your own shame. You made love to me when I was not fully here. Why?~
++ ~When you gave yourself to me, it felt like a victory over your...other...suitors. That was selfish. Can you forgive me?~ + A163.2
++ ~I was...am...very attracted to you. I wanted to prove that to you. I let my pride influence my better judgement. Can you forgive that?~ + A163.2
++ ~I can't really say. It was out of weakness, though. But it felt so good, I can't regret taking you. Yet, I do know it was wrong. I wanted you so badly, I chose to follow my impulses rather than think things through. I'm sorry about that...~ + A163.2
END

IF ~~ THEN BEGIN A163.2
SAY ~*Maethor's face is grim, and he sits up, wrapping his arms around his knees.* Of course I forgive you. I just don't know what will become of us. Can you live with the knowledge of my past now that you fully understand it? I hope you can, <CHARNAME>, but sometimes the worst pain comes paired with shameful joy. I...I know I'm guilty. Please accept that I'm so sorry... *You sit up as well, and wrap your arms around him in the hope that he won't feel alone. he takes a deep breath.* I am not chasing after the past. It seems irrevocably a part of me. Can you stand to hear another story?~
++ ~Yes. If I want to have you, I don't think I have a choice.~ + A161BCH
++ ~I wish I could, Maethor. But it's just too much to take in at once.~ + A161C
++ ~Isn't there some other way for you to tell me what...what I haven't already guessed?~ + A161CC
END

IF ~~ THEN BEGIN A161CTM
SAY ~*Maethor's eyes widen and he swallows with difficulty.* I...Are you done with me, <CHARNAME>?~
++~I wish I could handle all this...this pain. But I just can't. I care about you, but...~ + A161CA
++~No. But I don't know if I can stand to hear more about your past. Can you stand to be brief?~  + A161CB
++~No. But I think I know a lot already. Is there another way you can tell me about what I don't know?~ + A161CC
END

IF ~~ THEN BEGIN A161CA
SAY ~*Maethor sighs.* Perhaps it's just as well. Try to sleep if you can, <CHARNAME>. It's almost morning. *He leans down and gives you a kiss on the forehead. Then, he is gone.*~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A161CB
SAY ~*Maethor sighs heavily.* I suppose I can try. But be patient with me...It may not be as brief as you would like.~
IF ~~ THEN + A161BA
END

IF ~~ THEN BEGIN A161CC
SAY ~Perhaps...perhaps you can ask questions of me instead. Ask what you like and I shall try to answer.~
+ ~Global("MaethBond","LOCALS",0)~ + ~The 'bond' you've described to me. Was it with Cýrontîr? Or someone else?~ DO ~SetGlobal("MaethBond","LOCALS",1)~ + A701A
+ ~Global("MaethOften","LOCALS",0)~ + ~Did Cýrontîr touch you more than once?~ DO ~SetGlobal("MaethOften","LOCALS",1)~ + A701B
+ ~Global("MaethRape","LOCALS",0)~ + ~I don't know how to ask this gently, but...did he ever go further than touching you?~ DO ~SetGlobal("MaethRape","LOCALS",1)~ + A701C
+ ~Global("MaethInLove","LOCALS",0)~ + ~Were you in love with Cýrontîr?~ DO ~SetGlobal("MaethInLove","LOCALS",1)~ + A701D
+ ~Global("MaethNaneth","LOCALS",0)~ + ~Did your mother ever find out?~ DO ~SetGlobal("MaethNaneth","LOCALS",1)~ + A701E
+ ~Global("MaethPro","LOCALS",0)~ + ~Did your mother ever involve you in her work?~ DO ~SetGlobal("MaethPro","LOCALS",1)~ + A701G
+ ~Global("MaethOthers","LOCALS",0)~ + ~Were you ever involved with any other of your mother's 'friends.'~ DO ~SetGlobal("MaethOthers","LOCALS",1)~ + A701H
+ ~Global("MaethPC","LOCALS",0)~ + ~Um... Will this continue to affect our...um...intimate relationship?~ DO ~SetGlobal("MaethPC","LOCALS",1)~ + A701I
+ ~Global("MaethTybalt","LOCALS",0)~ + ~I...I just can't believe this. Wasn't there anyone who you could trust?~ DO ~SetGlobal("MaethTybalt","LOCALS",1)~ + A701J
++ ~I don't know how to ask you questions about something that is both personal and painful... Please help me...~ + A701K
END

IF ~~ THEN BEGIN A701Q
SAY ~Is there anything else you should know?~
+ ~Global("MaethBond","LOCALS",0)~ + ~The 'bond' you've described to me. Was it with Cýrontîr? Or someone else?~ DO ~SetGlobal("MaethBond","LOCALS",1)~ + A701A
+ ~Global("MaethOften","LOCALS",0)~ + ~Did Cýrontîr touch you more than once?~ DO ~SetGlobal("MaethOften","LOCALS",1)~ + A701B
+ ~Global("MaethRape","LOCALS",0)~ + ~I don't know how to ask this gently, but...did he ever go further than touching you?~ DO ~SetGlobal("MaethRape","LOCALS",1)~ + A701C
+ ~Global("MaethInLove","LOCALS",0)~ + ~Were you in love with Cýrontîr?~ DO ~SetGlobal("MaethInLove","LOCALS",1)~ + A701D
+ ~Global("MaethNaneth","LOCALS",0)~ + ~Did your mother ever find out?~ DO ~SetGlobal("MaethNaneth","LOCALS",1)~ + A701E
+ ~Global("MaethPro","LOCALS",0)~ + ~Did your mother ever involve you in her work?~ DO ~SetGlobal("MaethPro","LOCALS",1)~ + A701G
+ ~Global("MaethOthers","LOCALS",0)~ + ~Were you ever involved with any other of your mother's 'friends.'~ DO ~SetGlobal("MaethOthers","LOCALS",1)~ + A701H
+ ~Global("MaethPC","LOCALS",0)~ + ~Um... Will this continue to affect our...um...intimate relationship?~ DO ~SetGlobal("MaethPC","LOCALS",1)~ + A701I
+ ~Global("MaethTybalt","LOCALS",0)~ + ~I...I just can't believe this. Wasn't there anyone who you could trust?~ DO ~SetGlobal("MaethTybalt","LOCALS",1)~ + A701J
++ ~I think I know enough. I have only one other question.~ + A701M
END

IF ~~ THEN BEGIN A701K
SAY~Have no fear, <CHARNAME>. I'm actually ready to unburden my heart to you. It cannot hurt worse than the pain I've already felt.~
++ ~Okay, then. I'm ready.~ + A701Q
END

IF ~~ THEN BEGIN A701M
SAY~*When Maethor looks at you, you see fear in his eyes. But his voice is steady.* What do you wish to ask?~
++ ~Can you ever get past what happened between you and Cýrontîr?~ + A168.2AE
END

IF ~~ THEN BEGIN A701A
SAY ~It was with Cýrontîr. I can't make love to anyone else without remembering every detail about him and sharply feeling his absence.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701B
SAY ~I've told you how Cýrontîr said 'De i 'ell nîn gin garo, lennas nîn...' About how he first touched me. But that was a single moment in an eternity of them. Because of the mead...or perhaps whatever was in the mead...I find it hard to distinguish now between the different evenings in those twilight seasons. The sedation that lowered my resistance has affected my memory, but I think it went on for well over two years, as the edain reckon time, and only ended with his death. It was...at least from his perspective...an alternative relationship that helped him tolerate the routine humiliation of, well, belonging to my mother.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701C
SAY ~One year, after I had reached womanhood, Nightul came to a close and Cýr, my mother, and I celebrated the day I was begotten. They crowned me with flowers. But after, Naneth and Cýrontîr fought more viciously than I had ever seen before over Naneth's new favorite... A young soldier nick-named Hador... At the height of their fight, Naneth stormed out.~
=~Cýrontîr did not even wait for me to sleep. He was kissing me even as he carried me to Naneth's bed. He had not even been drinking. I expected our usual loving, but he stopped me and took my hands away: 'Al si!' Then he spoke, carefully and directly, as if he feared I won't understand: 'Nasta i 'wib nîn ned i huch gîn aníron, Maethor lend. I vaur cin puhta gauron.' That night he took my virginity. He was my lover until his death.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701D
SAY ~I don't know. I loved him with my whole being. I felt like I needed him. But was I in love with him? I don't know if I was old enough to know what those words meant. All I knew then was when he tilted my face up and looked in my eyes, I feared what he would ask of me at the same time as I yearned for his requests.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701E
SAY ~For some reason, the words of my mother remain with me even so many years later. She was calm: 'Why have you broken her, Cýrontîr? She had a good chance of concubinage with one of the noble families. And not necessarily to someone greatly her elder. She has attracted considerable attention at Temple. Several of my patrons have sons interested in her. I thought you understood that you should be careful to leave her gweneth.'~
=~I looked from Naneth to Cýr, but only Naneth would meet my eyes. 'I...I don't understand. Did you know he'd become my lover?' 'Don't interrupt, girl,' she said, 'Of course I knew. He asked me. He told me he loved you and wanted to teach you about love years ago.' She knew he was going to...to touch me... What I will never know is whether or not she encouraged him to consider becoming my lover in the first place. I suspect so, but I couldn't tell how how much control she really had over him and how much was his own perverse desire.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701G
SAY ~*Maethor is silent for a long time. Nor does he look at you, staring at some point in the middle distance. When he finally does speak, his voice is low and full of shame.* Since she never brought patrons home with her, I avoided most contact. Occasionally, happenstance would cause us to run into this one or that one at social occasions. I was Naneth's trophy that she showed off to the mighty and powerful. The hardest part of it all is knowing that she meant to sell me one way or another all along.~
=~Naneth's worst cruelty lay in how she coldly assessed the value of those close to her. The keeping of a willing concubine is something my people do not like to admit to, but it occurs amongst the wealthy and powerful. I was valuable to her. Even Cýrontîr accepted that he would have to buy my freedom. When we left for Amn later, the matter was still not resolved. I suppose Naneth intended to try to introduce me at one of her gala parties; Cýrontîr was not strong enough to have resisted her on that point. What exactly would have occurred later I never discovered. Fortunately.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701H
SAY ~They all assumed I was no different from my mother. Many of them flirted with me. I routinely got invitations to join one or another of them in bed. One or two even seriously attempted to befriend me. But Cýrontîr did not often leave me alone with any of them and ferociously fought any suggestion my mother made that included me in her...um...nightly fun.~
=~Looking back, I can't tell if he was merely suspicious of what would happen or was jealously trying to avoid sharing my affection...possibly both. I was grateful for the protection, though. It meant that I have only a handful of episodes to regret. There were a few nights that Cýrontîr was required to stay at Court late, leaving me alone with my mother, her friends, and her perversity. And there were a few nights when drink interfered with his ability to protect me.~
=~My mother, Cýrontîr, and Hargam, for example, once got so drunk together that when Hargam stumbled out of my mother's room to find the necessary, he got lost on the way back and mistakenly...or perhaps intentionally...got into bed with me.  Cýrontîr eventually came looking for him, of course, but by then Hargam had had time to take me in his arms and wake me up with kisses. He was a bit obsessed with me after that, fondling my bottom when he'd pass me in the hallway and leaving me love-notes in my satchel.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701I
SAY ~*Maethor looks down at his hands.* It already has. How could it not? I have been well-trained in many ways; not least in that I expect love to be usurous and controlling. But maybe time can change my expectations. I have already come to appreciate your direct manner. I am never unclear about where you stand or what you want.~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A701J
SAY ~*Maethor is silent for a long time. he looks up at you.* Not at the time. Later, after I was rescued by Sir Tybalt, I learned to trust him implicitly. I hope you understand now why. Even though he adopted me, his name didn't mean that he owned me. Rather, it was his blessing to choose to do anything with my life that I wished. The remaining members of my family, however they might feel, could not interfere. He was an older colleague--not a parent. I valued that, though I wished sometimes he would be more affectionate. Anyway...~
IF ~~ THEN + A701Q
END

IF ~~ THEN BEGIN A161BA
SAY ~*I've told you how Cýrontîr said 'De i 'ell nîn gin garo, lennas nîn...' About how he first touched me. But that was a single moment in an eternity of them. I find it hard to distinguish now between the different evenings in those twilight seasons. I begin to fear what he will ask of me at the same time as I yearn for his affection. He taught me many ways of playing while...while leaving my virginity untouched. He was happy with that for a long while. But Naneth had an argument with him that changed everything. When Nightul comes to a close, Cýr, my mother, and I celebrate the day I was begotten and crown me with flowers. But after, Naneth and Cýrontîr fight more viciously than I've ever seen before. Naneth has a new favorite... a young soldier nick-named Hador... For a number of reasons, Hador is willing to indulge Naneth's stranger tastes. But for once, Cýrontîr won't. Naneth storms off with her new toy, leaving us alone yet again. This time, perhaps, for good.~
=~For the first time, Cýrontîr does not wait for me to sleep, kissing and embracing me even as he carries me to her bed. He has not even been drinking. As he undresses me, piece by piece, I have no way of continuing to pretend that the man who cared for me and the man who carries me to Naneth's bed are different. The fear in me was so intense that I...I didn't wait for him to speak. But he stopped me and took my hands away: 'Al si!' Then he carefully and directly looked at me and spoke as if he feared I wouldn't understand: 'Nasta i 'wib nîn ned i huch gîn aníron, Maethor lend. I vaur cin puhta gauron.' He has need... So...~
++ ~*You speak softly, but intently to him:* Maethor, that's terrible. You mustn't think that that's love.~ + A168A
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~That yrch-licker raped you. By the gods... that's so hard to hear.~ + A168.1
END

IF ~~ THEN BEGIN A161BCH
SAY ~*I've told you how Cýrontîr said 'De i 'ell nîn gin garo, lennas nîn...' About how he first touched me. But that was a single moment in an eternity of them. I find it hard to distinguish now between the different evenings in those twilight seasons. When he tilts my face up and looks in my eyes, I fear what he will ask at the same time as I yearn for his requests. He taught me many ways of playing while...while leaving my virginity untouched. Days rush ahead and Angharradh's blessing continues to bring me a cycle of blood for each year. I reached womanhood early, well ahead of the other girls born the same year, but Naneth still has to take up the hems of every dress... It seems I will never reach her height. 'You shall be a little warrior, Maeth-weg,' says Cýrontîr, 'No matter. I enjoy carrying you.'~
=~When Nightul comes to a close, Cýr, my mother, and I celebrate the day I was begotten and crown me with flowers. But after, Naneth and Cýrontîr fight more viciously than I've ever seen before. Naneth has a new favorite... a young soldier nick-named Hador... and wants to introduce him to one of her military patrons. Not only will Hador advance more quickly as an officer, but he will also enjoy other pleasures in my mother's company. So he is more than willing to indulge her stranger tastes. But Cýrontîr isn't willing. And won't. Not for yet another rival. When she whispers some perverse suggestion to him, he refuses her cosseting and calls her a name I won't repeat. She strikes him across the face. He moves to grab her, but finds Hador in his way. They scuffle, but Cýr gets the worst of it. Naneth finally pulls Hador away and shoves him toward the entry hall. She casts one last ugly glare at Cýr, nursing his bruises, and then has departed. I wonder helplessly if she'll even return... We have need of her, I think, but she has no need for us...~
=~For the first time, Cýrontîr does not wait for me to sleep, kissing and embracing me even as he carries me to her bed. He has not even been drinking. As he undresses me, piece by piece, I have no way of continuing to pretend that the man who cared for me and the man who carries me to Naneth's bed are different. He kisses the point at my throat where my blood pounds the hardest and then sits back, unlacing his breeches. He strips, and there's little of his accustomed good humor now. I'm startled to find him already ready for me. When he lays down beside me, the fear in me was so intense that I...I didn't wait for him to speak. I take him in my palms and lower my face... But he stops me and takes my hands away: 'Al si!' Then he speaks, carefully and directly, as if he fears I won't understand: 'Nasta i 'wib nîn ned i huch gîn aníron, Maethor lend. I vaur cin puhta gauron.' He has need... I wrap my arms around him.~
++ ~*You speak softly, but intently to him:* Maethor, that's terrible. You mustn't think that that's love.~ + A168A
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~That yrch-licker raped you. By the gods... that's so hard to hear.~ + A168.1
END

IF ~~ THEN BEGIN A168A
SAY ~Oh, <CHARNAME>. You don't care for someone, kiss their scraped knees, comfort them when they have nightmares, and buy them pretty gifts if you don't love them. Even then, when he knew he would hurt me, he kissed my face and asked me to forgive him. I remember blood... It hurt so much... I begged him to please himself quickly. To end it. He stopped entirely, watching me. 'Why are you looking at me?' 'I need to please you. To see your expression as you tremble and cry out. I don't want this to just be for me.' He held me afterwards, whispering how much he loved me. That he sometimes wished to openly be my man and get me with child. To have the life he'd thought he'd have when he first came to Tethyr. As always,'i lennas nîn.'~
++ ~Maethor, it's no different than giving you a cup of poisoned water when you were thirsty. He had no right to touch you. Somehow, you've come to believe that this...this filth...loved you. That it even was a bond that you have to honor. But it's not.~ + A168B
++ ~Dare I ask what happened then?~ + A168.2
END

IF ~~ THEN BEGIN A168B
SAY ~*For a moment, Maethor does not respond, his eyes averted. Then he looks up.* I don't understand.~
++ ~*sigh.* If someone cares for you in childhood, it is natural to love them. But a parent has no right to use that love. To try to turn it into...gods...something else. The sad part is that you feel more guilty about it than he did.~ + A168CLO
++ ~Did your mother ever find out?~ + A168.2
END

IF ~~ THEN BEGIN A168CLO
SAY ~But he wasn't a parent. If I'd met him later...~
++ ~But you didn't. You were handed to him as a helpless infant. That doesn't matter. I mean, Gorion took care of me and I loved him. Maybe neither of us intended to be parent and child, but it still happened. Until Cýrontîr decided to touch you, he was acting like your father. Don't feel guilty, Maethor. If anything, you should feel angry.~ + A168C
++ ~*You cut off his speculation with a wave of your hand.* I hope someone noticed what was happening.~ + A168.2
END

IF ~~ THEN BEGIN A168.1
SAY~*Maethor opens his eyes, stares at his hands and shakes his head.* Rape? Hardly. I never resisted. Never refused. Never tried to run away. He kissed my face and asked me to forgive him. I remember blood... It hurt so much... I begged him to please himself quickly. To end this. He stopped entirely, watching me. 'Why are you looking at me?' 'I need to please you. To see your expression as you tremble and cry out. I don't want this to be just for me.' He held me afterwards, whispering how much he loved me. That he sometimes wished to openly be my man and get me with child. To have the life he'd thought he'd have when he first came to Tethyr. As always,'i lennas nîn.'~
++ ~Maethor, it's no different than giving you a cup of poisoned water when you were thirsty. That...hû gwaur...manipulated you. It's obscene that you regard it as a bond that you have to honor. You were young. If he wasn't dead already, I'd kill him!!~ + A168.1A
++ ~Dare I ask what happened then? *you shake your head, disgusted*~ + A168.2
END

IF ~~ THEN BEGIN A168.1A
SAY ~*For a moment, Maethor does not respond, his eyes averted. Then he looks up.* I don't understand.~
++ ~*sigh.* Yes, I know you matured early. But the real reason our people wait until at least lebgaen...fifty... and preferrably haran...a century...has passed is not to ensure maturity of the body but to know maturity of the mind. The inner spirit. Nelchaen...thirty...Gods, Maethor. For Adan, that's like fifteen. It's gortheb.~ + A168C
++ ~Did your mother ever find out?~ + A168.2
END

IF ~~ THEN BEGIN A168C
SAY ~Gortheb? 'Horrible'? But if I'd met him later...~
++ ~If...if...if... Don't make excuses for him. You didn't meet him as an adult. You were handed to him as a helpless infant. That doesn't matter. I mean, Gorion took care of me and I loved him. Maybe neither of us intended to be parent and child, but it still happened... Until Cýrontîr decided to touch you, he was acting like your father. Don't feel guilty, Maethor. If anything, you should feel angry.~ + A168C
++ ~*You cut off his speculation with a wave of your hand.* I hope someone noticed what was happening.~ + A168.2
END

IF ~~ THEN BEGIN A168.2
SAY~On the first morning, Cýrontîr sat at the window looking out for her return. On the second morning, we watched for her together. He did not go to Court to work those days and he chased away the messenger that my tutors at the Temple sent. threatening to beat him senseless. The third morning, I began to cry because I thought she wasn't coming back. He held me and told me he'd go out to find her. That he'd bring her back. But I wouldn't let him leave because then I'd be alone. Between our vigils, we tried to construct daily life. Cooking together. Cleaning house together; opening the windows and sweeping the floors. Then I chased dust from the corners with my broom while he fixed a loose floorboard. We played music together. Tossed dice. He showed me the stars, telling me their names and outlining constellations.~
=~And we played at púcë. Not always gently. He carried the marks of my nails down his back and I wore bruises from his fingers on my wrists like bracelets. I'm not sure what we would have done if she'd decided to leave us. It had always been clear that she held the reins to the harness that kept us together. Without her presence, I felt anxious and lost. Fortunately, she did come home. I sure she was puzzled to see my boots, my Temple knapsack, and Cýrontîr's cloak still in their accustomed places by the door. She must have looked all through the house for us, perhaps pausing at the sheets drying in the sun, because she came up the ladder to check on the roof. She was afraid of heights, you see, and had never come up there before, choosing instead to merely open up the trap and call to us. Naneth emerging through the trap was very unexpected. When I saw her, I startled and fell backwards off of Cýr's lap.~
++ ~Surprise!~ + A168.2SU
++ ~She must have been furious.~ + A168.2A
END

IF ~~ THEN BEGIN A168.2SU
SAY~Surprise, indeed. I feel sick now as I recollect my life before Corellon called me. Those days were...well, perverse.  Cýr was sprawled in his chair, half-dressed, and I was wearing one of Naneth's smallest nightgowns. I don't see why we didn't anticipate that her return would likely catch us in the midst... And then to be in her clothes, as well... *Maethor's pallor takes on a greenish tinge.*~
++ ~Do you need to stop?~ + A168.3
++ ~Your mother must have been furious.~ + A168.2A
END

IF ~~ THEN BEGIN A168.3
SAY~No. I need to get it out. If you say it was wrong, then I must believe you. But I want you to understand that I had no way of knowing it was wrong. That my...my home was itself like the cup of poisoned water you describe. Cýrontîr was himself as poisoned as I am now...~
++ ~You mean your mother wasn't furious?~ + A168.2A
++ ~It WAS wrong. Furthermore, it hurt you.~ + A168.2B
END

IF ~~ THEN BEGIN A168.2A
SAY~I wish she had been. Someone angry might have been...cleansing. But no, Naneth threw her travel cloak over my shoulders and told us to come downstairs. For some reason, the words of both my mother and my lover remain with me even so many years later. She sounded calm: 'You've been a fool, Cýrontîr. Why have you broken her?' Her question must have irritated him: 'You're tired of me, Hanaliell. I lost the ability to excite you when I was no longer an anuchên. You would have sent me away în nelchaen idhrinn ago...but you had a baby at the breast. Maethor is no longer a child. Do not deny that you would have had me see her next summer at Festival on the arm of one of your chosen. My Maethweg!' 'She had a good chance of concubinage with one of the noble families. And not necessarily to someone greatly her elder. She has attracted considerable attention at the Shrine. Several of my patrons have sons interested in her. I thought you understood that you should be careful.'~
= ~I looked from Naneth to Cýr, but only Naneth would meet my eyes. 'I...I don't understand. Did you know he'd become my lover?' 'Don't interrupt, girl,' she said, 'Of course I knew. He asked me. He told me he loved you and wanted to love on you years ago. But I thought we had an understanding that he would not hurt you. He has known from the first that, when the time was right, I wanted you unafraid of the marriage bed, but still gweneth... Evidently, he can't take the thought of anyone else touching you.~
++ ~She meant to sell you all along.~ +  A168.2C
++ ~I...I just can't believe this. Wasn't there anyone who you could trust?~ + A168.2D
++ ~Vandia's tears! This is so disgusting.~ + A168.2C
END

IF ~~ THEN BEGIN A168.2B
SAY~I'm trying to accept that, <CHARNAME>. I know now it hurt me. I've grown to expect love to be usurous...controlling. And little expectation of anything different. Anyway, Naneth threw her travel cloak over my shoulders and told us to come downstairs. For some reason, the words of both my mother and my lover remain with me even so many years later: she was calm: 'You've been a fool, Cýrontîr. Why have you broken her?' Her question irritated him: 'You're tired of me, Hanaliell. I lost the ability to excite you when I was no longer an anuchên. You would have sent me away în nelchaen idhrinn ago...but you had a baby at the breast. Maethor is no longer a child. Do not deny that you would have had me see her next summer at Festival on the arm of one of your chosen. My Maethweg!' 'She had a good chance of concubinage with one of the noble families. And not necessarily to someone greatly her elder. She has attracted considerable attention at Temple. Several of my patrons have sons interested in her. I thought you understood that you should be careful.'~
=~I looked from Naneth to Cýr, but only Naneth would meet my eyes. 'I...I don't understand. Did you know he'd become my lover?' 'Don't interrupt, girl,' she said, 'Of course I knew. He asked me. He told me he loved you and wanted to love on you years ago. But I thought we had an understanding that he would not hurt you. He has known from the first that, when the time was right, I wanted you unafraid of the marriage bed, but still gweneth... Evidently, he can't take the thought of anyone else touching you.~
++ ~She meant to sell you all along.~ +  A168.2C
++ ~I...I just can't believe this. Wasn't there anyone who you could trust?~ + A168.2D
END

IF ~~ THEN BEGIN A168.2C
SAY~*Maethor is silent for a long time. Nor does he look at you, staring at some point in the middle distance. When he finally does speak, his voice is low and full of shame.* The hardest part of it all, weirdly, is knowing that she meant to sell me. Naneth's cruelty lay in her monetary assessment of one's value. The keeping of a willing concubine is something my people do not like to admit to, but it exists among the nobility. I was valuable to her. And even Cýrontîr accepted that he would have to buy my freedom. *He looks up at you.* I hope you can understand now my devotion to Sir Tybalt. Even though he adopted me, his name didn't mean that he owned me.  Rather, it was his blessing to choose to do anything with my life that I wished. The remaining members of my family, however they might feel, could not interfere. He was an older colleague--not a parent. I valued that, though I wished sometimes he would be more affectionate. Anyway...~
IF ~~ THEN + A168.2E
END

IF ~~ THEN BEGIN A168.2D
SAY~*Maethor is silent for a long time. He looks up at you.* I came to trust Sir Tybalt implicitly. I hope you can understand now why. Even though he adopted me, his name didn't mean that he owned me.  Rather, it was his blessing to choose to do anything with my life that I wished. The remaining members of my family, however they might feel, could not interfere. He was an older colleague--not a parent. I valued that, though I wished sometimes he would be more affectionate. Anyway...~
IF ~~ THEN + A168.2E
END

IF ~~ THEN BEGIN A168.2E
SAY~When we left for Amn a few weeks later, the matter was still not resolved. I suppose Naneth still intended to try to introduce me at one of her gala parties; Cýrontîr would not have resisted her on that point. But he had other plans which he did not share with me. Plans for life in Amn that never came to fruition. Probably some kind of formal marriage arrangement. But he would have had to buy my freedom to be allowed to marry me. I have no doubt Naneth would have made it unpleasant for him.~
++ ~Well, it's over now. Good riddance. All that remains is for you to rid yourself of that poison. Do you...do you think you can put it behind you?~ + A168.2AE
++ ~I think I may be sick. Gods...~ + A168.2EB
END

IF ~~ THEN BEGIN A168.2AE
SAY~I've tried. Since those days, Corellon has greatly helped me find happiness in life again. I've even had a few sweethearts. But I have always ended up feeling that I'm breaking faith. I've hoped that the passage of time may convince my heart to forget Cýrontîr's love.~
++ ~Well, time is one thing that I think I can give you. I have a proposition for you... One thing that might help.~ + A168.2EC
END

IF ~~ THEN BEGIN A168.2EB
SAY~I'm sorry about that, <CHARNAME>. Except for details, I have told you my tale. Since those days, Corellon has greatly helped me find happiness in life again. I've even had a few sweethearts. But I have always ended up feeling that I'm breaking faith. I've hoped that the passage of time may convince my heart to forget Cýrontîr's love.~
++~Well, time is one thing that I think I can give you. I have a proposition for you... One thing that might help.~ + A168.2EC
END

IF ~~ THEN BEGIN A168.2EC
SAY~What do you have in mind?~
+ ~RACE(Player1,ELF)~ + ~Will...will you rest with me at night, Maethor? I'm not talking about making love.... I think we should let that happen naturally between us...or not happen...for awhile. Not intentionally pursue it, I mean... All I want is to reverie with you or to sleep with you in my arms every night. Until we conquer this pain.~ + A168.2ED
+ ~!RACE(Player1,ELF)~ + ~Will...will you sleep with me at night, Maethor? I'm not talking about making love.... I think we should let that happen naturally between us...or not happen...for awhile. Not intentionally pursue it, I mean... All I want is to sleep with you in my arms every night. Until we conquer this pain.~ + A168.2ED
END

IF ~~ THEN BEGIN A168.2ED
SAY~And then?~
++ ~*Laugh.* Then we repeat the process. Indefinately. But by then, when we look into each other's eyes, there will only be us. For as long as we have on Faerûn.~ + A168.3ED
END

IF ~~ THEN BEGIN A168.3ED
SAY~Bless you, <CHARNAME>.~
IF ~~ THEN EXIT
END

//(MaethTalk 19) Love Talk #9: Jealousy Revisited (With Belt)

IF ~Global("TIMaethLoveTalks","GLOBAL",38) !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN TILT18
SAY~*Maethor stands beside you, his arms folded across his armored chest.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A170A
END

IF ~~ THEN BEGIN A170A
SAY ~Something about to<DAYNIGHT> makes me feel happy for some reason. More hopeful, anyway. <CHARNAME>...?~
++ ~Yes?~ + A170
++ ~Oh no. Not another question!~ + A170.1
END

IF~~THEN BEGIN A170.1
SAY~Yes, another question. But this one is important and I will not put it off any longer. It's something that relates not just to me, but to both of us as a couple. Will you answer my fears?~
++ ~*Sigh.* Yes, Maethor.~ + A170
++ ~No.~ + A170.2
END

IF~~THEN BEGIN A170.2
SAY~Don't worry, <CHARNAME>. I will not trouble you again.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A170
SAY~Do not fear. I shall be brief this time. In our last talk, you said you wanted me. Yet I fear that I am not the only one you have eyes for.~
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + ~You mean Ajantis?~ + A170.4
+ ~Global("P#BranwenRomanceActive","GLOBAL",1)~ + ~You mean Branwen?~ + A170.4
+ ~Global("P#CoranRomanceMatch","GLOBAL",1)~ + ~You mean Coran?~ + A170.4
+ ~Global("X#DynaheirRomanceActive","GLOBAL",1)~ + ~You mean Dynaheir?~ + A170.4
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + ~You mean Gavin?~ + A170.4
+ ~Global("SharteelRomanceActive","GLOBAL",1)~ + ~You mean Shar-Teel?~ + A170.4
+ ~Global("WhiteRomanceActive","GLOBAL",1)~ + ~You mean White?~ + A170.4
+ ~Global("X#XARomanceActive","GLOBAL",1)~ + ~You mean Xan?~ + A170.4
+ ~Global("TIMaethorRomanceActive","GLOBAL",1)~ + ~You mean besides my relationship with you?~ + A170.4
END

IF ~~ THEN BEGIN A170.4
SAY~Yes. I have so many fears in my heart, <CHARNAME>. I need to know if I am not...enough...for you. I am also troubled by fears that you have sought...others...for pleasure.~
+ ~Global("RE1_BardolanSex","GLOBAL",1)~ + ~Like Bardolan?~ DO ~SetGlobal("TIBardo","GLOBAL",1)~ + A170.5
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + ~Like Scar?~ DO ~SetGlobal("TIScar","GLOBAL",1)~ + A170.5
+ ~Global("RE1_KimSex","GLOBAL",1)~ + ~Like Kim?~ DO ~SetGlobal("TIKim","GLOBAL",1)~ + A170.5
+ ~Global("RE1_HusamSex","GLOBAL",1)~ + ~Like Husam?~ DO ~SetGlobal("TIHusam","GLOBAL",1)~ + A170.5
+ ~Global("RE1_LaurelSex","GLOBAL",1)~ + ~Like Laurel?~ DO ~SetGlobal("TILaurel","GLOBAL",1)~ + A170.5
+ ~Global("RE1_BartusSex","GLOBAL",1)~ + ~Like Bartus?~ DO ~SetGlobal("TIBartus","GLOBAL",1)~ + A170.5
+ ~Global("RE1_QuentinSex","GLOBAL",1)~ + ~Like Quentin?~ DO ~SetGlobal("TIQuentin","GLOBAL",1)~ + A170.5
+ ~Global("RE1_LinaSex","GLOBAL",1)~ + ~Like Lina?~ DO ~SetGlobal("TILina","GLOBAL",1)~ + A170.5
+ ~Global("RE1_NiklosSex","GLOBAL",1)~ + ~Like Niklos?~ DO ~SetGlobal("TINiklos","GLOBAL",1)~ + A170.5
+ ~Global("RE1_SlytheKrystinSex","GLOBAL",1)~ + ~Like Krystin?~ DO ~SetGlobal("TIKrystin","GLOBAL",1)~ + A170.5
+ ~Global("RE1_HarlotSex","GLOBAL",1)~ + ~Like those harlots?~ DO ~SetGlobal("TIHarlot","GLOBAL",1)~ + A170.5
+ ~Global("RE1_MelicampSex","GLOBAL",1)~ + ~Like Melicamp?~ DO ~SetGlobal("TIMeli","GLOBAL",1)~ + A170.5
+ ~Global("RE1_SchvantzSex","GLOBAL",1)~ + ~Like Schvantz?~ DO ~SetGlobal("TISchvantz","GLOBAL",1)~ + A170.5
+ ~Global("RE1_ArianeSex","GLOBAL",1)~ + ~Like Ariane?~ DO ~SetGlobal("TIAriane","GLOBAL",1)~ + A170.5
+ ~Global("RE1_RinnieSex","GLOBAL",1)~ + ~Like Rinne?~ DO ~SetGlobal("TIRinnie","GLOBAL",1)~ + A170.5
+ ~Global("RE1_EnderSex","GLOBAL",1)~ + ~Like Ender?~ DO ~SetGlobal("TIEnder","GLOBAL",1)~ + A170.5
+ ~Global("RE1_SurgeonSex","GLOBAL",1)~ + ~Like the Surgeon?~ DO ~SetGlobal("TISurgeon","GLOBAL",1)~ + A170.5
+ ~Global("RE1_LeftSex","GLOBAL",1)~ + ~Like Left?~ DO ~SetGlobal("TILeft","GLOBAL",1)~ + A170.5
+ ~Global("RE1_ArleneSex","GLOBAL",1)~ + ~Like Arlene?~ DO ~SetGlobal("TIArlene","GLOBAL",1)~ + A170.5
+ ~Global("RE1_DellaSex","GLOBAL",1)~ + ~Like Della?~ DO ~SetGlobal("TIDella","GLOBAL",1)~ + A170.5
+ ~Global("RE1_PhoenixSex","GLOBAL",1)~ + ~Like that... uhh... Phoenix Guard spirit-thing?~ DO ~SetGlobal("TIPhoenix","GLOBAL",1)~ + A170.5
+ ~GlobalGT("TICherSex","GLOBAL",0)~ + ~Like my teacher Cherilane?~ DO ~SetGlobal("TICher","GLOBAL",1)~ + A170.5
+ ~Global("RE1_MikalaSex","GLOBAL",1)~ + ~Like Mikala?~ DO ~SetGlobal("TIMikala","GLOBAL",1)~ + A170.5
+ ~Global("TIMaethorSex","GLOBAL",1)~ + ~Do you mean other than you?~ DO ~SetGlobal("TIMaethor","GLOBAL",1)~ + A170.5
END

IF~~THEN BEGIN A170.5
SAY~Yes. Assure me that I am mistaken.~
++ ~Your fears are foolish. You're the only one I want.~ + A175
++ ~Have you finally decided to give our love a chance?~ + A176
++ ~*laugh* Jealousy, Maethor? How interesting. In our last talk, you also informed me that you love another man.~ + A177
END

IF~~THEN BEGIN A170.6
SAY~I wish you to be honest, if you can. Otherwise, I have no choice but to withdraw my affections.~
++ ~Your fears are foolish. You're the only one I want.~ + A175
++ ~Have you finally decided to give our love a chance?~ + A176
++ ~*laugh* Jealousy, Maethor? How interesting. In our last talk, you informed me that you love someone else, too.~ + A177
++ ~Yes. What of it?~ + A178
END

IF ~~ THEN BEGIN A175
SAY~<CHARNAME>, I'd dearly love to simply accept your words. You, after all, have heard me express my pain and my uncertainty many times. You have proven your patience and willing acceptance of my faults. Yet I beg your indulgence on this not least because I have observed wanton looks from others. I will not seek to interfere in your affairs solely because we have shared a few intimate moments. A kiss is not a promise. But my tolerance is limited. From this day forward, if I ever observe you courting someone else or learn that you have knowingly made love to someone else, then my affection will cease. I will not hate you. I will not berate you. I will continue to fight for you if you wish. But you will never again find me open to your embrace. Now that you know this, do you still wish to court me?~
++ ~Of course. We should try to be faithful to each other.~ DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179
++ ~I'm sorry. I can't commit to you. I wish I could.~ DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179.1A
END

IF ~~ THEN BEGIN A176
SAY~This is no time to challenge my motives, <CHARNAME>. I am no stronger than any one else in this regard. If you wish for me to put my faith in your fidelity, I must feel that that faith is not misplaced. After all, you have heard me express my pain and my uncertainty many times. You have proven your patience and willing acceptance of my faults. Yet I beg your indulgence on this. I will not seek to interfere in your affairs solely because we have shared a few intimate moments. A kiss is not a promise. From this day forward, if I ever observe you courting someone else or learn that you have knowingly made love to someone else, then my affection will cease. I will not hate you. I will not berate you. I will continue to fight for you if you wish. But you will never again find me open to your embrace. Now that you know this, do you still wish to court me?~
++ ~Of course. We should try to be faithful to each other.~ DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179
++ ~I'm sorry. I can't commit to you. I wish I could.~ DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179.1A
END

IF ~~ THEN BEGIN A177
SAY~Yes, <CHARNAME>. Jealousy. The same monster that lead you to question every word I have shared with anyone else. But you must not be hypocritical. You have heard me express my pain and my uncertainty many times. You have proven your patience and willing acceptance of my faults. Yet I beg your indulgence on this because I am offering you my fidelity in exchange. I will not seek to interfere in your affairs solely because we have shared a few intimate moments. A kiss is not a promise. But my tolerance is limited. From this day forward, if I ever observe you courting someone else or learn that you have knowingly made love to someone else, then my affection will cease. I will not hate you. I will not berate you. I will continue to fight for you if you wish. But you will never again find me open to your embrace. Now that you know this, do you still wish to court me?~
++ ~Of course. We should try to be faithful to each other.~ DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179
++ ~I'm sorry. I can't commit to you. I wish I could.~ DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179.1A
END

IF ~~ THEN BEGIN A178
SAY~Then, <CHARNAME>, you and I must have an understanding. You have heard me express my pain and my uncertainty many times. You have proven your patience and willing acceptance of my faults. Yet I beg your indulgence on this because you have asked me to love you despite my past heartache. I will not seek to interfere in your affairs solely because we have shared a few intimate moments. A kiss is not a promise. But my tolerance is limited. From this day forward, if I ever observe you courting someone else or learn that you have knowingly made love to someone else, then my affection will cease. I will not hate you. I will not berate you. I will continue to fight for you if you wish. But you will never again find me open to your embrace. Now that you know this, do you still wish to court me?~
++ ~Of course. We should try to be faithful to each other.~ DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179
++ ~I'm sorry. I can't commit to you. I wish I could.~  DO ~SetGlobal("TIMaethWarning","GLOBAL",1)~ + A179.1A
END

IF ~~ THEN BEGIN A179
SAY~Yes. I agree. We should both try to be faithful. *Maethor sighs and rubs his face.* I'm not the guardian of your fidelity, <CHARNAME>. There will, no doubt, be times when your faithfulness to me will be challenged. I don't regard a mere kiss or some flirtatious talk justification for my anger. If you will save the most intimate touch of your body for me, I will do the same for you.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN A179.1A
SAY~Alas, all good things must eventually end. At this point, I require some kind of commitment from you. The same commitment that you could expect from me. I don't regard a mere kiss or some flirtatious talk justification for my anger. If you will save the most intimate touch of your body for me, I will do the same for you. Are you sure that you want your freedom from me?~
++~Yes, Maethor. I'm not interested in committing to you.~ + A179.2A
++~Well, no. I'm not sure. Are you talking about marriage?~ + A179.2B
END

IF ~~ THEN BEGIN A179.2A
SAY~Very well. I'll have you know, though, that I will still be your friend. I won't forget that you have been kind to me.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A179.2B
SAY~No, I'm not talking about marriage. I'm honestly not certain if I'm ready to be married. Not until your quest is completed. To me, marriage means a home and children. It is well possible that neither of us will ever have either of those things. So, I merely propose that we be faithful to each other. A betrothal of sorts. Is that acceptable?~
++~I'd be willing to do that.~ + A179.2C
++~No. Sorry. I have to have my freedom to choose to be with whomever I want.~ + A179.2D
END

IF ~~ THEN BEGIN A179.2D
SAY~Very well. We shall be done with love, then. I'll have you know, though, that I will still be your friend. I won't forget that you have been kind to me.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A179.2C
SAY~*Maethor sighs and rubs his face.* Remember that I'm not the guardian of your fidelity, <CHARNAME>. There will, no doubt, be times when your faithfulness to me will be challenged. I don't regard a mere kiss or some flirtatious talk justification for my anger. But if you will save the most intimate touch of your body for me, I will do the same for you.~
IF ~~ THEN DO ~SetGlobal("TIMaethRomanceActive","GLOBAL",2)~  EXIT
END
END

//(MaethTalk #20) Love Talk 10: Second rest at an inn (Inn, Night, Pre-Rest, With Belt)

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",40)  HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN TIMaethJ ATILT19
~*It has been yet another long day. Between hours of mind-numbingly boring marching are the moments of sheer terror inherent to battle. You have decided to spend the night in one of the local inns, hoping to find peaceful rest. You are stashing you gear in one of the empty cupboards in your room when you hear the music begin. Stopping to listen for a moment, you hear the familiar skirl of a set of small pipes amidst the murmur of voices and off-key singing. Maethor, apparently, has decided to play.*~
~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~
END
++ ~Go downstairs to the common room~ + A181A
++ ~Try to sleep.~ + A181B

CHAIN
IF ~~ THEN TIMaethJ A181A
~*Although you are exhausted, your curiousity gets the better of you. You head down the stairs to the common room, noting with some surprise that there is a crowd of onlookers gathering. In the common room, the chairs and tables have been moved back against the walls to create a large space between, no doubt for dancing.~
=~!InParty("Garrick")~ ~Maethor is sitting with two other musicians on a table against the wall furthest from you. He is wearing his black breeches, but has borrowed a bright blue shirt from someone for the evening. He looks very handsome, his pipes tucked under his arm and blowing steadily. At the musicians' feet, a line of empty beer bottles. Drinking, apparently, is mandatory even for the entertainment.*~
==%GARRICK_JOINED% IF ~InParty("Garrick")~ ~Maethor is sitting with Garrick and two other musicians on a table against the wall furthest from you. He is wearing his black breeches, but has borrowed a bright blue shirt for the evening that you recognize as one of Garrick's. He looks very handsome, his pipes tucked under his arm and blowing steadily. At the musicians' feet, a line of empty beer bottles. Drinking, apparently, is mandatory even for the entertainment.*~
END
++ ~Listen to the music.~ + A182A
++ ~Travel over to Maethor's side of the room.~ + A183A
++ ~Grab a beer from off of one of the barmaids' trays.~ + A182C

CHAIN
IF ~~ THEN TIMaethJ A181B
~*Although you are exhausted, the music is too loud and persistant to allow you to sleep. Finally, your curiousity gets the better of you. You get up, pull on some comfortable clothing, and head down the stairs to the common room, noting with some surprise that there is a crowd of onlookers gathering. In the common room, the chairs and tables have been moved back against the walls to create a large space between, no doubt for dancing. Sitting with two other musicians on a table against the  wall furthest from you is Maethor. He is wearing his black breeches, but has borrowed a bright blue shirt from someone for the evening. He looks very handsome, his pipes tucked under his arm and blowing steadily. At the musicians' feet, a line of empty beer bottles. Drinking, apparently, is mandatory even for the entertainment.*~
END
++ ~Listen to the music.~ + A182A
++ ~Travel over to Maethor's side of the room.~ + A183A
++ ~Grab a beer from off of one of the barmaids' trays.~ + A182C


CHAIN
IF ~~ THEN TIMaethJ A182C
~*The moment one of the barmaids comes by with a tray full of beer bottles, you catch her by the arm and whisper your order into her ear. She nods and hands you one of the bottles on her tray. You take a long drag on the bottle, beginning to feel a little less tired.~
END
++ ~Listen to the music.~ + A182A
++ ~Travel over to Maethor's side of the room.~ + A183A

CHAIN
IF ~~ THEN TIMaethJ A182A
~*The music is bright, fast and cheery. The trio--pipes, fiddle, and drum--progress swiftly through a medley of familiar dance tunes. Even the tavern wenches and the bartender get caught up in the impromptu festivities, cutting the occasional jig step as they fill drink orders. Then another medley. You are a little surprised at the fine quality of Maethor's playing. His fingering is precise, his timing exact, and yet there is also lively expression to every line he plays.~
END
++ ~Try to get Maethor's attention.~ + A183B
+ ~InParty("Garrick")~ + ~Wave at Garrick.~ + A183AG
++ ~Travel over the Maethor's side of the room.~ + A183A

CHAIN
IF ~~ THEN TIMaethJ A183AG
~*Maethor is too engaged in his playing to see you.*~
==%GARRICK_JOINED% IF ~InParty("Garrick") See("Garrick")!StateCheck("Garrick",CD_STATE_NOTVALID)~ ~*But Garrick, although he, too, is concentrating intently on playing his lute, smiles at you when he notices you waving and nods.*~
==TIMaethJ~Maethor doesn't even look up.~
END
++ ~Try to get Maethor's attention.~ + A183B
++ ~Travel over the Maethor's side of the room.~ + A183A

CHAIN
IF ~~ THEN TIMaethJ A183A
~*You travel along the edge of the milling crowd, hoping to make your way over the Maethor's table. The crowd is particularly thick closest to the musicians. You realize you'll have to get Maethor's attention if you want to talk to him.~
END
++ ~Give up and go back upstairs~ + A187
++ ~Try to get Maethor's attention~ + A183B

CHAIN
IF ~~ THEN TIMaethJ A183B
~*Ducking and weaving between the dancers, you finally catch Maethor's eye as the dancers bob and shift in the center of the room. At the end of the next set, Maethor leans over to whisper to the fiddler, who nods and holds up his hands for silence.~
END
++ ~Wait.~ + A184

CHAIN
IF ~~ THEN TIMaethJ A184
~*Maethor puts his pipes down behind him on the table and leaps down into the middle of the dance floor. In his borrowed finery, he looks very young and slender.~
==%ALORA_JOINED% IF ~InParty("Alora") See("Alora")!StateCheck("Alora",CD_STATE_NOTVALID)~ THEN ~*You seem to hear Alora's piercing, distinctive whistle from out of the crowd and notice, with an amused grin, that Maethor is bare-footed.*~
==TIMaethJ~*The crowd moves to give him space.* I have a song that I'd like to sing for you. I sing it especially for <CHARNAME>. It's an old one named 'Of All the Birds.' *As the fiddler and drummer start up into a sprightly jig, Maethor raises his arms above his head and does a few steps from the 'Strip the Willow' jig.* Then:* Of all the birds that I do know. Philip, my sparrow, hath no peer: For sit she high or lie she low, Be she far off or be she near, *Members of the audience titter as the recognize the double-entendre in the bawdy song.* There is no bird so fair, so fine, Nor yet so fresh as this of mine. She never wanders far abroad; But is at home when I do call, If I command, she lays on load! With lips, with teeth, with tongue and all. She chants, she chirps, she makes such cheer, That I believe she hath no peer. *He travels over to you towards the end of the verse, making sure to face you at the refrain;* For when she once hath felt a fit, Philip will cry still 'yit, yit, yit.'~
END
++ ~Listen to Maethor sing.~ + A184E
++ ~Take him in your arms~ + A184A
++ ~Kiss him.~ + A184B
++ ~That's absolutely wicked, Maethor!~ + A184C
++ ~Dance with him.~ + A184D

CHAIN
IF ~~ THEN TIMaethJ A184E
~*Oddly, perhaps because the accompanying musicians are good, the adolescent squeakiness of Maethor's voice is far less noticeable. You actually find yourself enjoying listening to him, especially since his sense of pitch and timing are excellent and he hits even the highest notes with confidence--a sign of his early vocal training, perhaps.~
END
++ ~Take him in your arms~ + A184A
++ ~Kiss him.~ + A184B
++ ~That's absolutely wicked, Maethor!~ + A184C
++ ~Dance with him.~ + A184D

CHAIN
IF ~~ THEN TIMaethJ A184D
~*When Maethor notices you moving close to him on the dance floor, he grabs your hands and dances with you. 'Strip the Willow,' however, is an intensely quick jig, requiring complex steps. Maethor finds that he cannot dance and sing at the same time, so, he gives you a quick kiss and steps back to the musicians' table to resume the next verse.*~
END
++ ~*You sing with him.*~ + A184
++ ~Take him in your arms~ + A184A
++ ~Grab a beer.~ + A184BE

CHAIN
IF ~~ THEN TIMaethJ A184BE
~*The next time you see a barmaid passing close by, weaving skillfully between the dancers, you lean over and whisper your request in her ear. She smiles and nods, grabbing a bottle from her tray before disappearing into the crowd. The drink feels wonderful on your dry throat.~
==TIMaethJ~And yet besides all this good sport, My Philip can both sing and dance, With new-found toys of sundry sort My Philip can both prick and prance: As if you say but 'fend cut, Phippe,' Lord! how the peat will turn and skip. And for the rest I dare compare, She is both tender, sweet, and soft; She never lacketh dainty fare. But is well fed and feedeth oft: For if my Phippe have lust to eat, I warrant you Phippe lacks no meat.*Maethor grins wickedly at you, momentarily resting his hand on his groin.* For when she once hath felt a fit, Philip will cry still 'yit, yit, yit.'~
END
++ ~*You sing with him.*~ + A185

CHAIN
IF ~~ THEN TIMaethJ A184A
~*Without even losing a beat, Maethor delicately avoids your embrace. Yet he still smiles, his eyes glittering mischievously.* And yet besides all this good sport, My Philip can both sing and dance, With new-found toys of sundry sort My Philip can both prick and prance: As if you say but 'fend cut, Phippe,' Lord! how the peat will turn and skip. And for the rest I dare compare, She is both tender, sweet, and soft; She never lacketh dainty fare. But is well fed and feedeth oft: For if my Phippe have lust to eat, I warrant you Phippe lacks no meat.*Maethor grins wickedly at you, momentarily resting his hand on his groin.* For when she once hath felt a fit, Philip will cry still 'yit, yit, yit.'~
END
++ ~*You sing with him.*~ + A185

CHAIN
IF ~~ THEN TIMaethJ A184B
~*By moving rapidly, you manage to swiftly brush your lips against his. Maethor dances delicately out of reach, but blows you another kiss before launching into the next verse.* And yet besides all this good sport, My Philip can both sing and dance, With new-found toys of sundry sort My Philip can both prick and prance: As if you say but 'fend cut, Phippe,' Lord! how the peat will turn and skip. And for the rest I dare compare, She is both tender, sweet, and soft; She never lacketh dainty fare. But is well fed and feedeth oft: For if my Phippe have lust to eat, I warrant you Phippe lacks no meat.*Maethor grins wickedly at you, momentarily resting his hand on his groin.* For when she once hath felt a fit, Philip will cry still 'yit, yit, yit.'~
END
++ ~*You sing with him.*~ + A185

CHAIN
IF ~~ THEN TIMaethJ A184C
~*Without even losing a beat, Maethor laughs, his eyes glittering mischievously.* And yet besides all this good sport, My Philip can both sing and dance, With new-found toys of sundry sort My Philip can both prick and prance: As if you say but 'fend cut, Phippe,' Lord! how the peat will turn and skip. And for the rest I dare compare, She is both tender, sweet, and soft; She never lacketh dainty fare. But is well fed and feedeth oft: For if my Phippe have lust to eat, I warrant you Phippe lacks no meat. *Maethor grins wickedly at you, momentarily resting his hand on his groin.* For when she once hath felt a fit, Philip will cry still 'yit, yit, yit.'~
END
++ ~*You sing with him.*~ + A185

CHAIN
IF ~~ THEN TIMaethJ A185
~*As soon as Maethor becomes aware of your voice joining with his, he steps lightly over to you, and, taking your hands in his, draws you into the open center of the dance floor. For a moment, you almost can forget the noise of the dancing, singing patrons all around you and only see Maethor.* And then if that her meat be good, And such as like do love alway, She will lay lips thereon, by the rood! And see that none be cast away. And to tell truth, he were to blame, Which had so fine a bird as she, To make him all this goodly game. Without suspect or jealousy: He were a churl and knew no good, Would see her faint for lack of food. *The audience, now well-familiar with the refrain, joins in thunderously:* For when she once hath felt a fit, Philip will cry still 'yit, yit, yit.'~
END
++ ~Wait.~ + A186YI

CHAIN
IF ~~ THEN TIMaethJ A186YI
~*After the loud noise of the raucous song, the quiet following makes you aware of how badly your ears are ringing. Taking Maethor's arm, you lead him away from the center of the room and to a quiet corner in the hallway.~
END
++ ~*Whispering to him.* Will you cry 'yit, yit, yit'?~ + A185A
++ ~Who are you? And what have you done with Maethor? Oh... Forget the second question. Who are you?~ + A185B
++ ~*Kiss him.*~ + A185C

CHAIN
IF ~~ THEN TIMaethJ A185A
~Perhaps. Will I once feel a fit?~
END
++ ~Most assuredly. More likely several.~ + A186
++ ~Do you want to? I have a room upstairs...~ + A186A

CHAIN
IF ~~ THEN TIMaethJ A185B
~*Laughs.* Well, for one, I'm tipsy from the beer. For another, Underneath the knightly armor beats the heat of a...erm...man who does understand passion. It's probably my main failing.~
END
++ ~I would agree. But if you have to have one, it might as well be an enjoyable failing. *Kiss him.*~ + A185C
++ ~Shall we explore that possibility further? In my room?~ + A186A

CHAIN
IF ~~ THEN TIMaethJ A185C
~*You pull Maethor into a warm, earnest embrace and kiss his soft lips. Instead of the typical tension, you feel only his heart beating and a sense of wistful yearning. He kisses you back, this time in earnest, and your mouths open to deepen the connection. He tastes sweet, and you feel his breathing quicken. You stroke his back, pulling his body tightly against yours, and are a little surprised when he rests his hands on your bottom and pulls your hips against his groin.*~
END
++ ~*Pull back.* Down, boy!~ + A186
++ ~*whisper in his ear.* Do you want to go upstairs with me?~ + A186A

CHAIN
IF ~~ THEN TIMaethJ A186
~*Looks up at you, grinning wickedly.* I'll have to see if you're being serious or merely teasing me!! I know you've been wishing, wanting, hoping that I'd put my hands on you!~
END
++ ~Oh, yes. Yes!~ + A186A
++ ~Come with me...and indeed, we shall see if I'm only teasing...~ + A186A

CHAIN
IF ~~ THEN TIMaethJ A186A
~I wish I could...*Maethor looks wistfully up the stairs, his words slightly slurring.* Perhaps.... Alas! I wish I'd known earlier... Sometimes I'm so...so dense. I cannot. I have promised the innkeeper I would play a full set with the local musicians. Tonight is the usual night for dancing and their usual piper is sick.~
END
++ ~Then come upstairs when you're done. I have a certain jig in mind that I think you'd like to dance with me.~ + A186B
++ ~Hells...At least come and sleep with me later, then. I need to hold you. You're in such a good mood...~ + A186B
++ ~Well, have a good night, then.~ + A183EX

CHAIN
IF ~~ THEN TIMaethJ A183EX
~*Although your room is still noisy from downstairs' festivities, you find that wrapping both pillows over your ears muffles the sound enough to let you fall asleep. Your last conscious thoughts are of Maethor, sitting on the edge of the table, happily playing his smallpipes. You are grateful that he is getting the chance to enjoy himself.*~
END

CHAIN
IF ~~ THEN TIMaethJ A186B
TIMaethJ~I'll be in the mood for sleep by then, <CHARNAME>. After today's full day and an evening of playing, I shall be exhausted. But I will join you. I hope that holding me will be enough for you. *You hand him your room key and, alone for the moment, head upstairs.*~
END
++ ~Go to your room.~ + A187

CHAIN
IF ~~ THEN TIMaethJ A187
~*Although your room is still noisy from downstairs' festivities, you find that wrapping both pillows over your ears muffles the sound enough to let you fall asleep. Your last conscious thoughts are of Maethor, sitting on the edge of the table, happily playing his smallpipes. You are grateful that he is getting the chance to enjoy himself.*~
END
++ ~Later that night...~ + A187PRE

CHAIN
IF ~~ THEN TIMaethJ A187PRE
~*You awake sometime in the early morning, feeling the blankets being pulled back from your body. Still groggy, you open your eyes and see Maethor, wearing only his nightshirt, easing himself between the covers next to you. It is fortunate that he is small, for the bed is very narrow, but you find that by wrapping both arms around him and pulling him firmly against you, that there is sufficient room.*~
==TIMaethJ~I'm here as promised, my darling <CHARNAME>. *Maethor's voice is huskier than usual and he slurs most of his words. he wraps both of his arms around your neck and begins to slowly kiss your face and lips.* I'm utterly exhausted, but to be here with you... It shall be difficult to restrain myself.~
END
++ ~You don't have to, you know...~ + A187A
++ ~By the gods, Maethor, you shouldn't tempt me.~ + A187B
++ ~Kiss me again, Maethor, and I make no promises about what will happen or not happen....~ + A187C

CHAIN
IF ~~ THEN TIMaethJ A187A
~Alas, I do. But at least my last memory for tonight will be tasting the sweetness of your mouth... *He gives you one last, lingering kiss, and then closes his eyes. You lay your head against his narrow chest and listen to him breathing. In a few moments, you are also asleep.*~
~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A187B
~Tempt you!? The real problem is that I tempt myself. But at least my last memory for tonight will be tasting the sweetness of your mouth... *He gives you one last, lingering kiss, and then closes his eyes. You lay your head against his narrow chest and listen to him breathing. In a few moments, you are also asleep.*~
~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A187C
~*Maethor gazes at you solemnly for a moment, then smiles slowly.* It is just us here... *He winds his arms around you, his hands slowly sliding down your back to your bottom. His lips, when you find them again, are open to your caress.*~
END
++ ~Oh Maethor...~ + A187D
++ ~You are so tempting to me...~ + A187E
++ ~Good night, my dear Maethor...~ + A187FX

CHAIN
IF ~~ THEN TIMaethJ A187FX
~You're just too good for me, <CHARNAME>. I shouldn't tempt you any further. But at least my last memory for tonight will be tasting the sweetness of your mouth.. *He gives you one last, lingering kiss, and then closes his eyes. You lay your head against his narrow chest and listen to his breathing. In a few moments, you are also asleep.*~
~RestParty()~
END

CHAIN
IF ~~ THEN TIMaethJ A187D
~*Yours hands slide underneath the nightshirt. Not surprisingly, he has already removed his undershorts. His belly is firm, hard to the touch, leading upwards to his finely muscled, but still youthfully slender chest. You caress and stroke it, playing gently with the nipples, and feeling the slight down of early chest hair.~
==TIMaethJ~Oh yes, <CHARNAME>. Touch me...~
END
++ ~Continue stroking his chest.~ + A187.1
++ ~Touch his thighs.~ + A187.1A

CHAIN
IF ~~ THEN TIMaethJ A187.1
~*You concentrate on playing with his chest. You take a moment to undo the toggles on Maethor's nightshirt, allowing you to pull it completely open. In the dim light of the room, his young body is glossy with sweat. You begin to kiss his chest, running kisses down the thin line of chest hair that defines the space between his lean pectoral muscles, nipping and licking wherever you sense he wants to be touched.~
END
++ ~Touch his thighs.~ + A187.1A
+ ~Gender(PLayer1,MALE)~ + ~Make love.~ + A187.2A
+ ~Gender(PLayer1,FEMALE)~ + ~Make love.~ + A187.2AF

CHAIN
IF ~~ THEN TIMaethJ A187.1A
~*You give his chest one last, lingering stroke, and then slide your hands down his belly to his thighs. Moving the edge of his nightshirt away, you begin to stroke between his legs. You hear his sharp intake of breath and soft groans as your fingers trace the contours of his privates.~
==TIMaethJ~Let me...*gasp*...please you, <CHARNAME>.~
END
+ ~Gender(Player1,MALE)~+ ~Make love to him.~ + A187.2A
++ ~Please him.~ + A187.2AF
++ ~No, my dear Maethor, this is only for you. You can please me some other time.~ + A187.2AFA

CHAIN
IF ~~ THEN TIMaethJ A187E
~I'm ready for you, my beloved <CHARNAME>. Do...do you want... hoitha...? To...to...? *Maethor blushes.* I know several words for it in Elven, but the only word I know in Common is not considered a polite one.*~
==TIMaethJ~*You reassure him that you know what he means.*~
END
+ ~Gender(Player1,MALE)~ + ~Make love to him.~ + A187.2A
++ ~Please him.~ + A187.2AF
++~No, my dear Maethor, this is only for you. You can please me some other time.~ + A187.2AFA

CHAIN
IF ~~ THEN TIMaethJ A187.2A
~*You take Maethor in your arms again, kissing and caressing him, helping him to roll over and shift his hips over on top of the bolster. You move on top of him, caressing his finely-shaped hips with your palms and mounting. As you begin to make love to him, he grips the bolster, groaning with pleasure. You kiss his neck, whispering reassurance and affection, keeping him firmly in the present. The time you spend this way seems to stretch itself out... Finally, he arches his back, moaning softly. Your own pleasure comes swiftly after.* By all the gods, Maethor...~
==TIMaethJ~I do so love you, <CHARNAME>.*Entwined together, you finally sleep.*~
DO ~SetGlobal("TIMaethLovePC","GLOBAL",1) RealSetGlobalTimer("TIMaethILUTimer","GLOBAL",ONE_DAY) RestParty()~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A187.2AF
~*You gaze down at him, noting that he is pleasantly endowed and truly ready for your affection. You shift so that you can more easily attend to him, running kisses down the line between his pectorals and along his belly. He shivers at the touch of your lips and tongue, threading his fingers through your hair. You grasp him and then, reminded of the song he sang to you earlier in the evening, 'lay on load.' It is an easy task to discover what he likes... As you nip and caress him intimately, he groans, bucks his hips, and very gently presses your head downward. The time you spend this way seems to stretch itself out... Finally, arching his back, he moans your name and then lies quietly beside you.*~
==TIMaethJ~I do so love you, <CHARNAME>. *Entwined together, you finally sleep.*~
DO ~SetGlobal("TIMaethLovePC","GLOBAL",1) RealSetGlobalTimer("TIMaethILUTimer","GLOBAL",ONE_DAY) RestParty()~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A187.2AFA
~*While you kiss his face and deeply look in his eyes, you briskly bring him pleasure with your hands and fingers. Your whispers are of reassurance and affection, keeping him firmly in the present. The time you spend this way seems to stretch itself out... Finally, he arches his back, groaning your name, and then lies quietly against you.*~
==TIMaethJ~I do I love you, <CHARNAME>. *Entwined together, you finally sleep.*~
DO ~SetGlobal("TIMaethLovePC","GLOBAL",1) RestParty()~ EXIT

CHAIN
IF ~~ THEN TIMaethJ A187F
~*Maethor nods, and then curls up in your arms.* Let us have good dreams tonight.*Entwined together, you finally sleep.*~
DO ~RestParty()~
END

APPEND TIMaethJ

//MaethTalk #21 Family shame: Fey'ri (Inn, Day, Post-Rest, With Belt)

IF ~Global("TIMaethTalks","GLOBAL",42) HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT20
SAY~*Being the first to rise on a dreary, misty morning, you have decided to have your breakfast by the fire in the common room. You are startled out of your reflection by someone touching your arm. You look up to see Maethor standing by you.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A190
END

IF ~~ THEN BEGIN A190
SAY ~May I join you, <CHARNAME>?~
++ ~Certainly.~ + A190A
++ ~Only if you're quiet. I'm trying to relax.~ + A190B
++ ~No. I'd like to be alone.~ + A190C
END

IF ~~ THEN BEGIN A190A
SAY ~*Maethor sits down beside you and leans against your shoulder.* I've been thinking about my mother again. Or still. I don't know which, actually. Do you know what a fey'ri is?~
++ ~No.~ + A191
++ ~I think it's the elven equivalent of a cambion.~ + A192CA
++ ~A fairy? Isn't that a little person with wings?~ + A193FAI
END

IF ~~ THEN BEGIN A190B
SAY ~Believe it or not, I can be quiet. But I'm troubled by my thoughts this morning and would like your counsel. If I cannot speak my mind, I shall have to be more productive this morning and finish cleaning my armor.~
++ ~Very well, Maethor. Tell me what's on your mind.~ + A190A
++ ~In that case, you'd better be productive. I meant to enjoy the quiet of the morning before everyone else is up and we have to get ready to leave.~ + A190C
END

IF ~~ THEN BEGIN A190C
SAY ~*Maethor nods.* You're right. I shouldn't avoid my chores...however tedious they might be. *He gives you a pat on the arm and then strides out of the room.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A191
SAY ~Specifically, a fey'ri is the offspring of a demon--usually a balor or a succubus--and an elf. But the term is used more loosely to apply to any elf who shows the signs of a demonic bloodline.~
++ ~*shrug.* So why bring this up now?~ + A191FE
++ ~That sounds like a cambion.~ + A192
++ ~It's an interesting topic. Not that I've ever really noticed, but you've mentioned that you have some succubus blood in you.~ + A191.1A
END

IF ~~ THEN BEGIN A191.1A
SAY ~Yes. It's run rather haphazardly through my family. *Laughs.* You may not have noticed, but I feel the taint of it everyday. Even though I'm only very slightly fey'ri. You may not have thought about it as a trait of a succubus, but I've often felt that I was subtly influencing those who are already likely to be attracted to me. It's unintentional, but it has caused problems in the past. I had harsh words with a close friend in Athkatla right before I left for Beregost. We'd gotten...intimate...but she did not want to leave her home to come with me. She accused me of manipulating her friendship. It was a mess...*sigh.*~
++ ~If you don't mind me asking...Were you?~ + A191.1C
++ ~*shrug.* So why bring up the issue of your bloodline now?~ + A191FE
+ ~OR(2) !Global("TIMaethRomanceActive","GLOBAL",1) !Global("TIMaethRomanceActive","GLOBAL",2)~ + ~'She'?~ + A192.1M
+ ~Gender(Player1,MALE) OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~'She'?~ + A192.1M
+ ~Gender(Player1,FEMALE) OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~Who was that?~ + A192.1M
END

IF ~~ THEN BEGIN A192.1M
SAY ~*Maethor blanches.* Her name is Aeareth. Does...does that bother you?~
+ ~Gender(Player1,MALE) OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~It's a little surprising to find out that you...um...like girls.~ + A191.1E
+ ~OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~Will you be happy being with me?~ + A191.1F
+ ~OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~In a word, yes.~ + A191.1G
++ ~It bothers me on principle.~ + A191.1GA
++ ~Nope. You just caught me off-guard.~ + A191EA
END

IF ~~ THEN BEGIN A191.1E //Male Romanced
SAY ~My people refer to it as being 'gwegwin.' It's why this...erm...belt doesn't much bother me. My Lord Corellon is well-known to have appeared to his children sometimes as male, sometimes as female. It is said to be a sign of his particular favor if one can love him equally in either his male or his female form. In any case, it has no bearing on my feelings for you, <CHARNAME>, since I am yours.~
++ ~But will you be happy being with me?~ + A191.1FE
++ ~So it's a religious thing? Now I'm really confused.~ + A191.1J
++ ~Alright. You just caught me off-guard. Now what did you want to discuss about being Fey'ri?~ + A191FE
END

IF ~~ THEN BEGIN A191EA //Not Specified
SAY ~My people refer to it as being 'gwegwin.' It's why this...erm...belt doesn't bother me. My Lord Corellon is well-known to have appeared to his children sometimes as male, sometimes as female. It is said to be a sign of his particular favor if one can love him equally in either his male or his female form. In any case, it has no bearing on our friendship.~
++ ~So it's a religious thing? Now I'm really confused.~ + A191.1JA
++ ~Alright. Now what did you want to discuss about being Fey'ri?~ + A191FE
END


IF ~~ THEN BEGIN A191.1FE
SAY ~*Maethor smiles widely, showing his remarkable teeth.* I wouldn't have it any other way than to be with you.~
++ ~Alright. You just caught me off-guard. Now what did you want to discuss about being Fey'ri?~ + A191FE
END

IF ~~ THEN BEGIN A191.1G
SAY ~I don't know how to answer that. There's nothing I can do to change my brief...time...with Aeareth. Do you wish to end our relationship?~
+ ~Gender(Player1,MALE) OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~No! I'm... I'm just shocked. Can you be happy with a man?~ + A191.1F
+ ~Gender(Player1,MALE) OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~It depends...I sort of need to know how serious this relationship was. Because I don't want you to be with me and...and...miss...being with a woman.~ + A191.1I
+ ~Gender(Player1,FEMALE) OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~It depends...I sort of need to know how serious this relationship was. Because I don't want you to be with me and...miss...being with her.~ + A191.1I
++ ~No. But you're a paladin! I thought being a paladin meant being pure!~ + A191.1F
++ ~I'm sorry, Maethor. It's too much for me.~ + A192.3B
END

IF ~~ THEN BEGIN A191.1GA
SAY ~*Maethor shrugs.* I hardly think it should matter to your principles who I've had a relationship with in the past. Especially since I didn't even know you at the time that I knew her. Do you wish to end our friendship over this?~
++ ~I live and die by my priniciples, Maethor. Perhaps we have gotten too close.~ + A191.2GA
++ ~No. Let's just skip it. Now what did you want to discuss about being Fey'ri?~ + A191FE
END

IF ~~ THEN BEGIN A191.2GA
SAY ~Very well. Let me know when it is time to depart. *Maethor walks off, hands in his pockets, but after knowing him for so long and so intimately, you can detect that his shoulders are trembling.*~
++ ~Wait, Maethor! I'm sorry. I'm not in a good mood right at the moment and I spoke too hastily.~ + A191.3GA
++ ~*Silently watch him depart.*~ DO ~SetGlobal("TIMaethFriendActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN A191.3GA
SAY ~*Maethor stops and looks back at you over his shoulder, his cheeks wet from tears.* Truly?~
++ ~Let's just skip it. Now what did you want to discuss about being Fey'ri?~ + A191FE
END

IF ~~ THEN BEGIN A191.1J //Male Romanced
SAY ~No! Of course not! You make it sound like I'm a Goldenheart...a paladin of the love-goddess Hanali Celanil! I'm just saying that I'm far more attracted by personality than by what's inside someone's clothing.~
++ ~You know, I wouldn't doubt your word except sometimes at night I see you panting over pictures of Drizzt...~ + A191.1JDR
+ ~InParty("GV#Vynd")~ + ~You know, I wouldn't doubt your word except that I sometimes catch you looking at Vynd when he's shirtless and breathing hard.~ + A191.1JV
++ ~Uh, right.~ + A191.1I
END

IF ~~ THEN BEGIN A191.1JDR //Male Romanced
SAY ~*Maethor pouts.* That doesn't count. Everyone has fantasies that they know won't ever come true... Even you. Drizzt is mine!~
IF ~~ THEN + A191.1I
END

IF ~~ THEN BEGIN A191.1JV //Male Romanced
SAY ~*Maethor's eyes widen.* Oh, dear. Am I that obvious? I'll...I'll have to work on that. Anyway, it wouldn't work. He'd cut me to ribbons in about three seconds the first time I got vulnerable. Still, everyone has fantasies they know won't ever come true... Even you.~
IF ~~ THEN + A191.1I
END

IF ~~ THEN BEGIN A192.3B
SAY ~*Maethor looks at you quietly, and then sighs.* I realize that being my friend means hearing about some unpleasant things, but I'm truly surprised that...that THIS bothers you. Aeareth was a good, kind woman. Beautiful and talented, as well. You probably would have liked her.  I guess there's no accounting for what offends some people. Do you wish to end our friendship over this?~
++ ~Perhaps we have gotten too close, Maethor.~ + A191.2GA
++ ~No. Let's just skip it. Now what did you want to discuss about being Fey'ri?~ + A191FE
END

IF ~~ THEN BEGIN A191.1JA //Not Specified
SAY ~No! Of course not! You make it sound like I'm a Goldenheart...a paladin of the love-goddess Hanali Celanil! I'm just saying that I'm far more attracted by personality than by what's inside someone's clothing. Let's...let's just talk about being Fey'ri, shall we?~
IF ~~ THEN + A191FE
END

IF ~~ THEN BEGIN A191.1I
SAY ~<CHARNAME>, being with you makes me realize every day just how lucky I am to have you. My feelings for Aeareth weren't ever very serious. I was attracted to her and liked her, but that was as far as it went. I met her when she was playing music for a party at the headquarters of the Radiant Heart in Athkatla; we discovered we had some things in common. We went to a few concerts together. Talked about our families. Then, one night, when we'd had too much to drink, she took me back to her room at her guild to sleep off the mead. As dense as I am I thought she actually meant to sleep.~
= ~But, once in bed together, she started kissing me and taking off my clothes. I resisted at first. I reminded her that I was a paladin in training and that we're supposed to strive for purity. But she kept caressing me and I...I let her. In the morning, I told her I was in no position to court her; I still lived with Sir Tybalt and relied on his generosity to cover my expenses. She got angry and we fought. Is that enough for you or do you need to know more?~
++ ~No...that's enough. I'm glad you were honest, though. Now what did you want to discuss about being Fey'ri?~ + A191FE
++ ~Did you get in trouble over her?~ + A191.1F
++ ~I'm sorry, Maethor. I know you're only being honest. But that it happened really bothers me. You're not...not who I thought you were.~ + A192.3B
END

IF ~~ THEN BEGIN A191.1F
SAY ~Purity is one requirement for anyone who aspires to be a Blade of Sahandrian. Not because there's a rigid code given to us but because we all feel that our first duty in life is to serve our lord Corellon both in body and in spirit. Fortunately, squires are not expected to have as strong a conscience as a full knight. First Tybalt scolded me for being foolish. Then Finn scolded me for letting myself be persuaded to go against my vows. And both reminded me that our host in Athkatla--the Radiant Heart Order--expects associate knights from other Orders to uphold the same standards that are handed down by Helm, Torm, and Tyr... And on and on.~
++ ~Well, I don't mean to also scold you over that. Now...what did you want to discuss about being Fey'ri?~ + A191FE
++ ~They were right. You were being foolish. And lacking in honor.~ + A191HO
END

IF ~~ THEN BEGIN A191HO
SAY ~Agreed. But it's over and done with now. I won't continue to beat myself up over a brief affair that I regret, but cannot change. Does this offend you so much that on principle, you cannot be my friend?~
++ ~Perhaps we have gotten too close, Maethor.~ + A191.2GA
++ ~No. Let's just skip it. Now what did you want to discuss about being Fey'ri?~ + A191FE
END


IF ~~ THEN BEGIN A191.1C
SAY ~*Maethor laughs.* Does that frighten you? I've consciously tried to give you space in our friendship. *Maethor shrugs.* I don't know. She might have been exaggerating. I didn't think I was being manipulative at the time... I mean, I felt that she was chasing me...But now that I reflect back, I suppose I might have been. Individuals who normally would not be...open...to intimacy often seem to make an exception in my case. I've been mostly celibate since I became a Blade of Corellon. At first because of the rigorous training schedule and my duties to the knights I serve, but later because I want to be sure that when I do get close with someone, it's because they really want to.~
++ ~*shrug.* So why bring this up now?~ + A191FE
++ ~Just what do you mean by 'mostly' celibate?~ + A191CE
++ ~Well, you've mentioned that you have some succubus blood in you.~ + A191.1A
END


IF ~~ THEN BEGIN A191CE
SAY ~Exactly what I said. I lived with Tyb and his family from 1347 until I moved to Beregost. In those ten or eleven years, there's only been Finn and Aeareth.~
++ ~You got involved with Sir Finnilithui? Is that...um...even allowed?~ + A191FI
++ ~Maethor, two relationships in ten years isn't much like a succubus. Why worry about this now?~ + A191FE
END

IF ~~ THEN BEGIN A191FI
SAY ~*Maethor looks acutely embarrassed.* Normally, no. But he wasn't my mentor at the time. In fact, I was just beginning formal training as a paladin. I was just Tyb's foster-daughter. a silly girl who fell hard for a very attractive man who was a close friend of Tyb's. He and I got along very well. We talked a lot and he kept me company during my recovery...especially during the gruelling physical training that the clerics required of me. When I was fully recovered, I...um...told him that I was attracted to him. Apparently, he was lonely, because he...erm...indulged me. And I was happy. But Finn was always uncomfortable with the age difference and admitted that he did not think it appropriate to be my mentor while he shared my bed.~
= ~Further, since Finn was too honorable to hide our relationship, our open affection for one another strained his friendship with Sir Tybalt. Even though Tyb never called me his daughter, he did not approve of my choice in this matter. We talked briefly of marriage, but intimacy with Finn barred him from sponsoring me in my application to join the Blade. He knew other knights who might be willing to sponsor me, but implied that I would have a harder time being accepted because of the suggestion of favoritism. One cold night, he asked me how he might best serve me; as a mentor and friend or as husband and lover. I wept, but I had to be honest...His friendship and guidance as a knight would shape my life in a far more positive and far-reaching way...at least in a less selfish way. In the end, Finn ended our affair. It hurt a lot at the time, but I see the wisdom in restraint now. Everything that I hold dear now would have been impossible.~
++ ~Well, I certainly can't be too sorry about it. Because it allows you to be here now.~ + A191SE
++ ~So why are you worried so much about Fey'ri blood?~ + A191FE
END

IF ~~ THEN BEGIN A191SE
SAY ~*Maethor nods.* Yes. I love being a squire paladin. I love being able to serve my people and my Lord Corellon in this way, and I love being here with you.~
++ ~So why are you worried about your bloodline? Two relationships in ten years is hardly reminiscent of succubi blood.~ + A191FE
END


IF ~~ THEN BEGIN A192CA
SAY ~Yes. But the term is more often used loosely to apply to any elf who shows the signs of a demonic bloodline. In human terms, a tiefling.~
++ ~*shrug.* So why bring this up now?~ + A191FE
END

IF ~~ THEN BEGIN A193FAI
SAY ~Fey'ri. Not fairy. Specifically, a fey'ri is the offspring of a demon--usually a balor or a succubus--and an elf. But the term is used more loosely to apply to any elf who shows the signs of a demonic bloodline.~
++ ~Oh. *shrug.* So why bring this up now?~ + A191FE
END

IF ~~ THEN BEGIN A191FE
SAY ~I was thinking about my mother and wondering exactly how fey'ri she was...that the family was, actually. *Blushes.* And how much it was affecting us...~
+ ~OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~Us?~ + A192AA
+ ~OR(2) Global("TIMaethRomanceActive","GLOBAL",0) Global("TIMaethRomanceActive","GLOBAL",3)~ + ~Us?~ + A192
++ ~It actually makes a lot of sense, Maethor.~ + A192B
++ ~Well, your mother seems fairly obviously Fey'ri. Was anyone else in your family affected?~ + A192A
END

IF ~~ THEN BEGIN A192
SAY~Well, okay... Me. And the party as a whole. At this juncture, given all we've been through, it's probably just fruitless worry... But... in reverie, I happened to remember an experience I had as a student at the temple of Rillifane. One of the priestesses used to make fun of me in front of the other students. She talked about my family and Cormanthyr. I'd forgotten that day... But it came back. And I begin to wonder what it all means for me.~
IF ~~ THEN + A193
END

IF ~~ THEN BEGIN A192AA
SAY~Doesn't it affect us as a couple? Not to mention the party as a whole? At this juncture, given all we've been through, it's probably just fruitless worry... But... in reverie, I happened to remember an experience I had as a student at the temple of Rillifane. One of the priestesses used to make fun of me in front of the other students. She talked about my family and Cormanthyr. I'd forgotten that day... But it came back. And I begin to wonder what it all means for me.~
IF ~~ THEN + A193
END

IF ~~ THEN BEGIN A192A
SAY~If they were, they obviously hid it quite well. Which would be expected. But my mother's bloodline has to have originated somewhere...In reverie, I happened to remember an experience I had as a student at the temple of Rillifane. One of the priestesses used to make fun of me in front of the other students. She talked about my family and Cormanthyr. I'd forgotten that day... But it came back to me. And I begin to wonder what it all means for me.~
IF ~~ THEN + A193
END

IF ~~ THEN BEGIN A192B
SAY~I suppose.~
++ ~Look...Your mother probably used her succubean charms her whole life to do what she wanted. It also explains what you call her cruelty. Succubi aren't normally good-hearted. So what else were you thinking?~ + A192.3C
END

IF ~~ THEN BEGIN A192.3C
SAY ~In reverie, I happened to remember an experience I had as a student at the temple of Rillifane. One of the priestesses used to make fun of me in front of the other students. She talked about my family and Cormanthyr. I'd forgotten that day... But it came back to me. And I begin to wonder what it all means for me.~
IF ~~ THEN + A193
END

IF ~~ THEN BEGIN A193
SAY ~It's a matter of ancient history, actually. One of the noble houses in Cormanthyr, House Dlardrageth, attempted to gain power by enhancing their bloodline. They gave themselves and their young sons and daughters to demons, courting incubi and succubi.  Their treachery was discovered by the Coronal and their house was destroyed, but not before they had succeeded in corrupting three other Houses. There is a tower once held by the Dlardrageth near Myth Drannor that was long since thought abandoned.~
++ ~I'm beginning to see your point. It wasn't?~ + A194
END

IF ~~ THEN BEGIN A194
SAY ~Not entirely. There must have been a survivor from Reithel, Yesve or Siluvanede. One who chose, instead, to live undetected in Tethir. One who concealed their mixed blood. For their descendants eventually came to Suldanessellar. Where my mother was born.~
++ ~This still doesn't answer my initial question... Why bring this up now?~ + A195
END

IF ~~ THEN BEGIN A195
SAY~Because I'm beginning to doubt my ability to overcome my blood.~
++ ~How so?~ + A196
END

IF ~~ THEN BEGIN A196
SAY~Being in this party has been different than my experiences when I've travelled by myself or with Tyb and his associates. I'm beginning to be open to feelings I hadn't felt for years... Some that I doubted I ever could feel again...~
++ ~Like what?~ + A197
+ ~OR(2) Global("TIMaethRomanceActive","GLOBAL",1) Global("TIMaethRomanceActive","GLOBAL",2)~ + ~Like love?~ + A197.1
END

IF ~~ THEN BEGIN A197
SAY ~Affection, friendship, love, jealousy, even hatred. You and the other members of the party have made me feel more alive than I ever have...And also more terrified. I fear losing control of my temper because the cost of losing someone's friendship is too great... I wonder if I can actually ever be a knight given how passionate I feel at times.~
++ ~You worry too much. Having emotions is a part of being alive. Perhaps you have lived an intellectual life for too many years instead of embracing your emotions and getting true control over them.~  + A198
END

IF ~~ THEN BEGIN A197.1
SAY ~*Maethor looks at you and his eyes are warm with affection.* Yes. Our love. And the jealousy that loving someone inevitably brings along with it! My affection for other party members. Friendship. Even the hatred I've felt at times during our encounters. You and the other members of the party have made me feel more alive than I ever have...And also more terrified. I fear losing control of my temper because the cost of losing someone's friendship is too great... I wonder if I can actually ever be a knight given how passionate I feel at times.~
++ ~You worry too much. Having emotions is a part of being alive. Perhaps you have lived an intellectual life for too many years instead of embracing your emotions and getting true control over them.~ + A198
END

IF ~~ THEN BEGIN A198
SAY~Then...the stirrings I feel are...are normal? And not because I'm somehow demonic?~
++ ~Of course they're normal. I think you correctly assessed your bloodline when we first met. It's mostly a cosmetic issue of your teeth and your physical strength. In my experience, you've shown no other signs of demonic taint. Rather, you've demonstrated you have more than sufficient control over yourself.~ + A199
END

IF ~~ THEN BEGIN A199
SAY ~<CHARNAME> you are, once again, absolutely wonderful! I...I guess you're right. I am worrying too much.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ EXIT
END

//MaethTalk #22: Justice (With Belt)

IF ~Global("TIMaethTalks","GLOBAL",44) !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT21
SAY ~*You notice movement out of the corner of your eye. When you turn your head, you see Maethor gesturing for you to call a halt. He is flushed from the exertion of walking in full armor and takes a deep swig from his waterskin. The party gratefully scatters to rest, but Maethor stays nearby and nods to you.*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1) IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A200
END

IF ~~ THEN BEGIN A200
SAY ~I'm not really a very philosophical person, but I'm curious... Do you believe in justice?~
+ ~Alignment(Player1, LAWFUL_GOOD)~ + ~Yes. It's the foundation of my belief system.~ + A200A
+ ~Alignment(Player1, LAWFUL_NEUTRAL)~ + ~Yes. It's the foundation of my belief system.~ + A200A
+ ~Alignment(Player1, LAWFUL_EVIL)~ + ~Yes. It's the foundation of my belief system.~ + A200A
++ ~Yes, but as a concept; not as a reality.~ + A200A
+ ~Alignment(Player1, CHAOTIC_GOOD)~ + ~No. It's a fiction created by the 'haves' in society to keep the 'have nots' pacified.~ + A200B
+ ~Alignment(Player1, CHAOTIC_NEUTRAL)~ + ~No. It's a fiction created by the 'haves' in society to keep the 'have nots' pacified.~ + A200B
+ ~Alignment(Player1, CHAOTIC_EVIL)~ + ~No. It's a fiction created by the 'haves' in society to keep the 'have nots' pacified.~ + A200B
++ ~In a way. The concept is a fiction to pacify the underclass, but there does seem to be some kind of justice in the world.~ + A200A
++ ~Please, no philosophical discussions now...~ + A200.1
END

IF ~~ THEN BEGIN A200.1
SAY ~Perhaps you're right. My thoughts sometimes wander to the esoteric when they should be confined to the present moment. Perhaps later? Or does this topic not interest you?~
++ ~I'll be happy to talk with you later.~ + A200.2
++ ~Frankly, it doesn't interest me.~ + A200.2A
END

IF ~~ THEN BEGIN A200.2
SAY ~Very well. Later, then.~
IF ~~ THEN DO ~SetGlobal("TIMaethLT21Delay","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A200.2A
SAY ~You can be honest with me. Would you prefer I not trouble you?~
+ ~Global("TIMaethRomanceActive","LOCALS",1)~ + ~In a word, Yes.~  ~SetGlobal("TIMaethRomanceActive","LOCALS",3)~ + A200.1A
++ ~No... I don't mind your thoughts. Just not this particular topic.~ DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ + A200.1A
END

IF ~~ THEN BEGIN A200.1A
SAY ~Very well. I can keep my musing to myself.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A200A
SAY ~In what way?~
++ ~I believe in it as a concept. A well-ordered society embraces justice; in other words, what is fair for all parties.~ + A201
++ ~I believe in it as a concept. A well-ordered society embraces justice; in other words, what allows for balance between good and evil.~ + A201A
++ ~I believe society could be more fair than it is. In reality, justice plays little role in the turn of events.~ + A201B
++ ~Strangely, there is more justice in the operation of the natural world than in the world of thinking beings.~ + A201C
END

IF ~~ THEN BEGIN A200B
SAY ~Class warfare, hmmm? You may find it strange for a paladin to agree with you, but I don't believe there is any real justice in the world except what thinking beings create. And, in that case, the 'justice' is arbitrary, since the system of justice is inevitably based on one group or one individual's vision of fairness or balance.~
++ ~I wouldn't say it's class warfare. Governmental overthrow is rare. More typically the underclass is controlled by their leaders, who permit a limited number of unlawful acts to take place in order to placate powerful subgroups within the underclass.~ + A202
++ ~Yes, exactly. The underclass occasionally rises up as a unified body and deposes the existing leadership for good or for ill. Law as a concept usually ceases to exist in the chaos that follows until a new 'justice' concept emerges.~ + A202A
+ ~CLASS(PLAYER1, PALADIN)~ + ~That depends on what you think the driving force for a paladin is. Some say the dictates of a god drive the actions of the lawful paladin, but many say the driving force is the appreciation of an ideal, which may or may not be lawful in nature.~ + A202B
+ ~CLASS(PLAYER1, PALADIN)~ + ~Yeah. You and I differ in that I follow the Lawful paradigm and you don't. I didn't think there could be paladins who weren't Lawful.~ + A202C
END

IF ~~ THEN BEGIN A202
SAY ~You know, that's a truly cynical view of society. I'm not sure if I agree with the idea that certain unlawful acts are permitted as much as believe that there isn't a police or military force capable of controlling all behavior. Still, the view has its adherents.~
IF ~~ THEN + A207
END

IF ~~ THEN BEGIN A202A
SAY ~We could have another argument discussing whether the terms 'good' or 'ill' actually apply in the case of the deposition of a leader. But I do agree that such terms cease to exist as long as chaos is the order of the day.~
IF ~~ THEN + A207
END


IF ~~ THEN BEGIN A202B
SAY ~Most non-Lawful human paladins are associated with Lathander or Sune--a minority, compared with the Orders of Helm, Tyr, and Torm. On the other hand, almost all elfin paladins are non-Lawful. Usually because they are associated with Rillifane or Corellon. Corellon's daughter, Vandria Gilmadrith, sponsors a Lawful order, but I haven't met any knights from that sector. But I, too, have met paladins who fight to preserve ideals like freedom and distrust law without being associated with a specific deity.~
++ ~Not many of them, I bet. Order knights wouldn't like their disdain for Law.~ + A203
++ ~I wish all knights respected personal liberty.~ + A203A
END

IF ~~ THEN BEGIN A203
SAY ~No, I suppose not. Which is a pity.~
IF ~~ THEN + A206
END

IF ~~ THEN BEGIN A203A
SAY ~Unfortunate indeed!~
IF ~~ THEN + A206
END

IF ~~ THEN BEGIN A202C
SAY ~We're a rare breed, I admit. Partly because certain gods, like Sune Firehair or Corellon Larethian, embody ideals that can't easily be quantified by Law. Namely, Beauty and Art. I follow Corellon, who embraces creativity and new experience. Both of those ideals are a part of artistic expression, so my paladinic code of honor is protective of ideals which tend, often as not, to flout established order.~
= ~InParty("Isra")~ ~As Isra could tell you, her Order, the Ruby Rose, is well-known for their intense interest in fostering the Arts.~
IF ~~ THEN + A202B
END

IF ~~ THEN BEGIN A201
SAY ~What is fair, I wonder? Is it the kind of solution that attempts to please everybody and ends up pleasing nobody?~
++ ~That's a negative way of saying it. It's the essence of compromise. And what I think our world needs more of.~ + A206
++ ~Fairness emphasizes a kind of equality among individuals based on certain expectations. Lawful action should translate into the equal application of the law upon individuals. Or equal application of opportunity. I'm a dreamer, I admit, but that's what I work towards.~ + A206
++ ~Fair is determined by the group making the laws. Which is as it should be, since they create the laws that they also apply to themselves.~ + A204B
++ ~Fair is principle and law based on the beliefs of those best equipped to determine it.~ + A204C
END

IF ~~ THEN BEGIN A201A
SAY ~What is balance, I wonder? Is it the kind of solution that attempts to make unequal things equal... Like taking the hard-earned wealth of the farmer in order to support the bureaucrat?~
++ ~Yes. From those who have to those who need. Provided everyone produces something that benefits all--whether tangible or intangible, wealth should be equally distributed. I'm a dreamer, I know, but that's what drives me in my work.~ + A206
++ ~I was thinking of balance more in the sense of good versus evil, since the presence of one defines what the other is.~ + A206A
END

IF ~~ THEN BEGIN A201B
SAY ~My mentor, Sir Tybalt, used to agonize over whether there was justice in the world. And he was a paladin of Tyr for many years. But in order to figure out a way of making it 'more fair,' we should determine what is fair. Is 'fairness' the kind of solution that attempts to please everybody and ends up pleasing nobody?~
++ ~That's a negative way of saying it. It's the essence of compromise. And what I think our world needs more of.~ + A206
++ ~Fairness emphasizes a kind of equality among individuals based on certain expectations. Lawful action should translate into the equal application of the law upon individuals. Or equal application of opportunity. I'm a dreamer, I admit, but that's what I work towards.~ + A206
++ ~Fair is determined by the group making the laws. Which is as it should be, since they create the laws that they also apply to themselves.~ + A204B
++ ~Fair is principle and law based on the beliefs of those best equipped to determine it.~ + A204C
END

IF ~~ THEN BEGIN A201C
SAY ~That certainly could be argued. It could also be suggested that what happens in nature is also determined by qualities entirely separate from 'fairness,' 'justice,' or 'compassion'--qualities which seem to be the most fully developed within the minds of sentient beings. Is nature's 'survival of the fittest' a better law than one of 'justice for all'? That's an argument for another day~
IF ~~ THEN + A207
END


IF ~~ THEN BEGIN A204B
SAY ~That certainly could be argued. It doesn't respect the beliefs of individuals within the group, though. But still, that's an argument for another day~
IF ~~ THEN + A207
END

IF ~~ THEN BEGIN A204C
SAY ~Which means who, exactly? You? A king? A parliamentary president?~
++ ~Why not me?~ + A205
++ ~Leaders in general. But that's not the point. The fittest rule the less fit, which ultimately is codified into Law.~ + A204B
END

IF ~~ THEN BEGIN A205
SAY ~*smiles* That's a point I won't argue.~
IF ~~ THEN + A207
END

IF ~~ THEN BEGIN A206
SAY ~The world needs dreamers, even if I don't agree with the dream.~
IF ~~ THEN + A207
END

IF ~~ THEN BEGIN A206A
SAY ~Oh, heavens! There are some religions that regard that sort of talk as heretical. Is all that is 'good' simply 'not evil'? Is all that is 'evil' simply 'not good.' I would wonder if that's reduces the problem a bit too far. In any case, that's a question for another day.~
IF ~~ THEN + A207
END

IF ~~ THEN BEGIN A207
SAY ~Well! Thank you for a rousing conversation. I feel I understand myself a little better now. And my place in the world.~
IF ~~ THEN EXIT
END

//(MaethTalk #24) Love Talk 11: Concerning Rings (no conditions)

IF ~Global("TIMaethLoveTalks","GLOBAL",24)  !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN ATILT22
SAY ~*Maethor approaches you, hesitantly. You are constantly surprised by his caution, since he now routinely joins you at rest and makes love with you, as he says, 'By your command.'*~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",360)~ + A210
END

IF ~~ THEN BEGIN A210
SAY ~I wished to discuss something with you, <CHARNAME>.~
+ ~OR(2) RACE(Player1, ELF) RACE(Player1,HALF_ELF)~ + ~What is it?~ + A210A
+ ~!RACE(Player1,ELF) !RACE(Player1,HALF_ELF)~ + ~What is it?~ + A210B
END

IF ~~ THEN BEGIN A210A
SAY ~It is the custom of my people that the heart of marriage is informal. Should a couple wish to be life-partners, they need only ask the gods to witness and *He blushes* share pleasure. But you were not raised amongst us and may not know of this. Are you... Do you mean to be more than just my lover?~
++ ~Of course. I want you to be my husband.~ + A211WI
++ ~*Startled, you laugh.* Oh, Maethor! Is that a proposal?~ + A211AP
++ ~I don't know if I'm ready for that. We've had such a rough time so far... You should be sure, as well.~ + A211B
END

IF ~~ THEN BEGIN A210B
SAY ~It is the custom of my people that the heart of marriage is informal. Should a couple wish to be life-partners, they need only ask the gods to witness and *He blushes* share pleasure. Are you... Do you mean to be more than just my lover?~
++ ~Of course. I want you to be my husband.~ + A211WI
++ ~*Startled, you laugh.* Oh, Maethor! Is that a proposal?~ + A211AP
++ ~I don't know if I'm ready for that. We've had such a rough time so far... You should be sure, as well.~ + A211B
END

IF ~~ THEN BEGIN A211WI
SAY ~*Maethor looks genuinely surprised.* Really? No! You must be joking with me!~
++ ~No, I'm not joking. Eventually, we need to consider where we're going and what we both want out of life.~ + A211.1
++ ~*Laugh.* I'm sorry, Maethor. I was just trying to be funny. I hope I didn't hurt your feelings.~ + A211.1A
++ ~I'm not joking. I want to marry you.~ + A211.1B
END

IF ~~ THEN BEGIN A211AP
SAY ~Not exactly. That is, I didn't mean it to sound like a proposal. I'd be willing to get married, but it should be after we figure out such little things as whether or not we'll survive. But that's not what I wanted to talk about, really.~
IF ~~ THEN + A211AA
END

IF ~~ THEN BEGIN A211B
SAY ~*Maethor sighs deeply and nods.* We have. I was just asking because something else was on my mind.~
IF ~~ THEN + A211AA
END

IF ~~ THEN BEGIN A211.1
SAY ~*Nods.* Yes. Yes, we do. After we figure out such little things as whether or not we'll survive long enough to get married. But that's not what I wanted to talk about, really.~
IF ~~ THEN + A211AA
END

IF ~~ THEN BEGIN A211.1A
SAY ~*Maethor shakes her head.* I'm pretty used to your sense of humor by now, <CHARNAME>, although sometimes you choose the strangest times for a joke.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ + A211AA
END

IF ~~ THEN BEGIN A211.1B
SAY ~<CHARNAME>! What are you saying?!~
IF ~~ THEN DO ~SetGlobal("TIMaethProposal","GLOBAL",0)~ + A211.1BA
END

IF ~~ THEN BEGIN A211.1BA
SAY ~*The color has utterly drained out of Maethor's face.* Are...are you proposing to me?~
++ ~I am. Maethor Grenfell, will you marry me?~ + A211.2
++ ~I didn't mean to right now. I...I was waiting for a more romantic time.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A211.2A
++ ~No. I'm just saying that I want to marry you. I first need to survive my quest.~ DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A211.2B
END

IF ~~ THEN BEGIN A211.2A
SAY ~*Flustered, Maethor shakes her head.* I'm sorry if I ruined some surprise you had in mind. I'm very good at botching some of the best set plans... In any case, I had something else in mind.~
IF ~~ THEN + A211AA
END

IF ~~ THEN BEGIN A211.2B
SAY ~Yes, yes! Of course... I'm sorry, <CHARNAME>, I wasn't sure what you were getting at. I'm a bit slow, you know. In any case, I had something other than marriage to discuss...~
IF ~~ THEN + A211AA
END

IF ~~ THEN BEGIN A211.2
SAY ~Right now?~
++ ~*Sigh.* Yes. Didn't you just say all it takes is the couple and the gods?~ DO ~SetGlobal("TIMaethProposal","GLOBAL",1) SetGlobal("TIMaethRomanceActive","GLOBAL",2)~ + A211.3
++ ~*Sigh.* You are so literal. I didn't mean that we'd get married right here and now. I'd like it to be in a church, you know? Can't we be engaged now and then plan a wedding...?~ DO ~SetGlobal("TIMaethProposal","GLOBAL",1) SetGlobal("TIMaethRomanceActive","GLOBAL",2)~ + A211.3A
++ ~No, Maethor. Of course not. *Laughs.* You're so serious all of time. Now, I know you weren't asking about whether we should get married or not...~ + A211.3B
END

IF ~~ THEN BEGIN A211.3A
SAY ~*For several seconds, Maethor laughs heartily.* I know I am. I'm sorry, <CHARNAME>. *He wipes his eyes.* I get a little too wrapped up in my own thoughts. Save your...question...for a moment, though. First, I have...um...a little issue to discuss.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A211AA
END

IF ~~ THEN BEGIN A211.3B
SAY ~*Maethor groans.* Ilmater give me patience to deal with thick-headed louts. Much-loved thick-headed louts, but loutish and thick-headed nonetheless. <CHARNAME>, sometimes I think we just weren't made to be a couple. In any case, I had something other than marriage to discuss...~
IF ~~ THEN DO ~IncrementGlobal("TIMaethOffend","GLOBAL",1)~ + A211AA
END

IF ~~ THEN BEGIN A211.3
SAY ~Yes, I did, but... but first, I have...um...a little issue to discuss. Let's talk that over first and then you can ask...that question if you still want to...~
IF ~~ THEN DO ~IncrementGlobal("TIMaethLove","GLOBAL",1)~ + A211AA
END

IF ~~ THEN BEGIN A211AA
SAY ~I need to know your thoughts about...this. *He draws a long leather cord out of his clothing, and you notice a tiny, sparkling ring threaded on it. When you think back, you realize that he's worn it constantly since you met him.*~
++ ~It's a ring, isn't it? What about it?~ + A212A
++ ~*Groan at yet another Maethor-style complication.* Who gave it to you and why?~ + A212A
END

IF ~~ THEN BEGIN A212A
SAY ~*Maethor seems truly uncomfortable as he gazes at the small ring in his palm. It has cut flecks of many different stones all around shaped like birds and the faces of flowers... Not just topaz, garnet, and amethyst, but also bits of emerald, sapphire, and ruby. At the crest, there's even a small diamond sun faceted and glittering. You can tell by looking that it is too small for even his littlest finger.*  My last lover... Aeareth...didn't give it to me, if that's what you're afraid of.~
++ ~I can't take much more of this, Maethor. Be completely honest with me. Are you married?~ + A213
++ ~So it came from Tyb? I...um...guess that would be okay with me.~ + A213A
++ ~How about you just toss that ring out and I...um...get you another one at the nearest town?~ + A213B
END

IF ~~ THEN BEGIN A213
SAY ~I don't know.~
++ ~How can you not know? Even if it wasn't formal, you would....Oh, Maethor! No!~ + A213C
++ ~*Sarcastically.* Well, did you exchange rings with someone? Recite vows? Those are usually excellent signs that you've gotten married.~ + A213D
++ ~Will you stop beating around the bush and just spit it out, already? Gods, Maethor!~ + A213E
END

IF ~~ THEN BEGIN A213A
SAY ~Well, I wish it had come from Tyb. But it didn't. He gave me many presents, but nothing that could be mistaken as a love-gift.~
++ ~You said you considered marrying that other knight...Sir Finnilithui...?~ + A213.1
++ ~I can't take much more of this, Maethor. Be completely honest with me. Are you married?~ + A213
END

IF ~~ THEN BEGIN A213B
SAY ~*Maethor's eyes well up with tears.* I've tried to get rid of it! But every time I weaken and I can't let it go. You could put another ring on my finger and I still wouldn't be able to let go of this one.~
++ ~I wouldn't ask you to get rid of something from Sir Tybalt, Maethor.~ + A213A
++ ~Be completely honest with me. Are you married?~ + A213
END

IF ~~ THEN BEGIN A213.1
SAY ~*Maethor closes her eyes and shakes her head.* No. Finn did propose, actually, but he was drunk at the time and I didn't take it seriously...~
++ ~So tell me already. Who gave this to you and why?~ + A213E
++ ~I can't take much more of this, Maethor. Be completely honest with me. Are you married?~ + A213
END

IF ~~ THEN BEGIN A213C
SAY ~Unfortunately, yes. The first time we lay naked together, after I had pleased him, Cýrontîr gave me this ring to wear. I thought then that it was merely a love-gift. But now I begin to wonder if he wanted to have proof of a marriage in the event my mother refused to give me to him later.~
= ~It seems very...planned...which was in keeping with his personality. He said he'd been keeping his eye on it at the jeweler's for weeks. I was embarrassed that I only had my great-grandpa's ring to give him in return. It's gold, at least, but it has an inscription on it about duty and honor. Nevertheless, Cýrontîr was delighted with it because it was one of my few treasures and put it on. He wore it to the grave, for all I know. Maybe I am married and have been all along...~
++ ~Well, at least he's dead. Even if that travesty was legal, it's over now.~ + A214
++ ~Aside from giving me heartburn, why are you telling me about this?~ + A214A
END

IF ~~ THEN BEGIN A213D
SAY ~*A look of irritation crosses Maethor's face.* I know what one does when one gets married. But in this case, I'm not sure if it would be recognized as a real marriage. I've been telling myself that it was only a love-gift for years, but now that I think back, I'm not sure.~
++ ~Oh, Maethor! No!~ + A213C
++ ~Go on...Spit it out already...~ + A213E
END

IF ~~ THEN BEGIN A213E
SAY ~The first time we lay naked together, after I had pleased him, Cýrontîr gave me this ring to wear. I thought then that it was merely a love-gift. But now I begin to wonder if he wanted to have proof of a marriage to take to a judiciar in the event my mother refused to give me to him later.~
= ~It seems very...planned...which was in keeping with his personality. He said he'd been keeping his eye on it at the jeweler's for weeks. I was embarrassed that I only had my great-grandpa's ring to give him in return. It's gold, at least, but it has an inscription on it about duty and honor. Nevertheless, Cýrontîr was delighted with it because it was one of my few treasures and put it on. He wore it to the grave, for all I know. Maybe I am married and have been all along...~
++ ~Well, at least he's dead. Even if that travesty was legal, it's over now.~ + A214
++ ~Aside from giving me heartburn, why are you telling me about this?~ + A214A
END

IF ~~ THEN BEGIN A214
SAY ~*Maethor grimaces at your bluntness.* Since Cýrontîr died, I've always meant to travel to Evermeet. As bessadin...his spouse...it would be expected for me to honor him in death. However you might feel about him...about what you call a travesty...it nevertheless happened. Maybe if I acknowledge him and visit his resting place, I'll stop feeling his absence.~
+ ~RACE(Player1,ELF)~ + ~Are you...are you asking me to go with you?~ + A215A
+ ~!RACE(Player1,ELF)~ + ~Are you...are you asking me to go with you?~ + A215B
++ ~What do you mean by feeling his absence?~ + A215C
END

IF ~~ THEN BEGIN A214A
SAY ~I'm sorry about the heartburn. Truly. I often wonder at your patience with the mess my life has created for us. Since Cýrontîr died, I've always meant to travel to Evermeet. As bessadin...his spouse...it would be expected for me to honor him in death. However you might feel about him, it nevertheless happened. Maybe if I acknowledge him and visit his resting place, I'll stop feeling his absence.~
+ ~RACE(Player1,ELF)~ + ~Are you...are you asking me to go with you?~ + A215A
+ ~!RACE(Player1,ELF)~ + ~Are you...are you asking me to go with you?~ + A215B
++ ~What do you mean by feeling his absence?~ + A215C
END

IF ~~ THEN BEGIN A215A
SAY ~I'm not sure if I can. It feels wrong to take a lover to the grave of a...a spouse. Yet, the voyage is such a long one, I cannot imagine you remaining here and waiting for me. I guess that, ultimately, would be your choice. Allowing, of course, that Evermeet was willing to permit me entry. I have not wished to research the matter until I had located Sir Tybalt.~
++ ~Well, if you go to Evermeet, will you come back?~ + A216
END

IF ~~ THEN BEGIN A215B
SAY ~I wish I could. Evermeet is properly known as 'the island of elves.' I do not know if they would allow you to come with me. I'm not even sure that they would allow me to visit. I meant to travel there under Cýrontîr's name... Maethor Dartha...in the event anyone made an issue of my slightly mixed blood. I just don't know. If they allow us both to enter, it still feels wrong to take a lover to the grave of a...a husband. Yet, the voyage is such a long one, I cannot imagine you remaining here and waiting for me.~
++ ~Well, if you go to Evermeet, will you come back?~ + A216
END

IF ~~ THEN BEGIN A215C
SAY ~When Cýrontîr died, I could not believe that he was gone. During my recovery, I constantly felt his presence. No differently than I feel you standing here with me. I was constantly looking over my shoulder or, later, amongst the crowds of Athkatla because I was sure I would see him. To not see him disturbed me. Sir Tybalt thought I might lose my mind. He took me to the best healers he could find. And, in time, the immediacy faded. But it never went completely away. I have hesitated to love you, <CHARNAME>, because at moments of intense intimacy, I smell his cologne or hear just the whisper of his voice in my ear. It's a burden, but one I should not ask you to bear with me.~
= ~InParty("Kivan")~ ~I suppose the best answer is to ask Kivan if he is still married to his beloved Deheriana and that would tell you the answer more poignantly than I ever could.~
++ ~Well, if you go to Evermeet, will you come back?~ + A216
END

IF ~~ THEN BEGIN A216
SAY ~I honestly don't know. Evermeet is known as the final destination for Elves before Arvandor. Cýrontîr shared his memories of Evermeet with me many times in reverie. Even through that distorting lens, Evermeet is beautiful and infinitely welcoming. I guess it all depends on whether you would be waiting for me to return. Take some time to think about this, <CHARNAME>. There is no hurry.~
END

IF ~Global("TIMaethProposal","GLOBAL",1)~ THEN BEGIN A217
SAY ~*Maethor looks distinctly uncomfortable as he gazes at you.* Now. Did... did you have a question for me?~
++ ~*Shake your head.* This news changes things. Let's just wait and see.~ DO ~ SetGlobal("TIMaethProposal","GLOBAL",0)~ + A218
+ ~RACE(Player1,ELF)~ + ~If I do not go to Evermeet with you, then you must have a reason to return. If I do, then I would prefer to go as your spouse. Let's get engaged.~ + A219
+ ~!RACE(Player1,ELF)~ + ~If I cannot go to Evermeet with you, then you must have a reason to return. Let's get engaged.~ + A219
+ ~RACE(Player1,ELF)~ + ~It seems that my desire to marry you was an appropriate one. If I do not go to Evermeet with you, then you must have a reason to return. If I do, then I would prefer to go as your spouse. I want to marry you. Now.~ + A219VO
+ ~!RACE(Player1,ELF)~ + ~It seems that my desire to marry you was appropriate. If I cannot go to Evermeet with you, you must have a reason to return. I would prefer to be your spouse. I want to marry you. Now.~ + A219VO
END

IF ~~ THEN BEGIN A218
SAY ~For the moment, <CHARNAME>, we have time to think things over. A little time, really, is all I have to give you. Gin melathon an-uir.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A219
SAY ~*Maethor swallows hard and nods.* Then I think you have a question for me. Are you ready? This is the last chance to say no...~
++ ~Since you put it that way, maybe...maybe I will wait.~ + A218
++ ~I'm ready. Maethor Grenfell, will you marry me, <CHARNAME> of Candlekeep?~ + A219A
END

IF ~~ THEN BEGIN A219A
SAY ~*For several seconds after you have spoken, Maethor simply stares at you, clearly overwhelmed. Then:* Yes!! Yes yes yes! *He rushes over and jumps on you, winding his arms around your neck. You stagger from the sudden combined weight of boy and armor.* By Corellon's silvery hair, oh yes! No matter what happens now, I won't ever forget this moment! *Then he takes a step back, gathering himself.* Should we tell the others?~
~SetGlobal("TIMaethProposal","GLOBAL",2)~
++ ~*Take Maethor by the hand.* Let's...~ DO ~RestParty()~ EXIT
++ ~Let 'em wonder! *Laugh.* That way they won't be expecting an engraved invitation!~ DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN A219VO
SAY ~*Maethor swallows hard and nods.* All it takes to get married, really, is our vows to one another. Are you ready? This is the last chance to say no...~
++ ~Since you put it that way, maybe...maybe I will wait.~ + A218
++ ~I'm ready.~ + A219.2
END

IF ~~ THEN BEGIN A219.2
SAY ~*You step over and take both of Maethor's hands in your own. Although you are only a short distance from the rest of the party, you feel as if only you and he are standing there together. The weight of the moment impresses you more than anything else. That and the depth of love you see in Maethor's large, dark eyes.* My Lord Corellon and My Lady Angaharradh. I call upon you to witness my vow to <CHARNAME> and seal it in the book of lovers whose partnerships you bless. I offer <HIMHER> the love of my heart and my body for as long as <HESHE> desires them. I assure <CHARNAME> of my honor for <HIMHER> and my fidelity to our bond. *Maethor takes each of your hands, turns them over, and kisses the palms.* Anlen gweston sen. This I do swear to you.~
+ ~RACE(Player1,HUMAN)~ + ~Faerûnian gods and goddesses, I call upon you to witness and bless my vows to Maethor Grenfell. I offer him the love of my heart and my body for as long as he desires them. I assure Maethor Grenfell my honor for him and my fidelity to our bond. *You turn over Maethor's hands, kissing the palms.* This I do swear to you.~ + A211
+ ~RACE(Player1,ELF)~ + ~Gods and goddesses of the Seldarine, I call upon you to witness and bless my vows to Maethor Grenfell. I offer him the love of my heart and my body for as long as he desires them. I assure Maethor Grenfell my honor for him and my fidelity to our bond. *You turn over Maethor's hands, kissing the palms.* Anlen gweston sen. This I do swear to you.~ + A211
+ ~RACE(Player1,HALF_ELF)~ + ~Gods and goddesses of Faerûn, the Seldarine and, especially, Khalreshaar, I call upon you to witness and bless my vows to Maethor Grenfell. I offer him the love of my heart and my body for as long as he desires them. I assure Maethor Grenfell my honor for him and my fidelity to our bond. *You turn over Maethor's hands, kissing the palms.* Anlen gweston sen. This I do swear to you.~ + A211
+ ~RACE(Player1,DWARF)~ + ~Gods and goddesses of the Morndinsamman and, especially, Berronar Truesilver, Goddess of Marriage, I call upon you to witness and bless my vows to Maethor Grenfell. I offer him the love of my heart and my body for as long as he desires them. I assure Maethor Grenfell my honor for him and my fidelity to our bond. *You turn over Maethor's hands, kissing the palms.* This I do swear to you.~ + A211
+ ~RACE(Player1,HALFLING)~ + ~Great Yondalla and all of your Children, I call upon you to witness and bless my vows to Maethor Grenfell. I offer him the love of my heart and my body for as long as he desires them. I assure Maethor Grenfell my honor for him and my fidelity to our bond. *You turn over Maethor's hands, kissing the palms.* This I do swear to you.~ + A211
+ ~RACE(Player1,TIEFLING)~ + ~Faerûnian gods and goddesses, I call upon you to witness and bless my vows to Maethor Grenfell. I offer him the love of my heart and my body for as long as he desires them. I assure Maethor Grenfell my honor for him and my fidelity to our bond. *You turn over Maethor's hands, kissing the palms.* This I do swear to you.~ + A211
+ ~RACE(Player1,GNOME)~ + ~Lords and Ladies of the Golden Hills, I call upon you to witness and bless my vows to Maethor Grenfell. I offer him the love of my heart and my body for as long as he desires them. I assure Maethor Grenfell my honor for him and my fidelity to our bond. *You turn over Maethor's hands, kissing the palms.* This I do swear to you.~ + A211
END

IF ~~ THEN BEGIN A211
SAY ~*For several seconds after you have spoken, Maethor simply stares at you, clearly overwhelmed. Then:* Yes!! Yes yes yes! *He rushes over and jumps on you, winding his arms around your neck. You stagger from the sudden combined weight of boy and armor.* By Corellon's silvery hair, oh yes! No matter what happens now, I won't ever forget this moment! *Then he takes a step back, gathering himself.* Should we...consummate...our love?~
~SetGlobal("TIMaethProposal","GLOBAL",2)~
++ ~Take Maethor by the hand and lead him towards a more secluded spot.~ DO ~RestParty()~ EXIT
++ ~Let's wait until we know we can be alone.~ DO ~RestParty()~ EXIT
END
