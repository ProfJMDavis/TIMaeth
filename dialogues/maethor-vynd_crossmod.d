// Interjections

//Vynd
INTERJECT_COPY_TRANS GV#VYND 0 TIMaethVynd
== TIMaethJ IF ~InParty("TIMaeth") !StateCheck("TIMaeth",CD_STATE_NOTVALID)~ THEN ~Uil taudl! Phuul dalharuk elemmiiresa?~
== GV#VYND~What the...? Drowish? Here?! I don't know who you are, surfacer, but, no... I'm not the 'son of stars.' Vhaerun! I sure wouldn't be skulking in a pit like The Burning Wizard if I were!~
== TIMaethJ~Sorry...~
== GV#VYND~Yeah. Whatever.~
END

// Banters

//1

CHAIN IF WEIGHT #-2
~InParty("TIMaeth")
See("TIMaeth")
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VyndTIMaeth1","GLOBAL",0)~ THEN BGV#VYND VyndTIMaeth1
~Fascinated by the forbidden, are we?~
DO ~SetGlobal("VyndTIMaeth1","GLOBAL",1)~
== BTIMaeth ~*Startles.* Oh gods! I'm sorry. Was I staring?~
== BGV#VYND ~No. To say you were staring would be an understatement. You were mentally stripping off my clothing. Who do I have to kill to get some privacy around here? Oh...that's right...you.~
== BTIMaeth ~*taken aback.* Ummmm...Good luck with that. I'm what <CHARNAME> calls a tank... But I'll leave. What do you mean by 'forbidden'?~
== BGV#VYND ~My experience of surface elves fall into two categories. Those who want to kill me on sight and those who want to do me on sight. Considering that surface and Underdark elves are supposed to be mortal enemies, you'd think the second group shouldn't even exist...but no...they outnumber the cold-blooded killers two to one. *sigh.* It's a simple concept. Don't look so confused.~
== BTIMaeth ~*Blushes.* But you make it sound so...so institutional. I really didn't mean to stare. I just think you're beautiful. I mean, I don't expect anything.~
== BGV#VYND ~*Raises an eyebrow.* So you think I'm beautiful? What would your god say about that?~
== BTIMaeth ~I wouldn't think he'd be able to say much. Corellon's first wife was Drow...Araushnee was her name...and she was said to have once been the most beautiful of the Seldarine. When the rebellion failed, Corellon actually had to alter her appearance so he wouldn't ever be tempted to take her back.~
== BGV#VYND ~*Rolls eyes.* So you know about that? You are well informed on your history. I'll give you that. Still, I'd like to be able to change clothes without being watched.~
== BTIMaeth ~I'll...I'll just make myself scarce. Ummmm... Do you need anything?~
== BGV#VYND ~Your attempts to ingratiate have the charm of your average puppy. Sloppy and unwanted. Consider yourself pardoned provided you disappear promptly.~
EXIT

//2

CHAIN IF WEIGHT #-2
~InParty("GV#VYND")
See("GV#VYND")
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VyndTIMaeth1","GLOBAL",1)
Global("TIMaethVynd1","GLOBAL",0)~ THEN BTIMaeth TIMaethVynd1
~Ummmm....May I ask your name?~
DO ~SetGlobal("TIMaethVynd1","GLOBAL",1)~
== BGV#VYND ~You again? Answer this first: just what are you?~
== BTIMaeth ~Huh? I'm an elf.~
== BGV#VYND ~Like hells you are. We don't normally have a mouthful of fangs and glowing red eyes.~
== BTIMaeth ~Well, I'm mostly elf, anyway. I'm the elven equivalent of a tiefling. One of the Fey'ri, I guess.~
== BGV#VYND ~Demonspawn, then. So why the do-gooder act?~
== BTIMaeth ~It's not an act. I'm a knight. I'm a Blade of Corellon.~
== BGV#VYND ~What the f...? A knight? Aren't knights supposed to be human?~
== BTIMaeth ~Yeah, well, humans think they invented everything.~
== BGV#VYND ~True enough.~
== BTIMaeth ~Anyway, you're just a little out of touch. I'm not even close to being the first elven knight. So...your name? Mine's Maethor.~
== BGV#VYND ~Vynd. I understand Corellon isn't fond of drow...Aren't you supposed to kill me to satisfy his obscure sense of honor?~
== BTIMaeth ~Err...No. I don't have a specific set of laws requiring me to act against my better judgement.~
== BGV#VYND ~*smirks.* What? No absolute code you have to follow?~
== BTIMaeth ~*shakes head.* No. I'm not 'Lawful,' so to speak. I operate pretty much based on my own conscience. I mean, Corellon does favor those who kill the followers of Lolth, but if I killed you and you turned out to be a worshipper of Eilistraee, I'd lose my standing as a knight. So I hope you don't worship Lolth, you understand, since <CHARNAME> hired you and I'd rather not piss <HIMHER> off.~
== BGV#VYND ~Interesting. Don't you want to know who I worship, then?~
== BTIMaeth ~Let's just say it might cause...problems...if you give the wrong answer. I'm not eager to attack another member of my party.~
== BGV#VYND ~If it makes your conscience any easier, I don't follow the spider-goddess.~
== BTIMaeth ~Ummm....good. Then we're not in conflict with one another. Pleased to make your acquaintance.~
== BGV#VYND ~*shakes head.* Heh! You are a strange one, Demonspawn.~
== BTIMaeth ~So I've been told.~
EXIT

//3

CHAIN IF WEIGHT #-2
~InParty("GV#VYND")
See("GV#VYND")
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VyndTIMaeth1","GLOBAL",1)
Global("TIMaethVynd2","GLOBAL",0)~ THEN BTIMaeth TIMaethVynd2
~Can I ask you something, Vynd?~
DO ~SetGlobal("TIMaethVynd2","GLOBAL",1)~
== BGV#VYND ~Just a guess here, Demonspawn... Evidently you can.~
== BTIMaeth ~*Sigh.* Okay. I walked into that one. MAY I ask you something?~
== BGV#VYND ~What?~
== BTIMaeth ~You said before that surface elves and drow are supposed to hate each other. Our respective sides' behavior has always reflected a mutual distrust and fury. In your opinion...why?~
== BGV#VYND ~I always assumed it was based solely on that spat between the gods. Araushnee attempts to murder Corellon. He gets pissed off and calls in favors from his allies. War breaks out. One side wins, declaring the other side to be unredeemably evil, etc. etc. etc. It doesn't have anything to do with us mortals, but we act like good pawns and kill each other.~
== BTIMaeth ~That's a remarkably cynical attitude.~
== BGV#VYND ~It's the only sane attitude, Demonspawn.~
== BTIMaeth ~So I don't have to hate you?~
== BGV#VYND ~You're being ingratiating again.~
== BTIMaeth ~Why do I get the feeling that you think I'm only being friendly to you because I want to sleep with you?~
== BGV#VYND ~Because that's the most accurate summation of your motivations?~
== BTIMaeth ~Damn! That hurt! And it's not even accurate. I understand you grew up being abused by Underdark women...~
== BGV#VYND ~'Abused'? That's an understatement. I've endured floggings, humiliation, and endlessly creative ways of inducing pain...~
== BTIMaeth ~Still...Not a lick of it was my fault. I grew up under constant scrutiny and sexual pressure from my courtesan mother and a lot of smirking, tail-hooking men like Coran. I don't assume that you're somehow at fault because of it, so I don't see why you have to take YOUR grievances out on ME.~
== BGV#VYND ~Oh, I don't know... You're convenient. Look...all I want to do is enjoy my freedom. I'm not looking for anything--least of all tail. I'm aware that that's disappointing for you, but I'm not the hero of one of your f-ing Drizzt Do'Urden novels.~
== BTIMaeth ~*Blushes.* So...ummm...you noticed those?~
== BGV#VYND ~Hard to miss a demonknight drooling over pulp novels. Kinda catches the eye, if you know what I mean. You should be out there slicing up the innocent. But instead you're fondling paper images of Drizzt.~
== BTIMaeth ~Everyone's gotta have a hobby.~
EXIT

//4

CHAIN IF WEIGHT #-2
~InParty("GV#VYND")
See("GV#VYND")
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
TimeOfDay(NIGHT)
Global("TIMaethVynd1","GLOBAL",1)
Global("TIMaethVynd3","GLOBAL",0)~ THEN BTIMaeth TIMaethVynd2
~Hello, Vynd.~
DO ~SetGlobal("TIMaethVynd3","GLOBAL",1)~
== BGV#VYND ~*curses softly*~
== BTIMaeth ~Don't take it personally... To anyone else, you'd be hidden. To me? I'm Fey'ri. Not only can I see you, but I can hear your breathing, sense your intent, and even smell that so-called 'scentless' soap you use; it's godsawful, by the way. Just as well you showed up during my 3AM watch. I need to have you skewer my tattered ego right about now.~
== BGV#VYND ~...~
== BTIMaeth ~You know... Your razor-sharp sense of humor. Funny as hells. I've enjoyed hearing you use it against the others. And I make an excellent target.~
== BGV#VYND ~In a foul mood, eh? Who pissed in your porridge?~
== BTIMaeth ~What? You're not going to make hilarious jokes about my hopeless attraction to you? Or that I'm a Demonspawn? Or short? Or lonely? Or the bastard kid of a whore? I'm disappointed. You might have brought some humor into my desolate existance.~
== BGV#VYND ~I was thinking about how quickly I could slit your throat, actually.~
== BTIMaeth ~Nice try at intimidation, Vynd. But, given that I am a demonspawn paladin with exceptional strength, razor-sharp senses, and no actual need to sleep, it kinda fell far short of the mark. Anyway, no double-entendre intended, my sword is much bigger than yours.~
== BGV#VYND ~I think I'll just leave you alone...~
== BTIMaeth ~Good man.~
EXIT

// 5

CHAIN IF WEIGHT #-2
~InParty("GV#VYND")
See("GV#VYND")
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
CombatCounter(0)
!See([ENEMY])
TimeOfDay(NIGHT)
Global("VyndTIMaeth2","GLOBAL",0)~ THEN BGV#VYND VyndTIMaeth1
~So how's that belt working out for you?~
DO ~SetGlobal("VyndTIMaeth2","GLOBAL",1)~
== BTIMaeth ~I was already resigned to spending an eternity in one or more of the hells before I joined this party. I just didn't expect it to start before I was dead.~
== BGV#VYND ~That good, huh?~
== BTIMaeth ~Does the term 'sexual harassment' mean anything to you, Vynd?~
== BGV#VYND ~Life in the Underdark?~
== BTIMaeth ~Not even close. When I was female, I thought I knew how to handle it. I grew up with a harlot, after all. The other men in the party can be...ye gods...grotesque. But I handled it. No problem.~
=~But you learn something new every day. I'm having real trouble dealing with how I'm treated now. I used to really get into women. Had a few love-affairs with some pretty gals. I mean, I'm like Corellon...I can go either way. But lately, as a male, I've been uniformly and aggressively evaluated based on the content of my breeches by every female within ten feet of me. But you know who's the worst offender?~
== BGV#VYND ~*Grins.* Enlighten me.~
== BTIMaeth ~InParty("Alora")~ ~Alora. I was taking off my boots the other day just to shake out some rocks...I could feel the burn marks on me from her stare. Honest to Sehanine, she thinks I'm the bastard of a halfling. I only wish this belt had put a few more inches under my heels...~
== BTIMaeth ~InParty("Branwen")~ ~Branwen. She says I'm too short for her, but she's managed to slap my ass at least three times in the past few days. I'm even afraid to reverie at night.~
== BTIMaeth ~InParty("Faldorn")~ ~Faldorn. The less said...the better. I'm still embarrassed by what she thinks is sexy.~
== BTIMaeth ~InParty("Finch")~ ~Finch. I hate being short. Hate it. Halflings, dwarves, and gnomes all think I'm open season. I asked her if she could recommend a good book for me to read. She giggled and offered me her copy of 'Nymphic Nights: My Life as a Thayvian Pleasure Slave.'~
== BTIMaeth ~InParty("Jaheira")~ ~Jaheira. She apparently thinks I need to be...um...educated.~
== BTIMaeth ~InParty("Imoen2")~ ~Imoen. Yeah, she looks innocent. Don't let that fool you.~
== BTIMaeth ~InParty("RH#Isra")~ ~Isra. Ignore what she says when she gives you the big lecture about how her allegiance to Sune Firehair is only really about appreciating beauty and love and art in the abstract. She was a true devotee of her goddess yesterday. I won't even repeat what she offered to do to me.~
== BTIMaeth ~InParty("Safana")~ ~Safana. She wasn't into me when I was a woman, but put a gwib on me and WHAM! She not only wants it, but acts like she's doing ME a favor.~
== BTIMaeth ~InParty("SharTeel")~ ~Shar-Teel. She got drunk at the last inn we were at and this was her pickup line: 'Hard day, Maethor? Want a harder night?' Honest to Sehanine!~
== BTIMaeth ~Gender(Player1,FEMALE)~ ~<CHARNAME>!! It's like she's showing off or something!~
== BTIMaeth ~Oh, you know who... I'm afraid if I mention her name, she'll appear. You know...like summoning a balor.~
== BGV#VYND ~You would have my sympathy...But better you than me.~
== BTIMaeth ~You're a real pal, Vynd. Remind me not to 'accidentally' take your head...or gwib...off in the next engagement.~
EXIT
