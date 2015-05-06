//Alanna
INTERJECT_COPY_TRANS C#Q01001 0 TIMaethAlanna
== TIMaethJ IF ~NumTimesTalkedTo (0) InParty("TIMaeth") !StateCheck("TIMaeth",CD_STATE_NOTVALID) ~ THEN ~Alanna! Gods above! You're shaking! What has happened?~
== C#Q01001~Oh, Maethor. It's Eltolth! It's just too terrible!~
END

INTERJECT_COPY_TRANS C#Q01001 0 TIMaethAlannaRedux
== TIMaethJ IF ~PartyHasItem("C#Q01003") InParty("TIMaeth") !StateCheck("TIMaeth",CD_STATE_NOTVALID)~ THEN ~Alanna! We've found an antidote for Eltolth!~
== C#Q01001~Oh, thank you, Maethor. I'm so glad you're my neighbor.~
END
