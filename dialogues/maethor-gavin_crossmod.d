// 1 Interjections

//Dawn Priest Gavin
INTERJECT_COPY_TRANS ~B!GAVIN~ 0 TIMaethTalkGav1
== TIMaethJ IF ~InParty("TIMaeth") InMyArea("TIMaeth") !StateCheck("TIMaeth",CD_STATE_NOTVALID)~ THEN ~Vandia's tears, Dawnbringer! I've never seen you so prepared for battle before! What struggle are you preparing to join here at your Temple door?~
== ~B!GAVIN~~*Smiles.* I thought I might take up adventuring, Maethor Grenfell. Like you and my sister Reed have done. Supplement my income and see more of the world. Is this your party? I thought you always traveled by yourself.~
== TIMaethJ~When I'm running errands, I do. But this is different. Sir Tybalt hasn't been back in months and has left us no word of his whereabouts. Liria is frantic.~
== ~B!GAVIN~~Hmmmm. I'm afraid I can't help you with that. I haven't spoken with Tyb... Sir Tybalt... lately.~
== TIMaethJ~Oh well. *Blushes.* It is so very good to see you again, Dawnbringer. I wish I had a moment just to talk. I've missed seeing you around Beregost.~
== ~B!GAVIN~~I've missed seeing you, too, Maethor. Perhaps one of these days we'll be able to get together just to catch up.~
== TIMaethJ~I hope so. Take care, now...~
== ~B!GAVIN~~You too.~
END

//Jolun
INTERJECT_COPY_TRANS ~B!JOLUN~ 0 TIMaethBarMeet
== TIMaethJ IF ~InParty("TIMaeth") InMyArea("TIMaeth") !StateCheck("TIMaeth",CD_STATE_NOTVALID)~ THEN ~I can't say that that's the most original pick-up line I've heard, <CHARNAME>.~
== ~B!JOLUN~ ~Perhaps not, but it works, angel. I'd be happy to toast such lovely ladies.~
END

INTERJECT_COPY_TRANS ~B!JOLUN~ 52 TIMaethBarInte
== TIMaethJ IF ~InParty("TIMaeth") InMyArea("TIMaeth") !StateCheck("TIMaeth",CD_STATE_NOTVALID)~ THEN ~*Sigh.* Funny how I'm always the last one in these kind of introductions. I'm Maethor Grenfell of Beregost.~
== ~B!JOLUN~ ~Well, either he's saving the best for last or he was hoping I didn't see you. No matter, fair lady; join us.~
END


// 2 Banters

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethGavin1","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth TIMaethGavin1
~Galu, Dawnbringer Mor. As you would say, 'Blessings upon you.'~
DO ~SetGlobal("TIMaethGavin1","GLOBAL",1)~
== ~BB!GAVIN~ ~Suilad, Maethor Grenfell. It's good to see a familiar face. 'The blessing of Lathander be upon you.' You remembered.~
== BTIMaeth ~We taught each other these words before. The memory is a fond one.~
== ~BB!GAVIN~ ~Yes... *pauses* We'll have to have a talk about that... Now that we have time.~
== BTIMaeth ~Yes. Although I dared not hope for the opportunity to... to...~
== ~BB!GAVIN~ ~*smiles* To try again..? There is a saying: 'You can never really 'start over,' but you can try again. One sunrise does not undo what happened the day before. But there is always another sunrise.'~
== BTIMaeth ~I remember, Dawnbringer. But I always meant to tell you that... that you needn't apologize.~
== ~BB!GAVIN~ ~Call me Gavin. Any woman who's been...erm...in your position can call me by my first name.~
== BTIMaeth ~Yes. I've needed to make amends.~
== ~BB!GAVIN~ ~What, you? Whatever for? You didn't do anything. As I recall, I tripped and fell on you. How is that your fault?~
== BTIMaeth ~It's often as bad to do nothing as it is to do the wrong thing. I... I permitted you to feel guilty over something you couldn't help and...~
== ~BB!GAVIN~ ~That's uh... a very interesting way of looking at it. *Takes her hands* Look. Accident or no, I'm a lot bigger than you and was even then. I could have hurt you. I appreciate your kindness in overlooking my clumsiness, but I won't let you let me completely off the hook.~
== BTIMaeth ~But you were too upset about it. I should have said something!~
== ~BB!GAVIN~ ~Yes, well, I lacked confidence back then. Still, I am grateful we're able to talk about this and put it behind us.~
== BTIMaeth ~I'd rather we didn't entirely put it behind us, Dawn...er, Gavin. I hope it wasn't all... accidental.~
== ~BB!GAVIN~ ~*pause* I had hoped you had forgotten that part.~
== BTIMaeth ~How could I?~
== ~BB!GAVIN~ ~*sigh* Get up early one morning. When it's quiet and we can speak more freely. Come. We're falling behind.~
EXIT

//2

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethBGavin1","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth TIMaethBGavin1
~Galu, Dawnbringer Mor. As you would say, 'Blessings upon you.'~
DO ~SetGlobal("TIMaethBGavin1","GLOBAL",1)~
== ~BB!GAVIN~ ~Well. Ummm...Maethor Grenfell, I believe?  'The blessing of Lathander be upon you.' You remembered!~
== BTIMaeth ~We taught each other these words before. The memory is a fond one.~
== ~BB!GAVIN~ ~Yes... *pauses* You've...err...changed quite a bit since I last saw you, Maethor.~
== BTIMaeth ~I know. That was <CHARNAME>'s doing. I would have wished that you would not see me like this. Still, I did want to opportunity to... to...~
== ~BB!GAVIN~ ~*smiles* To try again..? There is a saying: 'You can never really 'start over,' but you can try again. One sunrise does not undo what happened the day before. But there is always another sunrise.'~
== BTIMaeth ~I remember, Dawnbringer. I always meant to tell you that... that you needn't apologize.~
== ~BB!GAVIN~ ~Call me Gavin. Any woman...err...man...who's been...erm...in your position can call me by my first name.~
== BTIMaeth ~Yes. I've needed to make amends.~
== ~BB!GAVIN~ ~What, you? Whatever for? You didn't do anything. As I recall, I tripped and fell on you. How is that your fault?~
== BTIMaeth ~It's often as bad to do nothing as it is to do the wrong thing. I... I permitted you to feel guilty over something you couldn't help and...~
== ~BB!GAVIN~ ~That's uh... a very interesting way of looking at it. *Gently pats him on the shoulder.* Look. Accident or no, I'm a lot bigger than you and was even then. I could have hurt you. I appreciate your kindness in overlooking my clumsiness, but I won't let you let me completely off the hook.~
== BTIMaeth ~But you were too upset about it. I should have said something!~
== ~BB!GAVIN~ ~Yes, well, I lacked confidence back then. Still, I am grateful we're able to talk about this and put it behind us.~
== BTIMaeth ~I'd rather we didn't entirely put it behind us, Dawn...er, Gavin. I hope it wasn't all... accidental.~
== ~BB!GAVIN~ ~*pause* All things considered, it would have been better if you had forgotten that part.~
== BTIMaeth ~How could I?~
== ~BB!GAVIN~ ~*sigh* Get up early one morning. When it's quiet and we can speak more freely. Come. We're falling behind.~
EXIT

//3

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethGavin1","GLOBAL",1)
Global("TIMaethGavin2","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth TIMaethGavin2
~Here. For breakfast.~
DO ~SetGlobal("TIMaethGavin2","GLOBAL",1)~
== ~BB!GAVIN~ ~Good morning, Maethor. What are these?~
== BTIMaeth ~Wild turkey eggs. I watched one huff and puff over her nest. She didn't appreciate losing them, but she'll lay more soon enough. *She looks up at the sky* It won't be morning for another hour at least.~
== ~BB!GAVIN~ ~Close enough. You're up early.~
== BTIMaeth ~So are you. My excuse is that I took last watch last night. What about you?~
== ~BB!GAVIN~ ~I have a reason to be up. Lathander's clergy celebrates the dawn.~
== BTIMaeth ~Is that tea?~
== ~BB!GAVIN~ ~Yes. Have some. I'll just put these eggs over here. We've got some cheese, too. And some dried meat. They'll make a decent omelet, I think, if they're seasoned well.~
== BTIMaeth ~I'm chilled. I usually enjoy last watch, but the wind's a bit sharp this morning. *Pointing at Gavin's sketchbook* I see you've been working on something.~
== ~BB!GAVIN~ ~You can use my cloak. I'm quite warm from cooking.*He picks up the book and shows her the open page.*~
== BTIMaeth ~That's very good. You've drawn my cuirass. I recognize the embellishment. Why draw my armor?~
== ~BB!GAVIN~ ~Thanks. It's a study for a later drawing. It's visually interesting and I want to get the pattern down.~
== BTIMaeth ~Oh. Do you know Corellon is the patron of the elven arts?~
== ~BB!GAVIN~ ~*Nods.* He's quite close to Lathander in many ways. I probably would have been a feywarden if I had been born elven.~
== BTIMaeth ~*pauses.* Why is it so hard, Gavin?~
== ~BB!GAVIN~ ~To go beyond small talk?~
== BTIMaeth ~Yes.~
== ~BB!GAVIN~ ~Probably because your feelings are so intense. For what it's worth, I have the same experience. I find it difficult to speak at times.~
== BTIMaeth ~When did you become so wise?~
== ~BB!GAVIN~ ~I am a bit older than I was when we met, Maethor. And it's been a few years since I last saw you. Sir Rogan tells me you've been travelling the Coast a lot lately. I half expected to see you in Baldur's Gate when I was sent there.~
== BTIMaeth ~Yes. Sir Tybalt has kept me insanely busy. *Touches his cheek.* I think I'll always see you as you were at Artamir's birth ceremony. The moments we've had together haunt my reverie.~
== ~BB!GAVIN~ ~I'm not surprised. I've replayed that scene in my mind many, many times. Sometimes I can only remember how horrified I was. But sometimes...well, let's just say you played a starring role in a lot of adolescent fantasies.~
==BTIMaeth ~*blushes.* You've often been in mine.~ DO ~SetGlobal("TIMaethGavinFantasies","GLOBAL",1)~
EXIT

//4

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethBGavin1","GLOBAL",1)
Global("TIMaethBGavin2","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth TIMaethBGavin2
~Here. For breakfast.~
DO ~SetGlobal("TIMaethBGavin2","GLOBAL",1)~
== ~BB!GAVIN~ ~Good morning, Maethor. What are these?~
== BTIMaeth ~Wild turkey eggs. I watched one huff and puff over her nest. She didn't appreciate losing them, but she'll lay more soon enough. *He looks up at the sky* It won't be morning for another hour at least.~
== ~BB!GAVIN~ ~Close enough. You're up early.~
== BTIMaeth ~So are you. My excuse is that I took last watch last night. What about you?~
== ~BB!GAVIN~ ~I have a reason to be up. Lathander's clergy celebrates the dawn.~
== BTIMaeth ~Is that tea?~
== ~BB!GAVIN~ ~Yes. Have some. I'll just put these eggs over here. We've got some cheese, too. And some dried meat. They'll make a decent omelet, I think, if they're seasoned well.~
== BTIMaeth ~I'm chilled. I usually enjoy last watch, but the wind's a bit sharp this morning. *Pointing at Gavin's sketchbook* I see you've been working on something.~
== ~BB!GAVIN~ ~*He picks up the book and shows him the open page*~
== BTIMaeth ~That's very good. You've drawn my cuirass. I recognize the embellishment. Why?~
== ~BB!GAVIN~ ~Thanks. It's a study for a later drawing. It's visually interesting and I want to get the pattern down.~
== BTIMaeth ~Oh. Do you know Corellon is the patron of the elven arts?~
== ~BB!GAVIN~ ~*Nods.* He's quite close to Lathander in many ways. I probably would have been a feywarden if I had been born elven.~
== BTIMaeth ~*pauses.* Why is it so hard, Gavin?~
== ~BB!GAVIN~ ~To go beyond small talk?~
== BTIMaeth ~Yes.~
== ~BB!GAVIN~ ~Probably because your feelings are so intense. For what it's worth, I have the same experience. I find it difficult to speak at times.~
== BTIMaeth ~When did you become so wise?~
== ~BB!GAVIN~ ~I am a bit older than I was when we met, Maethor. And it's been a few years since I last saw you. Sir Rogan tells me you've been travelling the Coast a lot lately. I half expected to see you in Baldur's Gate when I was sent there.~
== BTIMaeth ~Yes. Sir Tybalt has kept me insanely busy. I think I'll always see you as you were at Artamir's birth ceremony. The moments we've had together haunt my reverie.~
== ~BB!GAVIN~ ~I'm not surprised. I've replayed that scene in my mind many, many times. Sometimes I can only remember how horrified I was. But sometimes...well, let's just say you were a memorable young woman.~
EXIT

//5

CHAIN
IF WEIGHT #-2
~InParty("B!Gavin")
InParty("TIMaeth")
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethGavin2","GLOBAL",1)
Global("GavinTIMaeth1","GLOBAL",0)
See("TIMaeth")~THEN ~BB!GAVIN~ GavinTIMaeth1
~There's something I should tell you about that night, Maethor. You know, I wasn't even supposed to be at the birthing ceremony.~
DO ~SetGlobal("GavinTIMaeth1","GLOBAL",1)~
== BTIMaeth ~Huh?~
== ~BB!GAVIN~ ~Old Tyb...Sir Tybalt...arranged for Bram to do it. But I talked him into letting me go instead.~
== BTIMaeth ~Why?~
== ~BB!GAVIN~ ~I told Bram it was for experience. I hadn't been ordained for long and a birthing is a really easy ceremony. But really, I had a lot of other reasons. Firstly, Tyb was a big name in Beregost. It would mean a lot to me to gain his respect and gratitude since so many in Beregost respected his opinions. I was still living down my...err...ordination, after all.~
== BTIMaeth ~Your ordination?~
== ~BB!GAVIN~ ~*waves it off.* Another story for another time. In any case, I also knew your sister would throw a great party. And then there's the matter of the honorarium. Old Tyb always donated well to the temple and he would pay the clergy extra for small services. But mostly...well, I was a lonely young man eager to have a look at Tyb's girls. Rumor said he always had a good eye for the pretty lasses, but to bring them to Beregost, of all places!~ DO ~SetGlobal("TIMaethMistress","GLOBAL",1)~
== BTIMaeth ~*blush* I'd forgotten about the gossip... That makes it sound like he was keeping several mistresses.~
== ~BB!GAVIN~ ~As often as I have found myself the subject of vicious gossip, I wasn't about to believe everything I heard about Sir Tybalt. But the rumor about you being pretty was true... As I discovered. *pause* I know you're in love with me. It's...It's okay to have feelings for me, Maethor. You have such a tender heart--who could refuse such a treasure? There's not enough love in the world as it is. Is that what you need to hear?~
== BTIMaeth ~How long have you known how I feel?~
== ~BB!GAVIN~ ~All along, really. Those moments...after I knocked you over...I was concerned that I'd hurt you, horrified by what I'd done, and afraid that I'd just killed that spark I felt between us, but something...something else made those all disappear. You had your little hands on my chest and I swear I saw myself as you saw me. Gods...you practically gave me a halo! In my mind were all these images of your life before. I felt I knew you and you knew me. I had to kiss you. But when those moments were over, I wasn't sure anymore. And you left town rather suddenly just when I'd gotten the courage to talk to you about more than just the weather. I thought it was over between us... whatever 'it' was. I'm truly sorry.~
== BTIMaeth ~Tyb wanted me to be his squire. He sent me off on a series of extremely tedious errands. I thought about you the whole time I was gone. And then when I came home... *pause* I'm also truly sorry.~
== ~BB!GAVIN~ ~Funny that. I was wrong; it wasn't me that drove you away. Wish I'd known that back then. *Looks up at the sky* Well, Maethor, the sky is brightening. I have my prayers... and then breakfast. *pauses* You stir feelings in me as well. I sense that you want us both to try again. But my life is complicated right now. Do you understand?~
== BTIMaeth ~I do understand. Liria has said as much. But I finally had courage enough to speak...and to act. And time is not my friend where you are concerned.~
== ~BB!GAVIN~ ~Well, let's just see how things go, then. We enjoy each other's company. I can be content with that.~
== BTIMaeth ~As can I.~ ~SetGlobal("TIMaethGavinAffection","GLOBAL",1) SetGlobal("TIMaethGavinRomanceActive","GLOBAL",1)~
EXIT

//6

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
Global("TIMaethGavin2","GLOBAL",1)
Global("TIMaethGavin3","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth TIMaethGavin3
~Wait a minute, Gav!~
DO ~SetGlobal("TIMaethGavin3","GLOBAL",1)~
== ~BB!GAVIN~ ~*Stops for a moment* Certainly. What do you need?~
== BTIMaeth ~I've been meaning to give these to you for days, but I keep forgetting.~
== ~BB!GAVIN~ ~A pastel set? Thank you!! Where did these come from?~
== BTIMaeth ~I'm not sure where they're from. Tyb got them for me on one of his journeys because I was studying portraiture at the time. Corellon is patron of the elven arts, you know. I've never seen anything like them, but I sense a little magic to them. Probably gnomish. Anyway, they're a new mixture of wax, pigment, and chalk... Goes on soft, you can blend it with your fingers or a stiff brush, but hardens after a day so it won't smear in your book.~
== ~BB!GAVIN~ ~This is a nice collection. Don't you want them?~
== BTIMaeth ~No. I had a head injury when I was young. I can't tell the difference between some of them. I thought you'd get better use of them.~
== ~BB!GAVIN~ ~Oh yes. Thanks! I'll enjoy finally being able ro put color in my sketches. What's this about a head injury? Anything I might be able to help?~
== BTIMaeth ~No. Tyb paid a bunch of different healers in Athkatla to assess the extent of my injuries, but they said it would take the highest level of cleric using major healing spells to fix my brain completely. Tyb wanted to have it done, but I was afraid they'd change me... Take away those traits that make me unique. When my mother was killed. I took some blows... probably a kick or two. I was only a child. As a result, my color perception is bad. For example, I know that red and green and their related shades are all different colors, but I can't see the difference. Being able to see color doesn't seem worth the risk.~
== ~BB!GAVIN~ ~Everyone has their own quirks. I can't sing.~
== BTIMaeth ~That's odd. Your speaking voice is quite resonant.~
== ~BB!GAVIN~ ~I'm tone-deaf. I drank too much celebrating my ordination and started singing in the inn. In response, the fine citizens of Beregost drafted a petition requiring my silence. It got thirty signatures.~
== BTIMaeth ~Yes, well, it didn't get thirty-one. I didn't sign it. That petition was cruel.~
== ~BB!GAVIN~ ~*Blushes* You saw the petition?~
== BTIMaeth ~*shrugs* More than that. I heard the singing. I mean, I didn't know it was you, of course. I was a serving wench then. Carried trays, served customers, and washed dishes. The Knight I was squire to was retiring from field work and had little need for my services, so I scrambled for any work I could get to keep Liria and the baby provided for.~
== ~BB!GAVIN~ ~Hmmm... I would have thought Sir Tybalt would have kept up with that.~
== BTIMaeth ~Erm... Having two families stretched Tyb's funds overmuch. We were satisfied that he provided the roof over our heads. Everything else came by yours truly. Anyway, you don't have to apologize. When I heard you sing, my first thought was to be grateful that it wasn't me singing. My voice does not draw much applause, either even though I've had extensive vocal training!~
== ~BB!GAVIN~ ~*Wry grin.* Trust me. All compassion aside, your singing is probably divine compared to mine.~
EXIT

//7

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
Global("TIMaethGavin3","GLOBAL",1)
Global("TIMaethGavin4","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth TIMaethGavin4
~How are the pastels working out for you? I could never quite get the hang of them.~
DO ~SetGlobal("TIMaethGavin4","GLOBAL",1)~
== ~BB!GAVIN~ ~*Grinning* You'll see. I've been working on something with them.~
== BTIMaeth ~In any case, I also want to show you a cantrip I was taught by Elaerlír, one of the Feywardens at Suldanessellar. It allows one to make better use of one's innate artistic talents and enhances dexterity. There's a monthly celebration of art that the Feywardens have where we bring our best artwork to dedicate to Corellon, play music, and dance in celebration of the beauty of creation. I was thinking you might celebrate it someday with me. I intended to teach you the cantrip to enhance your religious artwork. I didn't know that you can't sing. Can you chant at all? Even just a single note?~
== ~BB!GAVIN~ ~It's not that I'm not capable, Maethor. It's just that you wouldn't want to hear it.~
== BTIMaeth ~The cantrip might also help that a little. I wish I'd paid more attention to Elaerlír's lessons, too. He was working with another student on the same issue. Feywardens and Blades of Corellon have to sing during some of our festivals and...well...I can carry a tune, but my voice is like a cat in heat. Once Elaerlír stopped laughing at my rendition of the 'Arrow Hymn,' he said he had his work cut out for him... Anyway, what I do remember is that making a musical note is only partly about what you can hear.*Touches Gavin's throat* Each note feels different here and at the diaphragm. But for right now, you can simply produce one note--doesn't matter what it is, really--and I'll follow. The words are: Ada lhend, eglieras anlen gwen anno curu linno.~
== ~BB!GAVIN~ ~I really don't think...~
== BTIMaeth ~Trust me. Just this one time. I've heard you before. The gods wish to hear all voices in praise. Surely they can take action on such a little matter. *Maethor lays a hand on either side of Gavin's throat, quietly humming.*~
== ~BB!GAVIN~ ~*reluctantly and very quietly chants*: Ada lhend...~
== BTIMaeth ~*There is a glow along Maethor's fingers. There is no dramatic change in Gavin's half-hearted chant, but his wavering pitch tightens to a single, not unpleasant baritone note. Maethor chimes in immediately, duplicating his pitch.*Eglieras anlen gwen anno curu linno.~
== ~BB!GAVIN~ ~By Lathander! That worked! Was I actually on key for once? What note was that?~
== BTIMaeth ~A C#, I think. But don't think about what it sounds like... think about what it feels like. Ada lhend...~
== ~BB!GAVIN~ ~*more confidently and consistently*...Eglieras anlen gwen anno curu linno.... How do I sound to you?~
== BTIMaeth ~*nods in satisfaction* My ear for pitch is pretty good; you are chanting a truer pitch. The cantrip can't do more than mildly improve your pitch perception unless one of the high-level feywardens casts it, of course, but if you and I work hard at feeling each note, you could probably chant well enough not to draw attention. With appropriate vocal training, you might even be able to sing. I know it's been done before. Maybe someday you can work with Elaerlír. It's not a cure, but it would be a blessing to Lathander for you to be comfortable making music for him.~
EXIT

//8

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
Global("GavinTIMaeth1","GLOBAL",1)
Global("TIMaethGavin5","GLOBAL",0)
!Global("TIMaethorCommit","GLOBAL",1)
!Global("TIMaethRomanceActive","GLOBAL",2)
!Global("B!GavinRomanceActive","GLOBAL",2)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
OR(21)
  AreaCheck("%Beregost_FeldepostsInn_L1%")
  AreaCheck("%Beregost_JovialJuggler_L1%")
  AreaCheck("%Beregost_RedSheaf_L1%")
  AreaCheck("%Beregost_BurningWizard_L1%")
  AreaCheck("%Nashkel_Inn%")
  AreaCheck("%EBaldursGate_KeexieTavern_L1%")
  AreaCheck("%EBaldursGate_ElfsongTavern_L1%")
  AreaCheck("%EBaldursGate_Inn_L1%")
  AreaCheck("%SEBaldursGate_Inn_L1%")
  AreaCheck("%SEBaldursGate_Blade&Stars_L1%")
  AreaCheck("%BaldursGateDocks_JopalinsTavern%")
  AreaCheck("%SWBaldursGate_Tavern_L1%")
  AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
  AreaCheck("%NWBaldursGate_Helm&Cloak_L1%")
  AreaCheck("%NWBaldursGate_Tavern_L1%")
  AreaCheck("%NBaldursGate_ThreeOldKegs_L1%")
  AreaCheck("%NEBaldursGate_BlushingMermaid_L1%")
  AreaCheck("%NEBaldursGate_SplurgingSturgeon_L2%")
  AreaCheck("%FriendlyArmInn_L1%")
  AreaCheck("%NEBaldursGate_SplurgingSturgeon_L1%")
  AreaCheck("%UlgothsBeard_Inn%")
See("B!Gavin")~THEN BTIMaeth TIMaethGavin6
~Might I join you? I...I think that I've heard all the town gossip I'm going to tonight and having some male company will discourage some of my new...erm...friends I seem to have made.~
DO ~SetGlobal("TIMaethGavin5","GLOBAL",1)~
== ~BB!GAVIN~ ~*shrugs, involved in reproducing in ink the intricate chiaroscuro play of shadow and light on the face of a man by the fireside.* If you want. There are so many good subjects for a sketch in here that I had to take a break.~
== BTIMaeth~*Maethor carefully lowers herself into the empty chair next to Gavin.* When <charname> asked us to drink at the bar and listen for rumors, I didn't think it would be all that hard. But it doesn't seem to be working the way <PRO_HESHE> said it would. Firstly, I hate wearing this dress. It's itchy and it keeps slipping down when I sit! *she grabs the edge of the low-cut bodice and gives it a hard yank upward.* And I feel vulnerable without my armor and weapons. Secondly, I've had a few drinks and I feel like I'm floating. Thirdly, I seem to have acquired some new...um...friends. The halfling at the end of the bar has been staring at my breasts and keeps trying to buy me drinks. Worse, the old man on the other side of me put his arm around me and started whispering to me about the joys of cheese. *she rests her head on one fist and closes her eyes.* Besides the halfling's endless stream of dirty jokes, the only talk I've heard so far is that there's a conspiracy against Gouda on the part of the cheesemakers. Does that count as a rumor?~
== ~BB!GAVIN~ ~Cheese, eh? Sorry about that. I've heard a few good rumors tonight, though.~
== BTIMaeth ~*waves a finger at the barmaid.* I desperately need some water. Hopefully with some fruit juice in it. Anything else for you?~
== ~BB!GAVIN~ ~*Looks blearily at the empty bottles on the table and the half-empty one at his elbow, and waves the barmaid away.* I think I've had...erp...more than enough. Water for me as well.~
== BTIMaeth ~Very well. *orders the drinks.*~
== ~BB!GAVIN~ ~It's a wonder that they serve you in here. Looking at you, I wouldn't think that you were old enough to drink. You should ask for milk, instead.~
== BTIMaeth ~Milk?! *takes a moment to count on her fingers as the barmaid puts down a pitcher of water and two clay tumblers.* I've seen a few more summers than you have!~
== ~BB!GAVIN~ ~*Laughs and lays down his sketchbook.* That's the thing about you elves; the whole lot of you are deceptive! *He sits back in his chair, amused by her consternation.* When I met you, I thought you were my age. Well, maybe a little older, but not much as far as elven standards are concerned. You're the firsht...first really young elf I've ever met. Sweet, lovely, and impressed by me. That's a novelty. None of that typical elf con...conde...looking down on the human. But now, it's been yearsh...erp...years. And what's happened? I'm approaching twenty-nine. Afraid that I'll start to see white hairs and lines. But YOU! Haven't changed. Still as fresh as a girl of seventeen...You now look too young for me! Wait, Maethor dear, hold on now... before you protest... let me finish. I'm perfectly content that your kind have long lives. Doesn't bother me a bit. But ish...is it fair for you to have extended youth as well?~
== BTIMaeth ~There's a disadvantage to that. While human children grow up in the blink of an eye, we elves spend half a century raising our younglings. Even though Liria weaned Artamir early, he was still four years on the breast. *She pours a cup of water, sips it, and grimaces at the taste.* Ugh. Iron... At least the cup is clean. I can't imagine why Liria loves baby-care so much. She's only just managed to get him out of diapers and breeched.~
== ~BB!GAVIN~ ~You'll find out if you have any. The young years are as wonderful as they are brief. *slurring* Well, anyway, speaking of youth, I have a present for you. If you want it. *He flips back several pages in his book and hands the book to Maethor.* Here.~
== BTIMaeth ~*Her eyes widen and her mouth drops open.* By Corellon... It's a masterpiece! That's my sister's blue dress! And my hair is down! You can even tell that...that I'm sharing 'gúrist'--heart-knowledge--with you! If I looked like this, Gavin, then I understand why you...~
== ~BB!GAVIN~ ~Dear Maethor...*Kisses her. At first, just a light peck, but then, as soon as his lips have touch hers, the mood between them changes.  He sits back for a second, gazing at her as if seeing her for the first time.* Why do I always see the stars and the moon's Tears when I kiss you?~
== BTIMaeth ~I don't know what to say. *she flips to another page in the book and then another.* You've drawn a lot of pictures of me.~
== ~BB!GAVIN~ ~*Leans back in again, hungrily kissing her. Maethor responds, wrapping her arms around his neck. They kiss and embrace, seemingly unaware of the catcalls from the patrons nearby. Finally, Gavin breaks the kiss, carefully setting his sketchbook out of harm's way, and turns to Maethor, flushing a bright red.* Sorry, my dear. It'sh... It's been such a long time. I should have better control. I think ish...it's time we talked about...*His words are interrupted by Maethor going limp in his arms, slithering off his lap, and falling in a heap on the floor.* Maethor?~
DO ~PlayDead(240) RestParty()~
EXIT

//9

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
OR(2)
!Global("TIMaethorAJCommit","GLOBAL",1)
!Global("TIMaethorCorCommit","GLOBAL",1)
OR(2)
Global("TIMaethRomanceActive","GLOBAL", 0)
Global("TIMaethRomanceActive","GLOBAL", 3)
OR(2)
Global("B!GavinRomanceActive","GLOBAL", 0)
Global("B!GavinRomanceActive","GLOBAL", 3)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethGavin5","GLOBAL",1)
Global("TIMaethGavin6","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth MaethorGavin7
~Good morning, Dawnbringer. *Maethor emerges from the darkness beyond the clearing into the firelight. She is dressed only in a ragged pair of black leggings and shirt, and is wet from the dew.*~
DO ~SetGlobal("TIMaethGavin6","GLOBAL",1) SetGlobal("TIMaethorCommit","GLOBAL",1)~
== ~BB!GAVIN~ ~*Looks up from his cooking.* Have we gone back to using titles, Maethor?~
== BTIMaeth ~*Maethor pauses, standing by the fire, and smiles tightly.* I mean it with affection. You are the bringer of my dawn.~
== ~BB!GAVIN~ ~Here! Sit down and get dry. You're soaked. Have a cup of tea. You're going to make yourself sick standing watch without your cloak. Where's your doublet? Is it in your pack? *Gavin busies himself poking through her bags.*~
== BTIMaeth ~I don't know. With my armor, probably. I don't care. I'm already lovesick, anyway. *She sits by the fire, holding, but not drinking from, her mug.* You have not spoken to me since that night.~
== ~BB!GAVIN~ ~*exasperated, he pulls his own cloak from his shoulders and drapes it over her.* It's not because I'm angry at you. I'm just... I'm not a brave man, Maethor, despite how you think of me. I'm overwhelmed and afraid. I sense something is going to happen to <CHARNAME> that will affect all of us. I'm afraid for my family. For my daughter. And then, as if this fear isn't enough, I'm also afraid for you. And for us. You should understand...~
== ~BB!GAVIN~ ~!Global("TIMaethTybaltRescued","GLOBAL",1)~ ~How will Liria manage to get by day to day with little Artamir if both you and Sir Tybalt are gone?~
== BTIMaeth ~I was not blessed with your exceptional memory, Gavin. Too much drink swims my head. I'm still piecing together what must have happened the night before.~
== ~BB!GAVIN~ ~It's NOT a blessing. I inevitably remember doing something foolish. Like deciding that it would be a good time to show you one of the drawings I've made of you.~
== BTIMaeth ~I remember that, although I felt dazed at the time.~
== ~BB!GAVIN~ ~Well, there are more of them... But that one is branded into my memory. That first night. The Birthing.~
== BTIMaeth ~Yes. I looked exactly the way I did the night we met. You got all of the details right, even though it's been years. It was beautiful... *Maethor's eyes, wide and dark in the firelight, glow slightly. Her voice trails off and she touches her lips.*~
== ~BB!GAVIN~ ~*Recognizes the gesture.* Oh yes. AND I decided it would a great time to kiss you. Brilliant timing. Right before you passed out.~
== BTIMaeth ~I passed out? Oh, Corellon shield me! I'm so sorry. I don't remember...~
== ~BB!GAVIN~ ~*irritated*...Haven't you asked yourself why I was asleep next to you in the morning? In my underclothes? By the Gods, Maethor. I remember what happened and even I am asking myself why!~
== BTIMaeth ~*Blushes.* Well, at least you weren't naked. I only have fragments of the morning. I must have woken up at least once after passing out.~
== ~BB!GAVIN~ ~I was either very lucky or very blessed, Maethor. I don't know which. You were half-awake when I wrestled your door open. I tried to lay you down on your bed, but you clung to me like a barnacle on a ship bottom and begged me not to leave you alone. You wept and sobbed and...somehow...shared your memories with me. Filled my mind with agonizing images of abuse, abandonment, rape, and death. Dear Maethor, Tyb already told me a lot of what you went through, but I didn't know how greatly you hurt until I saw...what you lived. You wouldn't stop shaking until I laid down with you and held you.~
== ~BB!GAVIN~ ~You showed me a house in the trees. Your childhood home. From the roof you can see the stars and the moons laid out all glittering. There is a garden beneath, where the living trees support the stairs. It reminded me of my sister's garden in Ulgoth's Beard. You and I held hands as we watched comets flare. I'm still astonished at how real it all seemed. Like I was really there. Then I was back in the present and you laid quietly in my arms, weeping. I kissed your wet cheeks. Then your mouth... We were embracing and you told me you loved me. I nearly fell off the bed taking off my tunic and leggings. Your need of me was overwhelming; I...I had to have you. I touched your soft skin...And then in the midst of the storm, it hit me. I had to stop. With Lathander as my witness, Maethor, it took all of my strength and resolve not to make love to you then. Gods help me, though... It was a near thing. Still, I couldn't leave you.~
== BTIMaeth ~*stares silently at the fire.*~
== ~BB!GAVIN~ ~At least I don't have to explain to you about Miranda and Lanie. You might remember her screaming after me in the streets and announcing to the world all of my imperfections--she did it often enough. I made a vow... when I left her... that I would never be intimate with another woman I hadn't sworn to marry. I won't be hurt like that again. Gods above... What are we going to do?~
== BTIMaeth ~*looks up with difficulty*. I swear I won't embarrass you by getting drunk again, Gavin. I'm really sorry.~
== ~BB!GAVIN~ ~That's not what I meant. I mean, we're in no position to...to be that close. We're both constantly in danger and...~
== BTIMaeth ~*Interrupting* I do love you, you know.~
== ~BB!GAVIN~ ~*Quietly.* I know. But this is neither the time or place.~
== BTIMaeth ~I'll keep it quiet, then. But I needed you to know.~
== ~BB!GAVIN~ ~I do understand. When <CHARNAME>'s quest is over, we'll figure this out. I promise.~
== BTIMaeth ~Thank you. Is it asking too much to request a last kiss?~
== ~BB!GAVIN~ ~Never. *kisses her.* Nor is it the last. *kisses her again.*~
== BTIMaeth ~*laughs gently.* Oh, Gavin... Look. Dawn has come.~
EXIT

//10

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
Global("B!GavinRomanceActive","GLOBAL",2)
PartyHasItem("B!PCRING")
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethGavin8","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth MaethorGavin8
~Good morning, Dawnbringer. I am told congratulations are in order.~
DO ~SetGlobal("TIMaethGavin8","GLOBAL",1)~
== ~BB!GAVIN~ ~*Looks up from his cooking.* Back to titles, Maethor?~
== BTIMaeth ~It seems distance is more appropriate now, Gavin. It won't be hard for me...I've only used your name a few scant weeks.~
== ~BB!GAVIN~ ~I suppose. *Hands her a mug of tea.* I don't know if I would be as gracious as you have been in losing <CHARNAME>, though, if it had been you who had won her hand.~
== BTIMaeth ~So what words should I say now that the man I love is planning on marrying the woman I love?~
== ~BB!GAVIN~ ~I'm not sure if anyone writes the perfect words for situations like that. For what it's worth, I'm sorry that I have hurt you.~
== BTIMaeth ~No need to be sorry. You love her. Hells, Gavin, I love her. She is utterly loveable and desirable. She...she just wanted you more.~
== ~BB!GAVIN~ ~Will you...can you...stand by me when it's all said and done?~
== BTIMaeth ~Don't ask me to say anything. My heart will be too empty for words. But stand by you I shall if it is <CHARNAME>'s wish.~
== ~BB!GAVIN~ ~Thank you.~
== BTIMaeth ~May... May I ask you a personal question, Gavin?~
== ~BB!GAVIN~ ~If you wish.~
== BTIMaeth ~Did you ever love me?~
== ~BB!GAVIN~ ~*pause.* I did...and I do. But life involves making decisions.~
== BTIMaeth ~...And in the end, when decisions have to be made, I'm not <CHARNAME>. ~
== ~BB!GAVIN~ ~*Pokes at the fire with a piece of kindling.* Would you have made a different decision if <CHARNAME> had chosen you? Would your love for me have changed your mind?~
== BTIMaeth ~Guilty as charged. There is something about <CHARNAME> that compels beyond reason. But my nature--and yours--forces a choice. Were I not a paladin and you a priest, there might have been...other...solutions. My heart says <CHARNAME> can act pretty much as <PRO_HESHE> wishes. And are we not taught from early on that sharing what we love is the highest ideal? Heh! You blush! Hasn't that ever crossed your mind?~
== ~BB!GAVIN~ ~Erm...yes, but that's fantasy. You ARE a paladin and I AM a priest and the both of us prefer to be faithful.~
== BTIMaeth ~*sighs.* I know. But I cannot help wishing that I did not have to give up everything on the altar of fidelity.~
== ~BB!GAVIN~ ~*Takes one of her hands, squeezes it.* You don't have to give up everything, Maethor; you will always be in my heart. Be my friend. We both said we could be content with that.~
== BTIMaeth ~*Places her free hand against his cheek, and gently kisses him.* Yes, we did say that. And it was the truth. My blessings, then, mellonig, upon your wedding.~
EXIT

//11

CHAIN
IF WEIGHT #-2
~InParty("TIMaeth")
InParty("B!Gavin")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("B!Gavin",CD_STATE_NOTVALID)
Global("TIMaethRomanceActive","GLOBAL",2)
!HasItemEquiped("%tutu_var%BELT05","TIMaeth")
Global("TIMaethGavin9","GLOBAL",0)
See("B!Gavin")~THEN BTIMaeth MaethorGavin8
~Good morning, Dawnbringer.~
DO ~SetGlobal("TIMaethGavin9","GLOBAL",1)~
== ~BB!GAVIN~ ~*Looks up from his cooking.* Back to titles, Dame Grenfell?~
== BTIMaeth ~*Laughs.* Perhaps once I have earned one... It seems distance is more appropriate now, Gavin.~
== ~BB!GAVIN~ ~I suppose. *Hands her a mug of tea.* I'm trying to be gracious in losing <CHARNAME>, Maethor, but it is difficult. That <PRO_HESHE> whom I loved beyond reason was romancing you, a beloved friend, took me by surprise. It seems I am left with nothing but regrets.~
== BTIMaeth ~Regrets?~
== ~BB!GAVIN~ ~All along I felt a little guilty in loving <CHARNAME> when I knew it meant hurting you. Still, I hoped our friendship would remain intact. I never anticipated that my own selfish actions might come back to haunt me. I'm sorry, Maethor.~
== BTIMaeth ~No need to be sorry. You love her. Hells, Gavin, I love her. She is utterly loveable and desirable. But she prefers woman to man and there are few in this dratted world that would accept her completely as she is. You hoped our friendship might remain intact in spite of <CHARNAME>'s choice. Will you honor that hope and stand by me when it's all said and done? I have been closer to you than anyone.~
== ~BB!GAVIN~ ~I will. It'll hurt, but I can and will do that for you.~
== BTIMaeth ~Thank you. *pauses.* May... May I ask you a personal question, Gavin?~
== ~BB!GAVIN~ ~If you wish.~
== BTIMaeth ~I would know if you ever loved me.~
== ~BB!GAVIN~ ~*pause.* I did...and I do. Why do you ask?~
== BTIMaeth ~...Because in the end, when decisions had to be made, I wasn't sure of how you felt. I...I think if <PRO_HESHE> had not chosen me, <PRO_HESHE> probably would have chosen you. Would your choice have been different than mine?~
== ~BB!GAVIN~ ~*Pokes at the fire with a piece of kindling.* You mean would I have made a different decision if <CHARNAME> had chosen me? Would your love for me have changed my mind? It's probably best not to go there.~
== BTIMaeth ~Don't worry. I won't. There is something about <CHARNAME> that compels beyond reason. But my nature--and yours--forces a choice. Were I not a paladin and you a priest, there might have been...other...solutions. My heart says <CHARNAME> can act pretty much as <PRO_HESHE> wishes. And are we not taught from early on that sharing what we love is the highest ideal? Heh! You blush! Hasn't that ever crossed your mind?~
== ~BB!GAVIN~ ~Erm...yes, but that's fantasy. You ARE a paladin and I AM a priest and the both of us prefer to be faithful.~
== BTIMaeth ~*sighs.* I know. But I cannot help wishing that you did not have to give up everything on the altar of fidelity.~
== ~BB!GAVIN~ ~*Takes one of her hands, squeezes it.* I don't have to give up everything, Maethor; you will always be in my heart. Be my friend. We both said we could be content with that.~
== BTIMaeth ~*Places her free hand against his cheek, and gently kisses him.* Yes, we did say that. And it was the truth.~
EXIT