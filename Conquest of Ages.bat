::Note: single(:) is ponit double(::) is a coment
@echo off
title Conquest of Ages RPG
echo You awake in a dark room. It smells of hay and dust.
echo As you look at the floor you see a red stain. 
echo You here foot steps coming from your left but all you see is black. 
echo You turn head but as you look around all you see is black.
echo You look up and are blinded by a yellow light.
echo The foot steps get louder but your eyes still whine in pain.
echo As you vision slowly returns a showdowy figure lays just beyond the edge of the light.
echo A elderly bearded man emeges from the dark. His white robes and hat faded to a dull grey. 
echo He holds a long staff in his hand. It has blue runes carved inside the dark white wood.
echo He raises his staff and a blinding white light errupts from a dimond gem stone on the top.
pause

cls
echo Welcome young hero. My name is Warlock Margold. What is your name.
set /p mainName=
echo Hello %mainName%. You are probably wondering why I have masked your vision.
echo First, do not worry your vision will return when I allow it. 
echo Second, I most decided if you are worthy. If I decided you are not then I will release back where I found you and you will not remember a thing ... hopefully.
echo Lets start.
pause

cls
echo Please tell me, what race are you?
echo It is worth me telling you that based on your race some base stats will be changed.
set elfRace=Elf
set orkRace=Ork
set humanRace=Human
set dwarfRace=Dwarf
set deamonRace=Deamon
set angelicRace=Angel
goto :raceCheckLoop
:errorMessage
cls
echo Thats not possible, tell me the truth.
echo What race are you?
:raceCheckLoop
echo Elf
echo Ork
echo Human
echo Dwarf
echo Deamon
echo Angel
echo Enter below!
set /p raceChoice=
if %raceChoice%==Elf (goto :endRaceCheckLoop) else (goto :orkCheck)
:orkCheck
if %raceChoice%==Ork (goto :endRaceCheckLoop) else (goto :humanCheck)
:humanCheck
if %raceChoice%==Human (goto :endRaceCheckLoop) else (goto :dwarfCheck)
:dwarfCheck
if %raceChoice%==Dwarf (goto :endRaceCheckLoop) else (goto :deamonCheck)
:deamonCheck
if %raceChoice%==Deamon (goto :endRaceCheckLoop) else (goto :angelicCheck)
:angelicCheck
if %raceChoice%==Angel (goto :endRaceCheckLoop) else (goto :errorMessage)
:endRaceCheckLoop
echo Ah %raceChoice% makes sense.

cls
echo You will now choose a class. This class can not be changed once chosen. You can meet people around the world that may advance you stage in that class. The classes are:
echo When typing the class dont type multiple words togeather (like so (ArchaneWarrior instead of Archane Warrior))
set rangerClass=Ranger
set assassinClass=Assassin
set rogueClass=Rogue
set archaneWarriorClass=ArchaneWarrior
set archaneKnightClass=ArchaneKnight
set monkClass=Monk
set wizardClass=Wizard
::specialClasses
set angelicKnightClass=AngelicKnight
set archAngelClass=ArcAngel
set dwarvenWarMasterClass=DwarvenWarMaster
set templarClass=Templar
set orkBattleMasterClass=OrkBattleMaster
set elvenRangerClass=ElvenRanger
goto :startClassLoop

:clearClassLoop
cls
echo Choose a class.
:startClassLoop
echo Ranger 
echo Assassin
echo Rogue
echo Archane Warrior
echo Archane Knight
echo Monk
echo Wizard
goto :startExtraClassLoop

:angelSpec
echo Angelic Knight
goto :userClassChoice
:deamonSpec
echo Arch Angel
goto :userClassChoice
:dwarfSpec
echo Dwarven War Master
goto :userClassChoice
:humanSpec
echo Templar
goto :userClassChoice
:orkSpec
echo Ork Battle Master
goto :userClassChoice
:elfSpec
echo Elven Ranger
goto :userClassChoice

:startExtraClassLoop
if %raceChoice%==Angel (goto :angelSpec) else (goto :deamonRaceCheck)
:deamonRaceCheck
if %raceChoice%==Deamon (goto :deamonSpec) else (goto :dwarfRaceCheck)
:dwarfRaceCheck
if %raceChoice%==Dwarf (goto :dwarfSpec) else (goto :humanRaceCheck)
:humanRaceCheck
if %raceChoice%==Human (goto :humanSpec) else (goto :orkRaceCheck)
:orkRaceCheck
if %raceChoice%==Ork (goto :orkSpec) else (goto :elfRaceCheck)
:elfRaceCheck
if %raceChoice%==Elf (goto :elfSpec) else (goto :userClassChoice)

:testClassLoop
if %classChoice%==%rangerClass% (goto :classYNCheck) else (goto :assassinClassCheck)
:assassinClassCheck
if %classChoice%==%assassinClass% (goto :classYNCheck) else (goto :rogueClassCheck)
:rogueClassCheck
if %classChoice%==%rogueClass% (goto :classYNCheck) else (goto :archaneWarriorClassCheck)
:archaneWarriorClassCheck
if %classChoice%==%archaneWarriorClass% (goto :classYNCheck) else (goto :archaneKnightClassCheck)
:archaneKnightClassCheck
if %classChoice%==%archaneKnightClass% (goto :classYNCheck) else (goto :monkClassCheck)
:monkClassCheck
if %classChoice%==%monkClass% (goto :classYNCheck) else (goto :wizardClassCheck)
:wizardClassCheck
if %classChoice%==%wizardClass% (goto :classYNCheck) else (goto :angelicKnightClassCheck)
:angelicKnightClassCheck
if %classChoice%==%angelicKnightClass% (goto :classYNCheck) else (goto :archAngelClassCheck)
:archAngelClassCheck
if %classChoice%==%archAngelClass% (goto :classYNCheck) else (goto :dwarvenWarMasterClassCheck)
:dwarvenWarMasterClassCheck
if %classChoice%==%dwarvenWarMasterClass% (goto :classYNCheck) else (goto :templarClassCheck)
:templarClassCheck
if %classChoice%==%templarClass% (goto :classYNCheck) else (goto :orkBattleMasterClassCheck)
:orkBattleMasterClassCheck
if %classChoice%==%orkBattleMasterClass% (goto :classYNCheck) else (goto :elvenRangerClassCheck)
:elvenRangerClassCheck
if %classChoice%==%elvenRangerClass% (goto :classYNCheck) else (goto :userClassChoice)
:userClassChoice
echo Enter below!
set /p classChoice=
goto :testClassLoop

:classYNCheck
set classStage=Basic
echo Are you sure? Is %classChoice% your final choice? [y/n]
set /p userInYN=
if %userInYN%==y (goto :endClassLoop) else (goto :clearClassLoop)
:endClassLoop
set /a magic=10
set /a wisdom=10
set /a discipline=10
set /a strength=10 
set /a dexterity=10
set /a stealth=10
set /a charisma=10
set /a badassness=10
echo Thats a great choice.

:raceStatUp
if %raceChoice%==Elf (goto :elfStatUp) else (goto :orkRace2Check)
:orkRace2Check
if %raceChoice%==Ork (goto :orkStatUp) else (goto :humanRace2Check)
:humanRace2Check
if %raceChoice%==Human (goto :humanStatUp) else (goto :dwarfRace2Check)
:dwarfRace2Check
if %raceChoice%==Dwarf (goto :dwarfStatUp) else (goto :deamonRace2Check)
:deamonRace2Check
if %raceChoice%==Deamon (goto :deamonStatUp) else (goto :angelRace2Check)
:angelRace2Check
if %raceChoice%==Angel (goto :angelStatUp) else (echo This was not suppose to happen.)

:elfStatUp
set /a dexterity=15
goto :classStatUps
:orkStatUp
set /a strength=15
goto :classStatUps
:humanStatUp
set /a charisma=15
goto :classStatsUps
:dwarfStatUp
set /a discipline=15
goto :classStatUps
:deamonStatUp
set /a magic=15
goto :classStatUps
:angelStatUp
set /a magic=15
goto :classStatUps

:classStatUps
if %classChoice%==%rangerClass% (goto :rangerStatUp) else (goto :assassinStatUps)
:assassinStatUps
if %classChoice%==%assassinClass% (goto :assassinStatUp) else (goto :rogueStatUps)
:rogueStatUps
if %classChoice%==%rogueClass% (goto :rogueStatUp) else (goto :archaneWarriorStatUps)
:archaneWarriorStatUps
if %classChoice%==%archaneWarriorClass% (goto :archaneWarriorStatUp) else (goto :archaneKnightStatUps)
:archaneKnightStatUps
if %classChoice%==%archaneKnightClass% (goto :archaneKnightStatUp) else (goto :monkStatUps)
:monkStatUps
if %classChoice%==%monkClass% (goto :monkStatUp) else (goto :wizardStatUps)
:wizardStatUps
if %classChoice%==%wizardClass% (goto :wizardStatUp) else (goto :angelicKnightStatUps)
:angelicKnightStatUps
if %classChoice%==%angelicKnightClass% (goto :angelicKnightStatUp) else (goto :archAngelStatUps)
:archAngelStatUps
if %classChoice%==%archAngelClass% (goto :archAngelStatUp) else (goto :dwarvenWarMasterStatUps)
:dwarvenWarMasterStatUps
if %classChoice%==%dwarvenWarMasterClass% (goto :dwarvenWarMasterStatUp) else (goto :templarStatUps)
:templarStatUps
if %classChoice%==%templarClass% (goto :templarStatUp) else (goto :orkBattleMasterStatUps)
:orkBattleMasterStatUps
if %classChoice%==%orkBattleMasterClass% (goto :orkBattleMasterStatUp) else (goto :elvenRangerStatUps)
:elvenRangerStatUps
if %classChoice%==%elvenRangerClass% (goto :elvenRangerStatUp) else (echo This was not suppose to happen.)

:rangerStatUp
set /a stealth=25
set /a dexterity=15
set /a discipline=15
set /a wisdom=20
set /a magic=5
goto :startStatVLoop
:assassinStatUp
set /a stealth=25
set /a dexterity=20
set /a charisma=5
set /a wisdom=15
goto :startStatVLoop
:rogueStatUp
set /a dexterity=25
set /a charisma=5
set /a wisdom=5
set /a badassness=15
goto :startStatVLoop
:archaneWarriorStatUp
set /a magic=20
set /a strength=15
set /a charisma=15
set /a discipline=15
set /a stealth=5
set /a dexterity=5
goto :startStatVLoop
:archaneKnightStatUp
set /a magic=15
set /a strength=15
set /a charisma=20
set /a dexterity=5
goto :startStatVLoop
:monkStatUp
set /a wisdom=20
set /a discipline=15
set /a magic=15
set /a strength=20
set /a charisma=0 
goto :startStatVLoop
:wizardStatUp
set /a magic=30
set /a wisdom=25
goto :startStatVLoop
:angelicKnightStatUp
set /a magic=20
set /a strength=20
set /a charisma=20
set /a dexterity=30
set /a badassness=0
set /a discipline=5
set /a wisdom=5
goto :startStatVLoop
:archAngelStatUp
set /a strength=25
set /a charisma=0
set /a badassness=25
set /a dexterity=20
goto :startStatVLoop
:dwarvenWarMasterStatUp
set /a strength=30
set /a dexterity=5
set /a charisma=5
set /a wisdom=15
goto :startStatVLoop
:templarStatUp
set /a strength=25
set /a charisma=25
set /a stealth=5
set /a wisdom=15
goto :startStatVLoop
:orkBattleMasterStatUp
set /a strength=25
set /a charisma=5
set /a badassness=20
set /a discipline=15
set /a stealth=5
set /a dexterity=5
goto :startStatVLoop
:elvenRangerStatUp
set /a dexterity=20
set /a stealth=15
set /a charisma=15
set /a wisdom=15
set /a strength=5
set /a badassness=5
goto :startStatVLoop

:startStatVLoop
cls
echo Now its time for your stats. Yes I said stats. Pick your first specialization.
goto :startStat
:errorMsgStat
echo Sorry please tell choose a correct stat.

:startStatLoopBackAgain
if %raceChoice%==Elf (goto :elfStatUp2) else (goto :orkRace2Check2)
:orkRace2Check2
if %raceChoice%==Ork (goto :orkStatUp2) else (goto :humanRace2Check2)
:humanRace2Check2
if %raceChoice%==Human (goto :humanStatUp2) else (goto :dwarfRace2Check2)
:dwarfRace2Check2
if %raceChoice%==Dwarf (goto :dwarfStatUp2) else (goto :deamonRace2Check2)
:deamonRace2Check2
if %raceChoice%==Deamon (goto :deamonStatUp2) else (goto :angelRace2Check2)
:angelRace2Check2
if %raceChoice%==Angel (goto :angelStatUp2) else (echo This was not suppose to happen.)

:elfStatUp2
set /a dexterity=15
set /a magic=10
set /a wisdom=10
set /a strength=10
set /a discipline=10
set /a stealth=10
set /a charisma=10
set /a badassness=10
goto :classStatUps2
:orkStatUp2
set /a strength=15
set /a dexterity=10
set /a magic=10
set /a wisdom=10
set /a discipline=10
set /a stealth=10
set /a charisma=10
set /a badassness=10
goto :classStatUps2
:humanStatUp2
set /a charisma=15
set /a strength=10
set /a dexterity=10
set /a magic=10
set /a wisdom=10
set /a discipline=10
set /a stealth=10
set /a badassness=10
goto :classStatsUps2
:dwarfStatUp2
set /a discipline=15
set /a strength=10
set /a dexterity=10
set /a magic=10
set /a wisdom=10
set /a stealth=10
set /a charisma=10
set /a badassness=10
goto :classStatUps2
:deamonStatUp2
set /a magic=15
set /a strength=10
set /a dexterity=10
set /a wisdom=10
set /a discipline=10
set /a stealth=10
set /a charisma=10
set /a badassness=10
goto :classStatUps2
:angelStatUp2
set /a magic=15
set /a strength=10
set /a dexterity=10
set /a wisdom=10
set /a discipline=10
set /a stealth=10
set /a charisma=10
set /a badassness=10
goto :classStatUps2

:classStatUps2
if %classChoice%==%rangerClass% (goto :rangerStatUp2) else (goto :assassinStatUps2)
:assassinStatUps2
if %classChoice%==%assassinClass% (goto :assassinStatUp2) else (goto :rogueStatUps2)
:rogueStatUps2
if %classChoice%==%rogueClass% (goto :rogueStatUp2) else (goto :archaneWarriorStatUps2)
:archaneWarriorStatUps2
if %classChoice%==%archaneWarriorClass% (goto :archaneWarriorStatUp2) else (goto :archaneKnightStatUps2)
:archaneKnightStatUps2
if %classChoice%==%archaneKnightClass% (goto :archaneKnightStatUp2) else (goto :monkStatUps2)
:monkStatUps2
if %classChoice%==%monkClass% (goto :monkStatUp2) else (goto :wizardStatUps2)
:wizardStatUps2
if %classChoice%==%wizardClass% (goto :wizardStatUp2) else (goto :angelicKnightStatUps2)
:angelicKnightStatUps2
if %classChoice%==%angelicKnightClass% (goto :angelicKnightStatUp2) else (goto :archAngelStatUps2)
:archAngelStatUps2
if %classChoice%==%archAngelClass% (goto :archAngelStatUp) else (goto :dwarvenWarMasterStatUps2)
:dwarvenWarMasterStatUps2
if %classChoice%==%dwarvenWarMasterClass% (goto :dwarvenWarMasterStatUp2) else (goto :templarStatUps2)
:templarStatUps2
if %classChoice%==%templarClass% (goto :templarStatUp2) else (goto :orkBattleMasterStatUps2)
:orkBattleMasterStatUps2
if %classChoice%==%orkBattleMasterClass% (goto :orkBattleMasterStatUp2) else (goto :elvenRangerStatUps2)
:elvenRangerStatUps2
if %classChoice%==%elvenRangerClass% (goto :elvenRangerStatUp2) else (echo This was not suppose to happen.)

:rangerStatUp2
set /a stealth=25
set /a dexterity=15
set /a discipline=15
set /a wisdom=20
set /a magic=5
goto :startStat
:assassinStatUp2
set /a stealth=25
set /a dexterity=20
set /a charisma=5
set /a wisdom=15
goto :startStat
:rogueStatUp2
set /a dexterity=25
set /a charisma=5
set /a wisdom=5
set /a badassness=15
goto :startStat
:archaneWarriorStatUp2
set /a magic=20
set /a strength=15
set /a charisma=15
set /a discipline=15
set /a stealth=5
set /a dexterity=5
goto :startStat 
:archaneKnightStatUp2
set /a magic=15
set /a strength=15
set /a charisma=20
set /a dexterity=5
goto :startStat 
:monkStatUp2
set /a wisdom=20
set /a discipline=15
set /a magic=15
set /a strength=20
set /a charisma=0 
goto :startStat 
:wizardStatUp2
set /a magic=30
set /a wisdom=25
goto :startStat 
:angelicKnightStatUp2
set /a magic=20
set /a strength=20
set /a charisma=20
set /a dexterity=30
set /a badassness=0
set /a discipline=5
set /a wisdom=5
goto :startStat
:archAngelStatUp2
set /a strength=25
set /a charisma=0
set /a badassness=25
set /a dexterity=20
goto :startStat 
:dwarvenWarMasterStatUp2
set /a strength=30
set /a dexterity=5
set /a charisma=5
set /a wisdom=15
goto :startStat 
:templarStatUp2
set /a strength=25
set /a charisma=25
set /a stealth=5
set /a wisdom=15
goto :startStat 
:orkBattleMasterStatUp2
set /a strength=25
set /a charisma=5
set /a badassness=20
set /a discipline=15
set /a stealth=5
set /a dexterity=5
goto :startStat 
:elvenRangerStatUp2
set /a dexterity=20
set /a stealth=15
set /a charisma=15
set /a wisdom=15
set /a strength=5
set /a badassness=5

:startStat
set /a magic=%magic%
set /a wisdom=%wisdom%
set /a discipline=%discipline%
set /a strength=%strength%
set /a dexterity=%dexterity%
set /a stealth=%stealth%
set /a charisma=%charisma%
set /a badassness=%badassness%

echo Magic       =%magic%
echo Wisdom      =%wisdom%
echo Discipline  =%discipline%
echo Strength    =%strength%
echo Dexterity   =%dexterity%
echo Stealth     =%stealth%
echo Charisma    =%charisma%
echo Badassness  =%badassness%

:startStatSpecLoopOne
echo Enter below!
set /p userStatChoice=
if %userStatChoice%==Magic (goto :magicAdd) else (goto :wisdomSpec)
:wisdomSpec
if %userStatChoice%==Wisdom (goto :wisdomAdd) else (goto :disciplineSpec)
:disciplineSpec
if %userStatChoice%==Discipline (goto :disciplineAdd) else (goto :strengthSpec)
:strengthSpec
if %userStatChoice%==Strength (goto :strengthAdd) else (goto :dexteritySpec)
:dexteritySpec
if %userStatChoice%==Dexterity (goto :dexterityAdd) else (goto :stealthSpec)
:stealthSpec
if %userStatChoice%==Stealth (goto :stealthAdd) else (goto :charismaSpec)
:charismaSpec
if %userStatChoice%==Charisma (goto :charismaAdd) else (goto :badassnessSpec)
:badassnessSpec
if %userStatChoice%==Badassness (goto :badassnessAdd) else (goto :errorMsgStat)

:magicAdd
set /a magic=%magic% + 5
goto :startStatSpecLoopTwo
:wisdomAdd
set /a wisdom=%wisdom% + 5
goto :startStatSpecLoopTwo
:disciplineAdd
set /a discipline=%discipline% + 5
goto :startStatSpecLoopTwo
:strengthAdd
set /a strength=%strength% + 5
goto :startStatSpecLoopTwo
:dexterityAdd
set /a dexterity=%dexterity% + 5
goto :startStatSpecLoopTwo
:stealthAdd
set /a stealth=%stealth% + 5
goto :startStatSpecLoopTwo
:charismaAdd
set /a charisma=%charisma% + 5
goto :startStatSpecLoopTwo
:badassnessAdd
set /a badassness=%badassness% + 5
goto :startStatSpecLoopTwo

:errorMsgStatTwo
cls
echo Please choose a correct stat.
:startStatSpecLoopTwo
cls
echo Magic       =%magic%
echo Wisdom      =%wisdom%
echo Discipline  =%discipline%
echo Strength    =%strength%
echo Dexterity   =%dexterity%
echo Stealth     =%stealth%
echo Charisma    =%charisma%
echo Badassness  =%badassness%

echo Enter a second choice below!
set /p userStatChoiceTwo=
if %userStatChoiceTwo%==Magic (goto :magicAddTwo) else (goto :wisdomSpec)
:wisdomSpec
if %userStatChoiceTwo%==Wisdom (goto :wisdomAddTwo) else (goto :disciplineSpec)
:disciplineSpec
if %userStatChoiceTwo%==Discipline (goto :disciplineAddTwo) else (goto :strengthSpec)
:strengthSpec
if %userStatChoiceTwo%==Strength (goto :strengthAddTwo) else (goto :dexteritySpec)
:dexteritySpec
if %userStatChoiceTwo%==Dexterity (goto :dexterityAddTwo) else (goto :stealthSpec)
:stealthSpec
if %userStatChoiceTwo%==Stealth (goto :stealthAddTwo) else (goto :charismaSpec)
:charismaSpec
if %userStatChoiceTwo%==Charisma (goto :charismaAddTwo) else (goto :badassnessSpec)
:badassnessSpec
if %userStatChoiceTwo%==Badassness (goto :badassnessAddTwo) else (goto :errorMsgStatTwo)


:magicAddTwo
set /a magic=%magic% + 5
goto :statYNCheck
:wisdomAddTwo
set /a wisdom=%wisdom% + 5
goto :statYNCheck
:disciplineAddTwo
set /a discipline=%discipline% + 5
goto :statYNCheck
:strengthAddTwo
set /a strength=%strength% + 5
goto :statYNCheck
:dexterityAddTwo
set /a dexterity=%dexterity% + 5
goto :statYNCheck
:stealthAddTwo
set /a stealth=%stealth% + 5
goto :statYNCheck
:charismaAddTwo
set /a charisma=%charisma% + 5
goto :statYNCheck
:badassnessAddTwo
set /a badassness=%badassness% + 5
goto :statYNCheck

:yesNoCheckErrorMSGGG
cls
echo Please input y.
:statYNCheck
echo Magic       =%magic%
echo Wisdom      =%wisdom%
echo Discipline  =%discipline%
echo Strength    =%strength%
echo Dexterity   =%dexterity%
echo Stealth     =%stealth%
echo Charisma    =%charisma%
echo Badassness  =%badassness%
echo Nice choices! y to continue
set /p statYNInput=
if %statYNInput%==y (goto :saveMainInputs) else (goto :yesNoCheckErrorMSGGG)

:saveMainInputs
(
echo %mainName%
echo %raceChoice%
echo %classChoice%
echo %classStage%

echo %magic%
echo %wisdom%
echo %discipline%
echo %strength%
echo %dexterity%
echo %stealth%
echo %charisma%
echo %badassness%
) >mainInfoSave.sav

echo Would you like to go on a journey? [y/n]
set /p userYNJQ=
if %userYNJQ%==y (call game.bat) else (exit)
