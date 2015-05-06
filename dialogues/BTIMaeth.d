BEGIN BTIMaeth

//1 (Ajantis:10)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Ajantis")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorAjantis1","GLOBAL",0)
See("Ajantis")~ THEN BTIMaeth MaethorAjantis1
~Since the moment we met, Sir knight, you have never looked at me but with a scowl.  Might I know the cause of your displeasure?~
DO ~SetGlobal("MaethorAjantis1","GLOBAL",1)~
== %AJANTIS_BANTER% ~Forgive me, my lady.  It is not a sign of displeasure--merely puzzlement.  Indeed, being that I am yet still only a squire, I freely admit my lack of knowledge.You wear plate mail of a sort I have never before seen and carry a fine blade.  Were you human, I would merely be admiring the beauty of your gear, but as it is...  To my untrained eye, you seem to be an elven knight; a being I have encountered only in the work of poets and childhood stories.~
== BTIMaeth ~Your eyes do not deceive you. I am a squire as well. I wondered if, perhaps, you disapproved of my intention to become a knight because I am female.~
== %AJANTIS_BANTER% ~No, no.  I have been acquainted with 'ladyknights' before, albeit but rarely and far more commonly in other orders than mine own.  No... I was just remembering that when I was young, I read the poet Spenser and his tales of a world composed of human and elven paladins who share the common goal of doing good works. But since then, since I became a squire, I cannot think of another time I have met one. I was once told that the elven gods do not call paladins for their service.~
== BTIMaeth ~Most of the Seldarine do not ask for their worshippers to adhere to a particular calling. But what of that? Do you have to ask your hunting hawk to fly and catch small prey? While it is true that Corellon Larethian does not make specific requests for the service of knights, he does call to him those knightly souls who wish to protect his people and their works. In the end there seems to be little difference. He who taught me my numbers taught me love of the Lifebringer.~
== %AJANTIS_BANTER% ~Could you not have done that, say, as a Feywarden? Or as one of his warrior Champions? Are you a member of an official Order of Knights or do you serve Corellon independently?~
== BTIMaeth ~So many questions! I am, like you, a prospective member of an Order and act under the guidance of an established member. Our Order, however, is somewhat unique even for elvenkind. Most of our knights guard specific religious sites. There are also guardians of specific places--Evermeet and Evereska. My Order, the Blade of Sahandrian, was originally established on Evermeet in connection with the Feywardens of the Shrine of Corellon.~
=~But some of the Blade do not felt drawn to religious service. Thus, there is a wing of the Blade of Sahandrian which acts as independent protectors of those of our people who have not yet returned to the traditional homelands. My mentor, Sir Finnilithui, was one of those while he was still active in field service. He and I are akin in many ways. I now perform duties as he once did, traveling up and down the Sword Coast from one elven community to the next doing good works.~
== %AJANTIS_BANTER% ~Hmmm. So you're his squire, then? What about that missing knight you seek, Sir Tybalt Grenfell. Is he also of the Blade?~
== BTIMaeth ~No, Sir Tybalt serves another Order. Sir Tybalt met Sir Finn when the latter was named liasion for the Blade of Sahandrian and was introduced to each of the other Orders of knights stationed in Athkatla. But, yes, I am Sir Finn's squire. I serve Sir Finn because he is my sponsor for the Blade. *Smiles.* My duties to Sir Tybalt are more personal. Sir Tybalt found me badly wounded on the road to Amn when I was young. He even adopted me. I could not love and respect him more even if I were a child of his blood.~
== %AJANTIS_BANTER% ~My lady, I will do all I can to help you find him. You have my word. *Grins.* Athkatla! My own Order is headquartered there. I even recall having met your mentor, Sir Finnilithui, there. It seems that we were destined to serve together. I admit the arrangement pleases me.~
== BTIMaeth ~As it pleases me, kind friend.~
EXIT

//2

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Ajantis")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorAjantis1","GLOBAL",1)
Global("AjantisMaethor1","GLOBAL",0)
See("Maethor")~ THEN %AJANTIS_BANTER% AjantisMaethor1
~Dame Maethor?~
DO ~SetGlobal("AjantisMaethor1","GLOBAL",1) SetGlobal("MaethAttractedAjantis","GLOBAL",1)~
== BTIMaeth ~Call me Maethor, Ajantis. Like you, I have not yet been Knighted. I have not yet earned the grand title of 'Dame.'~
== %AJANTIS_BANTER% ~Very well, Maethor. I had a question about your Order, the Blade of Sahandrian.~
== BTIMaeth ~You may ask anything of me, my friend.~
== %AJANTIS_BANTER% ~Thank you. My question concerns the operation of your Order in Faerûn. If your Order is based in Evermeet, then it would seem that every Blade here would be a knight-errant.~
== BTIMaeth ~Yes. Most Knights of Corellon travel as they wish provided they clearly serve the greater purpose. And, should Evermeet ever be attacked, we would all return to the defense of our homeland.~
== %AJANTIS_BANTER% ~I must admit, m'lady, that such lack of structure would be difficult for me to embrace. I do like knowing I can call on my elders in Athkatla at the Order headquarters if I need to. If you had a question or concern, who would you address it to?~
== BTIMaeth ~Finn resides south of Athkatla now... He no longer travels as he once did. I report to him. If the matter is beyond his purview, he may consult other members of the Blade; some are affiliated with each of the major Elven communities. If the matter is religious, rather than militant, I may send word of my concerns to the major Shrine of Corellon in Evermeet. *shrugs.* Have you not noticed that elven society moves more slowly than your impatient human communities? I have never had a concern that I required an immediate answer.~
== %AJANTIS_BANTER% ~*Smiles* Then you've been fortunate. I do see your point, though. And am grateful to have a sister-knight here with me. We share a kinship of the sword and understand each other better than the others do.~
== BTIMaeth ~Yes. And for that, I am also grateful.~
EXIT

//3

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Ajantis")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorAjantis1","GLOBAL",1)
Global("MaethorAjantisBelt","GLOBAL",0)
See("Ajantis")~ THEN BTIMaeth MaethorAjantis1
~*Sigh.* Do you need to make a comment on my unfortunate circumstance, my friend?~
DO ~SetGlobal("MaethorAjantisBelt","GLOBAL",1)~
== %AJANTIS_BANTER% ~Forgive me, my lady....erm...Maethor. But I am a bit taken aback by the change in you.~
== BTIMaeth ~Indeed. <CHARNAME> apparently wishes me to be male. I did not think myself that greatly altered.~
== %AJANTIS_BANTER% ~*Blushes.* It is perhaps more noticeable to those who look at you more intently, Maethor.~
== BTIMaeth ~Sorry... Am I truly that unpleasant to look at?~
== %AJANTIS_BANTER% ~No, no.  You are very fair to the eye, my friend, but I admit I miss your...erm...feminine charms. You now seem only another of many knights I have been honored to know.~
== BTIMaeth ~Yet I am grateful for that. This form discomfits me. I feel...physical attraction...rather more obviously than I did as a female... Is...is this what you have to deal with, my friend?~
== %AJANTIS_BANTER% ~Well, our profession requires a goodly amount of self-control. You, no doubt, are struggling with that. But when I think back to my youth, I recall many...erm...awkward moments. Do not fear, my friend...You'll get used to it.~
== BTIMaeth ~*Sighs.* Perhaps <CHARNAME> might take pity on me before too much longer.~
== %AJANTIS_BANTER% ~One can only hope. If it is not too forward to say so, I miss sharing trouble with my 'Ladyknight,' Dame Grenfell.~
== BTIMaeth ~Indeed. Perhaps life will return to normal in the near future.~
EXIT

//4

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Ajantis")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorAjantis1","GLOBAL",1)
Global("MaethorAjantis2","GLOBAL",0)
See("Ajantis")~ THEN BTIMaeth MaethorAjantis2
~You're very quiet, Ajantis. Is something on your mind?~
DO ~SetGlobal("MaethorAjantis2","GLOBAL",1)~
== %AJANTIS_BANTER% ~I have thought about your words, Lady Maethor, and they stir my heart. They ring true of my own thoughts.  But still…  I thought paladins were given their code of righteous behavior and clear knowledge of the will of their god. Your lord, Corellon, I know to be aligned to good purpose. Yet I have never heard that he ever bound his children that way. Why do you serve him specifically and not his lawful daughter, Vandia?~
== BTIMaeth ~May I provide an analogy, Ajantis, that my instruction might be clearer?~
== %AJANTIS_BANTER% ~Certainly.~
== BTIMaeth ~You are an uncommonly beautiful man, Ajantis. You need not blush at the truth. Even if it is a woman telling you. I wish to know if you are beautiful because I think so or if it is your nature.~
== %AJANTIS_BANTER% ~*Cough*... If you say I am, I must yield to your feminine view. But if I am, it must be part of my nature.  I've been told that before, so it is clearly not your view alone.~
== BTIMaeth ~*Smiles* I would expect that to be the case, my friend. Do you find me beautiful, Ajantis?~
== %AJANTIS_BANTER% ~Ahem! Of course, my lady. But what is your point?~
== BTIMaeth ~Code of conduct, as embraced by the elven knight, is discerned as part of our nature.  I do not adhere to Corellon's will. I merely acknowledge what pre-exists in my heart. I move to him like iron to a magnet. It is my nature to align with him--he does not compel me. In a similar vein, I do not specifically serve Vandia--although I revere her. She does not draw my love like Corellon.~
== %AJANTIS_BANTER% ~*Smiles, blushing.* You make it sound like a love affair, m'lady. Or like the fealty of a Lady to her Lord. I half expect you to say you have wished for his embrace.~
== BTIMaeth ~*Reddening.* You have heard, I suspect, the saying that Corellon often walks amongst those he protects. When I was a child, I was read stories about how Corellon and the other Seldarine would make their presence known to their elven children. I admit I did wonder what it might mean if Corellon were to manifest himself and put my love to the test. Is it wicked to think about that?~
== %AJANTIS_BANTER% ~Probably. I would not meditate on the prospect were I you. Indeed, my Lady, you make me grateful to serve one such as Helm. I need not be concerned about the possibility of his divine presence.~
EXIT

//5

CHAIN
IF WEIGHT #-2
~InParty("Ajantis")
InParty("TIMaeth")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorAjantis2","GLOBAL",1)
Global("AjantisMaethor2","GLOBAL",0)
See("TIMaeth")~ THEN %AJANTIS_BANTER% AjantisMaethor1
~I have a question about our earlier discussion of a knight's code of honor.~
DO ~SetGlobal("AjantisMaethor2","GLOBAL",1)~
== BTIMaeth ~Ask, if you will.~
== %AJANTIS_BANTER% ~You have said that your conscience acts as your knightly code of conduct. But that implies that you would never deviate from righteous behavior! Are you perfect, then?~
== BTIMaeth ~No. I am far from perfect. But I have observed that knights, regardless of background and culture, have similar codes of conduct. As a squire of the Radiant Heart, you must find stealing to be abhorrent.~
== %AJANTIS_BANTER% ~Of course.~
== BTIMaeth ~It offends me as well. But Corellon never found it necessary to tell me that I should not steal. Elven knights do not require a list of rules because they know intuitively how they should behave. You seem to be the same way. I dare say the strictures your conscience places upon you must closely match the code of behavior that your god, Helm, demands.  Why should Ajantis' conscience be considered inferior to the code of Helm? Are you not, inherently, a good man?~
== %AJANTIS_BANTER% ~I believe I see what you mean, Maethor, but your principles would seem dangerously close to heresy in some circles.  Few knights believe their consciences to be as pure as the guidelines of a god!~
== BTIMaeth ~That is why elven knights are few, good knight, and most often spend our lives protecting our temples and our clerics, isolated from other cultures. I am an outsider in many ways, Ajantis, not least in that I reject the exclusivity of many of my kin.  But trust me in this--you will find in me a true ally.~
EXIT

//6

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Ajantis")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("AjantisMaethor2","GLOBAL",1)
Global("MaethorAjantis3","GLOBAL",0)
See("Ajantis")~ THEN BTIMaeth MaethorAjantis3
~Do you believe in tainted blood, my friend?~
DO ~SetGlobal("MaethorAjantis3","GLOBAL",1)~
== %AJANTIS_BANTER% ~Yes, my lady. I believe it is difficult to be a good person if your ancestors turned their backs on justice and righteous thought. How would you know what is right if generations before you were all bred to evil purpose and nurtured in sin?  Like father, like son.~
== BTIMaeth ~But what if you never knew your parents? <CHARNAME> is an orphan raised in kindness.  Could the parents have an effect on the morality of the child they touch not?~
== %AJANTIS_BANTER% ~*Ajantis lightly touches Maethor's cheek with his gauntleted hand and his voice is almost inaudible. * Gentle lady, do you resemble your mother?~
== BTIMaeth ~*Maethor nods.* To an extent. At my best, I was not her equal. She...was...beyond beautiful. It was rumored that her beauty rivaled even Queen Ellesime. Our whole community praised the grace and sweetness of her features even as they disapproved of how she chose to use them. I loved to watch her paint her face at evening and delighted when she would embrace me because she smelled so sweet. Yet, she turned away from genuine love.  Refused courtship. I am told that even when she was my age, she sought out liaison after liaison.~
== %AJANTIS_BANTER% ~Alas. Our parents do pass on traits both well and ill. I can see that you grieve the sins of your mother but I also see that you have the strength to redeem or defy your blood. I suppose that is all any of us can do.~
== BTIMaeth ~Perhaps. I shall have to meditate on your words.~
EXIT

//7

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Ajantis")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("MaethorAjantis3","GLOBAL",1)
Global("MaethorAjantis4","GLOBAL",0)
See("Ajantis")~ THEN BTIMaeth MaethorAjantis4
~I am curious about your relationship to Sir Keldorn Firecam, Ajantis.~
DO ~SetGlobal("MaethorAjantis4","GLOBAL",1)~
== %AJANTIS_BANTER% ~He is a great man. What do you wish to know about him?~
== BTIMaeth ~Does he decide when you have attained knighthood?  Or does he train you towards knighthood in your order?  Or is he more of a mentor, providing you an example to follow?~
== %AJANTIS_BANTER% ~In a way, he is all these things, although, more specifically, his recommendation for knighthood--if I gain his confidence--will be voted on by the senior members of the order. One way of achieving knighthood is to find a mentor among those older and wiser. I have been blessed in that respect. Is it the same for you?~
== BTIMaeth ~Partly yes and partly no. For one, my order of knights has no such definite organization. We recognize seniority, but much of the hierarchy is determined by personal ability. Nor is the system of training so structured. I received training from masters in many different arts--not least by those who have earned the title of Champion of Corellon by their prowess. I was instructed in swordplay and effective use of shield. I studied tactics, history, and much medical botany with the temple of Rillifane's clerics. I even had the blessing of forming a most rewarding friendship with one of your own... Perhaps you have heard of Sir Tybalt Grenfell in your ranks?~
== %AJANTIS_BANTER% ~I have.  Although... No, it is not my place to comment.~
== BTIMaeth ~Is... Is something wrong?~
== %AJANTIS_BANTER% ~No, no. It's...just...~
== BTIMaeth ~I must know, Ajantis. Tyb is my foster-father. Has he misrepresented his status in the order?~
== %AJANTIS_BANTER% ~No. He is well known. I am told he made his name re-establishing order and law to the kingdom of Tethir during the riots of '47. Before that, I heard he earned the nickname 'wyrm-slayer' when he successfully uprooted a green dragon and her nest of young in the Windspear Hills. He's been an admirable senior order member and loyal follower of Tyr. That's all I should say.~
EXIT

//8

CHAIN
IF WEIGHT #-2
~InParty("Ajantis")
InParty("TIMaeth")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("MaethorAjantis4","GLOBAL",1)
Global("AjantisMaethor3","GLOBAL",0)
See("TIMaeth")~ THEN %AJANTIS_BANTER% AjantisMaethor2
~I am sorry, Maethor. I could not tell you the truth before. But you must know the rumors about your foster-father, Sir Tybalt. I cannot keep secrets from you.~
DO ~SetGlobal("AjantisMaethor3","GLOBAL",1)~
== BTIMaeth ~Go on. Please.~
== %AJANTIS_BANTER% ~I do not mean to gossip, but it is said that Sir Grenfell has grown... eccentric of late. The work he did to assist refugees like you in Suldanessellar greatly changed him. He began to question the authority of his superiors and resented that they were directing what he could and could not do. I won't speak ill of a man who has more than earned my respect, but you should not embrace anyone with closed eyes. Sir Grenfell is now thought of as a maverick, which might hamper you if you wish to be recognized by the ranks of lawful knighthood.~
== BTIMaeth ~Surely even a squire can see that Tyb...Sir Grenfell...has the best of motives! You said he has more than earned your respect and you don't even know him like I do! He took me to his home and made me a part of his family! My quest for knighthood has been shaped by his wise guidance. He saved my life and preserved my freedom. And never told me that my vision of Corellon was mistaken even though I was born the bastard of a woman of pleasure.~
== %AJANTIS_BANTER% ~*Ajantis awkwardly lays his hand on Maethor's shoulder, patting gently.* Do not take my words so hard. I meant only to sow caution in your noble heart--not to cause you pain.~
== BTIMaeth ~I will be cautious, Ajantis. Has my love made me blind?~
== %AJANTIS_BANTER% ~No. We are all tolerant of those we care for. And, perhaps, you needed a maverick to encourage you to not only take up Corellon's lance, but also, eventually, to lead your peoples' cloistered ranks out to a world that needs them. And you. In a way, it is an honor to my order that it was a member of the Radiant Heart who took you under his wing. Who can say? Helm gave me the ability to know whether one's intention is for good or evil. There is no doubt you serve the good as strongly as I do. I suspect if I met Sir Grenfell, I would see that same light shine. Be at peace, Maethor.~
EXIT

//9

CHAIN
IF WEIGHT #-2
~InParty("Ajantis")
InParty("TIMaeth")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
OR(3)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Global("TIMaethorGavCommit","GLOBAL",1)
!Global("TIMaethorCorCommit","GLOBAL",1)
Global("AjantisMaethor3","GLOBAL",1)
Global("AjantisMaethor4","GLOBAL",0)
See("TIMaeth")~ THEN %AJANTIS_BANTER% AjantisMaethor2
~You have so far been patient with my questions, Maethor. I have another, more personal, question for you.~
DO ~SetGlobal("AjantisMaethor4","GLOBAL",1)~
== BTIMaeth ~I am open to you. Go on.  Please.~
== %AJANTIS_BANTER% ~You seek to be knighted, like I do. But Knighthood requires many sacrifices great and small. Having a wife or family can be very difficult because of the time spent apart. You and I have both known Knights who have chosen not to marry for that reason alone. In my own case, my family assures me that they will lovingly embrace the woman I marry that she and our children may not feel abandoned while I am on the road. That reassures me. But you...you are a woman. The matter is more complicated for you. I fear that for you, marriage and children might not be possible.~
== BTIMaeth ~*Quietly.* So what did you wish to know?~
== %AJANTIS_BANTER% ~*Blushing.* I wondered... Have you considered what you would do if you fell in love? You need not snswer if my question is too personal.~
== BTIMaeth ~No, no... I will answer. *Lowers her eyes.* You ask me about love, Ajantis. Given that you are a faithful follower of Helm, I must assume that you mean by love not just affection between two people, but a love that creates or intensifies a desire for each other that has, as one purpose, children. Am I correct?~
== %AJANTIS_BANTER% ~Yes, my lady.~
== BTIMaeth ~You should understand first that it is not the elven way to permanently give up love or the possibility of children as a part of service to one's deity. Our lives are too long and our children too infrequent for that. But we do recognize that certain avocations do not mingle well with pregnancy or small children. Sir Finn asked me a similar question when I asked for his help in becoming a Blade. I thought long and hard before answering because he would not sponsor me if I spoke frivolously.~
== %AJANTIS_BANTER% ~What was your answer?~
== BTIMaeth ~I said that Corellon had already chosen me and had made clear the nature of my service. I would never forsake him. Nevertheless, I did not think it appropriate to commit myself to something that might or might not be necessary in the future. If I was not required to give up love, why would I choose to give up children unless it was clearly needed? Sir Finn was content with my answer provided that I never conceal my service to Corellon from a lover.~
== %AJANTIS_BANTER% ~A logical answer. But it begs the question what you would do if you found yourself...erm...with someone you loved in that way. Would you leave fieldwork to have a family with him?~
== BTIMaeth ~I am sure Corellon would make the path clear. That would be a decision, however, that my...my lover...and I would have to discuss.~
== %AJANTIS_BANTER% ~I see.~
== BTIMaeth ~I am sorry I do not have a better answer for you. This is all too theoretical...~
== %AJANTIS_BANTER% ~For me, m'lady, it is all too real. Nevertheless, I think I have found my answer.~
EXIT

//10

CHAIN
IF WEIGHT #-2
~InParty("Ajantis")
InParty("TIMaeth")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
TimeOfDay(NIGHT)
OR(3)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Global("TIMaethorGavCommit","GLOBAL",1)
!Global("TIMaethorCorCommit","GLOBAL",1)
Global("TIMaethorAJCommit","GLOBAL",0)
Global("MaethorAjantis3","GLOBAL",1)
Global("MaethorAjantis4","GLOBAL",0)
See("TIMaeth")~ THEN BTIMaeth MaethorAjantis4
~Do you want something, Ajantis?  You've been standing there for several minutes as if you are undecided about something. You know you may join me if you wish.~
DO ~SetGlobal("MaethorAjantis4","GLOBAL",1) SetGlobal("TIMaethorAJCommit","GLOBAL",1)~
== %AJANTIS_BANTER% ~I was wondering why you had chosen to rest so far from the rest of the party. Oh! You are drinking!~
== BTIMaeth ~For good reason. Today is the anniversary of my induction into the Blade of Sahandrian. I drink to commemorate the achievements of both the living and the departed.~
== %AJANTIS_BANTER% ~But, my lady... You drink alone. I know that you are one of but a few here in Faerun, but you might have told me. Do we not fight beneath allied banners?~
== BTIMaeth ~I apologize, Ajantis. I thought you did not drink.~
== %AJANTIS_BANTER% ~I don't...usually. But this...this is a momentous occasion. And, I admit, it seems somehow dishonorable for me to allow a ladyknight in such circumstances to drink alone. I shall have just a capful...~
== BTIMaeth ~Of course.~
== %AJANTIS_BANTER% ~Why, this is excellent.~
== BTIMaeth ~It is the berry of the Moon Blossom. A fruit so sweet that it often ferments on the vine. It is beloved of Selune because it ripens under moonlight, brings only pleasant feelings and peaceful sleep with it, and departs without a sign of its passage. It's very expensive outside of Suldanessellar, unfortunately, which is why I could only afford this tiny bottle. You need not fear, Ajantis. The whole bottle would not make either of us drunk.~
== %AJANTIS_BANTER% ~Give me another sip, then. I only feel a touch warm... *Pauses.* But you...you are shivering.~
== BTIMaeth ~That wind is a bit sharp. No matter. I shall soon return to camp.~
== %AJANTIS_BANTER% ~Here. You must wear my cloak. Let me just fasten the clasp. *Pauses* My lady...~
== BTIMaeth ~Yes, Ajantis?~
== %AJANTIS_BANTER% ~I was just noticing... The cloak suits you. *Quietly.* Ah, my lady... My heart swells seeing you wearing my family's crest...~
== BTIMaeth ~What do you mean?~
== %AJANTIS_BANTER% ~My dear Maethor... I have long desired to write to my family and tell them of you. To ask my parents for their permission to...to court. But I know their response will be...hesitant...at the least. To ensure their acceptance, I must be steadfast and persuasive. But I am not sure of your feelings.~
== BTIMaeth ~My...my feelings?~
== %AJANTIS_BANTER% ~Your drink gives me courage I did not know I had. Let me have your hands... Maethor Grenfell, will you consent to become my wife? *Pauses.* Or have I misjudged our closeness, my lady?~
== BTIMaeth ~No, no... I...I am just surprised. I am not so much a prize that I should have suitors.~
== %AJANTIS_BANTER% ~Indeed, you are a prize. Not because of family, or bloodline, wealth, or even femininity, although I find your face and body both to be exquisitely pleasing. Nay. What draws me is your heart, which is both noble and pure. A rare find in these corrupt times. A heart which I wish to draw to my own. We have shed much blood protecting each other. Stood side by side in the field of war.~
== BTIMaeth ~You are such a tower of strength and decisiveness that I have come to rely on you. But I would think you would have issue with my comparative indecision.~
== %AJANTIS_BANTER% ~I've oft heard that the steadfast serve best one who needs such self-assurance. 'The oak tree is made beautiful by the ivy it supports.' You may need me, but I need your tact and your merciful nature to guide...yea, even moderate my actions at times. I want us to stand together in times of battle and times of peace; even, perhaps, commingle our blood in children. It so pleases me to finally be able to say 'I love you' to you, Maethor. Will you let me say it to you often? Will you marry me?~
== BTIMaeth ~It shall be as you desire, my...my lord. I hope only that your family will be as accepting.~
== %AJANTIS_BANTER% ~By Helm! They shall be! When they see your beauty and grace... Your honest, innocent face... They shall love you as I do. Now, my lady... I shall seal my promise to you with a kiss. Come hither, beloved...~
== BTIMaeth ~...~
EXIT

//11 (Alora:5)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Alora")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Alora",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("MaethorAlora1","GLOBAL",0)
See("Alora")~ THEN BTIMaeth MaethorAlora1
~Um, greetings. My name is Maethor Grenfell. And you are?~
DO ~SetGlobal("MaethorAlora1","GLOBAL",1)~
== %ALORA_BANTER% ~Alora. Originally from Iriaebor.~
== BTIMaeth ~What are you looking at?~
== %ALORA_BANTER% ~Your boots.~
== BTIMaeth ~Why? Did I step in something foul?~
== %ALORA_BANTER% ~Oh no. They're very nice. Very shiny. I was just curious about why you're wearing them. Today's been fine and dry. *Pauses.* You're a tallfellow, right?~
== BTIMaeth ~*mystified.* I've never been described before as 'tall,' Alora...~
== %ALORA_BANTER% ~Well, that's no surprise! If you insist on travelling with the Big Folk, you never will! ...But between you an' me, your mother really fed you your vitamins, didn't she? Now... what's up with the boots?~
== BTIMaeth ~Ummm... *Both are now looking at Maethor's feet.* I almost always wear boots, Alora. I'm not a...*notices Alora's bare feet*...halfling...~
== %ALORA_BANTER% ~*The two of them stare at each other for a moment, then Alora bursts out laughing.* I know yer an elf, Maethor! I'm just having some fun with you. But you know, beggin' your pardon, you ARE the shortest elf I've ever seen. What'd your mother do? Go lookin' for love in Gullykin!?~
== BTIMaeth ~Ummm...While there is some debate as to the identity of my father, halflings are exceptionally rare in Tethir. Non-humans aren't allowed to own land.~
== %ALORA_BANTER% ~Well, you could be one of 'em elfy halflings...we call 'em tallfellows...that live in the woods near elf communities. Ever think of that?~
== BTIMaeth ~Don't take this the wrong way, but I think my mother would have told me if I were adopted.~
== %ALORA_BANTER%~Well, I'm still right happy to have met you! It's real nice not to have to crane my neck up real far to look in your face. I wonder that you've never been asked what you were, before. Like there's something hush-hush about elves and halflings when our kind have always been on the same side... hee hee hee... maybe it's the same side of the bed, eh?~
EXIT

//9

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Alora")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Alora",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorAlora2","GLOBAL",0)
See("Alora")~ THEN BTIMaeth MaethorAlora1
~You know, Alora, that's a beautiful ring you're wearing.~
DO ~SetGlobal("MaethorAlora2","GLOBAL",1)~
== %ALORA_BANTER% ~*Looking down at her ring-finger.* Well, thank you! It IS right pretty. Fits me perfectly, too.~
== BTIMaeth ~*Looking a little more closely.* It seems familiar. You know, I have one just like that on a chain around my neck. *pulling off her helmet and paldron.* I didn't know the jeweller made more than... *finds only her bare neck.* Wait! It's gone! Alora!!~
== %ALORA_BANTER% ~*pouts.* I didn't take it. I found it in the road just now an' a broken chain.~
== BTIMaeth ~*Puts out her hand.* Thank you for finding it!~
== %ALORA_BANTER% ~Oh, Maethor... But it fits me! YOU have to wear it on a chain 'cause it's too little!~
== BTIMaeth ~*chagrined.* Alora... The man who gave it me has gone on to Arvanaith. It was given to me out of love.~
== %ALORA_BANTER% ~*Smiles* Ahhhh. Your man, eh? Well, I can't keep it, then. What was he? Husband or lover? Oh no, wait... I know. He wanted to marry you, but had to go make his fortune first... A romantic tale of separated sweethearts...?~
== BTIMaeth ~Ummm... no.~
== %ALORA_BANTER% ~Oh. Don't tell me... let me guess...He run off with another woman, but your heart will never get over his sweet songs in the summer evenings... That it?~
== BTIMaeth ~I don't think I want to get into this, Alora...~
== %ALORA_BANTER% ~*Hands the ring back.* Alright, alright. Keep your secrets. But if you ask me, he should have made it bigger so it would fit on your finger. *whispers* He obviously meant to give it to a halfling girl. She must've said 'no.' *giggles.* Just teasing, Maethor! You need to laugh more often. You'll get a sour face the way you sulk all the time!~
== BTIMaeth ~*rolls her eyes.* Probably true.~
EXIT

//10

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Alora")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Alora",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorAlora2","GLOBAL",0)
See("Alora")~ THEN BTIMaeth MaethorAlora1
~What is it, Alora?~
DO ~SetGlobal("MaethorAlora2","GLOBAL",1) SetGlobal("MaethAttractedAlora","GLOBAL",1)~
== %ALORA_BANTER% ~*Whistling.* Well, aren't you just the sweetest looking drink o' water a girl ever did see! And not too tall, either... You could only be more perfect if you were a halfling!~
== BTIMaeth ~*Pulling her face-shield down.* Um...Alora, I have to...err...go scout for enemies...~
== %ALORA_BANTER% ~*grins.* Ok, Maethor, but half the fun of watching a man is seeing him go...~
== BTIMaeth ~*Grumbling.*~
EXIT

//11

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Alora")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Alora",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("AloraMaethor1","GLOBAL",0)
See("TIMaeth")~ THEN BTIMaeth AloraMaethor1
~Oh! There you are... Oooops!~
DO ~SetGlobal("AloraMaethor1","GLOBAL",1)~
== BTIMaeth ~Ack! *Hastily tying laces.* Can't a...a man have some privacy around here?!~
== %ALORA_BANTER% ~ Sorry about the boots. Do you need a towel or something?~
== BTIMaeth ~*Irritably.* No. Just tell me what you wanted...~
== %ALORA_BANTER% ~Ummm... I forgot.~
== BTIMaeth ~What?! You invade my privacy, startle me in the middle of a...a..., make me splash my boots, and YOU FORGOT?!!~
== %ALORA_BANTER% ~*Shrugs.* Could have happened to anyone.~
== BTIMaeth ~*Hysterical cursing.*~
EXIT

//12

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Alora")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Alora",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("AloraMaethor1","GLOBAL",0)
Global("AloraMaethor2","GLOBAL",0)
See("TIMaeth")~ THEN BTIMaeth AloraMaethor1
~Maethor! How's it goin'?~
DO ~SetGlobal("AloraMaethor2","GLOBAL",1)~
== BTIMaeth ~Alora! Damnit! I'm trying to change my clothes!~
== %ALORA_BANTER% ~What? All I wanted to do was say...~
== BTIMaeth ~*Putting down his shirt.* Look. Let's just get to the heart of the matter. Since my change, I keep finding you underfoot. Are you trying to catch me exposed?~
== %ALORA_BANTER% ~*Indignantly.* Maethor! Are you accusing me of having inappropriate thoughts about our party's paladin? I should be offended!~
== BTIMaeth ~*Abashed.* Well... I guess not. I'm sorry. It just seems oddly coincidental...~
== %ALORA_BANTER% ~*Smiling.* That's okay.~
== BTIMaeth ~*Putting on shirt.* So, what do you want?~
== %ALORA_BANTER% ~What?~
== BTIMaeth ~Didn't you want something?~
== %ALORA_BANTER% ~Hmmm? Oh, no.~
== BTIMaeth ~Argh....~
== %ALORA_BANTER% ~You know, you're really cute when you're frustrated.~
EXIT

//13 (Branwen:2)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Branwen")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Branwen",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("MaethorBranwen1","GLOBAL",0)
See("Branwen")~ THEN BTIMaeth MaethorBranwen1
~*Sigh.* Surely all clerics of Tempus are not so beautiful.~
DO ~SetGlobal("MaethorBranwen1","GLOBAL",1)~
== %BRANWEN_BANTER% ~What did you say?~
== BTIMaeth ~Oh! Sorry! I was daydreaming. Your hair is so beautiful. I wondered if beauty was a requirement for serving Tempus.~
== %BRANWEN_BANTER% ~Only the beauty of a strong arm and courageous heart, Maethor. Those who serve the Foehammer must be brave, valorous, and honor their opponents even as they strive to defeat them. 'Tis said that cowards and diplomats who will not fight cause more harm than even the worst of tyrants, for those who will not fight will lose everything they hold dear.~
== BTIMaeth ~Forgive my words, then, friend. Sometimes I am moved by beauty and wondered whether it were the same with you.~
== %BRANWEN_BANTER% ~*Laughs.* You are so innocent at times, Maethor. You fight like a true warrior and yet stop to gawk at daisies by the roadside! The goddess of beauty, Sune Firehair, has often railed at Tempus, for she would place protection of beauty above all else--even freedom! Yet the Foehammer will not fight with her. For beauty matters not when a war must be fought.~
== BTIMaeth ~Has your own fair face been an obstacle in your life, then?~
== %BRANWEN_BANTER% ~*Nods.* Indeed. At home, in Seawolf in the Norheim Isles, had I been the ugliest boy in the village there would have been no dissent at my decision to serve Tempus. *Disgusted.* I would have cut away all of my hair and scarred my face if it would have gained the respect of the elders.~
== BTIMaeth ~I am sorry for that. It was unworthy of them to ignore your calling.~
== %BRANWEN_BANTER% ~Nay. 'Twas an appropriate test of my perseverance. Those who cannot take rejection would not serve as well! Has your god not equally tested your resolve?~
== BTIMaeth ~Every day, I think. Otherwise faith has no purpose.~
== %BRANWEN_BANTER% ~Then we agree.~
EXIT

//14

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Branwen")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Branwen",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorBranwen1","GLOBAL",0)
See("Branwen")~ THEN BTIMaeth MaethorBranwen1
~*Ducking his head, Maethor tries to slip by Branwen unnoticed.*~
DO ~SetGlobal("MaethorBranwen1","GLOBAL",1) SetGlobal("TIMaethCute","GLOBAL",1)~
== %BRANWEN_BANTER% ~Maethor! There you are! *Looking closely at him.* By Tempus's hammer, you're wearing one of those belts that turns girls to boys and vice versa!~
== BTIMaeth ~Um. Yes. I was born female, but <CHARNAME> apparently wanted me to be male. I hope briefly...~
== %BRANWEN_BANTER% ~Well, you needn't worry about me, Maethor. 'Tis true that you have nice, muscled shoulders and quite an attractive bottom. But you're too short for my liking.~
== BTIMaeth ~*Sourly.* Thank you kindly for noticing....~
== %BRANWEN_BANTER% ~Ah, sweet man! Be grateful for my reserve. Methinks you would not last a night in my arms! And then you would want to marry me! And where would we be, then? On the other hand... You do have such a sweet bottom... *Laughs.* Perhaps we might try the experiment!~
== BTIMaeth ~*Blushes furiously.*~
EXIT

//15 (Coran:6)

CHAIN
IF WEIGHT #-2
~InParty("Coran")
InParty("TIMaeth")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("CoranMaethor1","GLOBAL",0)
Global("CoranMaethMale","GLOBAL",0)
See("TIMaeth")~THEN %CORAN_BANTER% CoranMaethor1
~Greetings, sweetling. Man i eneth gîn?~
DO ~SetGlobal("CoranMaethor1","GLOBAL",1) SetGlobal("CoranMaethMale","GLOBAL",1)~
== BTIMaeth ~*Raises her eyebrows.* Suilaid. I'm Maethor Grenfell...from Tethir.~
== %CORAN_BANTER% ~I thought I recognized the accent of my homeland. It is made all the sweeter coming from your pretty lips! Grenfell, you say? A name strange to me. I am Coran Sullussaer. Of Suldanessellar.~
== BTIMaeth ~I am pleased, then, to see you. Have we met before?~
== %CORAN_BANTER% ~It used to be my habit to visit Tethir every few seasons. Just to remind myself of its many charms. But not Suldanessellar proper...They are not so fond of me there. Where did you live? In the city proper or elsewhere?~
== BTIMaeth ~My sister lived in Suldanessellar and I had my schooling at Rillifane's Shrine, so I visited it often enough. *shrugs* My home was outside of the city. Near the lake by Swanmay's Glade.~
== %CORAN_BANTER% ~Ah, yes. I know the area.~
== BTIMaeth ~Have you news from home, then?~
== %CORAN_BANTER% ~Regrettably, I have not been there recently. I have had other interests diverting my attention. That is a fine suit of armor you wear. If <CHARNAME> would be good enough to call a halt, I'd like to have a better look at it. From Cormanthyr?~
== BTIMaeth ~Oh, yes! It once was prized by my mother's grandfather. It was given to me when I began to train for knighthood. I was the only heir that could use it. We have a moment now... This suit is designed to adjust to the wearer, so I can remove sections easily... See the straps and buckles?~
== %CORAN_BANTER% ~Interesting. Can you remove, say, the breastplate?~
== BTIMaeth ~Yes. Hold my helmet. Thanks. You can put it down over there. See? The cuirass disconnects like this. Help me with this... I have to take off the paldrons and the gorget first. Thanks. It's much easier with help...~
== %CORAN_BANTER% ~No doubt. Hmmm... very pretty. Your doublet is beautiful, too. Does the front normally look like that--open?~
== BTIMaeth ~*Blushes* Yes! I'm very proud of it. Doublets are often only a stitched and quilted lining for the cuirass, but I saved up my money for a month to have this one made. See how it opens to the waistline? The tailor cut that deep V so that it's supportive so I don't have to bind my chest! You wouldn't believe how uncomfortable it is to have yet another layer on. He made the edges so I can either lace it or leave it open. I left it open today because it's hot and the extra air-flow helps... Ugh! My shirt is absolutely soaked with sweat!~
== %CORAN_BANTER% ~Don't worry about that... If you take the doublet off for a few moments, it'll dry more quickly. That's right. *under his breath* Ai. This one stirs my blood... Cened i thraw. Nin moel panna. Hanali, ae nin melog, natha trehell a dinin andaw.~
== BTIMaeth ~*Startled.* Huh? I didn't catch all of that... You said something about me being naked under...~
== %CORAN_BANTER% ~*Hastily.* ...all that armor and clothing, sweetling. As we all are naked underneath our heavy, restrictive armor. It is so hot today, I think we would all appreciate wearing fewer garments. Why don't you walk without your cuirass for awhile? I'll carry it if you want.~
== BTIMaeth ~No need. It can be attached to my pack like so! But thank you.~
== %CORAN_BANTER% ~Ci leich.~
EXIT

//16

CHAIN
IF WEIGHT #-2
~InParty("Coran")
InParty("TIMaeth")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
OR(2)
!Global("TIMaethorAJCommit","GLOBAL",1)
!Global("TIMaethorGavCommit","GLOBAL",1)
Global("CoranMaethor1","GLOBAL",0)
Global("CoranMaethMale1","GLOBAL",0)
See("TIMaeth")~THEN %CORAN_BANTER% CoranMaethor1
~In thitte Hanali! Sweetling! What on Faerûn has happened to you?~
DO ~SetGlobal("CoranMaethMale1","GLOBAL",1) SetGlobal("CoranMaethor1","GLOBAL",1)~
== BTIMaeth ~*Raises her eyebrows* Suilaid. I'm Maethor Grenfell...from Tethir. Have we met before?~
== %CORAN_BANTER% ~I know we have. I recognized the accent of my homeland. But you are not now what you were back then... I am Coran Sullussaer. Of Suldanessellar.~
== BTIMaeth ~The leader of my party, <CHARNAME>, decided to see what I was like if I were male. You are familiar... now that I recall. You flirted with me a great deal. Was there more? No... Don't answer that. I...I am not sure I wish to remember.~
== %CORAN_BANTER% ~*Looking him from head to foot.* Ai! You still have a pretty face, Maethig, but now are sadly lacking all those tender details which made looking at you such a pleasure all those years ago.~
== BTIMaeth ~*Grins.* So I am no longer to your taste, then? In truth, I now recall I never thought I'd discover the limits to your wantonness.~
== %CORAN_BANTER% ~*Laughing.* Have that belt removed and I'll test the limits of your wantonness!~
== BTIMaeth ~*His eyes glowing dimly red, he comes up beside Coran and wraps his arms around his waist.* Now, am I so very ugly to you? Why the last time we met, you were eager to have a kiss from me.~
== %CORAN_BANTER% ~Ah, err...no. To a woman, you would be the fairest of gods, stepped lightly down from the heavens.~
== BTIMaeth ~*Gently kissing Coran's neck* But to you?~
== %CORAN_BANTER% ~While I can appreciate your beauty, I am not the best...erm...one to experience it. *Squirms, but is not quite able to break free from Maethor's grasp.* Is this some kind of an object lesson, Maethor, about pursuing someone who does not wish my attentions?~
== BTIMaeth ~*His eyes flash brilliantly scarlet.* Could be. I am tempted to test the limits not of my wantonness but of my honor as a paladin. I do not recall if it is equally wrong to seduce an unwilling man as it is to dishonor a lady. What? Does this train of thought distress you, my sweet? *Shaking his head and laughing.*~
== %CORAN_BANTER% ~Do release me, Maethor. While I can tell there is a certain enjoyment to be had in your...firm...embrace, I am not prepared to explore it further.~
== BTIMaeth ~Give me my kiss back and I'll let you go.~
== %CORAN_BANTER% ~*Lightly kisses Maethor.* Is that sufficient?~
== BTIMaeth ~Alas, you've become like a maiden auntie! Give us a real kiss, boy, or I'll think you no better than a eunuch.~
== %CORAN_BANTER% ~*sighs.* Very well. Here 'tis... *kisses Maethor deeply, leaning in to the embrace and running his hands down Maethor's back.*~ DO ~SetGlobal("MaethorCoranKiss","GLOBAL",1)~
== BTIMaeth ~*Releases Coran, who moves quickly out of reach.* I now see the sense in what you do, Coran. You must think the kiss taken through persuasion is sweeter than that given eagerly... Perhaps now you'll be less inclined to wheedle the disinterested ladies...~
== %CORAN_BANTER% ~*Grinning.* Perhaps. But now that I am free, I have a chance to breathe and consider what we have done. Perhaps you have changed my expectations of mine own sex, Maethor lend. What might you think if I said I wanted more from you, hmmm? Who is now more greatly changed? Me or you?~
== BTIMaeth ~*Blushes.* I'll say this only once. Stay away from my bedroll.~
== %CORAN_BANTER% ~*Laughs.* You're irresistable when you're flustered, Maethor. Even when male.~
EXIT

//17

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Coran")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Coran",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("CoranMaethor1","GLOBAL",1)
Global("MaethorCoran1","GLOBAL",0)
See("Coran")~THEN BTIMaeth MaethorCoran1
~I love to hear you speak, Coran. It makes me nostalgic, though.~
DO ~SetGlobal("MaethorCoran1","GLOBAL",1)~
== %CORAN_BANTER% ~Everything that makes us happy can bring back memories. I am most gratified to be a source of pleasure for you. Now, what would my Lady have me say to her? Ah, yes... I did have a question for you. I wanted to know something. Are you, by any chance, a paladin of Hanali?~
== BTIMaeth ~A Goldenheart? No.~
== %CORAN_BANTER% ~A pity.~
== BTIMaeth ~Why would you think that?~
== %CORAN_BANTER% ~Is it not obvious? Hanali has graced your face and form with uncommon beauty. I can see her in your features and in your very movements. Why, when I first saw you, I thought to myself: 'That one, surely, is named 'Hanaliell'!' *grimaces* The fact that you are a paladin disheartens me; the thought of you offering that body to commune with Torm or Helm or, gods forbid, Ilmater would be unbearably grim. Not to mention a significant damper on my ardor. I had hoped you would have recognized your gifts, especially as you are female, and should have chosen to reward Hanali for her abundance.~
== BTIMaeth ~You flatter me overmuch. I am no 'daughter of Hanali.' Why, I lived with one far more lovely than I am. My mother was a true vision of Hanali.~
== %CORAN_BANTER% ~*Tilts his head, gazing at her, considering.* My dear, you ARE a daughter of Hanali. You just cannot see it. Surely you are every bit as worthy of the name as your mother.~
== BTIMaeth ~*Looks away.* I seek Corellon Larethian because, in my moment of greatest grief, I gazed into a pool of blood and saw him looking back at me. Apparently it is not unusual for him to personally contact those he wants in his service. He has a female aspect, you know. Some legends say he birthed the other gods. My mentor took it as confirmation that I should serve the First of the Seldarine.~
== %CORAN_BANTER% ~*drily* Understandable, although the idea of such a warrior garbed in women's attire has less appeal to me than to you, apparently. Ah well.~
EXIT

//18

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Coran")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Coran",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorCoran1","GLOBAL",1)
Global("MaethorCoran2","GLOBAL",0)
See("Coran")~ THEN BTIMaeth MaethorCoran2
~Would you sing for me, Coran?~
DO ~SetGlobal("MaethorCoran2","GLOBAL",1) SetGlobal("MaethorCoranKissed","GLOBAL",1)~
== %CORAN_BANTER% ~I would be delighted to, i bainas nin. If I sing for you, lady, and the song pleases you, will you grant me a boon?~
== BTIMaeth ~That depends on what you would have of me, melloneg. I know that I am not very clever and, as a paladin, I cannot lie. When a knight gives their word, they are bound to it. I am not sure I wish, as a woman, to make a promise to a man.~
== %CORAN_BANTER% ~You fear for your virtue? Come, come. How quaint. I will make the decision easier for you. I shall not ask for anything you would not willingly give to me.~
== BTIMaeth ~...~
== %CORAN_BANTER% ~It is a very fine song, sweetling...~
== BTIMaeth ~Very well.~
== %CORAN_BANTER% ~*smiles* The title, for my elven lady, is 'Evennog:' *Coran's voice is strong and sure, giving the simple melody a plaintive quality.* Nadû i nîf gîn cennin. Morn i chîn gîn sui i venel. Guren nîn i gam gîn gant. Sui flâd nîn mathanner. Thandas gen mathad aníron. Laugas gîn bo i thraw nîn. Dan sui adtôl daw...Evennog.'...~
== BTIMaeth ~That...that was most beautiful, Coran, but why have you chosen such a song of yearning?~
== %CORAN_BANTER% ~*Takes up Maethor's hand, gently, and looks down at her* Have you not guessed? Thandas gen mathad aníron...~
== BTIMaeth ~*Maethor furiously blushes* I...I...Corellon shield a fool like me! I cannot say it doesn't please me! What do you want of me?~
== %CORAN_BANTER% ~*Laughs* Look at you, trembling like I was some kind of monster! I am your dear friend, Maethor... *sighs* I had thought you might permit me to kiss you. Show me that you resemble your mother only in looks... not her cruelty.~
== BTIMaeth ~I...I... You have been kind to me.... *she trails off in confusion.* Wait...~ DO ~SetGlobal("MaethorCoranKiss","GLOBAL",1)~
== %CORAN_BANTER% ~*Tilting her face up, he leans down and kisses her. He sighs.* You taste like honeysuckle and moonlight. The flavor of your mouth reminds me of long summer nights spent under the cover of the stars. *Laughs.* I shall never again question the ability of a paladin to kiss sweetly now that I've known your lips, Lady!~
EXIT

//19

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Coran")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Coran",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
!Global("TIMaethorAJCommit","GLOBAL",1)
!Global("TIMaethorGavCommit","GLOBAL",1)
Global("MaethorCoran2","GLOBAL",1)
Global("MaethorCoran3","GLOBAL",0)
TimeOfDay(NIGHT)
See("Coran")~ THEN BTIMaeth MaethorCoran3
~What are you doing to my bedroll, Coran?~
DO ~SetGlobal("MaethorCoran3","GLOBAL",1) SetGlobal("MaethorProposition","GLOBAL",1) SetGlobal("TIMaethorCorCommit","GLOBAL",1)~
== %CORAN_BANTER% ~What does it look like? I'm unrolling it. And next I'll unroll mine. Mine's a lot more comfortable than these horse-blankets you call a bedroll, by the way.~
== BTIMaeth ~I reverie far more often than I sleep. I don't need a feather blanket and silken lining to sleep.~
== %CORAN_BANTER% ~Neither do I. But I'm not planning on sleeping. And for that, sweetling, soft bedding is better.~
== BTIMaeth ~Huh?~
== %CORAN_BANTER% ~*laughs* Your coyness, my beauty, is refreshing. One must love the shy lady slowly... *Coran walks up to Maethor.* Get closer to them... *Stands before her.* Step.... *Brings a hand under her chin and tilts her face upwards.* ...by gradual step. *He leans in and brushes his lips against hers. He rests his cheek against hers.* Your scent is entrancing, Meletheg, but your taste draws me back more surely than the flower's nectar draws the honeybee.~
== BTIMaeth ~*Maethor's face pales, but she is unable to move.* Coran... don't...~
== %CORAN_BANTER% ~I breathe your scent whenever we're close, but the memory of your kiss makes my heart constrict with longing. îr enni horthog iston. *he kisses her neck.*~
== BTIMaeth ~*gasp* îr anlen!? Ai Corellon! ... please don't.~
== %CORAN_BANTER% ~*Coran stops and pulls back. He strokes her face and hair, very gently.* I won't hurt you, Meletheg. *He lays a finger at the base of her throat.* Your heart is fluttering like a little bird and your breathing is shallow. Your lips say something, but the rest of you says something quite different. I've seen you fight. At this moment...if you wanted to...you could walk away. I doubt I could stop you. But you stay. If not îr enni, then why?~
== BTIMaeth ~U-iston.~
== %CORAN_BANTER% ~Not true. You know, but you don't want to speak the words, my sweet dî tithen. You want, but you're not sure what you want--you know only that you want it to come from me. *He draws her to him again and kisses her, more deeply and sensually.* Tonight, I would have you reverie of this moment between us. And then, one night, when only we two remain awake, I would have you make up your mind and come to me. Hanaliel Miloneth. Be the affection-giver that your name means... Let us have an end to the chase.~
EXIT

// 21

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Coran")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Coran",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
OR(2)
!Global("TIMaethorAJCommit","GLOBAL",1)
!Global("TIMaethorGavCommit","GLOBAL",1)
Global("CoranMaethMale1","GLOBAL",1)
Global("CoranMaethMale2","GLOBAL",0)
TimeOfDay(NIGHT)
See("Coran")~ THEN BTIMaeth CoranMaethMale2
~Coran...I swear I'm going to hurt you if you don't stop staring at me!~
DO ~ SetGlobal("CoranMaethMale2","GLOBAL",1) SetGlobal("MaethorProposition","GLOBAL",1)~
== %CORAN_BANTER% ~Have some compassion, Maethor. I just can't get over how you've changed. Has <CHARNAME> said when <PRO_HESHE> will let you take that belt off?~
== BTIMaeth ~I fail to see how that's any business of yours.~
== %CORAN_BANTER% ~Because I'm about to go mad. You sound like a man, but talk like a woman. Your body is male, but the way you move it is female. Your features are masculine, but you're still undeniably beautiful. You even still think like a woman, by Hanali! I've never been attracted to men before!~
== BTIMaeth ~And now?~
== %CORAN_BANTER% ~*Scowls* Your lack of pity wounds me, Maethor. I thought we were friends. *Mutters.* Arousal shouldn't be disturbing.~
== BTIMaeth ~*Pales.* What do you expect me to do about it?~
== %CORAN_BANTER% ~That's just it...I don't know!~
== BTIMaeth ~Eh! You're never in love with anyone but yourself for very long.~
== %CORAN_BANTER% ~*Steps up to Maethor, looking him intently in the face.* Your cruelty reminds me of your mother--that streak of succubus that makes the two of you deliberately provoke your victims. You haven't really changed at all, Maethor. You prefer that I suffer while your conscience weighs some obscure balance of what's right and what's wrong. Forgive me for my frailty. *Kisses him.* Come to me one night. Let me experience reality...your reality. I think that alone will clear these fantasies from my mind.~
EXIT

//22

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Coran")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Coran",CD_STATE_NOTVALID)
OR(2)
!Global("TIMaethorAJCommit","GLOBAL",1)
!Global("TIMaethorGavCommit","GLOBAL",1)
Global("MaethorProposition","GLOBAL",1)
TimeOfDay(NIGHT)
See("Coran")~ THEN BTIMaeth CoranMaethMale3
~Coran...? I've slipped away from the others. Where are you?~
DO ~SetGlobal("MaethorCoranConsummation","GLOBAL",1) SetGlobal("TIMaethorCorCommit","GLOBAL",1)~
== %CORAN_BANTER% ~Down here, Maethor. There's a lovely soft patch of wildflowers to lay on and a bottle of fine wine to share.~
== BTIMaeth ~*Looking down.* Which you've already begun to enjoy, I see.~
== %CORAN_BANTER% ~With diligent attention to the task, I sure you can catch up with me. *Laughs.* Sit, sit! Plenty of room for both of us in this patch.~
== BTIMaeth ~*Sitting.* And now? Here I am. I admit I feel sorry about your...your problem.~
== %CORAN_BANTER% ~*Laughs.* This bottle here has given me a better perspective, sweetling. Have some. That's right. A good swig! Have another! Very good!~
== BTIMaeth ~It is excellent. What is your new perspective like, I wonder.~
== %CORAN_BANTER% ~That you're like these wildflowers.~
== BTIMaeth ~Moon Blossom? How so? They're small?~
== %CORAN_BANTER% ~No. Something far finer. They hide their faces in the daytime under the cover of their thick, rough leaves and thorns. Yet they have a sweet smell and fragile beauty hidden beneath that can be discovered should somone know to look at them on moonlit nights. They have a secret self discoverable only if one realizes that they, like you, cover their beauty most of the time with an armor that is more illusion than truth.~
== BTIMaeth ~I can tell that you're drunk, Coran: your hand is on my thigh.~
== %CORAN_BANTER% ~What of it?~
== BTIMaeth ~There is a part of me not one inch from your hand that I assure you is no illusion.~
== %CORAN_BANTER% ~You mean this...?~
== BTIMaeth ~*Gasp.* Coran!~
== %CORAN_BANTER% ~Do you think this is a joke, Maethor? That I would be too afraid to touch you? To stroke you the way I know you would like to be stroked? I've been tormented by you, gwegwin. But now I'm too drunk to care and will please you neverthless.~
== BTIMaeth ~Coran...~
== %CORAN_BANTER% ~Aah... I hear the yearning in your voice now. I'll stop if you ask. Shall I stop?~
== BTIMaeth ~...~
== %CORAN_BANTER% ~I thought not. There are many, many ways of lovemaking and I know you're no stranger to the dance.~
== BTIMaeth ~But what of tomorrow?~
== %CORAN_BANTER% ~Let tomorrow take care of itself. I, for one, shall be at peace and you, you shall experience the sleep that comes after a good, hard romp... Kiss me now. Moonbeams strike both of us: you can show your sweet self.~
EXIT

// 23

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Coran")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Coran",CD_STATE_NOTVALID)
OR(2)
!Global("TIMaethorAJCommit","GLOBAL",1)
!Global("TIMaethorGavCommit","GLOBAL",1)
Global("MaethorCoranConsummation","GLOBAL",1)
Global("MaethorCoranAgreement","GLOBAL",0)
See("Coran")~ THEN BTIMaeth MaethorCoranAgreement
~Coran...?~
DO ~SetGlobal("MaethorCoranAgreement","GLOBAL",1)~
== %CORAN_BANTER% ~Yes, Maethweg?~
== BTIMaeth ~Did you love my mother?~
== %CORAN_BANTER% ~*Laughs.* That's an easy question. Yes. 'By the sea and the stars, I loved Hanaliel Miloneth.' She was my first, you know.~
== BTIMaeth ~*Drily.* There are a lot who can say that. She liked boys. Is that why you chased me so relentlessly? Because I remind you of her? You have called me by her name often enough.~
== %CORAN_BANTER% ~*Sighs.* Not entirely. But why is that so offensive to you? At one time, she was everything to me. I find your many similarities appealing. Listen: Hanaliel was the one woman who not only demanded that I allow her her complete freedom, but offered complete freedom to me as well. There was no possessiveness or jealousy. She never even asked me to return to her, only greeted me warmly when I did. She said once that our love should be like a fresh, clean morning every time. And she was right. It was a fresh, clean morning between us for all the long years that I knew her.~
== BTIMaeth ~And no doubt you hope to see her in Arvanaith.~
== %CORAN_BANTER% ~*Scowls.* You've an ugly streak of bitterness to you, sweetling.~
== BTIMaeth ~I've earned the right to be bitter, Coran. She did not even have the decency to tell me who my father was. She changed the subject every time I asked. Did she ever tell you?~
== %CORAN_BANTER% ~*Shakes his head.* No. But I know that she was afraid of him. I asked once. It's the only time I ever saw terror in her eyes.~
== BTIMaeth ~Why would you ask who my father was? Why would you care?~
== %CORAN_BANTER% ~I had to know. Your mother could be very, very cruel. The last time I came to her was when the stars were hidden by thick clouds and the snow fell hard on the rooftop. It was dark as the mouth of a mine. She had said that that little man... whatever he was to her... would be at Court, so I slipped into her house and waited for her that night in her bedroom. Naked. I was on fire for her because I could have her by myself. By the Goddess, I ached for her. But when I finally saw her come into the bedroom, I saw she was not alone.~
== BTIMaeth ~Oh gods. Don't...don't tell me...~
== %CORAN_BANTER% ~She had a young woman with her. A pretty little thing with dark eyes. One who danced for me. One who was a tantalizing mixture of innocence and knowing. One of Hanaliel's own. I could see the resembance well. Hanaliel watched her dance and then told her to take off her clothes. Slowly, agonizingly slowly. Piece by piece. When the girl was naked, Hanaliel laughed and brought her to me in bed.~
== BTIMaeth ~Coran... Don't. She made me do it. I don't want to remember...~
== %CORAN_BANTER% ~But Maethweg... How could you forget? Gods know I can't! I kissed you. Caressed you. You put your hands and mouth on me and worked me until I was begging for release. You finally let me lay you back and I took you hard and deep. You have such a sweet little moan. I couldn't keep going like that for long, but we both needed it that way.~
=~Hanali thitte! That was a good time. Hells...one of the best times. I call back that memory often when I'm tired or feel low. It was Hanaliel's best gift to me. Besides her own, sweet self, of course. I kind of hoped for another round in the morning, but when I woke, you were gone. Only Hanaliel was still there, stroking me.~
=~*Clears his throat.* You have to understand, Maethweg... I had to be sure you weren't my child. I loved her, but I also feared her cruelty. I didn't know how far she would go.~
== BTIMaeth ~Huh! You feared this...afterwards!~
== %CORAN_BANTER% ~I could not have spoken against her before... You know what she was like. She wanted me to have you. It particularly pleased her, too. She said she was going to Amn and I could come see both of you there if I liked. She laughed at that, too, and I thought...I thought she was taunting me. That was when I asked if you were mine.~
== BTIMaeth ~She was laughing because my protector, Cýrontîr, wasn't there to put a stop to it. He'd gotten her angry. What did she say about my father?~
== %CORAN_BANTER% ~All her humor vanished. She said only one thing: that she hoped to never see his like again. That one of your blood would always walk with Death at his side. I've wondered since then if she knew she was going to die soon.~
== BTIMaeth ~What?! She knew she would be murdered? I don't think I can stand to talk about this... I...I...~
== %CORAN_BANTER% ~Oh, Maethweg... We don't have to talk about it. Don't weep so bitterly. I hate hearing you cry... I want be a friend to you.~
== BTIMaeth ~A friend? Is that what you hope for? My friendship?~
== %CORAN_BANTER% ~*Sigh.* Of course! I don't know why you always run from me. I don't want to own you, you know... Why can't we just have good feelings between us? I think we could both be happy with that.~
== BTIMaeth ~With what? A good, clean morning? Just...just go away and leave me alone! Thank Corellon that I'm not like my mother. ~
== %CORAN_BANTER% ~I'm sorry you feel like that; you're more like her than you know. A strong, independent woman. Anyway, if you want me, you'll always be able to find me. And me? I know I'll always be able to find you. Maybe someday you'll come to appreciate that.~
EXIT

//21 (Dynaheir:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Dynaheir")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("DynaheirMaethor1","GLOBAL",0)
See("TIMaeth")~ THEN %DYNAHEIR_BANTER% DynaheirMaethor1
~The customs of thy people are strange to me, elf.~
DO ~SetGlobal("DynaheirMaethor1","GLOBAL",1)~
== BTIMaeth ~Many have thus said, Lady Dynaheir. To which custom are you referring?~
== %DYNAHEIR_BANTER% ~In Rasheman, girl-children of magical ability are raised by the Hathan. Notwithstanding thy ability as a warrior, thy magical skill might well have been put to better use there. Didst thou ever consider that thou art misplaced, perhaps?~
== BTIMaeth ~My training as a knight, lady, was begun by my mentor, Sir Tybalt because he believed knighthood was best suited for my talents. In my early youth in Suldanessellar, I was in training in the priesthood. Eventually I would have been an Oakheart... A cleric in service of the forests. I cannot imagine that my magical talents, such as they are, would be put to better use anywhere else.~
== %DYNAHEIR_BANTER% ~Ah, but does mine own eye deceive me? I see the marks of greater power in thee than the cantrips I routinely observe thee cast.~
== BTIMaeth ~*Flushes.* I have been guided by my Lord Corellon's hand in that, lady. He who honors the use of elven magic has directed my steps elsewhere. Thus, it has surely been a blessing, rather than a hindrance, to turn away from magic pursued for its own sake. I am no wizard whether or not I was meant to be. Such a path might inevitably have lead me to darkness and death.~
== %DYNAHEIR_BANTER% ~Or towards greater knowledge and wisdom. There be two sides to that apple.~
== BTIMaeth ~Sadly, I have not the skill of mind to fully appreciate even a bite of that fruit, lady. I am satisfied with my lot.~
== %DYNAHEIR_BANTER% ~*Shrugs.* Perhaps that's best, then.~
EXIT

//22 (Edwin:2)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Edwin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("EdwinMaethor","GLOBAL",0)
See("TIMaeth")~THEN %EDWIN_BANTER% EdwinMaethor1
~Greetings, little elf. (Surprisingly long legs on such a small woman!) I see you are preparing for your morning ablution.(And have stripped off that dented scrap-metal you call armor.)~
DO ~SetGlobal("EdwinMaethor1","GLOBAL",1)~
== BTIMaeth ~Ummm. Yes. Cleanliness of body improves my view of life.~
== %EDWIN_BANTER% ~I would heartily agree. (The view is definitely improved.) But I notice you wear that brief garment when you wash. Is that a custom of your Order? (Although I would not be surprised, given how prudery and knighthood are synonymous.)~
== BTIMaeth ~No, no. *Blushes.* I wear this little dress for modesty when I bathe outdoors, since adventuring parties are usually predominantly male.~
== %EDWIN_BANTER% ~Yes. I've noticed that as well (Particularly since I'm always stumbling over one or another of the simian contigent also observing your baths.) Would you care for any assistance? I could conceivably guard you and allow you to bathe without need of such contrivances. (Which might improve my view of life as well.)~
== BTIMaeth ~No... I don't think so. Do you require anything of me before I leave camp?~
== %EDWIN_BANTER% ~Oh no. I was just going out to take the morning air.(And take in the sight of you without having to put up with your sadly inane observations.)~
== BTIMaeth ~Very well. Good day.~
== %EDWIN_BANTER% ~Good day.~
EXIT

//23

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Edwin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("EdwinMaethor","GLOBAL",0)
See("TIMaeth")~THEN %EDWIN_BANTER% EdwinMaethor1
~Good morning...er... Maethor. (Or whatever your name is, wench.)~
DO ~SetGlobal("EdwinMaethor1","GLOBAL",1)~
== BTIMaeth ~Good morning Edwin. Is there something I can do for you?~
== %EDWIN_BANTER% ~(A better question might be what I can do for you.) I heard a disturbing rumor today that I thought you should know.~
== BTIMaeth ~What rumor?~
== %EDWIN_BANTER% ~That your mother...how to say it delicately?...Took money in exchange for love. (The real pity being that you failed to observe where the family talents lie.)~
== BTIMaeth ~*Grimaces.* That, unfortunately, is not a rumor. It's the truth. She was a courtesan.~
== %EDWIN_BANTER% ~Then I must say that it is a vastly undervalued profession if it can claim one so like to your form and feature. You should not be embarrassed. (Particularly since I have extra coin to spend at the moment)~
== BTIMaeth ~Uh, thanks. I guess. My mother was quite famous, actually. Even succeeded, unfortunately, in attracting the son of the king of Tethyr. He apparently would travel great distances to see her.~
== %EDWIN_BANTER% ~Unfortunately?~
== BTIMaeth ~Her association with Prince Alemander caused her death when civil war erupted.~
== %EDWIN_BANTER% ~Well, I shouldn't worry about that. Just avoid romancing nobility.~
== BTIMaeth ~Um...I'll be sure to remember that. Uhhh... why are you looking at me like that?~
== %EDWIN_BANTER% ~I'm attempting, pretty girl, to assess the value of your comeliness. (It wouldn't do to overspend, after all. Not in these lean times.) How much would you charge for, say, an hour spent enjoying your fair body?~
== BTIMaeth ~Huh? An hour? What...?~
== %EDWIN_BANTER% ~*Stroking his beard.* I agree, I'd likely go longer. I am known for my skill. Perhaps you normally charge by the night? (Which could help save a coin or two in the long run...)~
== BTIMaeth ~I beg your pardon!! I am a Blade of Sahandrian! A Knight of Corellon! Not a prostitute!~
== %EDWIN_BANTER% ~Well, you needn't be so distressed. It's common in Thay for a woman of pleasure to similarly educate her daughters. 'Like mother, like daughter.'~
== BTIMaeth ~Out of my sight, foul wretch, before I split you in twain!! Begone!!~
EXIT

//24 (Eldoth:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Eldoth")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("EldothMaethor1","GLOBAL",0)
See("TIMaeth")~ THEN %ELDOTH_BANTER% EldothMaethor1
~You seem lonely, little girl.~
DO ~SetGlobal("EldothMaethor1","GLOBAL",1)~
== BTIMaeth ~Huh? Oh. I...I suppose. I was thinking about my home, actually. Perhaps my face was reflecting my dolor.~
== %ELDOTH_BANTER% ~*Sitting down beside her.* Well, you are now in good company! As it happens, I was just gazing upon you and thinking to myself that such a pretty girl must surely have a man somewhere that she misses.~
== BTIMaeth ~That's rather perceptive of you, Eldoth. I admit I didn't expect you to see that in me.~
== %ELDOTH_BANTER% ~*Stretches, casually laying an arm across her shoulders.* Oh, I assure you I am quite perceptive about such things. Is your fellow back in Beregost?~
== BTIMaeth ~*Confused.* Um... Eldoth? Is this discussion...uh...going somewhere?~
== %ELDOTH_BANTER% ~I merely thought it a pity that such a beautiful young creature would be spending her time alone if the man she loved did not care enough to accompany her.~
== BTIMaeth ~*Gently disengaging herself from his arm.* I appreciate your kind offer, Eldoth. Really. But I'm not comfortable spending time with another woman's lover. Skie is a nice girl and...~
== %ELDOTH_BANTER% ~You need not concern yourself with her feelings. She would not mind me...comforting...a friend who misses her beau. We have an...an understanding, you see. And, after all, we are not married.~
== BTIMaeth ~No.~
== %ELDOTH_BANTER% ~What do you mean by that?~
== BTIMaeth ~I mean I don't want you to...to 'comfort' me or anythig else. I'm not sure why you'd even bother with me, anyway. I have no title, no land to call my own, and only a couple of gold pieces to my name. *Mockingly.* I thought you preferred rich girls!~
== %ELDOTH_BANTER% ~Eh! You've completely mistaken my intentions! Apparently I cannot even be kind to a suffering soul without my character being called into question! Good day.~
EXIT

//25 (Faldorn:2)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Faldorn")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Faldorn",CD_STATE_NOTVALID)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
Global("FaldornMaethor1","GLOBAL",0)
See("TIMaeth")~ THEN %FALDORN_BANTER% FaldornMaethor1
~Like many of your kind, you have a way about you in the forest, elf. It is good to see respect for nature.~
DO ~SetGlobal("FaldornMaethor1","GLOBAL",1)~
== BTIMaeth ~Your ways, druid, are not uncommon among my people. As a child, I was brought up in service to Rillifane Rallathil. Your sect, the Shadow Druids, are said to harshly punish those who would kill animals for sport. Know you, then, that the Leaflord condemns it as well.~
== %FALDORN_BANTER% ~Does he? Then I am well pleased to meet you, fair child. Do you follow Rillifane still?~
== BTIMaeth ~I am no longer in his priesthood. I was taken into service of Lord Corellon. Nevertheless, Rillifane remains close to my heart and I honor him every time I walk in the woods.~
== %FALDORN_BANTER% ~I had noticed that you do not eat animal flesh.~
== BTIMaeth ~Yes. I was well-trained in discerning edible plant life. Although I admit I have a weakness for eggs. As a youth I was once observed a sly fox stealing eggs from a wild turkey and devouring them with relish. Later on, I was once sent on an errand for my mentor and had three days to travel the fifty-two miles between two towns. I had sufficient provisions, but felt unexpectedly hungry on the second day. I admit, sadly, that I found a pheasant's nest and filched her eggs to satisfy my hunger.Has that ever happened to you?~
== %FALDORN_BANTER% ~Be not unduly saddened, child. As the fox taught, nature serves the clever and the strong. You would have erred only if you had taken the pheasant captive to steal her eggs on a daily basis...as men are wont to do with chickens. I am pleased to see you have a conscience in these matters, though.~
== BTIMaeth ~I do.~
== %FALDORN_BANTER% ~*smiles.*~
EXIT

//26

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Faldorn")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Faldorn",CD_STATE_NOTVALID)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
Global("FaldornMaethor2","GLOBAL",0)
See("TIMaeth")~ THEN %FALDORN_BANTER% FaldornMaethor1
~I am curious about your life, Maethor. Are you willing to answer a few questions?~
DO ~SetGlobal("FaldornMaethor1","GLOBAL",1)~
== BTIMaeth ~Certainly.~
== %FALDORN_BANTER% ~What is your view of the building of a city or a town.~
== BTIMaeth ~That is a broad question. I am uncertain exactly how to answer. Do you mean my personal opinion about human cities or the views of my people?~
== %FALDORN_BANTER% ~Both views, if you have time. I have heard some of your people express distaste for what humans call 'civilization.'~
== BTIMaeth ~That is true. Elven cities differ greatly in both form and function from the human equivalent. For example, I hail from Suldanessellar. The entire city is built within the structure of the trees and care is taken that each house adjusts to the structure and growth of the tree that supports it. My mother's friend, Cýrontîr, often worked to adjust walls and floors to suit the years' growth of our tree. The human habit of cutting away all of nature to build cities of stone troubles me. Particularly since they have the additional habit of planting small trees and flowers afterwards...like a mockery of what was destroyed.~
== %FALDORN_BANTER% ~*smiles.* And your own view?~
== BTIMaeth ~I was partly raised in Athkatla. And lived for years in the town of Beregost. I liked neither. Athkatla was a crowded stew of foul smells and human suffering intermingled with the separated lives of the wealthy and powerful. Beregost was better in that there are fewer buildings and fewer people, but worse in that the locals had a greater dear of nature because it was nearer to them. The average resident will often express a desire to clear-cut the local woodlands to create a patch of farmland or slaughter woodland creatures without regard for the imbalance that results.~
== %FALDORN_BANTER% ~I see the touch of Rillifane Rallathil on your thinking, friend. What do you think should happen to human cities?~
== BTIMaeth ~*Cautiously.* It is not my place to say. The Leaflord has stated that he would prefer that humans withdraw entirely from his territories. Corellon espouses defense of Elven territories at whatever cost is necessary. Neither however, advocates a specific aim for existing human cities. We are too few to make such pronouncements.~
== %FALDORN_BANTER% ~Wisely said. It has ever been the Shadow Druids' purpose to aid in the preservation of nature at all costs. Would you say that our goals complement each other?~
== BTIMaeth ~Let us say, instead, that they are not in opposition.~
== %FALDORN_BANTER% ~Agreed.~
EXIT

//27 (Garrick:4)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Garrick")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Garrick",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorGarrick1","GLOBAL",0)
See("Garrick")~ THEN %GARRICK_BANTER% MaethorGarrick1
~Garrick? You have something you wish to say to me?~
DO ~SetGlobal("MaethorGarrick1","GLOBAL",1)~
== %GARRICK_BANTER% ~My dear Lady! Since <CHARNAME> has called a halt, might I have a brief word with you?~
== BTIMaeth ~Certainly. In fact, I'd be well pleased if you'd call me Maethor. I admit I've heard you play your lute certain evenings and have enjoyed your music.~
== %GARRICK_BANTER% ~*Blushes.* Thank you, m'la...Maethor. I understand you enjoy both music and poetry.~
== BTIMaeth ~I do. In fact, I carry a small book in which I have copied my favorite verse. If you wish, I would let you write a couple poems or songs that you like inside it so that I might carry your favorites with me as well.~
== %GARRICK_BANTER% ~You are too kind. Perhaps...perhaps I shall pick a verse from an author we both like and another...that I have written?~
== BTIMaeth ~Very well. *Digs a small book out of her pack and hands it to him.* Feel free to peruse the verse in it, by the way. Some of it is written in common. If you wish translations of the others, I'd also be happy to oblige.~
== %GARRICK_BANTER% ~Thank you.~
== BTIMaeth ~You are most welcome.~
EXIT

//28

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Garrick")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Garrick",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorGarrick1","GLOBAL",0)
See("Garrick")~ THEN %GARRICK_BANTER% MaethorGarrick1
~Garrick? What's wrong?~
DO ~SetGlobal("MaethorGarrick1","GLOBAL",1)~
== %GARRICK_BANTER% ~*sniff.* Nothing.~
== BTIMaeth ~Hmmm? *Looking at him carefully.* Garrick! You've been crying!~
== %GARRICK_BANTER% ~*Blushes.* Not so loud, Maethor! Does the whole party have to know my sorrow!~
== BTIMaeth ~What sorrow? Garrick, what's... Oh. Oh, yes. Is this over my...erm...changed circumstance?~
== %GARRICK_BANTER% ~*Bursts out sobbing.* Alas, cruel fate! To have taken the fairest flower from the garden when I had barely begun to appreciate its heady perfume!! Ah, Maethor... I had not even begun to open my heart to thee!!~
== BTIMaeth ~*Quietly.* But I'm still here. I...I have a verse for you to hear, if you'll listen.~
== %GARRICK_BANTER% ~*Nods, wiping his face.*~
== BTIMaeth ~'Let me not to the marriage of true minds / Admit impediments. Love is not love / Which alters when it alteration finds, / Or bends with the remover to remove:...~
== %GARRICK_BANTER% ~Yes! I know that one, too... 'O no! it is an ever-fixed mark / That looks on tempests and is never shaken; / It is the star to every wandering bark, / Whose worth's unknown, although his height be taken.'~
== BTIMaeth ~'Love's not Time's fool, though rosy lips and cheeks / Within his bending sickle's compass come: / Love alters not with his brief hours and weeks, / But bears it out even to the edge of doom.'~
== %GARRICK_BANTER% ~The couplet is especially powerful: 'If this be error and upon me proved, / I never writ, nor no man ever loved.'... I am so sorry, Maethor! You're right. I...I am ashamed that I allowed myself to weep over such...alteration...as if you were dead. But still...you are so very changed!~
== BTIMaeth ~Close your eyes.~
== %GARRICK_BANTER% ~What? Okay...~
== BTIMaeth ~*Kisses him.* Am I really changed?~
== %GARRICK_BANTER% ~*Blushes.*~
== BTIMaeth ~We all have sorrows, Garrick, but do not make my changed form one of yours. There are many far less pleasant shapes that I could have assumed.~
EXIT

//29

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Garrick")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Garrick",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorGarrick1","GLOBAL",1)
Global("GarrickMaethor1","GLOBAL",0)
See("TIMaeth")~ THEN BTIMaeth GarrickMaethor1
~Maethor?~
DO ~SetGlobal("GarrickMaethor1","GLOBAL",1)~
== BTIMaeth ~Yes, Garrick?~
== %GARRICK_BANTER% ~*Blushes.* I've read your book. Your selection of works is...impressive. I see you are fond of Rincehtë.~
== BTIMaeth ~I am. My favorite of his is on page 72. Would you like to read it with me? It's a sonnet for two voices.~
== %GARRICK_BANTER% ~Oh yes! Let's see *flips to the correct page.* Here we are. Shall I start?~
== BTIMaeth ~*Nods.*~
== %GARRICK_BANTER% ~If I profane with my unworthiest hand...This holy shrine, the gentle sin is this:...My lips, two blushing pilgrims, ready stand...To smooth that rough touch with a tender kiss. *Blushes.*~
== BTIMaeth ~Good pilgrim, you do wrong your hand too much,...Which mannerly devotion shows in this;...For saints have hands that pilgrims' hands do touch,...And palm to palm is holy palmers' kiss.~
== %GARRICK_BANTER% ~Have not saints lips, and holy palmers too?~
== BTIMaeth ~Ay, pilgrim, lips that they must use in prayer.~
== %GARRICK_BANTER% ~O, then, dear saint, let lips do what hands do;...They pray — grant thou, lest faith turn to despair.~
== BTIMaeth ~Saints do not move, though grant for prayers' sake.~
== %GARRICK_BANTER% ~Then move not, while my prayer's effect I take. *Kisses her.*~
== BTIMaeth ~*Blushes.* Garrick!~
== %GARRICK_BANTER% ~Forgive me, Maethor. I got...caught up in the mood of the poem. I recognize it. It is from a play about two young lovers.~
== BTIMaeth ~Indeed...~
EXIT

//30

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Garrick")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Garrick",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("GarrickMaethor1","GLOBAL",1)
Global("GarrickMaethor2","GLOBAL",0)
See("TIMaeth")~ THEN %GARRICK_BANTER% GarrickMaethor1
~Maethor! Wait for a moment!~
DO ~SetGlobal("GarrickMaethor2","GLOBAL",1)~
== BTIMaeth ~Yes, Garrick?~
== %GARRICK_BANTER% ~I...I have your book ready for you. I have inscribed two verses in it. One is my favorite from the author you have already praised. And one...one which I particularly like.~
== BTIMaeth ~*Looking at the first poem.* Oh, I know this one! Nice choice. Would you like to read it to me?~
== %GARRICK_BANTER% ~Oh yes!...In the old age black was not counted fair,...Or if it were, it bore not beauty's name;...But now is black beauty's successive heir,...And beauty slandered with a bastard shame:...For since each hand hath put on Nature's power,...Fairing the foul with Art's false borrowed face,...Sweet beauty hath no name, no holy bower,...But is profaned, if not lives in disgrace....Therefore my mistress' eyes are raven black,
Her eyes so suited, and they mourners seem...At such who, not born fair, no beauty lack,...Sland'ring creation with a false esteem:...Yet so they mourn becoming of their woe,...That every tongue says beauty should look so.~
== BTIMaeth ~*Laughs.* Not just a pretty poem, but spoken with such fervor. You chose a proper poem for a dark-haired, dark-eyed lady!~
== %GARRICK_BANTER% ~*Smiles.* Of course! Pretty lines for a pretty woman. *Blushes.*~
== BTIMaeth ~Shall I read the other one, too?~
== %GARRICK_BANTER% ~Only in private, Maethor... I...I'd rather our companions not hear it.~
== BTIMaeth ~It seems quite a good poem. Are you so afraid of their criticism?~
== %GARRICK_BANTER% ~No...I am not afraid of that. But I hoped this might be...just between us.~
== BTIMaeth ~Very well.~
EXIT

//31 (Imoen:7)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Imoen2")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethImoen","GLOBAL",0)
See("Imoen2")~ THEN BTIMaeth TIMaethImoen
~That's a beautiful shirt, Imoen. Do you think I might borrow it sometime?~
DO ~SetGlobal("TIMaethImoen","GLOBAL",1)~
== %IMOEN_BANTER% ~Sure thing, Maethor. It would look pretty on you. What's going on with you, anyway? All I've ever seen you in besides your armor is black. Black leggings, black breeches, black tunic, black shirt--black, black, black!~
== BTIMaeth ~I have trouble with colors. If I try to wear anything other than black, I always pick the wrong ones. Everyone would notice except me. I'd never dare to color my hair like you have. You have colored it, right? It's not like that by itself, is it?~
== %IMOEN_BANTER% ~Oh yes, it's dyed my favorite color.~
== BTIMaeth ~I like it!  It reminds me of the new shoots of ivy in the springtime--so fresh and shiny green.~
== %IMOEN_BANTER% ~It's pink.~
== BTIMaeth ~Pink?  What's pink?~
== %IMOEN_BANTER% ~My hair.  It's pink. You said 'green'.~
== BTIMaeth ~Oh!  Yes, yes.  Pink.  Like…  Um…  Roses?  And rose petals!  Very pretty!~
EXIT

//32

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Imoen2")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethImoen1","GLOBAL",0)
See("Imoen2")~ THEN BTIMaeth TIMaethImoen1
~*Tries to sneak past Imoen, the visor of his helmet lowered.*~
DO ~SetGlobal("TIMaethImoen1","GLOBAL",1)~
== %IMOEN_BANTER% ~Oh Maethor! There you are! I've been wanting to talk to you!~
== BTIMaeth ~I'm...uh...kind of busy, Imoen. You know...scouting ahead and all that.~
== %IMOEN_BANTER% ~*Walks up to him.* Uh huh. Right. Why are you avoiding me?~
== BTIMaeth ~*Innocently.* Avoiding you?~
== %IMOEN_BANTER% ~Yes.~
== BTIMaeth ~Well, um... I'm just afraid of what you'll do when you see that...~
== %IMOEN_BANTER% ~*Grabs Maethor's arm, pulling him closer to her and lifting his visor.* Wow! I'm speechless. When'd you turn into such a cutie?~
== BTIMaeth ~*Blushes.* <CHARNAME> thought it was a good idea to see what I was like as a male.~
== %IMOEN_BANTER% ~*Tilting her head.* Seems like a good idea to me! Yer a cutie! Now...what are you afraid that I might do, huh? Try ta kiss ya?~
== BTIMaeth ~*Grimacing.* Well, no. But I'd rather not give you any ideas, see?~
== %IMOEN_BANTER% ~Hmph! I thought we were friends, Maethor. Are friends as suspicious of each other as you are of me?~
== BTIMaeth ~*Embarrassed.* No, I guess not. I'm sorry, Imoen. You're right. I shouldn't worry that you'll play some kind of suggestive joke on me to embarrass me...~
== %IMOEN_BANTER% ~Well, good on ya! Showin' some confidence and trust in me!~
== BTIMaeth ~So, um...Why did you want to talk to me?~
== %IMOEN_BANTER% ~*Pulls the neck of her shirt open.* Well, I got this bug dropped down in my bodice and I can't seem to get it out. Maybe you could help me fish it out?~
EXIT

//33

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Imoen2")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethImoen2","GLOBAL",0)
See("Imoen2")~ THEN BTIMaeth TIMaethImoen2
~What did you think about that bard we heard at that last inn, Imoen?~
DO ~SetGlobal("TIMaethImoen2","GLOBAL",1)~
== %IMOEN_BANTER% ~Oh, Maethor! *chuckles* I think I'm in love!~
== BTIMaeth ~Actually, I was asking about the singing.~
== %IMOEN_BANTER% ~Oh, he sang well enough. I just couldn't get past how cute he was!! *big sigh.*~
== BTIMaeth ~You think so? He was nice-looking, I guess, but he seemed a bit...forward...to me.~
== %IMOEN_BANTER% ~Eh! I like that in a lover. When he came up to me after the performance and kissed my hand, I could have died! I'll never wash my hand again! What about you?~
== BTIMaeth ~Ummm... I've already washed my hands since then... Several times. Should I not have?~
== %IMOEN_BANTER% ~No, no, silly! You take everything so literally! What do you like in a lover?~
== BTIMaeth ~Gentleness, mostly. And kindness.~
== %IMOEN_BANTER% ~Echhh. How boring.~
== BTIMaeth ~Well, what should I like?~
== %IMOEN_BANTER% ~That's easy! A good body! First! Do you like boys or girls? Or shouldn't I ask?~
== BTIMaeth ~*Blushes.*~
== %IMOEN_BANTER% ~Aw, Maethor. Come on! I don't mind whatever you say. I can keep a secret.~
== BTIMaeth ~Ummm...My people call it 'gwegwin.' They say that it is a sign that one is beloved of Corellon if one would love him in either his male or his female form.~
== %IMOEN_BANTER% ~Both, eh? Well... let's see... Oh! A nice rear... It's okay if they have a pretty face, but it's actually better if it's pleasant rather than really beautiful. Then you won't have to compete as much with others. Likewise, they should have a decent living, but not be too rich. Just rich enough that they can dress well and can afford to get you nice things. And, of course, they have to be the sort of lover who wants to get you nice things. Oh! It's nice if they have a good voice and if they like to talk about things... But not too much talking! A lover shouldn't talk all the time. And, let's see...~
== BTIMaeth ~Is that all? Or is there more to remember?~
== %IMOEN_BANTER% ~You don't have to remember anything, Maethor... You just have to think about someone you know that you find attractive and...~
== BTIMaeth ~Yes?~
== %IMOEN_BANTER% ~On second thought, don't do that. You'll probably be thinking about someone dull. I'll show you what you should be looking for the next chance I get.~
EXIT

//34

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Imoen2")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethImoen3","GLOBAL",0)
See("Imoen2")~ THEN BTIMaeth TIMaethImoen3
~Imoen, what are you thinking about?~
DO ~SetGlobal("TIMaethImoen3","GLOBAL",1)~
== %IMOEN_BANTER% ~Have you ever been in love, Maethor?~
== BTIMaeth ~*Blushes*~
== %IMOEN_BANTER% ~Oh my! Who is it? Tell me!~
== BTIMaeth ~Oh, Imoen! No! I haven't said!~
== %IMOEN_BANTER% ~*rolls eyes*. Gods, Maethor! You mean to tell me you're in love with somebody and they don't know?~
== BTIMaeth ~I can't! I'm too afraid of the reaction.~
== %IMOEN_BANTER% ~Well, it isn't me, is it? I mean, I wouldn't mind ya crushin' on me, but it'd make things awkward if I wanted to give ya advice.~
== BTIMaeth ~I...um...wouldn't want to ruin the friendship.~
== %IMOEN_BANTER% ~That's o.k. You're not my type anyway. So...is it a boy or a girl?~
== BTIMaeth ~*Turns pink.* Imoen! Stop! You're making me blush!~
== %IMOEN_BANTER% ~How old are you, anyway? I thought you were my age, but now you sound a lot younger than me!~
== BTIMaeth ~*Grimaces.* You would have to ask me that! It's hard to make comparisons. Not only do my people age a lot more slowly than humans do, but we don't usually take much of an interest keeping track of such short periods of time as a single turn of seasons.*She counts on her fingers.* Atheg...Emig...Honeg...Lebent...Gwinig... I'm tadlû lebgaen idhrinn. Fifty-two years, in your terms.~
== %IMOEN_BANTER% ~Oh my! That's old!~
== BTIMaeth ~Oh, Imoen. No it's not. I told you it's hard to make comparisons! My people think of me as being 'neth'... What your people would describe as 'teen-aged.' My sister Liria is just as condescending to me as <CHARNAME> is to you!~
== %IMOEN_BANTER% ~*eyes wide*. How old is she?~
== BTIMaeth ~*Counting.* Min-odogaen. I think. Seventy-one. I think she was begotten in 1296.~
== %IMOEN_BANTER% ~Oh wow! Ancient history!~
EXIT

//35

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Imoen2")
InParty("Kivan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Kivan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("ImoenTIMaeth1","GLOBAL",0)
See("TIMaeth")~ THEN %IMOEN_BANTER% ImoenTIMaeth1
~Maethor?~
DO ~SetGlobal("ImoenTIMaeth1","GLOBAL",1)~
== BTIMaeth ~Yes, Imoen? You have a question for me?~
== %IMOEN_BANTER% ~Yes I do! You're friends with Kivan, right?~
== BTIMaeth ~*cautiously* Ummm... I guess you could say that.~
== %IMOEN_BANTER% ~Well, he seems that way. He's more open with you than with the rest of us.~
== BTIMaeth ~Perhaps. He says I seem familiar to him. Perhaps we're kin. Dunno. It's certainly possible. And since I never had a father, he sort of fits into that role...~
== %IMOEN_BANTER% ~*eagerly.* Great! Then you'll know...~
== BTIMaeth ~Know what?~
== %IMOEN_BANTER% ~How old he is!~
== BTIMaeth ~*Confused.* How old is who?~
== %IMOEN_BANTER% ~Kivan! He's told you, right? How old IS he? I've been wondering...~
== BTIMaeth ~*sighs.* Yes, actually. I do know. Not because he told me, though. I just recognized some references he's made about the battle where his brothers and father were killed.~
== %IMOEN_BANTER% ~But you do know, right?~
== BTIMaeth ~Yeeeesssss, but it's not exact, so don't go gossiping about it. He's over tad-haran. *Laughs.* Perhaps one reason we get along so well is that he and his wife always wanted children, you know, and I'm like the child he never had...~
== %IMOEN_BANTER% ~What does tad-haran mean?~
== BTIMaeth ~Two hundred.~
== %IMOEN_BANTER% ~*Shocked.* Man!  And I thought fifty was old. What is it about you elves always being ancient? Weren 't you EVER under twenty like me?~
== BTIMaeth ~Of course I was. *Smiles.* But at twenty, I was actually quite a bit younger than you are now. Elves grow more slowly than any of the other races even when they're children. It takes us to thirty or thirty-five to be the human equivalent of maybe 15.~
== %IMOEN_BANTER% ~Gosh! I have to think this one over...~
EXIT

//36

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Imoen2")
InParty("Coran")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Coran",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethImoen4","GLOBAL",0)
See("Imoen2")~ THEN BTIMaeth TIMaethImoen4
~Imoen, that's the third time you've stepped on the back of my boot.!~
DO ~SetGlobal("TIMaethImoen4","GLOBAL",1)~
== %IMOEN_BANTER% ~Sorry, Maethor. I was just thinkin'. How old is Coran?~
== BTIMaeth ~Coran? Why don't you ask him?~
== %IMOEN_BANTER% ~I tried. He know how he is. Everything reminds him of one of his stories. He first said that women care more about age than men and that age didn't really mean a whole lot and that there was this time in Baldur's Gate when this lady asked him what he thought about her age... I was tryin' so hard to keep up with what he was sayin' that I forgot I'd asked a question!~
== BTIMaeth ~Oh, Imoen!~
== %IMOEN_BANTER% ~*sweetly*. But I knew you would tell me, Maethor! Come on... Everyone knows you and he are bestest buddies lately. He's ancient, right?~
== BTIMaeth ~Imoen! We are NOT bestest.... whatever you said we were...~
== %IMOEN_BANTER% ~Buddies. You don't have to be shy with me, Maethor. I know he wants ta kiss ya! He's over a hundred, right?~
== BTIMaeth ~*Faintly.* More than that. It takes us a century to reach maturity. If you must know. And he's been...mature...for a long while, I think...*calculating.* Host? Imp immlû ú-natha aen far... Tolochaen a min-haran. I think he has had at least one hundred-eighty years. Maybe more.~
== %IMOEN_BANTER% ~How can you tell?~
== BTIMaeth ~*shrug.* The same way you can tell age among your people, I imagine. My mother, after all, was over tad-haran lebgaen... two-hundred fifty... when she died. They seem to be from the same generation from the way they look and talk... But don't say anything. It's rude to talk about someone's age...They take offense.~
== %IMOEN_BANTER% ~Two hundred fifty! Man! Just think of that, Maethor. That's five of your lives... About twelve of mine! I wouldn't have guessed! Why'd your mom have you so late?~
== BTIMaeth ~I don't know, Imoen... Anyway, you won't say anything, will you?~
== %IMOEN_BANTER% ~You worry too much, Maethor.~
== BTIMaeth ~ummm... Imoen?~
== %IMOEN_BANTER% ~Oh look, Maethor! There he is, now! Hey, Coran! Maethor says you must be gettin' close to two-hundred. Why couldn't you just say yer as old as dirt?!~
EXIT

//37

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Imoen2")
InParty("Xan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Xan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethImoen5","GLOBAL",0)
See("Imoen2")~ THEN BTIMaeth TIMaethImoen5
~I feel your eyes on me, Imoen. Do I dare ask what I can do for you?~
DO ~SetGlobal("TIMaethImoen5","GLOBAL",1)~
== %IMOEN_BANTER% ~Ohhhh.... Nothin' much.~
== BTIMaeth ~Are you sure? Whenever you get that curious look on your face I start to feel afraid.~
== %IMOEN_BANTER% ~I wouldn't know why you might feel that way, Maethor. I just have an inquisitive mind, ya know. I like to learn things.~
== BTIMaeth ~*cautiously* So what's on your mind now?~
== %IMOEN_BANTER% ~Are you sure you want to know?~
== BTIMaeth ~*sigh.* No, but I won't rest easy until you tell me.~
== %IMOEN_BANTER% ~*eagerly.* Great! I knew you wouldn't hold back on me! Nobody else will tell me anything, ya know? Like I'm just a child!~
== BTIMaeth ~Please ask your question, Imoen. You're making me regret...~
== %IMOEN_BANTER% ~So how old is Xan?~
== BTIMaeth ~*Blink* How old is Xan?~
== %IMOEN_BANTER% ~Yeah. How old IS he? I mean, you're fifty and you say that for elves, that's barely more than a kid. Well what does that make Xan? He's gotta be waaaayyyy over the hill, right? I mean, all the really grumpy scholars at Candlekeep were in their seventies and eighties and older. And Xan...well he's really, really grumpy most of the time, so he's gotta be old and when I say old, I mean ooooolllllld.~
== BTIMaeth ~*rubs her face.* I'd rather not speculate. He already thinks I'm dim-witted demon-spawn...If I get it wrong and he hears about it, I won't be able to take the ridicule.~
== %IMOEN_BANTER% ~But you can sort of tell, right? Like you can see it in their faces?~
== BTIMaeth ~Yeeeesssss, but I don't really know, Imoen. I'm just guessing. This feels like I'm gossiping about him.~
== %IMOEN_BANTER% ~Oh come on, Maethor. It's not gossip! I just want to learn more about your people.~
== BTIMaeth ~*reluctantly.* Very well. But this is just a guess, mind you. Don't go around telling anyone I was talking about him. Understand?~
== %IMOEN_BANTER% ~Sure, sure. Whatever.~
== BTIMaeth ~It's much harder with mages... you never know if they've done something that ages them prematurely...~
== %IMOEN_BANTER% ~Quit stalling, Maethor.~
== BTIMaeth ~Very well! He seems between tad-haran and nel-haran. Maybe odogaen a tad-haran... two hundred eighty years. The breadth and depth of his knowledge and the level of responsibility that his elders grant him means he's in his maturity, so that seems accurate. And I sense that his knowledge of certain events related to Evereska are from personal experience. But you have to understand, age comparisons between races aren't very reliable... My people can easily live to odo-haran without loss of wit or stamina. In fact, I cannot think of a kinsman who did not either fall to violence or left willingly to Arvanwaith. We did not know of ingem--year-sickness--until we met your people.~
== %IMOEN_BANTER% ~So how old is... odo... odo...what you said?~
== BTIMaeth ~Eight hundred.~
== %IMOEN_BANTER% ~Okay. I understand, now.~
== BTIMaeth ~*surprised* You do?~
== %IMOEN_BANTER% ~Of course. It all makes perfect sense! Noone ever wants to do anything fun around here. Everyone is always going on how dangerous everything is and how we have to be careful. Nobody ever lets ME do anything fun. AND nobody will ever tell me what's going on. I'm surrounded by old people.~
EXIT

//38

CHAIN IF WEIGHT #-2
 ~InParty("TIMaeth")
InParty("Imoen")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Imoen",CD_STATE_NOTVALID)
Global("TIMaethImoen6","GLOBAL",0)
See("Imoen")~ THEN BTIMaeth TIMaethImoen6
~Imoen? Do you need something?~
DO ~SetGlobal("TIMaethImoen6","GLOBAL",1) SetGlobal("MartaSquashed","GLOBAL",1)~
==%IMOEN_BANTER%~Maethor! I was just thinkin' about what we talked about before! That guy you're in love with in Beregost. How'd you meet him?~
==BTIMaeth~It's complicated. My sister needed to have a ceremony blessing the birth of her son, Artamir. In Tethir or Amn, we would have had a priestess of Angharradh oversee it, but we were in Beregost.  And then the baby came early and nothing was prepared, so our neighbors Alanna and Mirianne helped us make the arrangements...~
==%IMOEN_BANTER%~*Interrupting* Just get to the main bit, Maethor! Where did you meet him?~
==BTIMaeth~He was at the ceremony.~
==%IMOEN_BANTER%~And? What happened?~
==BTIMaeth~He...uh...fell on me.~
==%IMOEN_BANTER%~I don't understand. You love with a guy who fell on you?~
==BTIMaeth~Oh Imoen... The night Artamir was born the midwife gave me the job of making sure everyone who was supposed to be at the birthing ceremony was there... We had invited some friends and they brought guests and the cleric was supposed to show up, so I sent a messenger to fetch him... Everyone came to our house before the sun was up and the room was pretty dark.~
==%IMOEN_BANTER%~Okay. And then what happened?~
==BTIMaeth~The ceremony started. I was standing by this window. He came over...~
==%IMOEN_BANTER%~The guy who fell on you?~
==BTIMaeth~Yes. He was talking about dawn and new beginnings... I can't remember exactly what he said, but it sounded pretty... I was so happy because when he first came in, we talked and he was very nice. Anyway, when he came over to open the window shutters, he tripped over something, knocked me over, and fell on me. We had a hard time getting up because he kept stepping on the hem of his robe. He was so embarrassed he just mumbled the rest of his words and hurried out before the party started.~
==%IMOEN_BANTER%~*Imoen is silent for a moment, then bursts out laughing* That's who you love? Seriously? Why?~
==BTIMaeth~When he touched me... when he was on me, that is... I knew. We were laying there together in the dark and I could feel his heart beating and he was warm and his weight on me felt... right... He had on this awful cologne, but underneath it, his skin and hair smelled wonderful. It took both of us a few seconds to recover our wits and then our eyes met. He was young... like me... and we received what my people call 'gúrist'--heart-knowledge--of each other. Then he kissed me. *Marta sighs, her eyes closing momentarily to savour the memory.* But in the next moment, some of the other guests came over, opened the shutters, and helped him get up. It was over.~
==%IMOEN_BANTER%~Too bad.~
==BTIMaeth~The next few times I saw him, he repeatedly apologized. He must have thought I was angry, because I was blushing and couldn't say anything that made any sense... And then I got a letter from Finn that formally allowed me to work as Tybalt's squire and, so, my mentor started sending me on errands all over the Coast. By the time I was back in Beregost for longer than a day, when I tried to find him at the Temple, I discovered that he'd met someone. So that was that. When I'm home, we always greet each other if we pass each other in the street, but I've never been able to say how I feel. So, it's come to nothing...~
==%IMOEN_BANTER%~Sorry, Maethor. I don't want to hurt your feelings...really... But I think that's the most pathetic love story I've ever heard. You must not get out enough. But don't worry. You now have Imoen helping ya. We're going to find someone for you who you can love.~
EXIT

//39 (Jaheira:4)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Jaheira")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorJaheira1","GLOBAL",0)
See("Jaheira")~THEN BTIMaeth MaethorJaheira1
~So, Jaheira, I understand that you also were born in Tethyr?~
DO ~SetGlobal("MaethorJaheira1","GLOBAL",1)~
== %JAHEIRA_BANTER% ~Indeed.~
== BTIMaeth ~You're scowling.~
== %JAHEIRA_BANTER% ~It was during the Tethyrian civil war.~
== BTIMaeth ~Oh.~
== %JAHEIRA_BANTER% ~My father was a loyalist of King Alemander's regime.~
== BTIMaeth ~Then you were caught up in the violence as well.~
== %JAHEIRA_BANTER% ~Yes. I only survived because a servant girl took me from our castle before it fell. When we fled into the forest of Tethyr, we came across an enclave of Druids willing to take me on.~
== BTIMaeth ~My mother was a mistress of Prince Alemander. She was famous enough that the peasantry recognized us on the road to Amn. She paid dearly for her familiarity with the Prince; her body was unrecognizable after they were done with it. I only managed to survive because I was rescued by a squad of Knights from Amn who were investigating the violence.~
== %JAHEIRA_BANTER% ~*Sigh* Such a terrible past. I wish that our common heritage might have had a happier connotation. Still, everything serves the Balance.~
== BTIMaeth ~I thought the saying was 'Everything serves the Good.'~
== %JAHEIRA_BANTER% ~Not among my folk. We believe that there is a balance between Good and Evil that must be maintained to keep order in the world.~
== BTIMaeth ~If you say so.~
EXIT

//39

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Jaheira")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorJaheira2","GLOBAL",0)
See("Jaheira")~THEN BTIMaeth MaethorJaheira1
~It is a fine day today, isn’t it, Jaheira?~
DO ~SetGlobal("MaethorJaheira2","GLOBAL",1)~
== %JAHEIRA_BANTER% ~It is lovely. Did you want to ask me about something personal?~
== BTIMaeth ~How did you know I had a question?~
== %JAHEIRA_BANTER% ~*Counting on her fingers* Well, (1) I’m a woman, (2) I know a lot about medicinal plants, (3) you’ve been hovering nearby for the last half-hour blushing as red as a rose, and (4) even now that I’ve stopped a moment to gather some herbs and have fallen behind, you’re still with me.~
== BTIMaeth ~Oh.~
== %JAHEIRA_BANTER% ~No one else will hear. Tell me what’s on your mind.~
== BTIMaeth ~You’re married, right?~
== %JAHEIRA_BANTER% ~Yes.~
== BTIMaeth ~*Shuffling feet* It’s kind of embarrassing. I don’t know quite how to ask.~
== %JAHEIRA_BANTER% ~*Sigh* I know you’re very young for an elf, Maethor, but you really should try to be more assertive. This passivity won’t serve you well as a woman in this world. Are you having female pain? I have some excellent remedies for that. I’ve noticed that you elves bleed a lot less often and have more pain than other women.~
== BTIMaeth ~*Looks away* Angharrad guides that. Every year, at her spring festival, some of us receive her special blessing and can conceive. If for whatever reason, we choose not to, we bleed. But it is not my time right now. Perhaps not until next festival.~
== %JAHEIRA_BANTER% ~Are you having pain elsewhere? You don’t eat enough raw foods. You’ve picked up the human trait of overcooking everything.~
== BTIMaeth ~Um, no. I feel fine.~
== %JAHEIRA_BANTER% ~Then what is it? What do you need to know?~
== BTIMaeth ~Ummm... What does a man like Khalid want?~
== %JAHEIRA_BANTER% ~That’s a very personal question, Maethor. Why do you want to know? Have one of the other men been sweet-talking you?~
== BTIMaeth ~Uhhh...~
== %JAHEIRA_BANTER% IF ~Gender(Player1, MALE)~ THEN ~Has <CHARNAME> been behaving himself around you?!~
== BTIMaeth IF ~Gender(Player1, MALE)~ THEN ~Well...~
== %JAHEIRA_BANTER% IF ~InParty("Coran")~ THEN ~What about that skirt-chaser Coran?!~
== BTIMaeth IF ~InParty("Coran")~ THEN ~Um, I...~
== %JAHEIRA_BANTER% IF ~InParty("Garrick")~ THEN ~Garrick HAS been mooning over you lately... What about him?!~
== BTIMaeth IF ~InParty("Garrick")~ THEN ~Uhhh...~
== %JAHEIRA_BANTER% IF ~InParty("Edwin")~ THEN ~What about Edwin?!~
== BTIMaeth IF ~InParty("Edwin")~ THEN ~Huh?~
== %JAHEIRA_BANTER% IF ~InParty("Eldoth")~ THEN ~Is it that creep Eldoth?!~
== BTIMaeth IF ~InParty("Eldoth")~ THEN ~What?~
== %JAHEIRA_BANTER% IF ~InParty("Ajantis")~ THEN ~Has that sanctimonious squire Ajantis gotten out of line?!~
== BTIMaeth IF ~InParty("Ajantis")~ THEN ~I...uhh...~
== %JAHEIRA_BANTER% IF ~InParty("Xan")~ THEN ~Is it that misanthrope Xan?!~
== BTIMaeth IF ~InParty("Xan")~ THEN ~Now, hold on...~
== %JAHEIRA_BANTER% IF ~InParty("Kivan")~ THEN ~You have been spending a lot of time with Kivan... It's been a long time since his wife died. He hasn't propositioned you, has he?!~
== BTIMaeth IF ~InParty("Kivan")~ THEN ~Hey, I...~
== %JAHEIRA_BANTER% IF ~InParty("Khalid")~ THEN ~If Khalid has said anything, I swear I'll kill him!~
== BTIMaeth IF ~InParty("Khalid")~ THEN ~Well...~
== %JAHEIRA_BANTER% IF ~InParty("Gavin")~ THEN ~Gods help us...is it Gavin?! He has a mouth on him when he's drunk.~
== BTIMaeth IF ~InParty("Gavin")~ THEN ~Wait! I...~
== %JAHEIRA_BANTER% IF ~InParty("Vynd")~ THEN ~*Darkly.* It's the Drow, isn't it? You just HAD to mess around and get yourself in trouble...~
== %JAHEIRA_BANTER% IF ~InParty("White")~ THEN ~Well, we can safely rule out White...?!~
== BTIMaeth ~*Interrupting.* Wait, wait! You're not letting me get a word out. What do any of them have to do with...?~
== %JAHEIRA_BANTER% ~Well, Paladins usually swear to remain pure before marriage. I didn’t think I needed to ask you if you knew about avoiding pregnancy.~
== BTIMaeth ~Pregnancy?...~
== %JAHEIRA_BANTER% ~Do you need something? Thistle or Queen Anne’s Lace are two herbs for that, although Thistle’s for before and Queen Anne’s Lace—also called Wild Carrot Seed—is in case of an 'oops'.~
== BTIMaeth ~All I want to know is what to expect.  I don’t think I need to take anything for that.~
== %JAHEIRA_BANTER% ~Maethor, what on Faerûn are you talking about? I’m beginning to think I’ve missed something. Are you seriously asking me what a man...err...like Khalid wants? Do you not know? Did your mother not tell you?~
== BTIMaeth ~*Eyes widen* No, no, no. Oh, no. I don’t mean hoith...errr...intimacy! By Corellon, you must think I’m an idiot. My mother was a courtesan. She didn’t need to tell me anything. I saw enough as it was. No, I was just curious about what it was like for you when you and Khalid decided to get married. What did he want? What was he looking for? I know what it means to be a man's lover. But I don't know what they seek in a partner. Does that make more sense?~
== %JAHEIRA_BANTER% ~*Under her breath.* Thank Silvanus! *Aloud.* I'll tell you all about it. Marriage is built on the love and trust of two people....~
EXIT

//40

CHAIN
IF WEIGHT #-2
~InParty("Jaheira")
InParty("TIMaeth")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("JaheiraMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %JAHEIRA_BANTER% JaheiraMaethor2
~*Grabs Maethor by the ear and starts dragging him away from the party.*~
DO ~SetGlobal("JaheiraMaethor1","GLOBAL",1)~
== BTIMaeth ~Ow! Ow! Ow! What did I do... Ow! Jaheira?~
== %JAHEIRA_BANTER% ~*Letting him go.* I just wanted a private word with you.~
== BTIMaeth ~*Rubbing his ear.* You could have just asked.~
== %JAHEIRA_BANTER% ~It was bad enough dealing with your childishness as a girl, Maethor, but now, if you're determined to be a boy, you and I will have an understanding!~
== BTIMaeth ~Um...An understanding of what?~
== %JAHEIRA_BANTER% ~The Balance requires young...erm...men to take some responsibility for themselves. If you need any herbal...preparation...from me or instructions on how to use it, you should feel free to ask. Do I make myself clear?~
== BTIMaeth ~Huh? Herbal? What?~
== %JAHEIRA_BANTER% ~*Glares.*~
== BTIMaeth ~...~
== %JAHEIRA_BANTER% ~Truly, Maethor. You've been skilled enough at horticraft that I had forgotten that you're a little slow sometimes! If you require cassil, I have some in my medicine bag and can show you what the plant looks like. As well as how to brew it.~
== BTIMaeth ~*Blushes deep red.* No need to do that, Jaheira. I observed all of that a long time ago.~
== %JAHEIRA_BANTER% ~Knowing you, you probably need a refresher course. After all, you have far less experience as a young man than I've had educating them!~
== BTIMaeth ~Why, Jaheira! I didn't know you ever educated young men!...~
== %JAHEIRA_BANTER% ~Grrr! Come here, you!~
== BTIMaeth ~Ow! Ow! Ow!~
EXIT

//41

CHAIN
IF WEIGHT #-2
~InParty("Jaheira")
InParty("TIMaeth")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorKhalidKissed","GLOBAL",1)
Global("JaheiraMaethor2","GLOBAL",0)
See("TIMaeth")~THEN %JAHEIRA_BANTER% JaheiraMaethor1
~Maethor? May I have a word with you?~
DO ~SetGlobal("JaheiraMaethor2","GLOBAL",1)~
== BTIMaeth ~*The rest of the party scatters, leaving Maethor standing alone* Ummm... Yes?~
== %JAHEIRA_BANTER% ~Having spoken to Khalid, I just wanted to reassure you that I am willing to forget your...incident...with my husband.~
== BTIMaeth ~Uh...good...Though I wouldn't call it an 'incident.' Khalid just got excited and...~
== %JAHEIRA_BANTER% ~*brushing her off.* Yes, yes. We don't have to go through it all again.~
== BTIMaeth ~*relieved.* Oh...good!~
== %JAHEIRA_BANTER% ~But!~
== BTIMaeth ~Yes?~
== %JAHEIRA_BANTER% ~In the future, I think you should attempt to restrain yourself if you start feeling affectionate towards my husband. We all understand that you are still a child and not entirely responsible for your actions, but...~
== BTIMaeth ~But Jaheira, he kissed me!~
== %JAHEIRA_BANTER% ~A mere detail. I can tell he got swept up by your youth and your infectious enthusiasm.~
== BTIMaeth ~What? My youth and enthusiasm?! But I didn't... Wait! What did HE say happened?!~
== %JAHEIRA_BANTER% ~Khalid said he was so happy, he lost his head and kissed you.~
== BTIMaeth ~And?~
== %JAHEIRA_BANTER% ~Well, surely, you don't expect me to believe HIM, do you? Men always get facts backwards!~
== BTIMaeth ~*groan.*~
== %JAHEIRA_BANTER% ~So, as I said, just keep your head if you find yourself around an attractive man. In a way, you're lucky it was Khalid, because we all know nothing untoward would happen with him.~
EXIT

//42 (Kagain:2)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Kagain")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Kagain",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("KagainMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %KAGAIN_BANTER% KagainMaethor1
~By Vergadain! Is that you, Maethor?~
DO ~SetGlobal("KagainMaethor1","GLOBAL",1)~
== BTIMaeth ~It is indeed, you old shyster! Sir Tybalt has not been home in months. My sister Liria grows worried at his safety. I have engaged this party to assist me in finding him. But enough of that...How is business?~
== %KAGAIN_BANTER% ~It would have been a good year, were it not for bandits. Three caravans taken. All profits lost.~
== BTIMaeth ~Bandits are a scourge common to us all. 'Twould be better to slaughter them all.~
== %KAGAIN_BANTER% ~Spoken truly. D'ye have time for a game o' cards, tonight, kiddo?~
== BTIMaeth ~After the last time? You flattened my purse in only six hands! I would be a fool if I said yes!~
== %KAGAIN_BANTER% ~*Laughs.* Well, yer less of a fool now. At least we might share a pint or two?~
== BTIMaeth ~Perhaps. There are others in the party who welcome a good game or a good drink.~
== %KAGAIN_BANTER% ~Good. As soon as my caravan is found, I'll be in the mood to celebrate.~
== BTIMaeth ~Good to hear. Let's take some bandit scalps, then!~
EXIT

//43

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Kagain")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Kagain",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("KagainMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %KAGAIN_BANTER% KagainMaethor1
~By Vergadain! Is that you, Maethor?~
DO ~SetGlobal("KagainMaethor1","GLOBAL",1)~
== BTIMaeth ~It is indeed, you old shyster! Sir Tybalt has not been home in months. My sister Liria grows worried at his safety. I have engaged this party to assist me in finding him. But enough of that...How is business?~
== %KAGAIN_BANTER% ~You seem a bit changed from the last time I've seen ye...~
== BTIMaeth ~A bit. <CHARNAME> has...~
== %KAGAIN_BANTER% ~Nay, nay. It's none of my business and of no account to me, anyway... You know, it would have been a good year, were it not for bandits. Three caravans taken. All profits lost.~
== BTIMaeth ~Bandits are a scourge common to us all. 'Twould be better to slaughter them all.~
== %KAGAIN_BANTER% ~Spoken truly. D'ye have time for a game o' cards, tonight, kiddo?~
== BTIMaeth ~After the last time? You flattened my purse in only six hands! I would be a fool if I said yes!~
== %KAGAIN_BANTER% ~*Laughs.* Well, yer less of a fool now. At least we might share a pint or two?~
== BTIMaeth ~Perhaps. There are others in the party who welcome a good game or a good drink.~
== %KAGAIN_BANTER% ~Good. As soon as my caravan is found, I'll be in the mood to celebrate.~
== BTIMaeth ~Good to hear. Let's take some bandit scalps, then!~
EXIT


//44 (Khalid:2)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Khalid")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Khalid",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorKhalid1","GLOBAL",0)
See("Khalid")~THEN BTIMaeth MaethorKhalid1
~Have I offended you, Khalid?~
DO ~SetGlobal("MaethorKhalid1","GLOBAL",1)~
== %KHALID_BANTER% ~Wh-what?  Oh, n-no, M-Maethor. Wh-why would you th-think that?~
== BTIMaeth ~You’ve seemed like...like you wanted to say something to me but you... weren’t sure. As kind as you’ve been to... to me before, I ...I thought you were angry.~
== %KHALID_BANTER% ~N-no. Not at all. I j-just was listening t-to you speak. You h-hesitate often w-when you t-talk. And you sp-speak so s-slowly. It m-made me wonder, b-b-but I didn’t know h-how to ask you about it. I kn-know you were hurt as a ch-child. B-b-badly. And your m-mother k-killed. I w-wanted to say h-how sorry I was, too.~
== BTIMaeth ~I appreciate your words. After I was hurt, I found I would sometimes have trouble remembering what word to use. I still do if I speak too quickly. My mentor found a Feywarden of Corellon in Tethir who works with those who have speech problems. Mostly for singing, actually, but he has an interest in helping because he believes that all should be able to praise.~
== %KHALID_BANTER% IF ~InParty("Jaheira")~ THEN ~*Khalid glances over his shoulder at Jaheira, who has fallen slightly behind to gather medicinal flowers.* You kn-know, m-my wife, J-J-Jaheira was b-b-born in Tethir. Sh-she hasn’t ever w-wanted to go b-b-back even to visit. Perhaps you m-might m-mention to her th-that there's someone there who m-might be able to help m-me.~
== BTIMaeth IF ~InParty("Jaheira")~ THEN ~*Maethor, too, glances back, and then reaches out to give Khalid a swift, one-armed hug across the shoulders.* I’ll... I’ll try to reason with her.~
== %KHALID_BANTER% ~ You w-would d-do that for me?~
== BTIMaeth ~At the next town, I’ll draft a letter to Feywarden Elaerlír. *With her left hand, Maethor draws back the long, loose hair over her left ear, revealing the end of a long, whitish scar beginning behind her ear and running upwards across the back of her skull.* The best clerical skill cannot erase pain, Khal-hig. Only intense desire to train it and control it. Do you understand?~
== %KHALID_BANTER% ~I do.~
== BTIMaeth ~Then you are a brave man. Braver than…than you know. Remember that.~
EXIT

//45

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Khalid")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Khalid",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorKhalid1","GLOBAL",1)
Global("MaethorKhalid2","GLOBAL",0)
See("Khalid")~THEN BTIMaeth MaethorKhalid1
~Have…have you ever tried singing, Khalid… Or chanting? If you want to perform magic, you need a steady voice.~
DO ~SetGlobal("MaethorKhalid2","GLOBAL",1)~
== %KHALID_BANTER% ~Singing, M-M-Maethor? What do you m-mean?~
== BTIMaeth ~One thing Feywarden Elaerlír made me do... when I was training with…with him was singing. Of course, Blades of Sahadrian like…like me have to sing praise to Corellon. But with practice, I found it worked well. *sings* Blessed Corellon, I call upon thy mighty hand to aid me. In thy mercy, see beyond my faults and make of me thy perfect vessel to do thy will...~
== %KHALID_BANTER% ~*Khalid smiles.* Th-that was very p-p-pretty, M-Maethor. C-could I try that? M-m-my voice isn’t as n-nice…~
== BTIMaeth ~Sing the words to...uh...something you know well. A poem, perhaps?~
== %KHALID_BANTER% ~*Khalid nods.*I do know a p-p-poem. S-s-something I once gave to J-J-Jaheira. What m-m-melody?~
== BTIMaeth ~*Maethor pauses, thinking.* Do you…do you know “Hei-Corellon”? What…what some call the “Arrow Song”?~
== %KHALID_BANTER% ~*Khalid laughs.* Oh gods, M-Maethor!  Th-that’s an old one! You aren’t t-trying to convert m-m-me, are you?~
== BTIMaeth ~*Maethor smiles and raises both hands in a shrug.*~
== %KHALID_BANTER% ~*Slowly, and softly, Khalid begins. Hesitantly, he sings, working hard to both remember the words of the poem and to put those words to the bright melody of Corellon’s most famous prayer*:  “Loving in truth, and fain in verse my love to show, / That she, dear she, might take some pleasure of my pain, / Pleasure might cause her read, reading might make her know, / Knowledge might pity win, and pity grace obtain,— *Khalid breaks off suddenly, startled at the fluidity of his singing.* B-b-by Silvanus! *He stops dead in the road, grabs Maethor by the shoulders, and firmly kisses her lips.* It works!~
DO ~SetGlobal("MaethorKhalidKissed","GLOBAL",1)~
== %JAHEIRA_BANTER% IF ~InParty("Jaheira")IsValidForPartyDialog("Jaheira")~ THEN ~Khalid?~
== BTIMaeth IF ~InParty("Jaheira")~ THEN ~*Maethor’s eyes widen, looking over Khalid’s shoulder, draws back, and subtly points.*~
== %KHALID_BANTER% IF ~InParty("Jaheira")~ THEN ~*Khalid half-turns, seeing his wife glowering at him, and swallows hard.* Remember this, J-J-Jaheira-love? *He continues singing, seeming somehow taller and more sure of himself*: 'I sought fit words to paint the blackest face of woe; / Studying inventions fine, her wits to entertain, / Oft turning others' leaves to see if thence would flow / Some fresh and fruitful showers upon my sun-burned brain. / But words came halting forth, wanting invention's stay; / Invention, nature's child, fled step-dame Study's blows, / And others' feet still seemed but strangers in my way. / Thus, great with child to speak, and helpless in my throes, / Biting my truant pen, beating myself for spite, / Fool, said my muse to me, look in thy heart and write.'~
EXIT

//46 (Kivan:7)

CHAIN
IF WEIGHT #-2
~InParty("Kivan")
InParty("TIMaeth")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("KivanMaethor1","GLOBAL",0)
See("TIMaeth")~ THEN %KIVAN_BANTER% KivanMaethor1
~Ai, Maethor! Le suilon.~
DO ~SetGlobal("KivanMaethor1","GLOBAL",1)~
== BTIMaeth ~And I you, kind sir. You are?~
== %KIVAN_BANTER% ~Mae l'ovannen; nin heniol. I eneth nîn Kivan. Pedil edhellen?~
== BTIMaeth ~Yes, but I've been forced to learn several different dialects in my life. My grammar is probably a bad mixture.~
== %KIVAN_BANTER% ~Ae. Mi van l'onnen?~
== BTIMaeth ~Ú-iston. I am told that my mother greatly enjoyed travelling. But I only remember the forest of Tethir, so I suspect she settled there and thereafter restrained her wandering to places nearby. Am man theled isto anírol?~
== %KIVAN_BANTER% ~I nîf lîn iston. I nost lîn iston?~
== BTIMaeth ~You may find me familiar, but I do not remember you. Ma istanyel? Mi van dorthanneg?~
== %KIVAN_BANTER% ~Dorthannen mi Shilmista.~
== BTIMaeth ~It's possible. My family is originally from Cormanthyr, but they scattered. If I was ever there myself, i menn vaernîn, I was too small to remember. *Laughs* I lam nîn... úmaen. I would be blessed if you would correct me when I speak badly.~
== %KIVAN_BANTER% ~Cí anirol, viluichén.~
EXIT

//47

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Kivan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Kivan",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("KivanMaethor1","GLOBAL",1)
Global("MaethorKivan1","GLOBAL",0)
See("Kivan")~ THEN BTIMaeth MaethorKivan1
~*Maethor raises her long bow, aiming carefully at the distant target. She struggles with the bow, her arm trembling with the effort of staying at full extension. Kivan is working nearby, involved in examining the fletching of his arrows, but, seeing her distress, replaces the arrows he has been mending in his quiver and steps over to her.~
= ~He stands behind her, his half-embrace steadying her extended arm and helping her pull the bowstring taut. She glances over her shoulder, surprised; his face is relaxed, but impassive, intent on guiding her aim. At his nod, she releases the bowstring. Her arrow flies true, striking the center of the target. Kivan releases her arm and steps back, mildly amused.*~
DO ~SetGlobal("MaethorKivan1","GLOBAL",1)~
== %KIVAN_BANTER% ~Sai quel!~
== BTIMaeth ~Le hannon.~
== %KIVAN_BANTER% ~*Kivan shrugs*. That bow is too long for your arm, ben tithen. You would be better off using a smaller composite bow or a short bow.~
== BTIMaeth ~I agree. But that bow was carried by my great-grandfather. It and his longsword are modeled on the chosen weapons of Corellon. They've been blessed. I was very happy to have inherited them.~
== %KIVAN_BANTER% ~*Kivan nods*. It feels like an excellent weapon, Maethor. I understand your attachment to it. My beloved Deheriana gave me an equally fine bow on our wedding day.~
== BTIMaeth ~What happened to it?~
== %KIVAN_BANTER% ~It was taken from me when she was slain. I still miss the feel of it in my hand.~
== BTIMaeth ~Amin hiraetha.~
== %KIVAN_BANTER% ~Nevermind, mîr bîn. If you like, I can teach you how to manage your bow better.~
== BTIMaeth ~I...I'd be honored.~
EXIT

//48

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Kivan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Kivan",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("KivanMaethor1","GLOBAL",1)
Global("MaethorKivan1","GLOBAL",0)
See("Kivan")~ THEN BTIMaeth MaethorKivan1
~*Maethor raises his long bow, aiming carefully at the distant target. He struggles with the bow, his arm trembling with the effort of staying at full extension. Kivan is working nearby, involved in examining the fletching of his arrows, but, seeing his distress, replaces the arrows he has been mending in his quiver and steps over to him.~
= ~He stands behind him, his half-embrace steadying his extended arm and helping him pull the bowstring taut. He glances over his shoulder, surprised; Kivan's face is relaxed, but impassive, intent on guiding his aim. At his nod, Maethor releases the bowstring. His arrow flies true, striking the center of the target. Kivan releases Maethor's arm and steps back, mildly amused.*~
DO ~SetGlobal("MaethorKivan1","GLOBAL",1)~
== %KIVAN_BANTER% ~Sai quel!~
== BTIMaeth ~Le hannon.~
== %KIVAN_BANTER% ~*Kivan shrugs*. That bow is too long for your arm, ben tithen. You would be better off using a smaller composite bow or a short bow.~
== BTIMaeth ~I agree. But that bow was carried by my great-grandfather. It and his longsword are modeled on the chosen weapons of Corellon. They've been blessed. I was very happy to have inherited them.~
== %KIVAN_BANTER% ~*Kivan nods*. It feels like an excellent weapon, Maethor. I understand your attachment to it. My beloved Deheriana gave me an equally fine bow on our wedding day.~
== BTIMaeth ~What happened to it?~
== %KIVAN_BANTER% ~It was taken from me when she was slain. I still miss the feel of it in my hand.~
== BTIMaeth ~Amin hiraetha.~
== %KIVAN_BANTER% ~Nevermind, mîr bîn. If you like, I can teach you how to manage your bow better.~
== BTIMaeth ~I...I'd be honored.~
EXIT

//49

CHAIN
IF WEIGHT #-2
~InParty("Kivan")
InParty("TIMaeth")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
PartyRested()
CombatCounter(0)
!See([ENEMY])
Global("MaethorKivan1","GLOBAL",1)
Global("KivanMaethor2","GLOBAL",0)
See("TIMaeth")~ THEN %KIVAN_BANTER% KivanMaethor2
~Awake, Maethor! *shaking her.* Daro i nírnaeth lîn!~
DO ~SetGlobal("KivanMaethor2","GLOBAL",1)~
== BTIMaeth ~*Groggy.* Ai!! Kivan! Leave off! I'm awake!~
== %KIVAN_BANTER% ~You greatly worried me, mîr bîn! I heard your groaning and your weeping and could not bear to ignore them.~
== BTIMaeth ~I was remembering that final trip to Amn. Naneth and Cýrontîr. *Her eyes widen in horror.* What did I show you?~
== %KIVAN_BANTER% ~Everything, young one. I came upon you crying alone in the wood. I took your face in my hands and your eyes opened, drawing me into your suffering. In reverie, I was alongside you under the wagon. I saw your mother ravished, multilated and murdered and Cýrontîr fled to Arvanaith as you clung to his bloody shirt. You do not ever mention what was done to you, but I observed every blow. Every kick. And your dishonor. Were I not already stone from my own pain, I would weep with you.~
== BTIMaeth ~Then you know...~
== %KIVAN_BANTER% ~Too much and yet not enough. I would know if those who attacked you were ever made to answer for their crimes. Do you know of Shevaresh, little one? You have cause equal to mine own since you lost both your mother and i venn lîn. *He touches the ring at her throat.* Have the murderers of your beloved faced your blade?~
== BTIMaeth ~Revenge was taken from me during my recovery from my injuries. As soon as I could bear visitors, Sir Tybalt and Sir Finnilithui came to see me, bearing sketches they had made of every rioter left dead. The Knights of several Orders worked together; they were very thorough, although they were not sure if the warparty's leader had been slain. In any case, my Lord Corellon did not allow me to seek my own vengeance. He already had purpose for my tears.~
== %KIVAN_BANTER% ~That is both a blessing and a pity. It would have been better had you been able to take the blood of the ringleader. I swear to you, ben tithen, that if we ever run across him I shall have his blood for you. His face is now branded in my memory.~
== BTIMaeth ~I would welcome it. Perhaps I might seek a similar vengeance in helping you slay Tazok. Take my own vengeance against the rapist who hurt your beloved. You want to take his heart, but permit me to cut loose i buntl dîn.~
== %KIVAN_BANTER% ~I would not deny you that pleasure, mîr bîn. Annon i dhawen angin.~
EXIT

//50

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Kivan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Kivan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("KivanMaethor2","GLOBAL",1)
Global("MaethorKivan2","GLOBAL",0)
See("Kivan")~ THEN BTIMaeth MaethorKivan2
~Melloneg, in the time we've traveled together, you've always been honest with me. Forgive me if I am prying... But there is something I wish to know.~
DO ~SetGlobal("MaethorKivan2","GLOBAL",1)~
== %KIVAN_BANTER% ~You were rightly named 'warrior,' Maethor. We have fought side by side and shed our blood to protect each other and the party. There is little I would not tell you.~
== BTIMaeth ~Still, you do not have to answer if it pains you... When you first met Deheriana, how did you know that she would welcome your affection?~
== %KIVAN_BANTER% ~Little things. The first time I spoke to her, she blushed and smiled. Once I heard her whispering to her friend when I was near and when I looked over, she was gazing at me and blushing. Then, her smile lit up her eyes. She would often be near me when ú-boe... when it was not necessary. It was not hard to see.~
== BTIMaeth ~But... is it harder to tell... with men than women? It seems so confusing how to know for certain.~
== %KIVAN_BANTER% ~Men are far less subtle than women. I would think it would be much easier. I believe you would know if a man was interested in you. Is there someone whose love you seek?~
== BTIMaeth ~*sighs* I dare not ask for that much. I only wish that my feelings could be openly expressed. *Rises.* I'm...I'm tired and I've begun to talk nonsense. Good night, my friend.~
== %KIVAN_BANTER% ~Posto vae.~
EXIT

//51

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Kivan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Kivan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorKivan2","GLOBAL",1)
Global("MaethorKivan3","GLOBAL",0)
See("Kivan")~ THEN BTIMaeth MaethorKivan3
~Peditham hi sui vellyn, Kivan? Iesten?~
DO ~SetGlobal("MaethorKivan3","GLOBAL",1)~
== %KIVAN_BANTER% ~*Kivan nods, but doesn't look at Maethor.* Be iest gîn. Man anírog?~
== BTIMaeth ~You have been distant lately. I was...concerned. I do not want awkwardness between us. I enjoy your company and your... mellonas... your friendship.~
== %KIVAN_BANTER% ~Am man theled? O hi bith gîn nauthannen, Maethor. Anírog melethron, ben neth? *He looks at Maethor, finally, scowling.* Nin treno! Sí a si!! Nîn hoitha anírog!? Nathon i hauthwaid gîn harthog!?~
== BTIMaeth ~I don't know what to say to that. Al!! Han u-aniron... Goheno nin!~
== %KIVAN_BANTER% ~*Kivan grabs Maethor by the shoulders and holds her at arm's length, looking at her intently.* I thîr gîn ah i hin gîn sui...Deheriana, henig. It took me awhile to recognize what I was seeing, but now I see the resemblance clearly. A family trait, I suppose. But you speak of love. Of wanting to know the heart of one you love. I find myself becoming angry.~
== BTIMaeth ~Naethen! I'm so sorry...~
== %KIVAN_BANTER% ~*Kivan raises a hand to silence her, controlling himself with effort* Do not be sorry! I know I should not be angry with you. Much of this I believe you cannot help. But I will be angry at my own folly. You seemed familiar to me from our first meeting. That made me less cautious than I should have been with a stranger. Further, you are kind and affectionate. You are also very young. You speak with the openness of a child. All of this was comforting to me. Especially since I once wished for a child with Deheriana... one like you, perhaps. And then to find that you've been hurt. I grow close to my goal of vengeance, but suddenly I find I look for reasons to delay. And your recent questions... I fear I have encouraged your affection out of my own weakness. That was a mistake. *He gently shoves her away* I cannot think about this now. Leave me be.~ DO ~SetGlobal("MaethorAccused","GLOBAL",1)~
EXIT

//52

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Kivan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Kivan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("MaethorKivan3","GLOBAL",1)
Global("MaethorKivan4","GLOBAL",0)
See("Kivan")~ THEN BTIMaeth MaethorKivan4
~Tolo anin naur, Kivan. It is nearly my watch. Ci maer?~
DO ~SetGlobal("MaethorKivan4","GLOBAL",1)~
== %KIVAN_BANTER% ~Ring enni.~
== BTIMaeth~Then you must warm yourself. Come here... you can have my seat. I'm going.~
== %KIVAN_BANTER% ~*Grabs her arm as she passes* Wait. Boe pedim. I have composed myself. Forgive my former harshness.~
== BTIMaeth ~*Maethor shakes her head* There is nothing to forgive. I, too, have been thinking. You spoke truth. I do feel great love for you. But that love is not mingled with desire. *sighs.* Perhaps in a different time and place such...affection...might have been meant differently. But here? Now? No. I understand your bond with Deheriana far more deeply than you think and honor your love for her. Please believe that I would never sully that bond by making unwanted advances. Forgive me; my questions to you concerned my foolish want of...of someone else.~
== %KIVAN_BANTER% ~I already know that, Maethor. You do not have to abase yourself or make light of your considerable charms. My heart is given away, but what remains does recognize mîr bîn...a small treasure. Instead of being forgiven, you should forgive a kinsman's undeserved wanton accusations. *Pauses.* May I ask you a personal question?~
== BTIMaeth ~Cí anirog.~
== %KIVAN_BANTER% ~Your mother is gone. But... Mas i ada gîn?~
== BTIMaeth ~Ú-iston. My mother was the lover of many men, but not one ever claimed to be my father.~
== %KIVAN_BANTER% ~The child without a father lacks guidance in many of the ways of life. I am sorry for your loss. *Looks away* I have accused you of wanting me as a lover. I see now, rather, that you sought a guide. Mellonig, I must honor Shevaresh with bloody vengeance, but he is not a kindly god. He is indifferent to my suffering. In my worst moments, when I miss my beloved Deheriana most, I am still a man. And I am not wholly blind to you.~
== BTIMaeth ~*Maethor retreats*~
== %KIVAN_BANTER% ~Hold! Av-'osto! Let me finish... I can not love a woman other than my dear wife. But I have grown...accustomed...to you and find I can honor your affection as well. I pray our mellonas will flourish for as long as I live and after, when we meet again in Arvanaith. Don't look at me with such confusion, Maethor. This is not about lovemaking. Far from it. In reverie, I recalled the warriors' bond. The love shared by those who stand back to back before a common foe. Do not fear me. *He steps over to her, drawing his hunting knife. He takes her hand, his blade hovering over her palm.* Would you share iâr...blood...with me, gwathel tithen?~
== BTIMaeth ~*nods, leaving her hand outstretched.* I will not shrink from your blade, kinsman.~
== %KIVAN_BANTER% ~*Expressionlessly, he makes a long, thin cut down her palm, then a similar one on his own. He takes her hand, the blood beginning to run freely from between their clasped fingers.* Gwathelenin. My sister. I swear by this bond to honor and protect you and yours.~
== BTIMaeth ~Gwadorenin. My brother. I swear by this bond to honor and protect you and yours.~
== %KIVAN_BANTER% ~No sui ebent. May it be as we have sworn.~
EXIT

//53 (Minsc:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Minsc")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorMinsc1","GLOBAL",0)
See("Minsc")~ THEN BTIMaeth MaethorMinsc1
~Aaaaahhhhh!! What on Faerûn is THAT?!!~
DO ~SetGlobal("MaethorMinsc1","GLOBAL",1)~
== %MINSC_BANTER% ~*Laughs.* It seems that Boo likes you, Maethor.~
== BTIMaeth ~Well, I'm less fond of him. Especially when he runs up my leg! AAAAGGGGHHH! PLEASE get him off me! I REALLY can't stand mice crawling on me.~
== %MINSC_BANTER% ~But he just wants to get to know you. He usually isn't so friendly. And he's not a mouse. Quite a deadly miniature space hamster is my friend the mighty Boo!~
== BTIMaeth ~He now knows me better than most of the male population!! AGHHHH!! Corellon help me... He's gotten in my armor! I think I'm going to be sick!. Ack! WHAT is he doing to my ear!!?~
== %MINSC_BANTER% ~He probably wants to tell you something himself. His voice is very faint, you know.~
== BTIMaeth ~PLEASE MINSC!!! I BEG YOU!!~
== %MINSC_BANTER% ~Very well. *Plucking Boo out of the space between Maethor's paldron and her neck.* Now, Boo, do not be offended! You know some ladies are just too ticklish for your attentions.~
EXIT

//54 (Montaron:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Montaron")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Montaron",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("MaethorMontaron1","GLOBAL",0)
See("Montaron")~ THEN BTIMaeth MaethorMontaron1
~What on Faerûn.... Oh Gods, Montaron! Was that a rabbit?~
DO ~SetGlobal("MaethorMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% ~Never you mind, young 'un. He'll make a good stew tonight, he will!~
== BTIMaeth ~But I've never seen anything like it! You just snuck up on it and broke its neck with your bare hands!~
== %MONTARON_BANTER% ~Aye, I did! That's what we calls talent where I come from.~
== BTIMaeth ~Where I come from, it makes me glad that I don't need sleep...~
EXIT

//55 (Quayle:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Quayle")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Quayle",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("QuayleMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %QUAYLE_BANTER% QuayleMaethor1
~I see you need some help.~
DO ~SetGlobal("QuayleMaethor1","GLOBAL",1)~
== BTIMaeth ~Help? Doing what?~
== %QUAYLE_BANTER% ~In attracting the eye of that one you like so much...~
== BTIMaeth ~Well, truth be told, I prefer to just look. There's a lot less risk of making a fool out of myself.~
== %QUAYLE_BANTER% ~What kind of defeatist attitude is that? Are you really that big a coward that you'll not step up and speak?~
== BTIMaeth ~Look, Quayle, I admit I'm not as smart as you are... But I do have this big, pointy sword that tends to even up the difference, if you know what I mean.~
== %QUAYLE_BANTER% ~Suit yourself. See if I ever offer you good advice again.~
== BTIMaeth ~Do you promise?~
EXIT

//56 (Safana:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Safana")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Safana",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("SafanaMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %SAFANA_BANTER% SafanaMaethor1
~Tsk tsk.~
DO ~SetGlobal("SafanaMaethor1","GLOBAL",1)~
== BTIMaeth ~I beg your pardon?~
== %SAFANA_BANTER% ~How, darling, will you ever attract a man wearing such awful clothes?~
== BTIMaeth ~What? What's awful about them? They're clean...well, for the most part, anyway...and don't have any rips that I can see.~
== %SAFANA_BANTER% ~*Sighs dramatically.* What's NOT awful? That, sweetest, is a man's tunic. AND a man's pair of breeches. They're old, faded, and too big for you in three directions. Your clothing should show off your womanly curves...Like mine do. Which reminds me...You need to do something about your armor.~
== BTIMaeth ~*Sighing.* Because it's made for a man and doesn't show off my womanly curves... Like yours?~
== %SAFANA_BANTER% ~Exactly! Now you're getting my point, honey!~
== BTIMaeth ~But why on Faerûn would I want to do that? Distraction is not the usual technique for a Knight. We're meant to be 'tanks,' as they say in Maztica.~
== %SAFANA_BANTER% ~True, but that's usually because knights do not have such fine, long legs.~
== BTIMaeth ~But doesn't that leave my legs unprotected? And much of my chest?~
== %SAFANA_BANTER% ~Perhaps. But whenever someone sees you, they'll be thinking about that other female elf paladin... You don't want to look bad beside that paladin of Tyr, do you? You talk about your deity Corellon liking beautiful things... you should be beautiful.~
== BTIMaeth ~All of that is true, but still, doesn't whatshername take the risk of getting an arrow in her unprotected throat?~
== %SAFANA_BANTER% ~Many have wondered about that. But 'female armor' has been a feature of the...erm...artwork for forty years, Maethor.~
== BTIMaeth ~Oh. *Sarcastically.* But did G.G. mean for me to wear 'bikini armor.'?~
== %SAFANA_BANTER% ~*laughs.* Check your CHA, my dear...~
EXIT

//57 (Shar-Teel:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Sharteel")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("SharteelMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %SHARTEEL_BANTER% SharteelMaethor1
~Ho there, girl!~
DO ~SetGlobal("SharteelMaethor1","GLOBAL",1)~
== BTIMaeth ~You may call me Maethor, Shar-Teel. I mislike being addressed as 'girl' by one I barely know.~
== %SHARTEEL_BANTER% ~Fine, fine. Maethor. You know I don't fight women, right?~
== BTIMaeth ~*Nods.* I am told you prefer the challenge of fighting men.~
== %SHARTEEL_BANTER% ~Indeed. But in your case, I am almost tempted to make an exception.~
== BTIMaeth ~And why would that be?~
== %SHARTEEL_BANTER% ~Normally, I do not find it to be a challenge to fight another woman. But you're different. You're far stronger, far more aggressive in battle, and well-trained in your weapons. I even wonder at the possibility that you might best me.~
== BTIMaeth ~I am flattered by your assessment of my abilities. But I assure you it would not be in your best interests to challenge me. I am well trained by masters of the warrior trade. And have been in training probably as long as you have been alive. You seem to have a slight advantage in brute strength. But I doubt it would be equal to the challenge offered by my higher stamina and superior skill.~
== %SHARTEEL_BANTER% ~*Laughs.* Now I'm really tempted! I haven't heard such confidence from another woman in ages!~
== BTIMaeth ~*Sigh.* Any time, Shar-Teel. My only concern would be that I might lose control in the heat of battle and kill you. Not to mention that <CHARNAME> might not wish for party members to waste time fighting each other.~
== %SHARTEEL_BANTER% ~*Grinning.* 'Concern' is sometimes the refuge of the coward, Maethor.~
== BTIMaeth ~Perhaps. But more often it is an expression of intelligence. You are a clever woman, Shar-Teel. Let me ask you a question I think will clarify the situation. *Her eyes flash red.* Do you think it's a good idea for you to challenge a chained tiefling? Would you risk your life betting that the chain will hold?~
== %SHARTEEL_BANTER% ~*Backs away slightly.* Eh! Those are just words, elf.~
== BTIMaeth ~Will you not answer my question?~
== %SHARTEEL_BANTER% ~Well, I said I was tempted to make an exception. I see that my policy of not fighting another woman is a good one. I do not need an adversary. Not if we're in the same party.~
== BTIMaeth ~Well said.~
EXIT

//58

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Skie")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Skie",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("SkieMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %SKIE_BANTER% SkieMaethor1
~Maethor! Come over here this instant!~
DO ~SetGlobal("SkieMaethor1","GLOBAL",1)~
== BTIMaeth ~Yes, Skie! Is anything wrong?~
== %SKIE_BANTER% ~Oh yes! Come here next to me and sit down!~
== BTIMaeth ~*Confused* Um... Very well. What.. OWWWW!!!~
== %SKIE_BANTER% ~Hold still! I am so tired of seeing your braid unravel all day in front of me when it would be so easy to fix it right the first time!~
== BTIMaeth ~OW! What are you doing?~
== %SKIE_BANTER% ~I'm brushing your hair. I've got some combs to give you, too. A beautiful woman should always look her best! After all, that's how I won over my darling Eldoth.~
== BTIMaeth ~Ouch! That hurts!~
== %SKIE_BANTER% ~It wouldn't if you would brush it out during every break. Oh! I also have a lipstick for you. The color doesn't suit me at all, so I thought you could use it.~
== BTIMaeth ~Lipstick? I don't...~
== %SKIE_BANTER% ~I know you don't. But you will. Consider it an act of charity on my part. The noble lady must always show compassion towards the lower classes. And the next time we're in Baldur's Gate, I mean to introduce you to Gentilesse, the lady who gives me my facials and my manicures! Your nails are absolutely disgusting!~
== BTIMaeth ~*Looking at her gauntlets.* How can you tell?~
== %SKIE_BANTER% ~Oh, I don't have to look. I know they're disgusting. I doubt you even know what an orange stick IS... Gentilesse also does pedicures, but...well, one challenge at a time is what I always say...!~
EXIT

//59

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Skie")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Skie",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("SkieMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %SKIE_BANTER% SkieMaethor1
~Maethor! Come over here this instant!~
DO ~SetGlobal("SkieMaethor1","GLOBAL",1)~
== BTIMaeth ~Yes, Skie! Is anything wrong?~
== %SKIE_BANTER% ~Oh yes! Come here next to me and sit down!~
== BTIMaeth ~*Confused* Um... Very well. What.. OWWWW!!!~
== %SKIE_BANTER% ~Hold still! I am so tired of seeing your braid unravel all day in front of me when it would be so easy to fix it right the first time!~
== BTIMaeth ~OW! What are you doing?~
== %SKIE_BANTER% ~I'm brushing your hair. I've got some combs to give you, too. One should always look one's best... Especially if you're a paladin! After all, that's how I won over my darling Eldoth.~
== BTIMaeth ~Ouch! That hurts!~
== %SKIE_BANTER% ~It wouldn't if you would brush it out during every break. And! The next time we're in Baldur's Gate, I mean to introduce you to Gentilesse, the lady who gives me my facials and my manicures! Your nails are absolutely disgusting!~
== BTIMaeth ~*Looking at her gauntlets.* How can you tell?~
== %SKIE_BANTER% ~Oh, I don't have to look. I know they're disgusting. Men's nails always are!  Well...except for my sweet Eldoth...he's ALWAYS well turned-out. I doubt you even know what an orange stick IS... Gentilesse also does pedicures, but...well, one challenge at a time is what I always say...!~
EXIT

//60

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Skie")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Skie",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("SkieMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %SKIE_BANTER% SkieMaethor1
~Maethor? May I have a word with you?!~
DO ~SetGlobal("SkieMaethor1","GLOBAL",1)~
== BTIMaeth ~Yes, Skie? Do you need something?~
== %SKIE_BANTER% ~I need your help. I'd like you to help me plan my wedding.~
== BTIMaeth ~Oh. *Confused.* I don't think I can be much help, though. As the daughter of a Duke, I imagine that you have a lot better idea of how to plan a wedding than I do.~
== %SKIE_BANTER% ~Nonsense. You have something I will never have and I need your advice.~
== BTIMaeth ~Oh. Very well.~
== %SKIE_BANTER% ~Well, you know that I'm planning to have a big wedding with my darling Eldoth. I've finally decided on the theme; I want an Elven wedding.~
== BTIMaeth ~*Blinks.*~
== %SKIE_BANTER% ~So what do you think?~
== BTIMaeth ~Um... Neither of you are elves.~
== %SKIE_BANTER% ~No, but what difference does THAT make?~
== BTIMaeth ~Um...Because only elves have Elven weddings?~
== %SKIE_BANTER% ~*Pouts.* You are so literal, Maethor! I meant I wanted a wedding like the weddings elves have! Now, how would I go about it?~
== BTIMaeth ~Look, Skie... Elven weddings are usually pretty simple. Sometimes only the man and woman exchanging promises of love and fidelity. It isn't usually...~
== %SKIE_BANTER% ~Oh, I know that! I was thinking of, like, what it would look like if Queen Ellesime was getting married! I had this truly amazing image of lots of gauzy fabric and sparkles and shimmery things. Maybe even a dress with wings!~
== BTIMaeth ~Queen Ellesime? But she doesn't have wings.~
== %SKIE_BANTER% ~Well, you can't have an elven wedding without wings! Or glitter!~
== BTIMaeth ~Uhh.... You just figure out what you have in mind and...and maybe I can help. You know...from a distance.~
== %SKIE_BANTER% ~Great! And I had this idea for bringing in unicorns and pegasi... just for that special touch... Oh! And crystal. Lots of it...~
EXIT

//61 (Viconia:6)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Viconia")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("ViconiaMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %VICONIA_BANTER% ViconiaMaethor1
~*Walks up behind Maethor and shoves her.* Out of my way, iblith inlul.~
DO ~SetGlobal("ViconiaMaethor1","GLOBAL",1)~
== BTIMaeth ~*stumbles, but manages to keep her feet and refuses to step away.* Keep your hands off me, suni 'waur!~
== %VICONIA_BANTER% ~*The two women glare at each other.* You are testing my patience, darthiir jalil. Move!~
== BTIMaeth ~*Gritting her teeth and laying her hand on the hilt of her longsword.* <CHARNAME> has allowed you to travel with us. For that reason only will I tolerate your loathsome presence.~
== %VICONIA_BANTER% ~Streeaka zheelen. Reckless words, small one. Take care or I'll make you eat them.~
== BTIMaeth ~Know now, fuinchên. It would please my lord Corellon greatly were I to adorn my armor with your fair hair. I am sworn enemy of the spider-goddess.~
== %VICONIA_BANTER% ~*laughs* I am not afraid of your threats. Nor your promises to that self-serving jaluk you kneel in front of. But perhaps your mood might improve to learn that I follow Shar, the night goddess.~
== BTIMaeth ~I suppose that makes you deleben...less loathesome...but I am at a loss to say how, exactly.~
== %VICONIA_BANTER% ~You have an admirable feistiness, little darthiir. I shall spare you for now. Still... your dawdling pace on the road is maddening. Either walk faster or make way for those greater than you!!~
EXIT

//62

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Viconia")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("ViconiaMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %VICONIA_BANTER% ViconiaMaethor1
~*Walks up behind Maethor and shoves him.* Out of my way, iblith inlul.~
DO ~SetGlobal("ViconiaMaethor1","GLOBAL",1)~
== BTIMaeth ~*stumbles, but manages to keep his feet and refuses to step away.* Keep your hands off me, suni 'waur!~
== %VICONIA_BANTER% ~*They glare at each other.* You are testing my patience, darthiir jaluk. Move!~
== BTIMaeth ~*Gritting his teeth and laying his hand on the hilt of his longsword.* <CHARNAME> has allowed you to travel with us. For that reason only will I tolerate your loathsome presence.~
== %VICONIA_BANTER% ~Streeaka zheelen. Reckless words, small one. Take care or I'll make you eat them.~
== BTIMaeth ~Know now, fuinchên. It would please my lord Corellon greatly were I to adorn my armor with your fair hair. I am sworn enemy of the spider-goddess.~
== %VICONIA_BANTER% ~*laughs* I am not afraid of your threats. Nor your promises to that self-serving jaluk you kneel in front of. But perhaps your mood might improve to learn that I follow Shar, the night goddess.~
== BTIMaeth ~I suppose that makes you deleben...less loathesome...but I am at a loss to say how, exactly.~
== %VICONIA_BANTER% ~You have an admirable feistiness, little darthiir jaluk. Probably makes you better wun orlingg. I shall spare you for now. Still... your dawdling pace on the road is maddening. Either walk faster or make way for those greater than you!!~
EXIT

//63

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Viconia")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorViconia1","GLOBAL",0)
See("Viconia")~THEN BTIMaeth MaethorViconia1
~What is your name, dark one? ~
DO ~SetGlobal("ViconiaMaethor1","GLOBAL",1)~
== %VICONIA_BANTER% ~*covers her nose.* Keep your distance! Do you ever wash, darthirii siffat?~
== BTIMaeth ~Of course I do. Surely you observed it this morning. Or any morning? Or are you not up that early?~
== %VICONIA_BANTER% ~Then why must you perpetually reek of male sweat? It's like standing in the company of a ssindossa. *glances at Maethor's armor.* Nevermind. I take it that you follow that strange custom of wearing the battle-garb of your father. *disgusted.* You might try cleaning it once in a while.~
== BTIMaeth ~Just tell me your name before I entirely lose interest in knowing it. If we must work together, we should at least be acquainted.~
== %VICONIA_BANTER% ~Viconia deVir.~
== BTIMaeth ~*Reflecting.* DeVir? The house defeated by Do'Urden in the Year of the Hound? *smirks.* 'Ulu z'hin maglust dal qu'ellar lueth valsharess zhah ulu z'hin wund lil phalar.' *spits.*~
== %VICONIA_BANTER% ~'To walk apart from House and Queen is to walk into the grave.' Yes. I left the Underdark perferring exile. You understand the low tongue?~
== BTIMaeth ~I was taught to know my enemy's words, but I mislike the feel of it on my tongue. You won't hear me speak it again.~
== %VICONIA_BANTER% ~*mocking.* I am truly grateful for your restraint. Your k'shish accent is intolerable.~
== BTIMaeth ~Well?~
== %VICONIA_BANTER% ~What now, darthiir nek?~
== BTIMaeth ~Do you not wish to know my name?~
== %VICONIA_BANTER% ~*Amused.* I never said I did. Until next time, tr'inno.~
EXIT

//64

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Viconia")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorViconia1","GLOBAL",0)
See("Viconia")~THEN BTIMaeth MaethorViconia1
~What is your name, dark one? ~
DO ~SetGlobal("ViconiaMaethor1","GLOBAL",1)~
== %VICONIA_BANTER% ~*covers her nose.* Keep your distance! Do you ever wash, darthirii siffat?~
== BTIMaeth ~Of course I do. Surely you observed it this morning. Or any morning? Or are you not up that early?~
== %VICONIA_BANTER% ~Then why must you perpetually reek of sweat? It's like standing in the company of a ssindossa. *glances at Maethor's armor.* Nevermind. I take it that you wear the battle-garb of your father. *disgusted.* You might try cleaning it once in a while.~
== BTIMaeth ~Just tell me your name before I entirely lose interest in knowing it. If we must work together, we should at least be acquainted.~
== %VICONIA_BANTER% ~Viconia deVir.~
== BTIMaeth ~*Reflecting.* DeVir? The house defeated by Do'Urden in the Year of the Hound? *smirks.* 'Ulu z'hin maglust dal qu'ellar lueth valsharess zhah ulu z'hin wund lil phalar.' *spits.*~
== %VICONIA_BANTER% ~'To walk apart from House and Queen is to walk into the grave.' Yes. I left the Underdark perferring exile. You understand the low tongue?~
== BTIMaeth ~I was taught to know all of my enemy's words, both High and Low, but I mislike the feel of it on my tongue. You won't hear me speak it again.~
== %VICONIA_BANTER% ~*mocking.* I am truly grateful for your restraint. Your k'shish accent is intolerable.~
== BTIMaeth ~Well?~
== %VICONIA_BANTER% ~What now, darthiir nek?~
== BTIMaeth ~Do you not wish to know my name?~
== %VICONIA_BANTER% ~*Amused.* I never said I did. I only would 'ka ssinssrinith vithlyrr tausst.'~
== BTIMaeth ~That will never happen. Not here, not now!~
== %VICONIA_BANTER% ~*Laughs.* I said 'if I would...' I don't. Until next time, tr'inno.~
EXIT

//65

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Viconia")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("ViconiaMaethor1","GLOBAL",0)
See("TIMaeth")~THEN %VICONIA_BANTER% ViconiaMaethor1
~I have a question for you, darthiir inlul.~
DO ~SetGlobal("ViconiaMaethor1","GLOBAL",1)~
== BTIMaeth ~What do you want? I am in no mood for your taunts.~
== %VICONIA_BANTER% ~It concerns your religion. You follow the so-called Lifebringer, Corellon?~
== BTIMaeth ~I do. What of it?~
== %VICONIA_BANTER% ~I have observed your prowess as a warrior. It is apparently sufficient to earn the respect of <CHARNAME> and your companions. You might even survive to adulthood at this rate. But surfacer custom is perplexing...~
== BTIMaeth ~In what way?~
== %VICONIA_BANTER% ~I fail to understand why a female such as yourself would be willing harl'il'cik...to kneel...to a male.~
== BTIMaeth ~Are you mocking me, gûloreth? Corellon is no mere 'male' to dismiss. Or do you need a history lesson to remind you of how Araushnee was driven from Arvandor?~
== %VICONIA_BANTER% ~I trust you have heard the saying 'it is better to rule in the void than serve in paradise' and understand its application.~
== BTIMaeth ~I believe so. You suggest there is greater honor in stubborn insubordination--even if it leads to abasement and exile--than in service.~
== %VICONIA_BANTER% ~I begin to see why your intellect is considered to be...limited. Amongst my people, it is understood that not every jalil is meant to lead. There are those who, out of fear or perversity, are destined to be...subordinate.~
== BTIMaeth ~And you believe that I am one of those? That I am afraid to lead? I have shed blood for your unworthy hide without hesitation!~
== %VICONIA_BANTER% ~Oh no, little darthiir. I have not observed fear in you. No, I take you for the latter. I believe you enjoy your...place...beneath. Which leaves me with the supposition that you prefer harl'il'cik. *laughs dismissively* If <PRO_HESHE> willed it, would you kneel to please <CHARNAME> as readily as you kneel to please your god?~
== BTIMaeth ~No dhínen, suni 'waur!~
== %VICONIA_BANTER% ~*laughs.* As you wish... I have my answer.~
EXIT

//66 - after combat

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Viconia")
HPPercentLT("TIMaeth",90)
HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("ViconiaMaethor3","GLOBAL",0)
See("TIMaeth")~THEN %VICONIA_BANTER% ViconiaMaethor3
~Stupid child! I will cease healing you if you will not hold still!~
DO ~SetGlobal("ViconiaMaethor3","GLOBAL",1)~
== BTIMaeth ~Then so be it. The touch of your hands is vile.~
== %VICONIA_BANTER% ~*Shoving her back down.* Idiot! Hold! Still!!~ DO ~ForceSpell("TIMaeth",CLERIC_CURE_LIGHT_WOUNDS)~  //*spell-cast cure light wounds*
== BTIMaeth ~Rrrhhhaiccchhh!!!~
== %VICONIA_BANTER% ~There now. It should heal properly.~
== BTIMaeth ~I have done well today. You have seen how I deal with my enemies. Now do you think me subordinate?~
== %VICONIA_BANTER% ~*Gazes at her, curling her lip from distaste.* I think you one of the worst kind of fools--the sort that is blind to their own folly.~
== BTIMaeth ~Enlighten me, then, gûlui ryn.~
== %VICONIA_BANTER% ~Do you know how subordinate females are raised in the Underdark, darthiir?~
== BTIMaeth ~No. But I am sure that you will instruct me in your peoples' filthy custom.~
== %VICONIA_BANTER% ~It is said that a female born without proper ambition is lawfully a tool to be used by anyone; 'Il zhah har'luthus...she is subjugated.'*grinning.* You mock Qu'ellar DeVir, yet are shy about your own status. Tell me about your mother's house, darthiir inlul. Qu'ellar Miloneth...~
== BTIMaeth ~Go no further with this, Viconia...~
== %VICONIA_BANTER% ~I am told that you took the name of your teacher. Grenfell. Why? Surely it was not because you were ashamed of your birth qu'ellar!? Or was it? I am informed that your mother was a ssins d'aerth. Reassure me that you did not also...~
== BTIMaeth ~I'm warning you...~
== %VICONIA_BANTER% ~...s'xor lil we'han of all the jaluken of your house and you may yet acquire my respect. But I well know the signs....~
== BTIMaeth ~*Rising, drawing her sword.* Dar! Stop!~
== %VICONIA_BANTER% ~What did you beg for most? Wun lil norrs xor wun lil ick'neos?~
== BTIMaeth ~If you ever speak to me again... Or touch me... I rûth nîn grogathol, suni!~ //see coding for fight sequence.
EXIT

//67 (Xan:5)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Xan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Xan",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorXan1","GLOBAL",0)
See("Xan")~ THEN BTIMaeth MaethorXan1
~*Maethor approaches Xan cautiously, eyes wide.* A Moonblade! Suilad, Aran!  You...  You are one of the Greycloaks! The defenders of Evereska!  I am honored by your presence.~
DO ~SetGlobal("MaethorXan1","GLOBAL",1)~
== %XAN_BANTER% ~Alatúlië. Ma istal quet' Eldarin?~
== BTIMaeth ~Nácë. Istan quet' Eldarin. Saucare. The man who raised me was from Evermeet, but his lessons have had little practice in the intervening years. My dialect is a poor echo of the noble tongue.~
== %XAN_BANTER% ~Shall we speak common then? I have a question for you.~
== BTIMaeth ~Certainly. What do you wish to know?~
== %XAN_BANTER% ~*laughs bitterly*. I see before me 'hína asmacile'...a child with a sword. Fully adorned in Father's armor and shield, no doubt.  Tell me if this what our world has come to.  I do not know whether to laugh from the absurdity of seeing a young innocent turned stalwart defender or to weep that the once swollen ranks of experienced warriors have grown so thin.  Too many have left for Evermeet, or have died, leaving the rest of Faerûn to recruit such as this.~
== BTIMaeth ~I beg your pardon! Stand by my shoulder, Iarwain, and I'll show you how well this child can fight.~
== %XAN_BANTER% ~Oh, I do not doubt your talent and skill. Why, look at <CHARNAME>! Is that not the fresh face of youth as well?  What horror is life if children are made to abandon their toys to fight for ill-defined ideals and die for a land they barely know.~
== BTIMaeth ~I fight to protect our people--like you. There is no age that is safe in these times and no child too young for a blade. Back in fair Evereska, did you, by chance, hear tell of the Ten Black Days of Eleint? How alone we were in Tethir as our human neighbors took up fire and arms against us, burning our homes and murdering us? I was truly a child, then, Aran. My mother and I tried to leave, but not swiftly enough. She was ravished and slain by a mob of men. Had Evereska sent my cousins to defend us, I might have been able to keep playing with dolls. Instead, I saw Corellon's face in a looking glass made of blood and took up my elders' weapons! I do not deserve mockery.~
== %XAN_BANTER% ~I prefer you not defer to me, child, for our chosen work makes us comrades. Call me Xan and I shall call you...?~
== BTIMaeth ~Maethor Grenfell.~
== %XAN_BANTER% ~'Maethor.' Yes, of course. I should have known. *Sighs*. Well, then, 'Warrior,' I don't mock you. At one point or another, all of the elven lands have had to defend their existence.  I will not deny that our people have not been properly vigilant. But it grieves me to see you here before me.  When were you born? 1220, perhaps?  Later?  You cannot have seen many more than forty summers. It should never be the habit of our people to arm children.~
== BTIMaeth ~Am I not tall enough to wear armor? I have not noticed that the warriors of Cormanthyr were much bigger than me.~
== %XAN_BANTER% ~*waves a hand dismissively*. Yes, yes. I see your pretty toys. Family heirlooms, no doubt, passed from father to son until--at least in your case--there were no more men to wield them. Such is the legacy of Cormanthyr. All dead or deserted, except for their faithful brides and daughters.~
== BTIMaeth ~You have not answered my question. Only insulted me.~
== %XAN_BANTER% ~*Xan looks closely at Maethor's face*. I do see there is a little of something else in you--something not unknown considering your ancestry. Yes, you seem nearly ready to carry the duties of adulthood despite your years. But, if I were you, I would not call attention to your physical anomalies so casually. That would assuredly bring your death. And possibly of us all.~
EXIT

//68

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Xan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Xan",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorXanAlt","GLOBAL",0)
See("Xan")~ THEN BTIMaeth MaethorXan1
~*Maethor approaches Xan cautiously, eyes wide.* A Moonblade! Suilad, Aran!  You...  You are one of the Greycloaks! The defenders of Evereska!  I am honored by your presence.~
DO ~SetGlobal("MaethorXanAlt","GLOBAL",1)~
== %XAN_BANTER% ~Alatúlië. Ma istal quet' Eldarin?~
== BTIMaeth ~Nácë. Istan quet' Eldarin. Saucare. The man who raised me was from Evermeet, but his lessons have had little practice in the intervening years. My dialect is a poor echo of the noble tongue.~
== %XAN_BANTER% ~Shall we speak common then? I have a question for you.~
== BTIMaeth ~Certainly. What do you wish to know?~
== %XAN_BANTER% ~*laughs bitterly*. I see before me 'hína asmacile'...a child with a sword. Fully adorned in Father's armor and shield, no doubt.  Tell me if this what our world has come to.  I do not know whether to laugh from the absurdity of seeing a young innocent turned stalwart defender or to weep that the once swollen ranks of experienced warriors have grown so thin.  Too many have left for Evermeet, or have died, leaving the rest of Faerûn to recruit such as this.~
== BTIMaeth ~I beg your pardon! Stand by my shoulder, Iarwain, and I'll show you how well this child can fight.~
== %XAN_BANTER% ~Oh, I do not doubt your talent and skill. Why, look at <CHARNAME>! Is that not the fresh face of youth as well?  What horror is life if children are made to abandon their toys to fight for ill-defined ideals and die for a land they barely know.~
== BTIMaeth ~I fight to protect our people--like you. There is no age that is safe in these times and no child too young for a blade. Back in fair Evereska, did you, by chance, hear tell of the Ten Black Days of Eleint? How alone we were in Tethir as our human neighbors took up fire and arms against us, burning our homes and murdering us? I was truly a child, then, Aran. My mother and I tried to leave, but not swiftly enough. She was ravished and slain by a mob of men. Had Evereska sent my cousins to defend us, I might have been able to keep playing with dolls. Instead, I saw Corellon's face in a looking glass made of blood and took up my elders' weapons! I do not deserve mockery.~
== %XAN_BANTER% ~I prefer you not defer to me, child, for our chosen work makes us comrades. Call me Xan and I shall call you...?~
== BTIMaeth ~Maethor Grenfell.~
== %XAN_BANTER% ~'Maethor.' Yes, of course. I should have known. *Sighs*. Well, then, 'Warrior,' I don't mock you. At one point or another, all of the elven lands have had to defend their existence.  I will not deny that our people have not been properly vigilant. But it grieves me to see you here before me.  When were you born? 1220, perhaps?  Later?  You cannot have seen many more than forty summers. It should never be the habit of our people to arm children.~
== BTIMaeth ~Am I not tall enough to wear armor? I have not noticed that the warriors of Cormanthyr were much bigger than me.~
== %XAN_BANTER% ~*waves a hand dismissively*. Yes, yes. I see your pretty toys. Family heirlooms, no doubt, passed from father to son until there were no more men to wield them. Such is the legacy of Cormanthyr. All dead or deserted.~
== BTIMaeth ~You have not answered my question. Only insulted me.~
== %XAN_BANTER% ~*Xan looks closely at Maethor's face*. I do see there is a little of something else in you--something not unknown considering your ancestry. Yes, you seem nearly ready to carry the duties of adulthood despite your years. But, if I were you, I would not call attention to your physical anomalies so casually. That would assuredly bring your death. And possibly of us all.~
EXIT

//69

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Xan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Xan",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorXan1","GLOBAL",0)
Global("MaethorXan2","GLOBAL",0)
See("Xan")~ THEN BTIMaeth MaethorXan1
~Aran...er...Xan, your words have troubled me and I would know the truth. Corellon has ever encouraged me to seek out corruption, like the emergence of the Drow amongst our people, and destroy it. If you see corruption in me, I must know.~
DO ~SetGlobal("MaethorXan2","GLOBAL",1)~
== %XAN_BANTER% ~I was a fool to have said anything, but you are greater fool to demand more. You might save some of the honor you shower on Corellon for his daughter, Vandia, whose warlike nature nevertheless also mourns the high cost of battle.~
== BTIMaeth ~Please, Xan. If you spoke carelessly, I still must know your thoughts.~
== %XAN_BANTER% ~Very well. But you will not thank me for it. Your weaponry comes from elven warriors in Cormanthyr, does it not?~
== BTIMaeth ~It does. My family comes from there.~
== %XAN_BANTER% ~Cormanthyr is also known for its sorcery. Four noble families sought to strengthen their bloodline by...foul...liaisons with demons. Balors and succubi, I think. Thus were born the fey'ri. I suspect you may be one of the rare descendants of the few who escaped.~
== BTIMaeth ~Such a thing has been suggested to me before. More often in reference to my mother. But my life has largely been in the company of Edain, who place little significance upon my heritage. To them, I am merely edhellen. But you...you see more danger to it than I assumed?~
== %XAN_BANTER% ~I told you that you would regret knowing. I am surprised that fair Ellesime of Suldanessellar stayed her hand against your family. In our communities, fey'ri are usually sought out and destroyed.~
== BTIMaeth ~Corellon shield me! Have I not fear enough in my life without this as well?!~
== %XAN_BANTER% ~*more gently*. Listen to me, little warrior. I bear you no ill-will. It seems to me--although I am hardly an expert in such matters--that if your blood is tainted in that way and your elders took no action against you, that they must have believed that your portion of fey'ri blood was not dangerous. I admit that when I see you in reverie, your face shines like Corellon's star. He has evidently decided that you are fully one of the people regardless of your bloodline. If the First of the Seldarine has claimed you, who am I to question his will? But I would caution you to stay far from the dark arts. Your healing abilities should be your sole recourse to magic. Corellon's interest in you might be an attempt to keep you from becoming...something else. His wisdom is far beyond that of mere edhellen.~
== BTIMaeth ~Very well.~
== %XAN_BANTER% ~Oh, and...*clears throat*...if you ever wish to take a man to your bed, you should choose very, very carefully. It would be wise to further dilute your heritage.~
== BTIMaeth ~*Maethor blushes and lowering her eyes.* Point taken.~ DO ~SetGlobal("MaethorFeyri","GLOBAL",1)~
EXIT

//70

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Xan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Xan",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorXanAlt","GLOBAL",0)
Global("MaethorXanAlt2","GLOBAL",0)
See("Xan")~ THEN BTIMaeth MaethorXan1
~Aran...er...Xan, your words have troubled me and I would know the truth. Corellon has ever encouraged me to seek out corruption, like the emergence of the Drow amongst our people, and destroy it. If you see corruption in me, I must know.~
DO ~SetGlobal("MaethorXanAlt2","GLOBAL",1)~
== %XAN_BANTER% ~I was a fool to have said anything, but you are greater fool to demand more. You might save some of the honor you shower on Corellon for his daughter, Vandia, whose warlike nature nevertheless also mourns the high cost of battle.~
== BTIMaeth ~Please, Xan. If you spoke carelessly, I still must know your thoughts.~
== %XAN_BANTER% ~Very well. But you will not thank me for it. Your weaponry comes from elven warriors in Cormanthyr, does it not?~
== BTIMaeth ~It does. My family comes from there.~
== %XAN_BANTER% ~Cormanthyr is also known for its sorcery. Four noble families sought to strengthen their bloodline by...foul...liaisons with demons. Balors and succubi, I think. Thus were born the fey'ri. I suspect you may be one of the rare descendants of the few who escaped.~
== BTIMaeth ~Such a thing has been suggested to me before. More often in reference to my mother. But my life has largely been in the company of adan, who place little significance upon my heritage. To them, I am merely edhellen. But you...you see more danger to it than I assumed?~
== %XAN_BANTER% ~I told you that you would regret knowing. I am surprised that fair Ellesime of Suldanessellar stayed her hand against your family. In our communities, fey'ri are usually sought out and destroyed.~
== BTIMaeth ~Corellon shield me! Have I not fear enough in my life without this as well?!~
== %XAN_BANTER% ~*more gently*. Listen to me, little warrior. I bear you no ill-will. It seems to me--although I am hardly an expert in such matters--that if your blood is tainted in that way and your elders took no action against you, that they must have believed that your portion of fey'ri blood was not dangerous. I admit that when I see you in reverie, your face shines like Corellon's star. He has evidently decided that you are fully one of the people regardless of your bloodline. If the First of the Seldarine has claimed you, who am I to question his will? But I would caution you to stay far from the dark arts. Your healing abilities should be your sole recourse to magic. Corellon's interest in you might be an attempt to keep you from becoming...something else. His wisdom is far beyond that of mere edhellen.~
== BTIMaeth ~Very well.~
== %XAN_BANTER% ~Oh, and...*clears throat*...if you ever wish to take a woman to your bed, you should choose very, very carefully. It would be wise to further dilute your heritage.~
== BTIMaeth ~*Maethor blushes and lowering his eyes.* Point taken.~ DO ~SetGlobal("MaethorFeyri","GLOBAL",1)~
EXIT

//71

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Xan")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Xan",CD_STATE_NOTVALID)
Gender(Player1, FEMALE)
RACE(Player1, HALF_ELF)
CombatCounter(0)
!See([ENEMY])
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("XanRomanceActive","Global",3)
Global("MaethorXan3","GLOBAL",0)
See("Xan")~ THEN BTIMaeth MaethorXan1
~Why did you abandon <charname>, Xan? What did she do to deserve your scorn?~
DO ~ SetGlobal("MaethorXan3","GLOBAL",1)~
== %XAN_BANTER% ~Lau! You should know better than to ask me that. You are elven enough to join in communion in the weft of the spirit. I see your eyes fade in the evening when you seek your home in reverie. I observe the essence of Corellon acknowledging a daughter whenever you take up your longsword to honor him. Fó! It isn't my scorn, Maethor. Melinyes. And it is my love that forces me to hurt her. <charname> might yet find another.~
== BTIMaeth ~That's a very cold sentiment.~
== %XAN_BANTER% ~Ilanwa. But I would expect such naivete from you. I am simply being honest. Our people bond beyond the ken of the other races. As a knight of Corellon, you have felt the embrace of the First of the Seldarine! Would you sacrifice the opportunity to share those memories with a lover out of misguided compassion? Noone but one fully of your blood will ever really be able to know you.~
== BTIMaeth ~I don't understand, Xan. You couldn't share reverie with <CHARNAME>?~
== %XAN_BANTER% ~I should be grateful that you are talented with your blade, Maethor, because at times you are so depressingly simple-minded.~
== BTIMaeth ~I never claimed to be clever, Xan.~
== %XAN_BANTER% ~*sighs* Yes, Maethor, that's what it means. That's not all it means, but I think you've grasped the fundamentals. If in some fit of madness I wanted to show you the beauties of Evereska, I could. You could take me to see Suldanessellar, the deep wood of old Tethyr, and even your mother, dancing at festival. I would know you and you would know me. *half to himself* It's disturbing to think that even YOU are a more suitable mate.... *sharply* Don't look at me like that! I was making an observation, not a suggestion!~
== BTIMaeth ~But that doesn't make any sense. Why can't we share reverie with whoever we wish?~
== %XAN_BANTER% ~Lau! You are full of pointless questions today! You might as well ask me why a cat can't talk.... That's just an expression, you know; don't actually ask me why a cat can't talk. I haven't the time to put the explanation into words of one syllable.~
== BTIMaeth ~Corellon, in all his majesty, thinks nothing of walking Faerûn amongst us. If he could speak to me, as simple as I am, why would it be so inconceivable for me...er, you...to share reverie with someone of another race, let alone with someone who does have some of our blood?~
== %XAN_BANTER% ~Áva quetë! *Acidly* I had forgotten your mother's profession. Clearly you have been influenced by her open-armed welcome of anyone who might seek her out. Heca! This conversation is at an end.~
EXIT

//72 (Xzar:1)

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Xzar")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Xzar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("MaethorXzar1","GLOBAL",0)
See("Xzar")~ THEN BTIMaeth MaethorXzar1
~Ow!!! Rhaich!! What are you doing, Xzar! Get that blade away from me!~
DO ~SetGlobal("MaethorXzar1","GLOBAL",1)~
== %XZAR_BANTER% ~No need for such fury! I merely wanted a sample of your blood. You are a most fascinating specimen; I could not resist.~
== BTIMaeth ~*Raises eyebrows.* Specimen? What on Faerûn are you referring to, gûldîr!~
== %XZAR_BANTER% ~Most interesting! You're Fey'ri... That much is certain. Probably succubus. But which kind? And what is that...otherness...I sense in you, hmm? A test or two of your blood might be very informative!~
== BTIMaeth ~Absolutely not! Keep your distance, Xzar, or I'll have some of YOUR blood out.~
== %XZAR_BANTER% ~But just think of what I could learn! The benefit of knowledge for all people and all that rot!~
== BTIMaeth ~*Drawing sword.* No.~
== %XZAR_BANTER% ~Very well. But should you change your mind, let me know. I can even credit you in my paper should this lead to any major discoveries.~
== BTIMaeth ~*Shudders.*~
EXIT

//73

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Yeslick")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorYeslick1","GLOBAL",0)
See("Yeslick")~ THEN BTIMaeth MaethorYeslick1
~Greetings, friend! I understand you met my mentor, Sir Tybalt Grenfell.~
DO ~SetGlobal("MaethorYeslick1","GLOBAL",1)~
== %YESLICK_BANTER% ~Indeed I did. It would not have been possible to organize the escape of the slaves were it not for his help. We are right grateful, lass. *Smiles.* Tyb said his girls were pretty. I see that, as far as elves go, he wasn't merely boasting.~
== BTIMaeth ~You flatter me.~
== %YESLICK_BANTER% ~Well, personally, I prefer a bit more meat on the bones and soft curls on the chin, but you can't help being what you are.~
== BTIMaeth ~*Laughs.* No, I can't help that.~
== %YESLICK_BANTER% ~Do you have something to ask, lass?~
== BTIMaeth ~Actually, yes. If you don't mind...~
== %YESLICK_BANTER% ~Let me guess...Do ye wish to know if dwarven women have beards? Like everyone else?~
== BTIMaeth ~Um...no. I was aware that adult dwarven women have beards. I wished you to explain, rather, why dwarven women in some of the big cities like Waterdeep don't.~
== %YESLICK_BANTER% ~*Disgusted.* Eccchhh! Children and their blasted faddish custom! They insult their elders by cutting them off. Want to look 'in style' with the humans, they say! And what's worse; their brothers trimmin' their whiskers close-like! The 'three-day look' they call it. I dinna know what th' world's comin' to with the younger set! Beggin' your pardon, miss, but next thing you know, they'll want to look like elves.~
== BTIMaeth ~*chuckles.* It may surprise you to know that among the oldest of my people... The men back in Evermeet, anyway, occasionally have beards.~
== %YESLICK_BANTER% ~*Surprised.* Really?!~
== BTIMaeth ~*chuckles.* Yes. You don't see it in Faerûn because few remain here that long... When I was a child, I heard a famous legend about a shipbuilder who was bearded.~
== %YESLICK_BANTER% ~*Laughs.* Well, then! I am right pleased. Even elves! Perhaps there is less difference between us than I thought!~
EXIT

//74

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("Yeslick")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
Global("MaethorYeslick1","GLOBAL",0)
See("Yeslick")~ THEN BTIMaeth MaethorYeslick1
~What are you looking at so keenly, Yeslick?~
DO ~SetGlobal("MaethorYeslick1","GLOBAL",1)~
== %YESLICK_BANTER% ~You have a right pretty ring on your neck, lassie.~
== BTIMaeth ~*Pulling it off so that he can have a closer look.* This? Thank you.~
== %YESLICK_BANTER% ~D'ye know where it came from?~
== BTIMaeth ~*Gazing at the ring.* No idea. As far as I know, it's just a trinket he picked up at a shop in one of the nearby cities.~
== %YESLICK_BANTER% ~Originally, it was probably made in Daggerdale. The Brightblade clan was especially well-known for gem-cutting. How it made its way into your hands must be a curious tale in itself. Still, yer man must've also known something about dwarvish legend, though, because it was clearly meant for a maiden's hand.~
== BTIMaeth ~Dwarvish legend? I thought it was elven made!~
== %YESLICK_BANTER% ~No indeed! The style of gem-cutting should tell you it was made by a Brightblade smith even if you didn't recognize the story it tells... Do ye wish to know more?~
== BTIMaeth ~Oh yes! I thought the ring merely had a scene of birds in a field of flowers.~
== %YESLICK_BANTER% ~No, no. There is a legend of a dwarf king of the deep mountains who made an arranged marriage with a Wanderer lady of the Western Heartlands. He brought her to his mountain home, but she missed the wide, surface plains that she'd roamed in her childhood. In consequence, he had a grand chamber made for her containing gems cut in the shapes of all the animals and birds she was accustomed to. He even had a vast 'sun' of gold and diamond ingeniously set in the chamber's ceiling for her pleasure. It is a story often told to young ladies to impress upon the the great love a man can have for his lady.~
== BTIMaeth ~*Smiling.* Does the legend have a happy ending? Was the lady satisfied with her new abode?~
== %YESLICK_BANTER% ~Alas, no. When does mortal ever appreciate what is freely given out of love? Perhaps one quiet eve, I might tell you the whole story and ease your curiosity.~
== BTIMaeth ~I would like that.~
EXIT


