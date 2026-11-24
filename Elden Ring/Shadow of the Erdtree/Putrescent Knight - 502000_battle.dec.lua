RegisterTableGoal(GOAL_GloamEyedKnight502000_Battle, "GloamEyedKnight502000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GloamEyedKnight502000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010051)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010052)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010053)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010057)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010059)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010061)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010062)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010063)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if distanceEnemy <= 4 then
            probabilities[4] = 70
            probabilities[43] = 30
            probabilities[16] = 10
        else
            probabilities[43] = 60
            probabilities[16] = 40
        end
    elseif ai:IsRiding(TARGET_ENE_0) then
        if distanceEnemy >= 18 then
        elseif distanceEnemy >= 6 then
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[4] = 10
            probabilities[5] = 10
            probabilities[6] = 10
            probabilities[7] = 10
            probabilities[8] = 10
            probabilities[9] = 10
            probabilities[10] = 10
            probabilities[11] = 10
            probabilities[12] = 10
            probabilities[13] = 10
            probabilities[14] = 0
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 270) then
            probabilities[1] = 10
            probabilities[3] = 10
            probabilities[14] = 0
        else
            probabilities[8] = 70
            probabilities[41] = 30
        end
    elseif distanceEnemy >= 25 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 80
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[40] = 20
        probabilities[13] = 100
        probabilities[16] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[14] = 0
        probabilities[17] = 30
    elseif distanceEnemy >= 18 then
        probabilities[1] = 0
        probabilities[2] = 5
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 15
        probabilities[6] = 80
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[13] = 100
        probabilities[15] = 0
        probabilities[16] = 0
        probabilities[11] = 50
        probabilities[12] = 0
        probabilities[14] = 0
        probabilities[17] = 10
    elseif distanceEnemy >= 16 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 50
        probabilities[6] = 40
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[15] = 0
        probabilities[16] = 0
        probabilities[13] = 80
        probabilities[11] = 40
        probabilities[12] = 0
        probabilities[14] = 0
        probabilities[17] = 10
    elseif distanceEnemy >= 9 then
        probabilities[1] = 0
        probabilities[2] = 60
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[13] = 80
        probabilities[15] = 10
        probabilities[40] = 0
        probabilities[16] = 0
        probabilities[11] = 40
        probabilities[12] = 10
        probabilities[14] = 0
        probabilities[17] = 30
    elseif distanceEnemy >= 4.5 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            probabilities[1] = 50
            probabilities[2] = 0
            probabilities[3] = 25
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[13] = 0
            probabilities[15] = 10
            probabilities[18] = 10
            probabilities[20] = 5
            probabilities[16] = 0
            probabilities[11] = 30
            probabilities[12] = 20
            probabilities[14] = 0
            probabilities[17] = 0
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 20
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[13] = 0
            probabilities[15] = 50
            probabilities[8] = 5
            probabilities[18] = 15
            probabilities[20] = 10
            probabilities[16] = 0
            probabilities[11] = 30
            probabilities[12] = 25
            probabilities[14] = 0
            probabilities[17] = 0
            probabilities[19] = 0
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            probabilities[1] = 60
            probabilities[3] = 20
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[13] = 0
            probabilities[15] = 0
            probabilities[8] = 5
            probabilities[18] = 10
            probabilities[20] = 5
            probabilities[11] = 30
            probabilities[12] = 25
            probabilities[14] = 0
            probabilities[17] = 0
            probabilities[19] = 0
            probabilities[42] = 20
        else
            probabilities[1] = 0
            probabilities[3] = 10
            probabilities[8] = 40
            probabilities[4] = 0
            probabilities[9] = 0
            ctPerArr[10] = 0
            probabilities[18] = 50
            probabilities[16] = 0
            probabilities[12] = 30
            probabilities[14] = 0
            probabilities[17] = 0
            probabilities[19] = 20
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        probabilities[1] = 10
        probabilities[2] = 0
        probabilities[3] = 30
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 20
        probabilities[10] = 10
        probabilities[13] = 0
        probabilities[15] = 0
        probabilities[18] = 10
        probabilities[16] = 0
        probabilities[11] = 20
        probabilities[12] = 30
        probabilities[14] = 0
        probabilities[17] = 0
        probabilities[20] = 0
        probabilities[22] = 20
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[9] = 5
        probabilities[15] = 50
        probabilities[8] = 10
        probabilities[4] = 10
        probabilities[18] = 15
        probabilities[16] = 0
        probabilities[11] = 20
        probabilities[12] = 40
        probabilities[14] = 0
        probabilities[17] = 0
        probabilities[19] = 0
        probabilities[20] = 0
        probabilities[22] = 10
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        probabilities[1] = 25
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[8] = 10
        probabilities[9] = 10
        probabilities[10] = 35
        probabilities[4] = 0
        probabilities[18] = 10
        probabilities[16] = 0
        probabilities[11] = 20
        probabilities[12] = 40
        probabilities[14] = 0
        probabilities[17] = 0
        probabilities[19] = 0
        probabilities[20] = 0
        probabilities[22] = 10
    else
        probabilities[3] = 0
        probabilities[8] = 15
        probabilities[4] = 40
        probabilities[9] = 10
        probabilities[18] = 5
        probabilities[16] = 0
        probabilities[11] = 20
        probabilities[12] = 50
        probabilities[14] = 0
        probabilities[17] = 0
        probabilities[19] = 30
    end
    if ai:GetHpRate(TARGET_SELF) >= 0.95 then
        probabilities[11] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010050) == false then
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[17] = 0
        probabilities[7] = 0
        if ai:GetHpRate(TARGET_SELF) <= 0.65 then
            probabilities[45] = 9999
        end
    else
        probabilities[6] = 0
        probabilities[14] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010097) == true then
        probabilities[11] = 9999
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20010098) == true then
        probabilities[2] = 3000
        probabilities[5] = 3000
        probabilities[11] = 2000
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 15, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3004, 20, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3006, 17, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3007, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3008, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3009, 10, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3011, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3012, 80, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3013, 12, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3027, 20, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3031, 58, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3014, 45, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3015, 10, probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3022, 55, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3023, 10, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3024, 20, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3028, 60, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3016, 10, probabilities[18], 0)
    probabilities[19] = SetCoolTime(ai, goal, 3026, 5, probabilities[19], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3017, 15, probabilities[20], 0)
    probabilities[22] = SetCoolTime(ai, goal, 3018, 15, probabilities[22], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3028, 10, probabilities[12], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3014, 10, probabilities[17], 0)
    acts[1] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act20)
    acts[22] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act22)
    acts[40] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act43)
    acts[45] = REGIST_FUNC(ai, goal, GloamEyedKnight502000_Act45)
    local actAfter = REGIST_FUNC(ai, goal, GloamEyedKnight502000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function GloamEyedKnight502000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 7.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 7.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 70
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010051)
    local goalLife = 5
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    if 15 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy_2 then
        local stopDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010053)
    local goalLife = 5
    local animationId = 3004
    local target = TARGET_ENE_0
    local successDist = 10
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 7.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 7.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 70
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 5
    local animationId = 3006
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act04(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3007
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010058)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 20 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 5
    local animationId = 3008
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010058)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 25 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 25 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 70
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 5
    local animationId = 3009
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act07(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    if 30 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy_2 then
        local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 70
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 8
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act08(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3012
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010059)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act09(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3013
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act10(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3027
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act11(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 25.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 25.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010061)
    local goalLife = 25
    local animationId = 3031
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 10.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 10.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 20
    local animationId = 3014
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 50.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 50.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 70
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 10
    local animationId = 3015
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 30.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 30.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 70
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 10
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = -1
    local turnFaceAngle = -1
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 6.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 6.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
    local goalLife = 10
    local animationId = 3023
    local target = TARGET_ENE_0
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, upAngleThreshold, downAngleThreshold)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
    local animationId = 3024
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act17(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 100 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 100 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 5
        local runProbability = 70
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3028
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act18(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act19(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010057)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act20(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = 3017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act21(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act22(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010053)
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act40(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy >= 16 then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(0.5, 1), TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(0.3, 1), TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act41(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(0.1, 2), TARGET_ENE_0, 4.5, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act42(ai, goal, paramTbl)
    local f27_local0 = 0
    local random = ai:GetRandam_Int(1, 100)
    local f27_local2 = -1
    if random <= f27_local0 then
        f27_local2 = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, 1, ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act43(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_Act45(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy >= 10 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GloamEyedKnight502000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GloamEyedKnight502000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 20010051) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010051)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 270, 180, 7.5) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010052)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 8.5) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010052) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010052)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 10.5 then
                return false
            elseif distanceEnemy >= 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 270, 180, 999.5) then
                    if random <= 70 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    return false
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 270, 180, 999.5) then
                if random <= 30 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010054) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            local f33_local2 = 20
            if ai:IsFinishTimer(2) then
                local random_2 = ai:GetRandam_Int(35, 50)
                ai:SetTimer(2, HanareruTimer)
                if ai:HasSpecialEffectId(TARGET_SELF, 20010050) == true and ai:HasSpecialEffectId(TARGET_SELF, 20010093) == false then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= f33_local2 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010057)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010057)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010061) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010061)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 50 then
                return false
            else
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010062)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010062) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010062)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 50 then
                return false
            else
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010063)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010063) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010063)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 50 then
                return false
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010053) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010053)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 15 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif distanceEnemy >= 2.5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010055) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 270, 180, 7.5) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010056) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20010050) == true and ai:HasSpecialEffectId(TARGET_SELF, 20010093) == false and distanceEnemy >= 10 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 180, 180, 5.5) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
                if random <= 85 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 180, 180, 5.5) then
                if random <= 85 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010057)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 240, 180, 10.5) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010053)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 24.5) then
                if ai:HasSpecialEffectId(TARGET_SELF, 20010091) == true then
                    if ai:HasSpecialEffectId(TARGET_SELF, 20010050) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    end
                    return true
                else
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010061)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010059) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010059)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 50 then
                return false
            elseif distanceEnemy >= 25 then
                if ai:HasSpecialEffectId(TARGET_SELF, 20010050) == true then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return false
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 999) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 20010050) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    return false
                end
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20010060) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 17 then
                return false
            elseif distanceEnemy >= 4 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        else
            return false
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local random = ai:GetRandam_Int(1, 100)
        local f33_local2 = 3
        local f33_local3 = 10
        local timer1 = ai:GetTimer(1)
        local f33_local5 = 10
        local f33_local6 = false
        if distanceEnemy >= 7 then
            f33_local2 = 4
            f33_local3 = 20
        else
            f33_local2 = 2
            f33_local3 = 20
        end
        if ai:IsFinishTimer(1) then
            ai:SetTimer(1, f33_local5)
        elseif random < (f33_local5 - f33_local2 - timer1) * 20 then
            f33_local6 = true
        elseif random <= f33_local3 + 20 then
            f33_local6 = true
        else
            f33_local6 = false
        end
        if f33_local6 == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
                if distanceEnemy >= 25.5 then
                elseif distanceEnemy >= 12.5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 180, 999.5) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 20010091) == true then
                            goal:ClearSubGoal()
                            if ai:HasSpecialEffectId(TARGET_SELF, 20010050) == true then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                            end
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010060)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                            ai:SetTimer(1, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010061)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3031, TARGET_ENE_0, 999, 0, 0)
                            ai:SetTimer(1, 0)
                            return true
                        end
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    end
                elseif distanceEnemy >= 9.5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 999.5) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 20010091) == true then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010053)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3004, TARGET_ENE_0, 999, 0, 0)
                            ai:SetTimer(1, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010061)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3031, TARGET_ENE_0, 999, 0, 0)
                            ai:SetTimer(1, 0)
                            return true
                        end
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010056)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    end
                elseif distanceEnemy >= 4.5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 999) then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010051)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 999) then
                    if random > 70 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010051)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 999) then
                    if random > 70 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010053)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010055)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 999) then
                    if random > 70 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random > 70 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010058)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010054)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
                f33_local6 = false
            else
                return false
            end
        else
            return false
        end
    end
    
end

RegisterTableGoal(GOAL_GloamEyedKnight502000_AfterAttackAct, "GloamEyedKnight502000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GloamEyedKnight502000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


