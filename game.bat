@echo off
cls
<mainInfoSave.sav (
set /p mainName=
set /p raceChoice=
set /p classChoice=
set /p classStage=

set /p magic=
set /p wisdom=
set /p discipline=
set /p strength=
set /p dexterity=
set /p stealth=
set /p charisma=
set /p badassness=
)

set /a lvl=1
set /a exp=0
set /a health=100
set /a mana=10

:: carry weight 10 means 10 items
set /a carryWeight=10
set /a armor=0
::charcter position in form of x and y
set /a characterXPosition=2
set /a characterYPosition=1

(
echo %lvl%
echo %exp%
echo %health%
echo %mana%

echo %carryWeight%
echo %armor%
echo %characterXPosition%
echo %characterYPosition%
) >secondarySaveInfo.sav

set currentArea=ElvenForest
goto :begin

:cityCheck
cls

:areaErrorMSG
cls
echo Please choose an actuall option!
:areaCheck
cls
if %currentArea%==ElvenForest (goto :elvenForestPaths) else (goto :snowyForestCheck)
:snowyForestCheck
if %currentArea%==SnowyForest (goto :snowyForestPaths) else (goto :HangingRockCliffCheck)
:HangingRockCliffCheck
if %currentArea%==HangingRockCliff (goto :hangingPaths) else (goto :drakesHollowCheck)
:drakesHollowCheck
if %currentArea%==DrakesHollow (goto :drakesHollowPaths) else (goto :orkishCampCheck)
:orkishCampCheck
if %currentArea%==OrkishCamp (goto :orkishCampPaths) else (goto :dragonsCaveCheck)
:dragonsCaveCheck
if %currentArea%==DragonsCave (goto :dragonsCavePaths) else (goto :dwarvenDeepMinesCheck)
:dwarvenDeepMinesCheck
if %currentArea%==DwarvenDeepMines (goto :dwarvenDeepPaths) else (goto :dwarvenSurfaceMineCheck)
:dwarvenSurfaceMineCheck
if %currentArea%==DwarvenSurfaceMine (goto :dwarvenSurfacePaths) else (goto :neverSleepPeakCheck)
:neverSleepPeakCheck
if %currentArea%==NeverSleepPeak (goto :neverSleepPeakPaths) else (goto :darkStoneTempleCheck)
:darkStoneTempleCheck
if %currentArea%==TheDarkStoneTemple (goto :theDarkStoneTemplePaths) else (goto :deamonicCarvernsCheck)
:deamonicCarvernsCheck
if %currentArea%==DeamonicCaverns (goto :deamonicCavernsPaths) else (goto :templeOfRedAngelCheck)
:templeOfRedAngelCheck
if %currentArea%==TempleOfRedAngel (goto :templeOfRedAngelPaths) else (goto :eclipsePathwayCheck)
:eclipsePathwayCheck
if %currentArea%==EclipsePathway (goto :eclipsePathwayPaths) else (goto :eclipseMountainCheck)
:eclipseMountainCheck
if %currentArea%==EclipseMountain (goto :eclipseMountainPaths) else (echo This was not suppose to happen.)

:elvenForestPaths
echo 1) Snowy Forest
echo 2) Hanging Rock Cliff
echo 3) Drakes Hollow
:elvenForestLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaSnowyForest) else (goto :elvenForestCheck1)
:elvenForestCheck1
if %pathAreaChoice%==2 (goto :setAreaHangingRockCliff) else (goto :elvenForestCheck2)
:elvenForestCheck2
if %pathAreaChoice%==3 (goto :setAreaDrakesHollow) else (goto :areaErrorMSG)

:snowyForestPaths
echo 1) Orkish Camp
echo 2) Elven Forest
:snowyForestLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaOrkishCamp) else (goto :snowyForestCheck1)
:snowyForestCheck1
if %pathAreaChoice%==2 (goto :setAreaElvenForest) else (goto :areaErrorMSG)

:hangingPaths
echo 1) Orkish Camp
echo 2) Elven Forest
:hangingPathsLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaOrkishCamp) else (goto :hangingPathsCheck1)
:hangingPathsCheck1
if %pathAreaChoice%==2 (goto :setAreaElvenForest) else (goto :areaErrorMSG)

:drakesHollowPaths
echo 1) Dragons Cave
echo 2) Elven Forest
:drakesHollowLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaDragonsCave) else (goto :drakesHollowCheck1)
:drakesHollowCheck1
if %pathAreaChoice%==2 (goto :setAreaElvenForest) else (goto :areaErrorMSG)

:orkishCampPaths
echo 1) Dwarven Deep Mines
echo 2) Snowy Forest
echo 3) Hanging Rock Cliff
:orkishCampLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaDwravenDeepMines) else (goto :orkishCampCheck1)
:orkishCampCheck1
if %pathAreaChoice%==2 (goto :setAreaSnowyForest) else (goto :orkishCampCheck2)
:orkishCampCheck2
if %pathAreaChoice%==3 (goto :setAreaHangingRockCliff) else (goto :areaErrorMSG)

:dragonsCavePaths
echo 1) Dwarven Surface Mine
echo 2) Never Sleep Peak 
echo 3) Drakes Hollow
:dragonsCaveLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaDwarvenSurfaceMine) else (goto :dragonsCaveCheck1)
:dragonsCaveCheck1
if %pathAreaChoice%==2 (goto :setAreaNeverSleepPeak) else (goto :dragonsCaveCheck2)
:dragonsCaveCheck2
if %pathAreaChoice%==3 (goto :setAreaDrakesHollow) else (goto :areaErrorMSG)

:dwarvenDeepPaths
echo 1) Dwarven Surface Mine
echo 2) The Dark Stone Temple
echo 3) Temple Of Red Angel
echo 4) Orkish Camp
:dwarvenDeepLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaDwarvenSurfaceMine) else (goto :dwarvenDeepCheck1)
:dwarvenDeepCheck1
if %pathAreaChoice%==2 (goto :setAreaTheDarkStone) else (goto :dwarvenDeepCheck2)
:dwarvenDeepCheck2
if %pathAreaChoice%==3 (goto :setAreaTempleOfRedAngel) else (goto :dwarvenDeepCheck3)
:dwarvenDeepCheck3
if %pathAreaChoice%==4 (goto :setAreaOrkishCamp) else (goto :areaErrorMSG)

:dwarvenSurfacePaths
echo 1) Dwarven Deep Mines
echo 2) The Dark Stone temple
echo 3) Demonic Caverns
echo 4) Dragons Cave
:dwarvenSurfaceLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaDwarvenDeepMines) else (goto :dwarvenSurfaceCheck1)
:dwarvenSurfaceCheck1
if %pathAreaChoice%==2 (goto :setAreaTheDarkStoneTemple) else (goto :dwarvenSurfaceCheck2)
:dwarvenSurfaceCheck2
if %pathAreaChoice%==3 (goto :setAreaDemonicCaverns) else (goto :dwarvenSurfaceCheck3)
:dwarvenSurfaceCheck3
if %pathAreaChoice%==4 (goto :setAreaDragonsCave) else (goto :areaErrorMSG)

:neverSleepPeakPaths
echo 1) Dragons Cave
:neverSleepPeakLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaDragonsCave) else (goto :areaErrorMSG)

:theDarkStoneTemplePaths
echo 1) Temple Of Red Angel 
echo 2) Eclipse Pathway
echo 3) Dwarven Surface Mine
echo 4) Dwarven Deep Mines
:theDarkStoneTempleLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaTempleOfRedAngel) else (goto :theDarkStoneTempleCheck1)
:theDarkStoneTempleCheck1
if %pathAreaChoice%==2 (goto :setAreaEclipsePathway) else (goto :theDarkStoneTempleCheck2)
:theDarkStoneTempleCheck2
if %pathAreaChoice%==3 (goto :setAreaDwarvenSurfaceMine) else (goto :theDarkStoneTempleCheck3)
:theDarkStoneTempleCheck3
if %pathAreaChoice%==4 (goto :setAreaDwarvenDeepMines) else (goto :areaErrorMSG)

:deamonicCavernsPaths
echo 1) Dwarven Surface Mine
:deamonicCavernsLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaDwarvenSurfaceMine) else (goto :areaErrorMSG)

:templeOfRedAngelPaths
echo 1) Eclipse Pathway
echo 2) The Dark Stone Temple
echo 3) Dwarven Deep Mines
:templeOfRedAngelLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaEclipsePathway) else (goto :templeOfRedAngelCheck1)
:templeOfRedAngelCheck1
if %pathAreaChoice%==2 (goto :setAreaTheDarkStoneTemple) else (goto :templeOfRedAngelCheck2)
:templeOfRedAngelCheck2
if %pathAreaChoice%==3 (goto :setAreaDwarvenDeepMines) else (goto :areaErrorMSG)

:eclipsePathwayPaths
echo 1) Eclipse Mountain
echo 2) Temple Of Red Angel
echo 3) The Dark Stone Temple
:eclipsePathwayLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaEclipseMountain) else (goto :eclipsePathwayCheck1)
:eclipsePathwayCheck1
if %pathAreaChoice%==2 (goto :setAreaTempleOfRedAngel) else (goto :eclipsePathwayCheck2)
:eclipsePathwayCheck2
if %pathAreaChoice%==3 (goto :setAreaTheDarkStoneTemple) else (goto :areaErrorMSG)

:eclipseMountainPaths
echo 1) Eclipse Pathway
:eclipseMountainLoops
set /p pathAreaChoice=
if %pathAreaChoice%==1 (goto :setAreaEclipsePathway) else (goto :areaErrorMSG)

:setAreaElvenForest
set currentArea=ElvenForest
echo You are now in the Elven Forest.
pause
goto :mainScreen
:setAreaSnowyForest
set currentArea=SnowyForest
echo You are now in Snowy Forest.
pause
goto :mainScreen
:setAreaDrakesHollow
set currentArea=DrakesHollow
echo You are now in Drakes Hollow.
pause
goto :mainScreen
:setAreaHangingRockCliff
set currentArea=HangingRockCliff
echo You are now in Hanging Rock cliff.
pause
goto :mainScreen
:setAreaOrkishCamp
set currentArea=OrkishCamp
echo You are now in the Orkish Camp.
pause
goto :mainScreen
:setAreaDragonsCave
set currentArea=DragonsCave
echo You are now in the Dragons Cave.
pause
goto :mainScreen
:setAreaDwarvenDeepMines
set currentArea=DwarvenDeepMines
echo You are now in Dwarven Deep Mines.
pause
goto :mainScreen
:setAreaDwarvenSurfaceMines
set currentArea=DwarvenSurfaceMine
echo You are now in the Dwarven Surface Mine.
pause
goto :mainScreen
:setAreaNeverSleepPeak
set currentArea=NeverSleepPeak
echo You are now in Never Sleep Peak.
pause
goto :mainScreen
:setAreaTheDarkStoneTemple
set currentArea=TheDarkStoneTemple
echo You are now in The Dark Stone Temple.
pause
goto :mainScreen
:setAreaDemonicCaverns
set currentArea=DemonicCaverns
echo You are now in Demonic Caverns
pause
goto :mainScreen
:setAreaTempleOfRedAngel
set currentArea=TempleOfRedAngel
echo You are now in the Temple Of Red Angel.
pause
goto :mainScreen
:setAreaEclipsePathway
set currentArea=EclipsePathway
echo You are now in Eclipse Pathway.
pause
goto :mainScreen
:setAreaEclipseMountain
set currentArea=EclipseMountain
echo You are now in Eclipse Mountain.
pause
goto :mainScreen

:backpack
cls
echo Equipped Armor
echo Helmet     :
echo Main Armor : 
echo Gloves     :
echo Boots      :
echo Equipped Weapons
echo Main Arm   :
echo Other Arm  :
echo Backpack


:activeQuests
cls

:save
cls
(

) >gameSave.sav
goto :mainScreen

:load
cls
<gameSave.sav (

)
goto :mainScreen

:begin
echo Well as we have been talking I have studied you and I belive you are of pure heart.
echo We will talk soon.
pause
cls
echo All of a sudden a bright light blinds you.
echo As your vision slowly fades in you begin to notice that you are no longer in the room.
echo You are on a path in the middle of thick woods.
echo A voice in your head tells you "Follow the path. It will lead you to Elvendale. That is where your journey begins.".
pause

:errorMSG
cls
echo Please choose an actual option!!!
:mainScreen
cls
echo Choose one of the following by their corresponding number.
echo 1) Head to the nearest city
echo 2) Go to new area
echo 3) Sort items
echo 4) Quests
echo 5) Save
echo 6) Load
set /p userMainScreenChoice=

:mainCheck
if %userMainScreenChoice%==1 (goto :cityCheck) else (goto :exploreArea)
:exploreArea
if %userMainScreenChoice%==2 (goto :areaCheck) else (goto :sortItems)
:sortItems
if %userMainScreenChoice%==3 (goto :backpack) else (goto :questsAnswer)
:questsAwnser
if %userMainScreenChoice%==4 (goto :activeQuests) else (goto :saveGame)
:saveGame
if %userMainScreenChoice%==5 (goto :save) else (goto :loadGame)
:loadGame
if %userMainScreenChoice%==6 (goto :load) else (goto :errorMSG)