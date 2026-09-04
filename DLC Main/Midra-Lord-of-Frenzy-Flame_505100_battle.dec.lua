RegisterTableGoal(GOAL_KingOfChaos505100_Battle, "KingOfChaos505100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingOfChaos505100_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010274)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if distanceEnemy <= 4 then
            probabilities[1] = 30
            probabilities[2] = 20
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[16] = 30
            probabilities[21] = 40
        else
            probabilities[43] = 100
        end
    elseif distanceEnemy >= 10 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[11] = 30
        probabilities[13] = 30
        probabilities[15] = 0
        probabilities[16] = 40
        probabilities[17] = 0
        probabilities[40] = 20
    elseif distanceEnemy >= 4.5 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 30
        probabilities[4] = 0
        probabilities[6] = 0
        probabilities[7] = 30
        probabilities[8] = 30
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 20
        probabilities[13] = 30
        probabilities[15] = 20
        probabilities[16] = 20
        probabilities[17] = 40
        probabilities[18] = 20
        probabilities[19] = 0
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 30
        probabilities[40] = 20
    elseif distanceEnemy >= 2.5 then
        probabilities[1] = 20
        probabilities[2] = 10
        probabilities[3] = 0
        probabilities[4] = 10
        probabilities[6] = 80
        probabilities[7] = 30
        probabilities[8] = 20
        probabilities[9] = 30
        probabilities[10] = 40
        probabilities[11] = 0
        probabilities[13] = 20
        probabilities[15] = 0
        probabilities[16] = 20
        probabilities[17] = 40
        probabilities[18] = 30
        probabilities[19] = 0
        probabilities[20] = 30
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[40] = 0
    else
        probabilities[1] = 20
        probabilities[2] = 10
        probabilities[3] = 0
        probabilities[4] = 10
        probabilities[6] = 80
        probabilities[7] = 0
        probabilities[8] = 20
        probabilities[9] = 20
        probabilities[10] = 10
        probabilities[11] = 0
        probabilities[13] = 0
        probabilities[15] = 0
        probabilities[16] = 0
        probabilities[17] = 20
        probabilities[18] = 0
        probabilities[19] = 0
        probabilities[20] = 30
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[40] = 0
    end
    if distanceEnemy >= 1.5 then
        probabilities[20] = 0
        probabilities[21] = 0
    end
    if ai:GetHpRate(TARGET_SELF) <= 0.7 then
        probabilities[14] = 1000
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010261) then
        probabilities[14] = 0
    end
    if ai:GetHpRate(TARGET_SELF) >= 0.6 then
        probabilities[6] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010260) then
        probabilities[6] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010262) == false then
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[10] = 0
        probabilities[13] = 0
        probabilities[17] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 8, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 8, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3005, 8, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3007, 8, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3009, 60, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3010, 50, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3011, 8, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3012, 20, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3014, 15, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3018, 20, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3016, 15, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3018, 30, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3019, 15, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3020, 60, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3003, 15, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3024, 10, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3025, 15, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3021, 15, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3022, 15, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3026, 20, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3027, 15, probabilities[21], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3028, 15, probabilities[22], 1)
    acts[1] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act01)
    acts[2] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act02)
    acts[3] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act03)
    acts[4] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act04)
    acts[5] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act05)
    acts[6] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act06)
    acts[7] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act07)
    acts[8] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act08)
    acts[9] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act09)
    acts[10] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act10)
    acts[11] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act11)
    acts[12] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act12)
    acts[13] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act13)
    acts[14] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act14)
    acts[15] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act15)
    acts[16] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act16)
    acts[17] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act17)
    acts[18] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act18)
    acts[19] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act19)
    acts[20] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act20)
    acts[21] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act21)
    acts[22] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act22)
    acts[40] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act40)
    acts[41] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act41)
    acts[42] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act42)
    acts[43] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act43)
    acts[44] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act44)
    acts[45] = REGIST_FUNC(ai, goal, KingOfChaos505100_Act45)
    local actAfter = REGIST_FUNC(ai, goal, KingOfChaos505100_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function KingOfChaos505100_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010250)
    local goalLife = 5
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5.6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010251)
    local goalLife = 5
    local animationId = 3002
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7.6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010253)
    local goalLife = 5
    local animationId = 3005
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010254)
    local goalLife = 5
    local animationId = 3007
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act06(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3010
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act07(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 8.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010270)
    local goalLife = 5
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act08(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010255)
    local goalLife = 5
    local animationId = 3012
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act09(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3014
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act10(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act11(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010256)
    local goalLife = 5
    local animationId = 3016
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act12(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act13(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3019
    local target = TARGET_ENE_0
    local successDist = 100
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act14(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3020
    local target = TARGET_ENE_0
    local successDist = 100
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local random = ai:GetRandam_Int(1, 100)
    if random <= 60 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010252)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010271)
    local goalLife = 5
    local animationId = 3003
    local target = TARGET_ENE_0
    local successDist = 4
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act16(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010275)
    local goalLife = 5
    local animationId = 3024
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act17(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010273)
    local goalLife = 5
    local animationId = 3025
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act18(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3021
    local animationId_2 = 3023
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if distanceEnemy >= 7.5 then
        animationId = 3022
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act19(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3022
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act20(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3026
    local target = TARGET_ENE_0
    local successDist = 2.5
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    local random = ai:GetRandam_Int(1, 100)
    if random >= 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act21(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3027
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act22(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3028
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act40(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010272)
    local goalLife = ai:GetRandam_Int(1, 2)
    local moveTarget = TARGET_ENE_0
    local stopDist = 0.1
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local xzDistanceOnly = AI_CALC_DIST_TYPE__XYZ
    local f24_local9 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f24_local9 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId, onGuardResult, guardSuccessOnEnd, xzDistanceOnly)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act41(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 3)
    local moveTarget = TARGET_ENE_0
    local stopDist = 10
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f25_local6 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f25_local6 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act42(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(0.8, 1.5)
    local moveTarget = TARGET_ENE_0
    local right = ai:GetRandam_Int(0, 1)
    local angleThreshold = 90
    local f26_local4 = 0
    local f26_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f26_local9 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f26_local9 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act43(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 90
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f27_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f27_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act44(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, 2, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, 1, -1, target, distSpaceCheck, turnTime, alwaysSuccess)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, -1, 1, target, distSpaceCheck, turnTime, alwaysSuccess)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_Act45(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    local random = ai:GetRandam_Int(1, 2)
    if random == 1 then
        rightPriority = 1
        leftPriority = -1
    end
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingOfChaos505100_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_KingOfChaos505100_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 20010250) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010250)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 3.5 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3001
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            elseif distanceEnemy <= 9 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3008
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, 3003, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, 3004, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010251) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010251)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20010260) then
                if distanceEnemy <= 2.7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010252)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010257)
                    local goalLife = 5
                    local animationId = 3003
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f33_local6 = 1.5
                    local f33_local7 = 20
                    local f33_local8 = 0
                    local f33_local9 = 0
                    if random <= 40 then
                        animationId = 3014
                    end
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif distanceEnemy <= 5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010252)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010256)
                    local goalLife = 5
                    local animationId = 3016
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f33_local6 = 1.5
                    local f33_local7 = 20
                    local f33_local8 = 0
                    local f33_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            elseif distanceEnemy <= 5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010252)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010271)
                local goalLife = 5
                local animationId = 3003
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                if random <= 30 then
                    animationId = 3014
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010252) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010252)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if not ai:IsFinishTimer(0) or ai:HasSpecialEffectId(TARGET_SELF, 10010000) then
            elseif distanceEnemy <= 5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 160) then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3004
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010253) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010253)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 10010000) then
            elseif distanceEnemy <= 5 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3006
                local f33_local4 = 3006
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local7 = 1.5
                local f33_local8 = 20
                local f33_local9 = 0
                local f33_local10 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010254) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010254)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 5 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3008
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                if random <= 30 then
                    animationId = 3001
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010255) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010255)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 10010000) then
            elseif distanceEnemy <= 5 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3013
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010256) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010256)
            if ai:HasSpecialEffectId(TARGET_SELF, 20010262) then
                if distanceEnemy <= 7 then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3017
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f33_local6 = 1.5
                    local f33_local7 = 20
                    local f33_local8 = 0
                    local f33_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, 3002, target, successDist, 0, 0, 0)
                    return true
                end
            elseif distanceEnemy <= 7 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3017
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3015
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                return true
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010257) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010257)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 7 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3006
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010258) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010258)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010259)
                local goalLife = 5
                local animationId = 3005
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010259) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010259)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3011
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010270) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010270)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if random <= 70 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3008
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010273) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010273)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if random >= 30 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3024
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010274) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010274)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy <= 4 then
                goal:ClearSubGoal()
                local random = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010252)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010271)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010255)
                local goalLife = 5
                local animationId = 3003
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                if random <= 40 then
                    animationId = 3014
                elseif random <= 70 then
                    animationId = 3012
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010275) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010275)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20010262) and distanceEnemy <= 5 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3006
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local6 = 1.5
                local f33_local7 = 20
                local f33_local8 = 0
                local f33_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        return false
    end
    if ai:IsInterupt(INTERUPT_FindAttack) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local random = ai:GetRandam_Int(1, 100)
        local random_2 = ai:GetRandam_Int(1, 100)
        if distanceEnemy <= 5 and ai:HasSpecialEffectId(TARGET_SELF, 20010272) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010272)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_3 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 <= 5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010250)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010254)
                local goalLife = 5
                local animationId = 3007
                local target = TARGET_ENE_0
                local successDist = 10
                local f33_local9 = 1.5
                local f33_local10 = 20
                local f33_local11 = 0
                local f33_local12 = 0
                if random_3 <= 50 then
                    animationId = 3000
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        return false
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local random = ai:GetRandam_Int(1, 100)
        local random_2 = ai:GetRandam_Int(1, 100)
        if distanceEnemy <= 5 then
            if ai:HasSpecialEffectId(TARGET_SELF, 20010272) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010272)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_3 = ai:GetRandam_Int(1, 100)
                if distanceEnemy_2 <= 6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010257)
                    local goalLife = 5
                    local animationId = 3014
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f33_local9 = 1.5
                    local f33_local10 = 20
                    local f33_local11 = 0
                    local f33_local12 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif distanceEnemy_2 >= 10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010256)
                    local goalLife = 5
                    local animationId = 3016
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f33_local9 = 1.5
                    local f33_local10 = 20
                    local f33_local11 = 0
                    local f33_local12 = 0
                    if random_3 <= 50 and ai:HasSpecialEffectId(TARGET_SELF, 20010262) then
                        animationId = 3019
                    end
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
                return true
            end
        elseif distanceEnemy >= 12 then
            local random_3 = ai:GetRandam_Int(1, 100)
            local random_4 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            if random_3 <= 30 then
                if random_4 >= 65 then
                    KingOfChaos505100_Act11(ai, goal)
                elseif random_4 >= 40 and ai:HasSpecialEffectId(TARGET_SELF, 20010262) then
                    KingOfChaos505100_Act13(ai, goal)
                else
                    KingOfChaos505100_Act16(ai, goal)
                end
            end
            return true
        end
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_KingOfChaos505100_AfterAttackAct, "KingOfChaos505100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingOfChaos505100_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


