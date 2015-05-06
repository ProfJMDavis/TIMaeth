//1

CHAIN IF WEIGHT #-2
 ~InParty("T2Val")
See("T2Val")
!StateCheck("T2Val",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethValerie1","GLOBAL",0)~ THEN BTIMaeth TIMaethValerie1
~So you are from Athkatla? I used to live there. How is the city faring?~
DO ~SetGlobal("TIMaethValerie1","GLOBAL",1)~
== BT2Val ~In general? Paranoid. With the rumors of war, Athkatla has been gearing up for increased production of arms. Where did you live?~
== BTIMaeth ~Not far from the Temple district. In one respect, I was glad to leave. It was extremely irritating to be hounded by the proselytes whenever I would come home from the Radiant Heart headquarters.~
== BT2Val ~Well, that still occurs. Fortunately, even as a mage I must not attract the same attention that you do with your gleaming armor and arrogant stride.~
== BTIMaeth ~*Blush.* I don't mean to look arrogant. Just confident. If I don't, the thieves take my purse in a blink of an eye.~
== BT2Val ~No surprise there. You look well-heeled.~
== BTIMaeth ~*grimaces.* I'm actually as poor as a churchmouse. It's my guardian, Sir Tybalt Grenfell, who comes from a wealthy family. The only belongings I have of any worth were given to me by my great-grandfather before he left for Evermeet. Perhaps you might create a spell for me to make me less apparent to the eye.~
== BT2Val ~*laughs.* That might be beyond my ability. The combination of your size, your face, and your gear make you a spectacle in such a homogenous city as Athkatla.~
EXIT

//2

CHAIN IF WEIGHT #-2
~InParty("TIMaeth")
See("TIMaeth")
!StateCheck("T2Val",CD_STATE_NOTVALID)
!StateCheck("TIMaeth",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("TIMaethValerie2","GLOBAL",0)~ THEN BT2Val TIMaethValerie2
~Maethor, You are the first elven paladin I've had the chance to speak to. Which deity do you serve?~
DO ~SetGlobal("TIMaethValerie2","GLOBAL",1)~
== BTIMaeth ~I have been initiated into the Blade of Corellon. It is an Order largely associated with Evermeet.~
== BT2Val ~Fascinating. The few others I was aware of served human gods; Tyr, Torm, and Helm.~
== BTIMaeth ~I have personally met only two others of my Order myself. We are the few remnants of an Order that was thriving and healthy before the Retreat.~
== BT2Val ~So what keeps you here, Dame Grenfell? Love of Faerun?~
== BTIMaeth ~Aye. Love of Faerun. Love of man. And the desire to see that those of my people who remain here are safe from prejudicial attack.~
== BT2Val ~Love of man?~
== BTIMaeth ~*Blushes.* Mankind and man. And woman, to tell the truth. If it is not too intrusive for me to say so, I have been told that you, too, left a girl-love back in Athkatla. I sympathize with you.~
== BT2Val ~I would appreciate your tact concerning her. My heart still aches from her loss.~
== BTIMaeth ~I shall not mention it again. Know, though, that my own heartache well makes me able to appreciate your loss. If there's anything I can do for you, just let me know.~
== BT2Val ~Are you flirting with me, Maethor?~
== BTIMaeth ~No. Although you are beautiful, I have compassion for your suffering and would not burden you with the task of fending off yet another would-be lover. I am merely offering whatever of my companionship you might wish for friendship's sake.~
EXIT