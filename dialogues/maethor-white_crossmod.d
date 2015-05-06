//1

CHAIN IF WEIGHT #-2
~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethV#1WHI1","GLOBAL",0)~ THEN BTIMaeth TIMaethV#1WHI1
~I have to tell you that I am amazed at how you never lose your focus in battle. Even if I could express my fury as openly as you do, it would interfere with my concentration. But you...you roar and attack like a lion--focused and deadly.~
DO ~SetGlobal("TIMaethV#1WHI1","GLOBAL",1)~
== V#1WHIB ~*Grins.* I'm glad you see the point of the raging, uh....~
== BTIMaeth ~Maethor.~
== V#1WHIB ~Maethor. I'm White. Short for White-as-Bones. As for the focus...well, it's a technique like any other. You use your fury constructively instead of letting it take over.~
== BTIMaeth ~I could stand some instruction in that if...if you were open to teaching me, that is.~
== V#1WHIB ~Heh! I didn't think that paladins ever admitted that there's something they don't know about combat or that someone else's style might work as well or better! How refreshing!~
== BTIMaeth ~Is that a yes? Because I'm always happy to learn something new.~
== V#1WHIB ~Why not? We have a little time right now while <CHARNAME> plans our next destination. We could spar a bit, so I can see your style, and then hash out what you think needs changing.~
== BTIMaeth ~*Smiles broadly.*Good! Actually, it's more than good...it's excellent!....And, thanks...~
== V#1WHIB ~Thanks for what?~
== BTIMaeth ~You're the first party companion I've met who has just accepted who and what I am. Most ask me a whole lot of personal questions.~
== V#1WHIB ~Everyone's different from what you expect in some way or another. I just take it in stride.~
== BTIMaeth ~But it's nice. Makes me feel accepted. It's the way I want to act, too, you know.~
== V#1WHIB ~I do. But now to the sparring...~
EXIT

//2

CHAIN IF WEIGHT #-2
~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
HasItemEquiped("%tutu_var%BELT05","TIMaeth")
!See([ENEMY])
Global("TIMaethV#1WHI1","GLOBAL",1)
Global("TIMaethV#1WHI2","GLOBAL",0)~ THEN BTIMaeth TIMaethV#1WHI1
~White! I've been meaning to ask: could you show me that side-feint you do during a frontal assault? I've admired the way you move in combat so much...~
DO ~SetGlobal("TIMaethV#1WHI2","GLOBAL",1)~
== V#1WHIB ~Well, it's a lot easier without plate mail. I'm not sure that you'll be able to do the move wearing all of that armor.  The chain mail joints seem to reduce your mobility around the hips and that's how I manage to quickly shift my weight and balance...from the rear leg to the front.~
== BTIMaeth ~True. But it's a knightly tradition to at least wear field plate and this set belonged to my great-grandfather. Is there a way I could adapt the side-feint to adjust for the armor?~
== V#1WHIB ~Sure. But I'd need to teach you the move first without the plate...~
== BTIMaeth ~Ummm... This might sound like a silly question, but could you give me a hand? I can get out of this gear by myself, but it's faster with help.~
== V#1WHIB ~Sure. *Helps Maethor remove his helmet, paldrons, and cuirass.* Huh! I thought you'd changed, Maethor, but I didn't realize... What happened?~
== BTIMaeth ~<CHARNAME> put this belt on me that changes one's gender. I'm...I'm still a bit unsettled by the change.~
== V#1WHIB ~I can imagine. I'm not sure what I would do if I suddenly became female. *Laughs* at least the raging wouldn't change...~
== BTIMaeth ~My deity, Corellon, appears to followers as either male or female. I'm trying to take this as an object lesson appreciating what the other sex goes through, but I'm constantly surprised not only by what is the same for each sex but also for what is quite different.~
== V#1WHIB ~And?~
== BTIMaeth ~Well, for example, I feel the same way that I did as a female, but now, I'm much more comfortable speaking my mind. I mean...I always had a crush on you, but now, I don't mind saying so...~
== V#1WHIB ~Are you coming on to me, Maethor?~
== BTIMaeth ~Maybe. I mean...there was no point in mentioning it before, but now...~
== V#1WHIB ~I'm sorry... I like you, but I don't think I can think of you that way.~
== BTIMaeth ~But why not? I'm not a...~
== V#1WHIB ~There's more to attraction than what parts you have, Maethor. That belt has taken your whole identity and rearranged it. But underneath the magic, you're still just a young girl. I won't take advantage of you that way. No matter how male you look on the outside.~
== BTIMaeth ~*Almost in tears.* Damnit! Now you'll be all uncomfortable around me.~
== V#1WHIB ~No, I won't. Remember when we first met? How you thanked me for simply accepting you? That's who I am. I still accept you, no matter what's happened to you. And I don't mind you having feelings for me as long as you don't make them a nuisiance.~
== BTIMaeth ~But would you ever consider...?~
== V#1WHIB ~Let's not go down that path. Belt or no belt, you've got a lot of growing up to do yet and it's better for us to be friends.~
== BTIMaeth ~Very well.~
EXIT

