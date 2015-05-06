CHAIN IF ~InParty("Lyrica")
InParty("Imoen")
!StateCheck("Lyrica",CD_STATE_NOTVALID)
!StateCheck("Imoen",CD_STATE_NOTVALID)
Global("LyricaImoen1","GLOBAL",0)
See("Imoen")~ THEN LyricaB LyricaImoen1
~~
DO ~SetGlobal("LyricaImoen1","GLOBAL",1)~
==BIMOEN2~~
==BLyrica~~
EXIT

CHAIN IF ~InParty("Lyrica")
InParty("Alora")
!StateCheck("Lyrica",CD_STATE_NOTVALID)
!StateCheck("Alora",CD_STATE_NOTVALID)
Global("LyricaAlora1","GLOBAL",0)
See("Alora")~ THEN LyricB LyricaImoen1
~~
DO ~SetGlobal("LyricaImoen1","GLOBAL",1)~
==BALORA~~
==LyricaB~~
EXIT


CHAIN IF ~InParty("Lyrica")
InParty("Ajantis")
!StateCheck("Lyrica",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
Global("LyricaAjantis1","GLOBAL",0)
See("Ajantis")~ THEN LyricaB LyricaAjantis1
~~
DO ~SetGlobal("LyricaAjantis1","GLOBAL",1)~
==BAJANT~~
==LyricaB~~
EXIT

CHAIN IF ~InParty("Kivan")
InParty("Lyrica")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("Lyrica",CD_STATE_NOTVALID)
Global("KivanLyrica1","GLOBAL",0)
See("Lyrica")~ THEN BKIVAN KivanLyrica1
~~
DO ~SetGlobal("KivanLyrica1","GLOBAL",1)~
==LyricaB~~
==BKIVAN~~
EXIT

CHAIN IF ~InParty("Lyrica")
InParty("Xan")
!StateCheck("Lyrica",CD_STATE_NOTVALID)
!StateCheck("Xan",CD_STATE_NOTVALID)
Global("LyricaXan1","GLOBAL",0)
See("Xan")~ THEN LyricaB LyricaXan1
~~
DO ~SetGlobal("LyricaXan1","GLOBAL",1)~
==BXANNN~~
==LyricaB~~
EXIT

CHAIN IF ~InParty("Coran")
InParty("Lyrica")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("Lyrica",CD_STATE_NOTVALID)
Global("CoranLyrica1","GLOBAL",0)
See("Lyrica")~THEN BCORAN CoranLyrica1
~Suilad, Arabain! Govad i amloth Elhan Lin ú-darthannen sí a si!~
DO ~SetGlobal("CoranLyrica1","GLOBAL",1)~
==LyricaB~*raising an eyebrow.* How curious! My reputation precedes me even here! How is it that you know my nickname, friend? Have we not just now laid eyes upon each other?~
==BCORAN~*gestures to a sigil pin at the throat of her dress.* First, I recognized the sigil of the house of Taurverir, but it was your radiant beauty that told me you are 'Elhan's Flower'--his second wife. No more than that.~
==LyricaB~Of course. I might have guessed. You must be from the Wealdath at least, but I do not think we have met before....~
==BCORAN~I am Coran. And yes, I am from Suldanessellar.~

EXIT


CHAIN IF ~InParty("Lyrica")
InParty("Jaheira")
!StateCheck("Lyrica",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("LyricaJaheira","GLOBAL",0)
See("Jaheira")~THEN LyricaB LyricaJaheira1
~~
DO ~SetGlobal("LyricaJaheira1","GLOBAL",1)~
==BJAHEIR~~
==LyricaB~~
EXIT

CHAIN IF ~InParty("Lyrica")
InParty("Gavin")
!StateCheck("Lyrica",CD_STATE_NOTVALID)
!StateCheck("Gavin",CD_STATE_NOTVALID)
Global("LyricaGavin1","GLOBAL",0)
See("Gavin")~THEN LyricaB LyricaGavin1
~~
DO ~SetGlobal("LyricaGavin1","GLOBAL",1)~
==BB!GAVIN~~
==LyricaB~~
EXIT

















