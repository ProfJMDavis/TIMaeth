BEGIN ~TILiria~

IF ~NumTimesTalkedTo(0) !InParty("TIMaeth")~ THEN BEGIN LyricaGreeting
SAY ~Greetings, stranger. I do not see my sister Maethor among you. Nevertheless, my need is great and you appear to be adventurers. I am Liria Sullussaechen. Will you hear a proposal, my <LADYLORD>?~
++ ~Yes.~ + LyricaAcknowledge
++ ~I'd like to know more about who you are, first.~ + LyricaHasty
++ ~Sorry, no.~ + LyricaNoAcknowledge
END

IF ~NumTimesTalkedTo(0) InParty("TIMaeth")~ THEN BEGIN LyricaGreeting
SAY ~Very good, Maethor! You've found someone! I am Liria Sullussaechen. Will you hear our proposal, my <PRO_LADYLORD>?~
++ ~Yes.~ + LyricaAcknowledge
++ ~I'd like to know more about who you are, first.~ + LyricaHasty
++ ~Sorry, no.~ + LyricaNoAcknowledge
END

IF ~NumTimesTalkedToGT(1) !Global("TIMaethYes","GLOBAL",1) !Global("TITybaltRescued","GLOBAL",1)~ THEN BEGIN LyricaRehash
SAY ~Greetings, stranger. Have you changed your mind about my offer?~
++ ~Yes.~ + LyricaYes
++ ~No.~ + LyricaNo
END

IF ~NumTimesTalkedToGT(1) Global("TITybaltRescued","GLOBAL",1)~ THEN BEGIN LyricaRehash
SAY ~Thank you, friends, for returning my love to me. My dear Tyb, no doubt, provided some reward for your services; let me add to that with the remainder of what I promised you.~ ~GivePartyGold(550)~
IF ~~ THEN EXIT
END

IF ~Global("TIMaethYes","GLOBAL",1) PartyHasItem("TI1Scrl")~ THEN BEGIN LyricaLetter1
SAY ~This letter is quite old. A great pity that Tyb didn't foresee that Rogan might not return to Beregost immediately. Still, he says he plans to return to Baldur's Gate. We have heard nothing promising from his friends in that quarter lately. Keep looking, friends. I feel sure you will succeed.~
IF ~~ THEN DO ~TakePartyItem("TI1Scrl") GivePartyGold (100)~ EXIT
END

IF ~Global("TIMaethYes","GLOBAL",1) PartyHasItem("TI2Scrl")~ THEN BEGIN LyricaLetter1
SAY ~So he has discovered news of another mine near Baldur's Gate? Alas that he thought he could handle a full slavery ring all by himself! See if you can find the mine, friends. The trail you've struck is fresh...~
IF ~~ THEN DO ~TakePartyItem("TI2Scrl") GivePartyGold (100)~ EXIT
END

IF ~~ THEN BEGIN LyricaAcknowledge
SAY ~My son and I have lived here in Beregost for years through the kindness of a...a friend, Sir Tybalt Grenfell. He wanted me to have a safe place to raise my child and owns this house. In return, my sister, Maethor, acts as his squire and has done work both for him and with him on occasion. Unfortunately, we've neither seen nor heard from Sir Tybalt in several months. We fear for his safety and have determined that my sister Maethor should try to find him.~
++ ~How can I help?~ + LyricaHelp
++ ~What would be in it for me?~ + LyricaPay
++ ~Sorry.  I have enough troubles of my own.~ + LyricaNoHelp
END

IF ~~ THEN BEGIN LyricaHasty
SAY ~There's not much to tell, I'm afraid. Maethor, my younger sister, is a squire paladin for the Blade of Corellon, an Order of Knights in Evermeet. She left this morning for the crossroads with the Friendly Arm Inn seeking an adventuring party. We've lived here in Beregost for years, now.~
++ ~Well, then. What do you need from me?~ + LyricaAcknowledge
END

IF ~~ THEN BEGIN LyricaNoAcknowledge
SAY ~Very well. Be well, stranger.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LyricaHelp
SAY ~Bandits have been plaguing the roads as of late. Travel is dangerous. We thought one of us might check with Tyb's friend Rogan at the Temple of Lathander in town and then visit Sir Tybalt's son in Nashkel and see if he's heard anything. Within reason, the work is not time-sensitive and might align well with any work you're currently doing. Might you be interested?~
++ ~Absolutely. No sense in turning down work.~ + LyricaYes
++ ~No, sorry.~ + LyricaNo
END

IF ~~ THEN BEGIN LyricaPay
SAY ~Well, we have saved money in case of an emergency. We can pay 1000 gold upon locating either Sir Tybalt himself or definate evidence of his death. We will give you a small advance on this sum to help cover Maethor's and your travel expenses since she must accompany you. We will also give you part of it if you recover items of Sir Tybalt's during the search. I hope these conditions are acceptable to you.~
++ ~Absolutely. No sense in turning down work.~ + LyricaYes
++ ~Does she have to come along? Couldn't we just find what you want and return?~ + LyricaWhy
++ ~No, sorry.~ + LyricaNo
END

IF ~~ THEN BEGIN LyricaWhy
SAY ~Tybalt's son is not a friendly man. He dislikes adventurers and likely will not talk to you. Besides that, this service is very personal. We're not sure what we may find of our friend. Maethor and I know his habits and the personal effects he is likely to be carrying. Besides, if he has been killed, Maethor and I have been sworn to return his body to his family in Athkatla. This is our task... Not solely yours.~
++ ~Then we agree to your terms.~ + LyricaYes
++ ~Then, no. I have no need of another fighter.~ + LyricaNo
END

IF ~~ THEN BEGIN LyricaNoHelp
SAY ~Very well. Be well, stranger.~
IF ~~ THEN EXIT
END

IF ~!InParty("TIMaeth")~ THEN BEGIN LyricaNoMaeth
SAY ~You will want to return to the crossroads north of here and allow my sister to join your party. I will wait here for your return.~
IF ~~ THEN EXIT
END

IF ~InParty("TIMaeth") Global("TIMaethYes","GLOBAL",0)~ THEN BEGIN LyricaYes
SAY ~Alright. So that's 1000 gold upon locating either Sir Tybalt himself or evidence of his death, a 250 gold advance on this sum to help cover travel expenses for you and my sister, and smaller partial sums in the event you find Sir Tybalt's items and return them to me. Bless you for your kindness in agreeing to help us. Let me extend my welcome. I only wish I could provide more luxurious surroundings. My sister and I are using much of our subsistence income to find my...my friend, Sir Tybalt.~
IF ~~ THEN DO ~GivePartyGold(250) SetGlobal("TIMaethYes","GLOBAL",1)~ EXIT
END

IF ~Global("TIMaethYes","GLOBAL",1)~ THEN BEGIN LyricaStay
SAY ~You're welcome here, stranger.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LyricaNo
SAY ~Very well. Be well, stranger.~
IF ~~ THEN EXIT
END
