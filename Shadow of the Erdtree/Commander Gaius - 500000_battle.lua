RegisterTableGoal(GOAL_TuskRider500000_Battle, "TuskRider500000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TuskRider500000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010022)
    ai:DeleteObserve(0)
    ai:DeleteObserve(1)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 10010016) == false then
        probabilities[2] = 1000
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if distanceEnemy <= 4 then
            probabilities[5] = 0
            probabilities[14] = 0
            probabilities[19] = 30
            probabilities[7] = 20
            probabilities[8] = 20
            probabilities[17] = 30
        else
            probabilities[43] = 100
        end
    elseif ai:IsRiding(TARGET_ENE_0) then
        if distanceEnemy >= 7 then
            probabilities[2] = 30
            probabilities[3] = 20
            probabilities[4] = 10
            probabilities[5] = 10
            probabilities[9] = 20
            probabilities[11] = 30
            probabilities[13] = 30
            probabilities[15] = 0
            probabilities[10] = 20
        elseif distanceEnemy >= 4 then
            probabilities[2] = 20
            probabilities[3] = 20
            probabilities[9] = 0
            probabilities[11] = 20
            probabilities[13] = 0
            probabilities[15] = 20
            probabilities[4] = 20
            probabilities[16] = 30
            probabilities[18] = 20
            probabilities[5] = 10
            probabilities[10] = 20
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 120) then
            probabilities[1] = 10
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[6] = 10
            probabilities[9] = 0
            probabilities[11] = 0
            probabilities[13] = 0
            probabilities[15] = 0
            probabilities[4] = 20
            probabilities[16] = 0
            probabilities[18] = 20
            probabilities[5] = 0
            probabilities[10] = 20
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BR, 90) then
            probabilities[4] = 20
            probabilities[12] = 20
            probabilities[16] = 0
            probabilities[18] = 20
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[17] = 0
            probabilities[10] = 20
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            probabilities[1] = 30
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[6] = 0
            probabilities[5] = 0
            probabilities[14] = 40
            probabilities[19] = 30
        else
            probabilities[4] = 10
            probabilities[16] = 0
            probabilities[18] = 10
            probabilities[5] = 10
            probabilities[7] = 0
            probabilities[8] = 30
            probabilities[17] = 0
            probabilities[10] = 30
        end
    elseif distanceEnemy >= 12 then
        probabilities[1] = 0
        probabilities[2] = 20
        probabilities[3] = 0
        probabilities[6] = 0
        probabilities[9] = 20
        probabilities[11] = 0
        probabilities[13] = 35
        probabilities[15] = 35
        probabilities[4] = 0
        probabilities[12] = 0
        probabilities[16] = 0
        probabilities[18] = 0
        probabilities[10] = 20
    elseif distanceEnemy >= 8 then
        probabilities[1] = 0
        probabilities[2] = 20
        probabilities[3] = 20
        probabilities[6] = 0
        probabilities[9] = 0
        probabilities[11] = 0
        probabilities[13] = 20
        probabilities[15] = 20
        probabilities[4] = 0
        probabilities[12] = 0
        probabilities[16] = 30
        probabilities[18] = 30
        probabilities[10] = 20
    elseif distanceEnemy >= 4 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 120) then
            probabilities[1] = 0
            probabilities[2] = 20
            probabilities[3] = 20
            probabilities[6] = 10
            probabilities[9] = 0
            probabilities[11] = 0
            probabilities[13] = 0
            probabilities[15] = 20
            probabilities[4] = 0
            probabilities[12] = 0
            probabilities[16] = 30
            probabilities[18] = 20
            probabilities[10] = 20
        else
            probabilities[1] = 0
            probabilities[2] = 20
            probabilities[3] = 0
            probabilities[6] = 10
            probabilities[9] = 0
            probabilities[11] = 0
            probabilities[13] = 0
            probabilities[15] = 20
            probabilities[5] = 20
            probabilities[14] = 0
            probabilities[19] = 0
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 120) then
        probabilities[1] = 10
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[6] = 10
        probabilities[9] = 0
        probabilities[11] = 0
        probabilities[13] = 0
        probabilities[15] = 0
        probabilities[4] = 20
        probabilities[12] = 20
        probabilities[16] = 0
        probabilities[18] = 20
        probabilities[5] = 0
        probabilities[14] = 0
        probabilities[19] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[17] = 0
        probabilities[10] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BR, 90) then
        probabilities[4] = 20
        probabilities[12] = 20
        probabilities[16] = 0
        probabilities[18] = 0
        probabilities[7] = 0
        probabilities[8] = 20
        probabilities[17] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
        probabilities[5] = 0
        probabilities[14] = 30
        probabilities[19] = 30
        probabilities[7] = 30
        probabilities[8] = 20
        probabilities[17] = 0
        probabilities[10] = 20
    else
        probabilities[5] = 0
        probabilities[14] = 0
        probabilities[19] = 30
        probabilities[7] = 20
        probabilities[8] = 20
        probabilities[17] = 30
    end
    if ai:GetHpRate(TARGET_SELF) >= 0.6 then
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[13] = 0
        probabilities[15] = 0
    elseif ai:HasSpecialEffectId(TARGET_SELF, 10010000) == false then
        probabilities[10] = 1000
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 10010015) == true then
        probabilities[10] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 20, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3003, 20, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3004, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3006, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3007, 30, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3008, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3010, 10, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3012, 10, probabilities[9], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3014, 20, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3015, 10, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3020, 20, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3021, 10, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3027, 30, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3028, 15, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3029, 10, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3030, 15, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3031, 10, probabilities[19], 1)
    acts[1] = REGIST_FUNC(ai, goal, TuskRider500000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, TuskRider500000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, TuskRider500000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, TuskRider500000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, TuskRider500000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, TuskRider500000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, TuskRider500000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, TuskRider500000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, TuskRider500000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, TuskRider500000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, TuskRider500000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, TuskRider500000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, TuskRider500000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, TuskRider500000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, TuskRider500000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, TuskRider500000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, TuskRider500000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, TuskRider500000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, TuskRider500000_Act19)
    acts[40] = REGIST_FUNC(ai, goal, TuskRider500000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, TuskRider500000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, TuskRider500000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, TuskRider500000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, TuskRider500000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, TuskRider500000_Act45)
    local actAfter = REGIST_FUNC(ai, goal, TuskRider500000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function TuskRider500000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
        if distanceEnemy >= 5 then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local stopDist = 5
            local canRunDist = 999
            local forceRunMinDist = 0
            local runProbability = 0
            local guardProbability = 0
            local walkLife = 0
            local runLife = 3
            Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
        end
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010001)
        local goalLife = 5
        local animationId = 3000
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act02(ai, goal, paramTbl)
    local goalLife = 0.5
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 90
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f4_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f4_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010008)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010047)
    local goalLife_2 = 5
    local animationId = 3009
    local animationId_2 = 3003
    local target = TARGET_ENE_0
    local successDist = 100
    local f4_local13 = 1
    local f4_local14 = 360
    local f4_local15 = 0
    local f4_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife_2, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife_2, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act03(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 100) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010017)
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        if distanceEnemy >= 7 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local goalLife = 5
                local animationId = 3023
                local target = TARGET_ENE_0
                local successDist = 10
                local turnTime = 0
                local turnFaceAngle = 360
                local upAngleThreshold = 0
                local downAngleThreshold = 0
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
            end
        else
            local goalLife = 5
            local animationId = 3022
            local target = TARGET_ENE_0
            local successDist = 10
            local turnTime = 0
            local turnFaceAngle = 360
            local upAngleThreshold = 0
            local downAngleThreshold = 0
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
        if distanceEnemy >= 5 then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local stopDist = 5
            local canRunDist = 999
            local forceRunMinDist = 0
            local runProbability = 0
            local guardProbability = 0
            local walkLife = 0
            local runLife = 3
            if ai:IsRiding(TARGET_ENE_0) then
                stopDist = 8
            end
            Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
        end
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010002)
        local goalLife = 5
        local animationId = 3004
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        if ai:IsRiding(TARGET_ENE_0) then
            animationId = 3024
        end
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and distanceEnemy <= 3 then
        local goalLife = 5
        local animationId = 3004
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        if ai:IsRiding(TARGET_ENE_0) then
            animationId = 3024
        end
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act05(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 120) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010005)
        local goalLife = 5
        local animationId = 3006
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        if ai:IsRiding(TARGET_ENE_0) then
            animationId = 3026
        end
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7
    local canRunDist = 999
    local forceRunMinDist = 0
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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

function TuskRider500000_Act07(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010003)
    local goalLife = 5
    local animationId = 3008
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

function TuskRider500000_Act08(ai, goal, paramTbl)
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

function TuskRider500000_Act09(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3012
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 90
    local upAngleThreshold = 70
    local downAngleThreshold = 70
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act10(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010018)
    local goalLife = 5
    local animationId = 3018
    local target = TARGET_LOCALPLAYER
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 90
    local upAngleThreshold = 70
    local downAngleThreshold = 70
    if ai:HasSpecialEffectId(TARGET_SELF, 10010000) then
        animationId = 3019
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act11(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3014
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 90
    local upAngleThreshold = 70
    local downAngleThreshold = 70
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act12(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 100) or ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BR, 70) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local stopDist = 6.5
        local canRunDist = 999
        local forceRunMinDist = 0
        local runProbability = 0
        local guardProbability = 0
        local walkLife = 0
        local runLife = 3
        if ai:IsRiding(TARGET_ENE_0) then
            stopDist = 7
        end
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010004)
        local goalLife = 5
        local animationId = 3015
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        if ai:IsRiding(TARGET_ENE_0) then
            animationId = 3026
        end
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy <= 10 then
        local goalLife = 5
        local animationId = 3009
        local animationId_2 = 3003
        local animationId_3 = 3010
        local target = TARGET_ENE_0
        local successDist = 100
        local f15_local7 = 1
        local f15_local8 = 360
        local f15_local9 = 0
        local f15_local10 = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, 0, 0, 0)
    end
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy_2 >= 8.7 then
        local goalLife = 5
        local animationId = 3020
        local target = TARGET_ENE_0
        local successDist = 30
        local f15_local6 = 1.5
        local f15_local7 = 20
        local f15_local8 = 0
        local f15_local9 = 0
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act14(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010020)
        local goalLife = 5
        local animationId = 3021
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act15(ai, goal, paramTbl)
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

function TuskRider500000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy <= 10 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010021)
        local goalLife = 5
        local animationId = 3028
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act17(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3029
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

function TuskRider500000_Act18(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        if distanceEnemy >= 6 then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local stopDist = 8
            local canRunDist = 999
            local forceRunMinDist = 0
            local runProbability = 0
            local guardProbability = 0
            local walkLife = 0
            local runLife = 3
            Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
        end
        local goalLife = 5
        local animationId = 3030
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act19(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BL, 120) then
        local goalLife = 5
        local animationId = 3031
        local target = TARGET_ENE_0
        local successDist = 10
        local turnTime = 0
        local turnFaceAngle = 360
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act40(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 3)
    local moveTarget = TARGET_ENE_0
    local stopDist = 0.1
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local xzDistanceOnly = AI_CALC_DIST_TYPE__XYZ
    local f22_local9 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f22_local9 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId, onGuardResult, guardSuccessOnEnd, xzDistanceOnly)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act41(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 3)
    local moveTarget = TARGET_ENE_0
    local stopDist = 10
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f23_local6 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f23_local6 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act42(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(0.8, 1.5)
    local moveTarget = TARGET_ENE_0
    local right = 1
    local angleThreshold = 90
    local f24_local4 = 0
    local f24_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f24_local9 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f24_local9 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act43(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 90
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f25_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f25_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TuskRider500000_Act44(ai, goal, paramTbl)
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

function TuskRider500000_Act45(ai, goal, paramTbl)
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

function TuskRider500000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_TuskRider500000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 10010001) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010001)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010002)
                local goalLife = 5
                local animationId = 3001
                local target = TARGET_ENE_0
                local successDist = 10
                local f31_local6 = 1.5
                local f31_local7 = 20
                local f31_local8 = 0
                local f31_local9 = 0
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 70 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 90) then
                    animationId = 3004
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010002) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010002)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 7 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 170) then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3005
                local target = TARGET_ENE_0
                local successDist = 5
                local f31_local6 = 1.5
                local f31_local7 = 20
                local f31_local8 = 0
                local f31_local9 = 0
                if ai:IsRiding(TARGET_ENE_0) then
                    animationId = 3025
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010003) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010003)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 170) and random <= 70 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3009
                local animationId_2 = 3003
                local animationId_3 = 3010
                local target = TARGET_ENE_0
                local successDist = 30
                local f31_local8 = 1
                local f31_local9 = 360
                local f31_local10 = 0
                local f31_local11 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010004) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010004)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            if distanceEnemy <= 5 and (ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 140) or ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160)) then
                local goalLife = 5
                local animationId = 3016
                local animationId_2 = 3008
                local target = TARGET_ENE_0
                local successDist = 10
                local f31_local7 = 1.5
                local f31_local8 = 20
                local f31_local9 = 0
                local f31_local10 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010005) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010005)
            goal:ClearSubGoal()
            local goalLife = 5
            local animationId = 3010
            local target = TARGET_ENE_0
            local successDist = 10
            local f31_local4 = 1.5
            local f31_local5 = 20
            local f31_local6 = 0
            local f31_local7 = 0
            local random = ai:GetRandam_Int(1, 100)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if random <= 70 and distanceEnemy <= 8 then
                animationId = 3022
            end
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010008) then
            if ai:IsRiding(TARGET_ENE_0) then
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                if distanceEnemy <= 7 then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3011
                    local target = TARGET_ENE_0
                    local successDist = 30
                    local f31_local6 = 1
                    local f31_local7 = 360
                    local f31_local8 = 0
                    local f31_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 190) then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3003
                    local target = TARGET_ENE_0
                    local successDist = 30
                    local f31_local6 = 1
                    local f31_local7 = 360
                    local f31_local8 = 0
                    local f31_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010008)
                    local goalLife = 5
                    local animationId = 3010
                    local target = TARGET_ENE_0
                    local successDist = 30
                    local f31_local6 = 1
                    local f31_local7 = 360
                    local f31_local8 = 0
                    local f31_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 10010047) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3003
                    local target = TARGET_ENE_0
                    local successDist = 30
                    local f31_local4 = 1
                    local f31_local5 = 360
                    local f31_local6 = 0
                    local f31_local7 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010008)
                    local goalLife = 5
                    local animationId = 3010
                    local target = TARGET_ENE_0
                    local successDist = 30
                    local f31_local4 = 1
                    local f31_local5 = 360
                    local f31_local6 = 0
                    local f31_local7 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            else
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3011
                local target = TARGET_ENE_0
                local successDist = 30
                local f31_local4 = 1
                local f31_local5 = 360
                local f31_local6 = 0
                local f31_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010009) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010009)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010005)
                    local goalLife = 5
                    local animationId = 3006
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local turnTime = 0
                    local turnFaceAngle = 360
                    local upAngleThreshold = 0
                    local downAngleThreshold = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
                elseif random <= 70 then
                    local goalLife = 5
                    local animationId = 3004
                    local target = TARGET_ENE_0
                    local successDist = 30
                    local f31_local6 = 1
                    local f31_local7 = 360
                    local f31_local8 = 0
                    local f31_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                else
                    local goalLife = 5
                    local animationId = 3015
                    local target = TARGET_ENE_0
                    local successDist = 30
                    local f31_local6 = 1
                    local f31_local7 = 360
                    local f31_local8 = 0
                    local f31_local9 = 0
                    if ai:IsRiding(TARGET_ENE_0) then
                        animationId = 3026
                    end
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010017) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010017)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 180) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010005)
                local goalLife = 5
                local animationId = 3002
                local target = TARGET_ENE_0
                local successDist = 10
                local upAngleThreshold = 0
                local downAngleThreshold = 360
                local f31_local8 = 0
                local f31_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f31_local8, f31_local9)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010018) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010018)
            goal:ClearSubGoal()
            local goalLife = 5
            local animationId = 3013
            local target = TARGET_LOCALPLAYER
            local successDist = 10
            local upAngleThreshold = 0
            local downAngleThreshold = 360
            local f31_local6 = 0
            local f31_local7 = 0
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, upAngleThreshold, downAngleThreshold, f31_local6, f31_local7)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010019) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010019)
            goal:ClearSubGoal()
            if 5 >= targetDist then
                local goalLife = 10
                local animationId = 3001
                local animationId_2 = 3005
                local target = TARGET_ENE_0
                local successDist = 10
                local f31_local5 = 1.5
                local f31_local6 = 20
                local f31_local7 = 0
                local f31_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 140) or ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
                local goalLife = 5
                local animationId = 3005
                local target = TARGET_ENE_0
                local successDist = 10
                local f31_local4 = 1.5
                local f31_local5 = 20
                local f31_local6 = 0
                local f31_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010020) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010020)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if distanceEnemy <= 5 then
                local goalLife = 5
                local animationId = 3001
                local target = TARGET_ENE_0
                local successDist = 10
                local f31_local5 = 1.5
                local f31_local6 = 20
                local f31_local7 = 0
                local f31_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010021) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010021)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if ai:HasSpecialEffectId(TARGET_SELF, 10010000) then
                if distanceEnemy >= 8 then
                    local goalLife = 5
                    local animationId = 3020
                    local target = TARGET_ENE_0
                    local successDist = 100
                    local f31_local5 = 1
                    local f31_local6 = 360
                    local f31_local7 = 0
                    local f31_local8 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif distanceEnemy >= 4 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010008)
                    local goalLife = 5
                    local animationId = 3009
                    local animationId_2 = 3003
                    local target = TARGET_ENE_0
                    local successDist = 100
                    local f31_local6 = 1
                    local f31_local7 = 360
                    local f31_local8 = 0
                    local f31_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
                    return true
                end
            elseif distanceEnemy >= 5 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010008)
                local goalLife = 5
                local animationId = 3009
                local animationId_2 = 3003
                local target = TARGET_ENE_0
                local successDist = 100
                local f31_local6 = 1
                local f31_local7 = 360
                local f31_local8 = 0
                local f31_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 10010022) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10010022)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            if distanceEnemy <= 3.5 and random <= 70 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                local goalLife = 5
                local animationId = 3029
                local target = TARGET_ENE_0
                local successDist = 10
                local f31_local6 = 1.5
                local f31_local7 = 20
                local f31_local8 = 0
                local f31_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_TuskRider500000_AfterAttackAct, "TuskRider500000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TuskRider500000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


