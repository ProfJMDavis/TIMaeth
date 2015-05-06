IF ~~ THEN BEGIN KnowNo
SAY ~Well! I'm really glad you decided to help us.~
=~Since we're going to be travelling together, I thought maybe you'd like to know a little more about me?~
++~No, not really. I think I know enough to get by. At least for now.~ + Professional
++~I'd like that, Lyrica.~ + KnowYes
END

IF ~~ THEN BEGIN Professional
SAY ~Alright. We can keep it professional. I'll let you know when I think we've found a significant clue to Tybalt's whereabouts.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN KnowYes
SAY ~Ok, then. What would you like to know?~
+ ~Global("TILyricaSexy","LOCALS",0)~ + ~Forgive me for noticing, but you and your sister... Well, you're not quite like any elves I've seen before.~ DO ~SetGlobal("TILyricaSexy","LOCALS",1)~ +Sexy
+ ~Global("TILyricaThief","LOCALS",0)~ + ~So you're a thief as well as a fighter?~ DO ~SetGlobal("TILyricaTheif","LOCALS",1)~  +Thief
+ ~Global("TILyricaChildhood","LOCALS",0)~ + ~Tell me about where you grew up. DO ~SetGlobal("TILyricaChildhood","LOCALS",1)~  +Childhood
+ ~Global("TILyricaFamily","LOCALS",0)~ + Tell me about your family. DO ~SetGlobal("TILyricaFamily","LOCALS",1)~ +Family
+ ~Global("TILyricaOpen","LOCALS",0)~ + ~That's enough for now. Thank you for being so open.~ DO ~SetGlobal("TILyricaOpen","LOCALS",1)~ +Open
END

IF ~~ THEN BEGIN Open
SAY ~You're very welcome. We'll talk again.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Sexy
SAY ~You mean our looks? Or our abilities?~
++~I don't want to sound crude, but you're...ummm...unusually appealing.~ + Sexy1
++~Abilities.~ + Able
++~Both.~ + SexyAble
END

IF ~~ THEN BEGIN Sexy1
SAY ~*Laughs.* That's one way of putting it, I suppose. Our mother was a courtesan. Let's just say our bloodline is probably a little unusual and leave it at that.~
++~You must get stared at alot.~ + Sexy2
++~Does it make you feel uncomfortable?~ + Sexy3
END

IF ~~ THEN BEGIN Sexy2
SAY ~Believe it or not, one of the advantages of being in a small town is that the locals get used to what you look like. We're just part of the local scenery by now.~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN Sexy3
SAY~Not anymore. We've been living in Beregost so long that the locals don't seem to notice the difference anymore. Marta makes use of it to be a better leader in her duties as a paladin and I...well, I just make use of it.~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN Able
SAY ~Well, I'm fast, but that's not all that uncommon for elves. It's Marta who draws a lot of stares for what she can do. Marta's much stronger than most elves. And most humans, actually. Our mother was a courtesan, so we have some...ummm...unusual ancestry.~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN SexyAble
SAY ~*Lyrica sighs.* We try very hard to blend in. But, Marta's strength, my agility, and the way both of us look not quite...right...has been observed before by others.~
=~Let's just say our elvish ancestry is not as pure as some think it should be and leave it at that.~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN Thief
SAY ~Well... I trained originally in combat. The equally practical...uh...street skills I learned unofficially on my own.~
=~I mean, I can lighten a merchant's load, so to speak, but I don't usually do that sort of thing.~
++~By the Gods! I've found an honest thief!~ + HonestThief
++~So you're saying the knowledge is functionally the same but intent determines how you use it?~ + Intent
END

IF ~~ THEN BEGIN HonestThief
SAY ~*She looks puzzled for a second, then laughs.* I mean I prefer to locate and disarm traps out in the wilderness and open locked chests rather than break into locked and trapped houses.~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN Intent
SAY ~Exactly. I prefer to locate and disarm traps out in the wilderness and open locked chests rather than break into locked and trapped houses.~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN Home
SAY ~Marta and I were both born in the forest of Tethir near Suldanessellar. I spent much of my childhood there.~
=~It's a beautiful city in the trees. Probably not like anything you've seen before.~
++~Tethyr? That's a long way from here.~ + LongWay
END

IF ~~ THEN BEGIN LongWay
SAY ~It is. My people call that time the Ten Black Days of Eleint. When King Alemander IV, much of his family, and General Sharboneth were killed, their human subjects looked for someone they could blame. A civil war erupted and rampaging mobs burned the forests, killing many of my people.~
++~I'm truly sorry, Lyrica.~ + Dangerous
END

IF ~~ THEN BEGIN Dangerous
SAY ~Thank you. I'm grateful for your kind words. Anyway, my mother decided that it was too dangerous to stay in Tethyr. Violence against elves was common then and, as you've noticed, we stand out.~
=~During our flight, we met Sir Tybalt Grenfell on the road to Athkatla, and he protected us from then on. To make a complicated story short, he allowed us to lease us his mother's former house in Beregost...~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN Family
SAY ~Well, you've met Marta. She's about it. Mother was a courtesan, so neither of us ever got to know our fathers well.~
++~You mentioned someone else before... Sir Tybalt? Who's he?~ + Tybalt
++~Who was that little boy I saw with you in the house at Beregost?~ + Son
END

IF ~~ THEN BEGIN Tybalt
SAY ~Marta's younger than me, so she has a special bond with Sir Tybalt Grenfell. Marta would probably say Sir Tybalt...we always called him Tyb...was kind of a foster father to us.~
++~I understand. I'm an orphan myself. I had a foster father. Gorion.~ + GorionQuestion
END

IF ~~ THEN BEGIN GorionQuestion
SAY ~Really? Is he still back in Candlekeep?~
++~No. He was recently killed on the road at Lion's Way. He died protecting me.~ + GorionNews
IF ~~ THEN DO ~SetGlobal("LyrKnowsGorionDead","LOCALS",1)
END

IF ~~ THEN BEGIN GorionNews
SAY ~Oh! That's like our mother! When we were leaving Tethyr, we were caught by a mob. Tyb came by just in time to save Marta and me, but they'd beaten Mother to death and there wasn't anything he could do.~
+~It's a sign we live in troubled times.~
END

IF ~~ THEN BEGIN Son
SAY ~That was my son, Artamir. As much as I miss the city of my birth, the war in Tethyr and the subsequent attacks on Sudanessellar make me grateful I was able to raise him here, instead. *Lyrica pauses to regain her composure.* I left a lot behind me there.~
IF ~~ GOTO KnowYes
END

IF ~~ THEN BEGIN Open
SAY ~*Lyrica nods.* We'll talk more later, I guess.~
IF ~~ THEN EXIT

IF ~~ THEN BEGIN Weight
SAY ~*Lyrica sits down beside you and rests one foot on a nearby rock.* It feels so good to get off of my feet for a moment. I'd forgotten how tiring it is to be on the road. *She lightly pats her stomach.* Maybe it'll help me lose some of this.~
++~But I like you the way you are. You look good with a little weight on you.~ + Fat
++~Heh! Next you'll be complaining about how you're too skinny.~ + Skinny
++~I could stand to lose some weight myself.~ + PCFat
END

IF ~~ THEN BEGIN Fat
SAY ~*She slaps you lightly on the shoulder and smirks at you.* Don't say that--you'll make my body think it's perfectly acceptable to gain weight! I simply can't face having to punch another hole in my belt!~
++~It is perfectly acceptable. You shouldn't worry about your size.~ + Fat2
++~Whatever. You would have to gain a lot of weight to have to do that, though.~ + Fat3
++~There are other things I'd like your body to think it's perfectly acceptable to do.~ + Flirt
END

IF ~~ THEN BEGIN Fat2
SAY ~Perhaps you'll convince me one day.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Fat3
SAY ~You flatter me. Really.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Flirt
SAY ~*Lyrica laughs heartily.* I bet!~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Skinny
SAY ~Never! You know what they say about that? You're never too rich or too thin!~
++~They also say the bigger the cushion the better the...~ + Skinny1
END

IF ~~ THEN BEGIN Skinny1
SAY ~*Grinning, Lyrica puts her hand on your mouth.* Stop while you're ahead, lover-boy.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN PCFat
SAY ~*Lyrica looks you over slowly. Her gazes travels from your face to your feet and back again, pausing for an excruciating moment at your waistline. Then she looks you in the eyes and smiles, openly approving.*~
= ~I don't think so. You're in good shape for a former monk.~
++~Thanks. I think.~ + RearView
++~I spent a lot of time the training with the Candlekeep soldiers. Every moment I could, anyway.~ + Training
++~I wasn't a monk!~ + Monk
END

IF ~~ THEN BEGIN RearView
SAY ~I do enjoy my position in formation. *wink.* Watching your rear is thanks enough for me.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Training
SAY ~It shows.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Monk
SAY ~*She starts counting on her fingers.* One: Candlekeep isn't known for its nightlife. Two: you would have been kept inside studying those books when you could have been running around outside.~
=~And three: your foster father sounds like the kind of man who would have kept you away from sex, drinking, and anything else that is fun.~
++~*roll your eyes.*~ + Monk1
++~Too true. I admit it. Do you plan on making up for my wasted childhood?~ + Monk2
++~I'll have you know I did a lot while I was there.~ + Monk3
END

IF ~~ THEN BEGIN Monk1
SAY ~I knew it! Oh well... it'll be fun to help you make up for the lost time.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Monk2
SAY ~Only if you make it worth my time. *grin*~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Monk3
SAY ~Right. One of these days you'll have to prove it.~
++~I will.~ +  Wink
END

IF ~~ THEN BEGIN Wink
SAY ~I look forward to it.~
IF ~~ EXIT
END

IF ~PartyHasItem("BELT05")~ THEN BEGIN Girdle
SAY ~Why are you carrying that thing around? Are you trying to keep your options open or something?~
=~I'll have you know I only have a taste for men. Women lack... how should I phrase this?... my favorite toy.~
++~Why are you asking? Do you want one of your own? *smirk* We could put it on you.~ + StrapOn
END

IF ~~ THEN BEGIN StrapOn
SAY ~But then I'd be too busy playing by myself to play with you...~
++~Promises, promises. You're insatiable, woman.~ + Gender
END

IF ~~ THEN BEGIN Gender
SAY ~But seriously. Have you ever wondered what it must be like to be the opposite sex?~
++~No.~ + Gender1
++~Not really, although I've wondered why women think the way they do.~ + Gender2
++~Yes. Life must be a lot easier.~ + Gender3
++~You've guessed my secret!~ + Gender4
END

IF ~~ THEN BEGIN Gender1
SAY ~Never? Surely we mystify you sometimes! We're allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish.~
= ~You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.~
++~That's me. Responsible and reliable. That's also why I lead this group.~ + RR
++~Is that how you think of me? Responsible and reliable? Gods, how boring!~ + Boring
END

IF ~~ THEN BEGIN RR
SAY ~*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Boring
SAY ~*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
++~Only if it's your skirt, Lyrica.~ +Skirt1
END

IF ~~ THEN BEGIN Skirt1
SAY ~*wink*~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Gender2
SAY ~I've wondered about men! Women are allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish.~
=~You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.~
++~That's me. Responsible and reliable. That's also why I lead this group.~ + RR2
++~Is that how you think of me? Responsible and reliable? Gods, how boring!~ + Boring2
END

IF ~~ THEN BEGIN RR2
SAY ~*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Boring2
SAY ~*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
++~Only if it's your skirt, Lyrica.~ +Skirt2
END

IF ~~ THEN BEGIN Skirt2
SAY ~*wink*~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Gender3
SAY ~It seems to be a give and take situation, actually. Men are respected more in society, but are also expected to be more reliable and responsible. Women can change their minds, cry in public, and be as boyish or as feminine as they want to be, but are expected to be less reliable and less responsible.~
++~That's me. Responsible and reliable. That's also why I lead this group.~ + RR3
++~Is that how you think of me? Responsible and reliable? Gods, how boring!~ + Boring3
END

IF ~~ THEN BEGIN RR3
SAY ~*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Boring3
SAY ~*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
++~Only if it's your skirt, Lyrica.~ +Skirt3
END

IF ~~ THEN BEGIN Skirt3
SAY ~*wink*~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Gender4
SAY ~*Lyrica rolls her eyes.* Serves me right for expecting you to be serious. Surely we women mystify you sometimes! We're allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.~
++~That's me. Responsible and reliable. That's also why I lead this group.~ + RR4
++~Is that how you think of me? Responsible and reliable? Gods, how boring!~ + Boring4
END

IF ~~ THEN BEGIN RR4
SAY ~*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN Boring4
SAY ~*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.~
++~Only if it's your skirt, Lyrica.~ +Skirt4
END

IF ~~ THEN BEGIN Skirt4
SAY ~*wink*~
IF ~~ EXIT
END





Well! I'm really glad you decided to help us. Since we're going to be travelling together, I thought maybe you'd like to know a little more about me?
	No, not really. I think I know enough to get by. At least for now.
		Alright. We can keep it professional. I'll let you know when I think we've found a significant clue to Tybalt's whereabouts.
	I'd like that, Lyrica.
		Ok, then. What would you like to know? 
			Forgive me for noticing, but you and your sister... Well, you're not quite like any elves I've seen before.
				You mean our looks? Or our abilities?
					You two are...ummm...unusually appealing even for elves.
						That's one way of putting it, I suppose. Let's just say our ancestry is a little unusual and leave it at that. Marta makes use of it to be a better leader as a paladin and I...well, I just make use of it.
					Abilities.
						Well, I'm fast, but that's not all that uncommon for sylvan elves. It's Marta who draws a lot of stares for what she can do. Marta's much stronger than most elves. And most humans, actually. We have some...ummm...unusual ancestry. I'd rather not go into details.
					Both.
						*Lyrica sighs.* We always hope that we'll be able to blend in and we're always disappointed. Marta's strength, my agility, and the way both of us look not quite...right...has been observed before by others. Let's just say our elvish ancestry is not, perhaps, as pure as it should be and leave it at that.
			So you're a thief as well as a fighter?
				Well...not exactly. I trained both in combat and in...equally practical street skills. I mean, I can lighten a merchant's load, so to speak, but I don't usually do that sort of thing. I prefer to locate and disarm traps out in the wilderness and open locked chests rather than break into locked and trapped houses, but the knowledge is functionally the same. It's all in how you use it.
			Tell me about where you grew up.
				We were both born on the forest of Tethir near Suldanessellar and spent most of our childhood there. What can I say? It's a beautiful city in the trees. But we were forced to leave when the civil war broke out. I don't want to bore you with the details, but violence against elves was common then... Our mother was killed by bandits as we fled on foot and Marta and I barely escaped with our lives. We met Sir Tybalt Grenfell on the road to Athkatla, and he leased us his mother's former house in Beregost...where we met you!
			Tell me about your family.
				Well, you've met Marta. She's about it. Mother was a courtesan, so neither of us ever got to know our fathers well. Marta would probably say Sir Tybalt...we always called him Tyb...was kind of a foster father to us. That's why it's so hard not knowing where he's gone.
			Who was that little boy I saw with you in the house at Beregost?
				That was my son, Etienne. As much as I miss the city of my birth, the war in Tethyr and the subsequent attacks on Sudanessellar make me grateful I was able to raise him here, instead. *Lyrica pauses to regain her composure.* I left a lot behind me there.
			That's enough for now. Thank you for being so open.
				*Lyrica nods.* We'll talk more later, I guess.
				
So, my <pro_lordlady], now that we're going to work together, it would seem introductions are in order. As I mentioned before, my name is Lyria, most lately of Beregost. And you are?
	I am <charname>. From Candlekeep.
		*nods* I've heard of it, although I have never had the good fortune to go there. You must be a scholar at heart.
			I am. I loved the books and my teachers. They made even the most boring lessons seem worth the trouble of sitting still even when I was very young.
				Well, a good education is always a blessing. Whether one knows it or not. But look, <charname>, we're being left behind. Let us speak more later.
			I suppose. I've certainly had a better education than most.
				Well, a good education is always a blessing. Whether one knows it or not. But look, <charname>, we're being left behind. Let us speak more later.
			Not really. I was just raised there. I was an active, noisy child. That doesn't work out well in a library.
				I guess not. Still, you must have learned a lot even without wanting to. A good education is always a blessing. Whether one knows it or not. But look, <charname>, we're being left behind. Let us speak more later.
			*You laugh bitterly* No. I hated the library. I hated reading. And I hated the constant lessons. I would rather have been training with Candlekeep's soldiers.
				Believe it or not, there was a time I would have agreed with the sentiment. But time has a funny way of altering one's viewpoints. But let us hurry on. We're being left behind.

So, my <pro_lordlady>, now that we're going to work together, it would seem introductions are in order. As I mentioned before, my name is Lyria, most lately of Beregost. And you are?
	To be honest, I am <charname>, of nowhere in particular.
		*raises an eyebrow* I guess I should be sorry to hear you say that, although it implies you're free to be wherever you wish; an often desirable state of affairs. Did you leave of your own volition? *pauses, thoughfully* Or should I not ask that question?
			*Shrugging* It was a forced departure, but nothing to be ashamed of. I left on good terms with everyone there.
				Eh! Life does force us to move on to new pastures sometimes. *sighs* Far too often, for my liking. But let us meditate on more pleasant thoughts. The road lies ahead and ever tempts us to new adventures.
			My father and I fled Candlekeep. He felt we were in danger and some of my experiences there lead me to agree with him.
				*Looks concerned* And are you still in danger?
					Oh yes. No doubt about that. But I'm sure we'll be able to handle ourselves.
						*Her hand settles onto her sword-hilt* You have a soldier's way about you, <charname>. Let us keep a positive outlook, indeed. That, alone, may keep fear in check.
					Yes. To tell the truth, I'm terrified at times.
						*Her hand settles onto her sword-hilt* Well, <charname>, if it is any comfort, my sword is at your disposal. And, truly, I sense no weakness in your words... only the prudent thoughts of one who has seen trouble. But let us keep a more positive outlook, indeed. That may help keep fear in check.
			I'd rather you didn't.
				That's fine, <charname>. I will not pry. But come, let's catch up with the others.

(pc is a male paladin)
L: So, my <pro_lordlady], now that we're going to work together, it would seem introductions are in order. As I mentioned before, my name is Lyria, most lately of Beregost. And you are?
P: Sir <charname>, but you can call me just <charname>. I am not associated with an Order of knights yet.
L: That's like my...um...mentor Sir Tybalt Grenfell. He never stood on ceremony among his friends. 'Just call me Tyb... Tyb of the Lance!' he would roar and we would all laugh.*smiles* A great pity Tyb never got to meet you. He might have helped you with that. Acceptance by an established Order of knights is often difficult.
P: I expected as much, but I plan to make an unforgettable impression. You've noted, no doubt, my wit. You shall be equally impressed with my prowess in battle.
L: *smiles* I have indeed. And I look forward to further demonstration of both.

L: That's like my...um...mentor Sir Tybalt Grenfell. He never stood on ceremony among his friends. 'Just call me Tyb... Tyb of the Lance!' he would roar and we would all laugh.*smiles* A great pity Tyb never got to meet you. He might have helped you with that. Acceptance by an established Order of knights is often difficult.
P: Yes, but I'll be accepted nevertheless. I'm persistant.
L: I applaud your attitude. If at once you don't succeed... and all that. Tyb's Order, the Order of the Radiant Heart, seems to demand such patience and persistance. I imagine the others are similar. Keep your chin up, <charname>.

L: That's like my...um...mentor Sir Tybalt Grenfell. He never stood on ceremony among his friends. 'Just call me Tyb... Tyb of the Lance!' he would roar and we would all laugh.*smiles* A great pity Tyb never got to meet you. He might have helped you with that. Acceptance by an established Order of knights is often difficult.
P: I have no desire to join an Order. I follow the laws of society and the will of my god. I don't need anyone else in my life to guide my decisions--at least as long as I am romantically unattached.
L: *grinning* Indeed. Lovers do have expectations!

(pc is a femle paladin)
L: So, my <pro_lordlady], now that we're going to work together, it would seem introductions are in order. As I mentioned before, my name is Lyria, most lately of Beregost. And you are?
P: Lady <charname>, but you can call me just <charname>. I am not associated with an Order of knights yet.
L: *smiles*Ah! you are one of those rare gems of the profession; a "Ladyknight." The poet Spenser had much praise for women of the Lance: 'But if thou knew what person overthrew thee, much greater griefe and shameful regret would thou feel. A single damsel met thou on a level plain, and there so hard beset thee.'
L: You're like my...um...mentor Sir Tybalt Grenfell. He never stood on ceremony among his friends. 'Just call me Tyb... Tyb of the Lance!' he would roar and we would all laugh.*smiles* A great pity Tyb never got to meet you. He might have helped you with that. Acceptance by an established Order of knights is often difficult.
P: I expected as much, but I plan to make an unforgettable impression. You've noted, no doubt, my wit. You shall be equally impressed with my prowess in battle.
L: *smiles* I have indeed. And I look forward to further demonstration of both.

L: You're like my...um...mentor Sir Tybalt Grenfell. He never stood on ceremony among his friends. 'Just call me Tyb... Tyb of the Lance!' he would roar and we would all laugh.*smiles* A great pity Tyb never got to meet you. He might have helped you with that. Acceptance by an established Order of knights is often difficult.
P: Yes, but I'll be accepted nevertheless. I'm persistant.
L: I applaud your attitude. If at once you don't succeed... and all that. Tyb's Order, the Order of the Radiant Heart, seems to demand such patience and persistance. I imagine the others are similar. Keep your chin up, <charname>.

L: You're like my...um...mentor Sir Tybalt Grenfell. He never stood on ceremony among his friends. 'Just call me Tyb... Tyb of the Lance!' he would roar and we would all laugh.*smiles* A great pity Tyb never got to meet you. He might have helped you with that. Acceptance by an established Order of knights is often difficult.
P: I have no desire to join an Order. I follow the laws of society and the will of my god. I don't need anyone else in my life to guide my decisions--at least as long as I am romantically unattached.
L: *grinning* Indeed. Lovers do have expectations!

				
*Lyrica sits down beside you and rests one foot on a nearby rock.* It feels so good to get off of my feet for a moment. I'd forgotten how tiring it is to be on the road. *She lightly pats her stomach.* Maybe it'll help me lose some of this.
	But I like you the way you are. You look good with a little weight on you.
		*She slaps you lightly on the shoulder and smirks at you.* Don't say that--you'll make my body think it's perfectly acceptable to gain weight! I simply can't face having to punch another hole in my belt!
			It is perfectly acceptable. You shouldn't worry about your size.
				Perhaps you'll convince me one day.
			Whatever. You would have to gain a lot of weight to have to do that, though.
				You flatter me. Really.
			There are other things I'd like your body to think it's perfectly acceptable to do.
				*Lyrica laughs heartily.* I bet!
	Heh! Next you'll be complaining about how you're too skinny.
		Never! You know what they say about that? You're never too rich or too thin!
			They also say the bigger the cushion the better the...
				*Grinning, Lyrica puts her hand on your mouth.* Stop while you're ahead, lover-boy.
	I could stand to lose some weight myself.
		*Lyrica looks you over slowly. Her gazes travels from your face to your feet and back again, pausing for an excruciating moment at your waistline. Then she looks you in the eyes and smiles, openly approving.* I don't think so. You're in good shape for a former monk.
			Thanks. I think.
				I do enjoy my position in formation. *wink.* Watching your rear is thanks enough for me.
			I spent a lot of time the training with the Candlekeep soldiers. Every moment I could, anyway.
				It shows.
			I wasn't a monk!
				*She starts counting on her fingers.* One: Candlekeep isn't known for its nightlife. Two: you would have been kept inside studying those books when you could have been running around outside. And three: your foster father sounds like the kind of man who would have kept you away from sex, drinking, and anything else that is fun.
					*roll your eyes.*
						I knew it! Oh well... it'll be fun to help you make up for the lost time.
					Too true. I admit it. Do you plan on making up for my wasted childhood?
						Only if you make it worth my time. *grin*
					I'll have you know I did a lot while I was there.
						Right. One of these days you'll have to prove it.
							I will.

<If party is carrying Girdle of Gender>

Why are you carrying that thing around? Are you trying to keep your options open or something? I'll have you know I only have a taste for men. Women lack... how should I phrase this?... my favorite toy.
		Why are you asking? Do you want one of your own? *smirk* We could put it on you.
			But then I'd be too busy playing by myself to play with you...
				Promises, promises. You're insatiable, woman.
					But seriously. Have you ever wondered what it must be like to be the opposite sex?
						No.
							Never? Surely we mystify you sometimes! We're allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						Not really, although I've wondered why women think the way they do.
							I've wondered about men! Women are allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						Yes. Life must be a lot easier.
							It seems to be a give and take situation, actually. Men are respected more in society, but are also expected to be more reliable and responsible. Women can change their minds, cry in public, and be as boyish or as feminine as they want to be, but are expected to be less reliable and less responsible.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						You've guessed my secret!
							*Lyrica rolls her eyes.*
				True.
					But seriously. Have you ever wondered what it must be like to be the opposite sex?
						No.
							Never? Surely we mystify you sometimes! We're allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						Not really, although I've wondered why women think the way they do.
							I've wondered about men! Women are allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						Yes. Life must be a lot easier.
							It seems to be a give and take situation, actually. Men are respected more in society, but are also expected to be more reliable and responsible. Women can change their minds, cry in public, and be as boyish or as feminine as they want to be, but are expected to be less reliable and less responsible.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
				
		Ha ha. Very funny.
			But seriously. Have you ever wondered what it must be like to be the opposite sex?
						No.
							Never? Surely we mystify you sometimes! We're allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						Not really, although I've wondered why women think the way they do.
							I've wondered about men! Women are allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						Yes. Life must be a lot easier.
							It seems to be a give and take situation, actually. Men are respected more in society, but are also expected to be more reliable and responsible. Women can change their minds, cry in public, and be as boyish or as feminine as they want to be, but are expected to be less reliable and less responsible.
								That's me. Responsible and reliable. That's also why I lead this group.
									*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
								Is that how you think of me? Responsible and reliable? Gods, how boring!
									*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
						You've guessed my secret!
							*Lyrica rolls her eyes.*
		No reason, really. I just tend to collect things.
			But seriously. Have you ever wondered what it must be like to be the opposite sex? Or wondered about all the exasperating things the opposite sex does?
					No.
						Never? Surely we mystify you sometimes! We're allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
							That's me. Responsible and reliable. That's also why I lead this group.
								*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
							Is that how you think of me? Responsible and reliable? Gods, how boring!
								*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
					Not really, although I've wondered why women think the way they do.
						I've wondered about men! Women are allowed to change our minds and express ourselves without reservation and can be as boyish or as feminine as we wish. You, on the other hand, are expected to be more reliable and responsible even if they are treated more respectfully most of the time.
							That's me. Responsible and reliable. That's also why I lead this group.
								*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
							Is that how you think of me? Responsible and reliable? Gods, how boring!
								*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
					Yes. Life must be a lot easier.
						It seems to be a give and take situation, actually. Men are respected more in society, but are also expected to be more reliable and responsible. Women can change their minds, cry in public, and be as boyish or as feminine as they want to be, but are expected to be less reliable and less responsible.
							That's me. Responsible and reliable. That's also why I lead this group.
								*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
							Is that how you think of me? Responsible and reliable? Gods, how boring!
								*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
					You've guessed my secret!
						*Lyrica rolls her eyes.* Let me know when you plan on being serious. In any case, men are respected more in society, but are also expected to be more reliable and responsible. Women can change their minds, cry in public, and be as boyish or as feminine as they want to be, but are expected to be less reliable and less responsible.
							That's me. Responsible and reliable. That's also why I lead this group.
								*shrugs.* If I wanted to lead, I would've trained to be a paladin. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.
							Is that how you think of me? Responsible and reliable? Gods, how boring!
								*grins* You would take this personally. Don't try to prove me wrong by chasing the next skirt you see or drinking yourself blind. I was just trying to suggest that maybe men and women both have an equally tough time with expectations. It makes me think so, anyway.

								