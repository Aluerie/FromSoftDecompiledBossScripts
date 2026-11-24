RegisterTableGoal(GOAL_RaduarnOfMicare522000_Battle, "RaduarnOfMicare522000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RaduarnOfMicare522000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserve(0)
    ai:DeleteObserve(1)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010274)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010275)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011565)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011566)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 20011574) then
        probabilities[31] = 1000
    else
        local f2_local5 = 0
        if ai:HasSpecialEffectId(TARGET_SELF, 20011594) then
            f2_local5 = 1
        end
        if ai:HasSpecialEffectId(TARGET_HOSTPLAYER, 19680) then
            probabilities[30] = 100
        else
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                if distanceEnemy <= 4 then
                    probabilities[1] = 10
                    probabilities[2] = 10
                    probabilities[3] = 0
                    probabilities[4] = 10
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 10
                    probabilities[12] = 0
                    probabilities[13] = 10
                    probabilities[44] = 20
                else
                    probabilities[43] = 100
                end
            elseif distanceEnemy >= 18 then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 20
                probabilities[6] = 20
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[10] = 60
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 1000
                probabilities[15] = 50
                probabilities[16] = 50
                probabilities[17] = 50 * f2_local5
                probabilities[18] = 30
                probabilities[19] = 30
                probabilities[20] = 1000
                probabilities[40] = 20
            elseif distanceEnemy >= 12 then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 30
                probabilities[6] = 20
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[10] = 40
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 1000
                probabilities[15] = 50
                probabilities[16] = 50
                probabilities[17] = 50 * f2_local5
                probabilities[18] = 40
                probabilities[19] = 40
                probabilities[20] = 1000
                probabilities[40] = 20
                probabilities[41] = 0
                probabilities[42] = 0
                probabilities[43] = 0
                probabilities[44] = 0
            elseif distanceEnemy >= 8.5 then
                probabilities[1] = 20
                probabilities[2] = 40
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 20
                probabilities[7] = 0
                probabilities[8] = 20
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 1000
                probabilities[15] = 40
                probabilities[16] = 40
                probabilities[17] = 30 * f2_local5
                probabilities[18] = 40
                probabilities[19] = 40
                probabilities[20] = 30
            elseif distanceEnemy >= 4.5 then
                probabilities[1] = 20
                probabilities[2] = 40
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 0
                probabilities[6] = 20
                probabilities[7] = 0
                probabilities[8] = 20
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 30
                probabilities[13] = 20
                probabilities[14] = 1000
                probabilities[15] = 0
                probabilities[16] = 20
                probabilities[17] = 30 * f2_local5
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[20] = 30
            else
                probabilities[1] = 30
                probabilities[2] = 30
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 10
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[10] = 0
                probabilities[11] = 30
                probabilities[12] = 20
                probabilities[13] = 20
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 70
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[20] = 20
                probabilities[30] = 0
                probabilities[40] = 0
                probabilities[41] = 0
                probabilities[42] = 0
                probabilities[43] = 0
                probabilities[44] = 10
            end
            if ai:GetHpRate(TARGET_SELF) >= 0.65 then
                probabilities[14] = 0
            end
            if ai:GetHpRate(TARGET_SELF) >= 0.5 then
                probabilities[20] = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20011597) then
                probabilities[17] = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20011598) then
                probabilities[14] = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20011575) then
                probabilities[20] = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) == false then
                probabilities[12] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[20] = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20011573) == false and ai:GetHpRate(TARGET_SELF) <= 0.25 then
                probabilities[21] = 1000
            end
            if ai:HasSpecialEffectId(TARGET_HOSTPLAYER, 19680) then
                probabilities[30] = 100
            end
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 12, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3004, 12, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3007, 8, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3009, 15, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3010, 15, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3012, 15, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3013, 20, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3005, 10, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3014, 12, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3015, 30, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3018, 20, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3025, 30, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3017, 50, probabilities[13], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3022, 12, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3023, 20, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3020, 20, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3031, 12, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3032, 12, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3034, 55, probabilities[20], 1)
    probabilities[44] = SetCoolTime(ai, goal, 6002, 10, probabilities[44], 1)
    probabilities[44] = SetCoolTime(ai, goal, 6003, 10, probabilities[44], 1)
    acts[1] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act21)
    acts[30] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act31)
    acts[40] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_Act45)
    local actAfter = REGIST_FUNC(ai, goal, RaduarnOfMicare522000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function RaduarnOfMicare522000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4
    local canRunDist = 0
    local forceRunMinDist = 15
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011550)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3001
    local target = TARGET_ENE_0
    local successDist = 6
    local successDist_2 = 6
    local f3_local14 = 6
    local f3_local15 = 6
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local random = ai:GetRandam_Int(1, 100)
    if random <= 40 then
        animationId_2 = 3003
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist_2, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.5
    local canRunDist = 0
    local forceRunMinDist = 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
    local goalLife = 5
    local animationId = 3004
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

function RaduarnOfMicare522000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 7
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011552)
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

function RaduarnOfMicare522000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011553)
    local goalLife = 5
    local animationId = 3009
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

function RaduarnOfMicare522000_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011554)
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

function RaduarnOfMicare522000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 30
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011559)
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

function RaduarnOfMicare522000_Act07(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3013
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

function RaduarnOfMicare522000_Act08(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011550)
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

function RaduarnOfMicare522000_Act09(ai, goal, paramTbl)
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

function RaduarnOfMicare522000_Act10(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3015
    local target = TARGET_ENE_0
    local successDist = 500
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act11(ai, goal, paramTbl)
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

function RaduarnOfMicare522000_Act12(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3025
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act13(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011563)
    local goalLife = 15
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 100
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act14(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3026
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

function RaduarnOfMicare522000_Act15(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011564)
    local goalLife = 5
    local animationId = 3022
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

function RaduarnOfMicare522000_Act16(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011565)
    local goalLife = 5
    local animationId = 3023
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act17(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011568)
    local goalLife = 5
    local animationId = 3020
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

function RaduarnOfMicare522000_Act18(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
    local goalLife = 5
    local animationId = 3031
    local target = TARGET_ENE_0
    local successDist = 150
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act19(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011552)
    local goalLife = 5
    local animationId = 3032
    local target = TARGET_ENE_0
    local successDist = 150
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act20(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3033
    local animationId_2 = 3035
    local animationId_3 = 3036
    local target = TARGET_ENE_0
    local successDist = 100
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy >= 7 then
        animationId = 3034
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act21(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3021
    local animationId_2 = 3024
    local target = TARGET_ENE_0
    local successDist = 100
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act30(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 20012
    local target = TARGET_ENE_0
    local successDist = 10
    local f24_local4 = 1.5
    local f24_local5 = 20
    local f24_local6 = 0
    local f24_local7 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act31(ai, goal, paramTbl)
    local goalLife = 10
    local turnTarget = TARGET_ENE_0
    goal:AddSubGoal(GOAL_COMMON_Wait, goalLife, turnTarget)
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act40(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 2)
    local moveTarget = TARGET_ENE_0
    local stopDist = 2
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local xzDistanceOnly = AI_CALC_DIST_TYPE__XYZ
    local f26_local9 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f26_local9 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId, onGuardResult, guardSuccessOnEnd, xzDistanceOnly)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act41(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 3)
    local moveTarget = TARGET_ENE_0
    local stopDist = 10
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f27_local6 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f27_local6 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act42(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(0.8, 1.5)
    local moveTarget = TARGET_ENE_0
    local right = 1
    local angleThreshold = 90
    local f28_local4 = 0
    local f28_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f28_local9 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f28_local9 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act43(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 90
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f29_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f29_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act44(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local f30_local3 = 1
    local f30_local4 = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011557)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011558)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, 1, -1, target, distSpaceCheck, turnTime, alwaysSuccess)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, -1, 1, target, distSpaceCheck, turnTime, alwaysSuccess)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_Act45(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011557)
    local goalLife = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 7
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RaduarnOfMicare522000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_RaduarnOfMicare522000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 20011550) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011550)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            local random_2 = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 8 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3002
                local animationId_2 = 3003
                local target = TARGET_ENE_0
                local f35_local7 = 6
                local f35_local8 = 6
                local successDist = 6
                local successDist_2 = 6
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local13 = 0
                local f35_local14 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local13, f35_local14)
                if random_2 <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist_2, upAngleThreshold, downAngleThreshold, f35_local13, f35_local14)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011551) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 8 then
                goal:ClearSubGoal()
                if random <= 40 then
                    local goalLife = 5
                    local animationId = 3005
                    local animationId_2 = 3006
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local9 = 0
                    local f35_local10 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                else
                    local goalLife = 5
                    local animationId = 3019
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local8 = 0
                    local f35_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011552) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011552)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 12 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3008
                local target = TARGET_ENE_0
                local f35_local5 = 10
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local8 = 0
                local f35_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011553) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011553)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3004
                local animationId_2 = 3005
                local animationId_3 = 3006
                local target = TARGET_ENE_0
                local successDist = 6
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local10 = 0
                local f35_local11 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local10, f35_local11)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f35_local10, f35_local11)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f35_local10, f35_local11)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011554) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011554)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 12 and random <= 40 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3011
                local target = TARGET_ENE_0
                local f35_local5 = 10
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local8 = 0
                local f35_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011555) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011555)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                goal:ClearSubGoal()
                local goalLife = 15
                local animationId = 3029
                local animationId_2 = 3035
                local target = TARGET_ENE_0
                local successDist = 100
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local9 = 0
                local f35_local10 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011556) then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011556)
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                if distanceEnemy <= 10 then
                    goal:ClearSubGoal()
                    local goalLife = 15
                    local animationId = 3027
                    local animationId_2 = 3015
                    local target = TARGET_ENE_0
                    local successDist = 100
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local9 = 0
                    local f35_local10 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011560) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011560)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3017
                local target = TARGET_ENE_0
                local successDist = 10
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local8 = 0
                local f35_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011557) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011557)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011564)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011552)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011559)
            local goalLife = 5
            local animationId = 3007
            local target = TARGET_ENE_0
            local successDist = 10
            local upAngleThreshold = 0
            local downAngleThreshold = 360
            local f35_local8 = 0
            local f35_local9 = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                if distanceEnemy >= 8 then
                    if random <= 70 then
                        animationId = 3022
                    elseif random <= 40 then
                        animationId = 3023
                    else
                        animationId = 3032
                    end
                elseif distanceEnemy >= 4 then
                    animationId = 3011
                elseif random <= 40 then
                    animationId = 3009
                end
            elseif distanceEnemy >= 6 then
                if random <= 30 then
                    animationId = 3012
                else
                    animationId = 3011
                end
            elseif random <= 40 then
                animationId = 3009
            end
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011558) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011558)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011550)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011559)
            local goalLife = 5
            local animationId = 3011
            local target = TARGET_ENE_0
            local successDist = 10
            local upAngleThreshold = 0
            local downAngleThreshold = 360
            local f35_local8 = 0
            local f35_local9 = 0
            if random <= 30 then
                animationId = 3012
            end
            if distanceEnemy <= 6 then
                animationId = 3001
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, 3000, target, successDist, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                animationId = 3031
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
            end
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011559) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011559)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 6 then
                goal:ClearSubGoal()
                if random <= 20 then
                    local goalLife = 5
                    local animationId = 3013
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local8 = 0
                    local f35_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
                else
                    local goalLife = 5
                    local animationId = 3016
                    local animationId_2 = 3030
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local successDist_2 = 50
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local10 = 0
                    local f35_local11 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local10, f35_local11)
                    if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist_2, upAngleThreshold, downAngleThreshold, f35_local10, f35_local11)
                    end
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011561) then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011561)
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011566)
                local goalLife = 15
                local animationId = 3031
                local target = TARGET_ENE_0
                local successDist = 100
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local8 = 0
                local f35_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011562) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011562)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 6 then
                goal:ClearSubGoal()
            elseif distanceEnemy <= 11 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 6000
                local target = TARGET_ENE_0
                local f35_local5 = 10
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local8 = 0
                local f35_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            else
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
                local goalLife = 5
                local animationId = 3031
                local target = TARGET_ENE_0
                local successDist = 10
                local turnTime = 0
                local turnFaceAngle = 360
                local upAngleThreshold = 0
                local downAngleThreshold = 0
                ai:SetTimer(1, 10)
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011563) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011563)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                goal:ClearSubGoal()
                local goalLife = 10
                local animationId = 3028
                local target = TARGET_ENE_0
                local f35_local5 = 10
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local8 = 0
                local f35_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011564) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011564)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                if distanceEnemy >= 8 then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3031
                    local target = TARGET_ENE_0
                    local f35_local5 = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local8 = 0
                    local f35_local9 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
                    if random <= 70 then
                        animationId = 3032
                    end
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
                elseif distanceEnemy <= 8 then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3000
                    local animationId_2 = 3003
                    local target = TARGET_ENE_0
                    local f35_local6 = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local9 = 0
                    local f35_local10 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011565) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011565)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) and distanceEnemy <= 13 then
                goal:ClearSubGoal()
                if random <= 70 then
                    local goalLife = 10
                    local animationId = 3020
                    local target = TARGET_ENE_0
                    local f35_local5 = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local8 = 0
                    local f35_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
                elseif random <= 85 then
                    local goalLife = 10
                    local animationId = 3004
                    local animationId_2 = 3019
                    local target = TARGET_ENE_0
                    local f35_local6 = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local9 = 0
                    local f35_local10 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                else
                    local goalLife = 10
                    local animationId = 3007
                    local animationId_2 = 3008
                    local target = TARGET_ENE_0
                    local f35_local6 = 10
                    local upAngleThreshold = 0
                    local downAngleThreshold = 360
                    local f35_local9 = 0
                    local f35_local10 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local9, f35_local10)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011566) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011566)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                goal:ClearSubGoal()
                local goalLife = 10
                local animationId = 3030
                local target = TARGET_ENE_0
                local f35_local5 = 10
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f35_local8 = 0
                local f35_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist4, upAngleThreshold, downAngleThreshold, f35_local8, f35_local9)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010274) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            local goalLife = 15
            local target = TARGET_ENE_0
            local successDist = 10
            local f35_local5 = 1.5
            local f35_local6 = 20
            local f35_local7 = 0
            local f35_local8 = 0
            local animationId = 3009
            if random <= 30 and ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                animationId = 3020
            elseif random <= 60 then
                local animationId_2 = 3000
                animationId = 3003
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
            end
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010275) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            local goalLife = 15
            local target = TARGET_ENE_0
            local successDist = 10
            local f35_local5 = 1.5
            local f35_local6 = 20
            local f35_local7 = 0
            local f35_local8 = 0
            local animationId = 3013
            if random <= 30 and ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                animationId = 3020
            elseif random <= 60 then
                animationId = 3014
            end
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011568) and ai:HasSpecialEffectId(TARGET_HOSTPLAYER, 19680) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            local goalLife = 15
            local animationId = 20012
            local target = TARGET_ENE_0
            local successDist = 10
            local f35_local6 = 1.5
            local f35_local7 = 20
            local f35_local8 = 0
            local f35_local9 = 0
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
        end
        return false
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local random = ai:GetRandam_Int(1, 100)
        local random_2 = ai:GetRandam_Int(1, 100)
        if distanceEnemy <= 8 then
            local random_3 = ai:GetRandam_Int(1, 100)
            if random_3 <= 30 then
                local goalLife = 2
                local f35_local5 = nil
                local animationId = 3009
                local target = TARGET_ENE_0
                local successDist = 10
                local f35_local9 = 0
                local f35_local10 = 0
                local f35_local11 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
            end
        elseif distanceEnemy <= 15 then
            goal:ClearSubGoal()
            if random <= 70 then
                local goalLife = ai:GetRandam_Float(0.8, 2)
                local moveTarget = TARGET_ENE_0
                local stopDist = 10
                local turnTarget = TARGET_SELF
                local walk = true
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
                local guardSuccessOnEnd = true
                local xzDistanceOnly = AI_CALC_DIST_TYPE__XYZ
                local f35_local12 = 0
                local random_3 = ai:GetRandam_Int(1, 100)
                local guardStateId = -1
                if random_3 <= f35_local12 then
                    guardStateId = 9910
                end
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId, onGuardResult, guardSuccessOnEnd, xzDistanceOnly)
            else
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011559)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011564)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011565)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
                local goalLife = 5
                local f35_local4 = nil
                local animationId = 3010
                local target = TARGET_ENE_0
                local successDist = 10
                local f35_local8 = 0
                local f35_local9 = 0
                local f35_local10 = 0
                local random_3 = ai:GetRandam_Int(1, 100)
                if random_3 <= 40 then
                    animationId = 3012
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                    if random_3 <= 25 then
                        animationId = 3022
                    elseif random_3 <= 50 then
                        animationId = 3023
                    elseif random_3 <= 75 then
                        animationId = 3031
                    else
                        animationId = 3032
                    end
                end
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
            end
        else
            goal:ClearSubGoal()
            if random <= 30 then
                local goalLife = ai:GetRandam_Float(0.8, 2)
                local moveTarget = TARGET_ENE_0
                local stopDist = 10
                local turnTarget = TARGET_SELF
                local walk = true
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
                local guardSuccessOnEnd = true
                local xzDistanceOnly = AI_CALC_DIST_TYPE__XYZ
                local f35_local12 = 0
                local random_3 = ai:GetRandam_Int(1, 100)
                local guardStateId = -1
                if random_3 <= f35_local12 then
                    guardStateId = 9910
                end
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId, onGuardResult, guardSuccessOnEnd, xzDistanceOnly)
            else
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011559)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011564)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011565)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011551)
                local goalLife = 5
                local f35_local4 = nil
                local animationId = 3012
                local target = TARGET_ENE_0
                local successDist = 10
                local f35_local8 = 0
                local f35_local9 = 0
                local f35_local10 = 0
                local random_3 = ai:GetRandam_Int(1, 100)
                if random_3 <= 40 then
                    animationId = 3015
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 20011599) then
                    if random_3 <= 25 then
                        animationId = 3022
                    elseif random_3 <= 50 then
                        animationId = 3023
                    elseif random_3 <= 75 then
                        animationId = 3031
                    else
                        animationId = 3032
                    end
                end
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
            end
        end
        return true
    end
    
end

RegisterTableGoal(GOAL_RaduarnOfMicare522000_AfterAttackAct, "RaduarnOfMicare522000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RaduarnOfMicare522000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


