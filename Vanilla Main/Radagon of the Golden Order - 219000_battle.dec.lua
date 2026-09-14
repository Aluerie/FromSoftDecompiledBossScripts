RegisterTableGoal(GOAL_MaricaOfDistorted_219000_Battle, "MaricaOfDistorted_219000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaricaOfDistorted_219000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18557)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18563)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18567)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18569)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18584)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18588)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18589)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
        probabilities[30] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18580) then
        probabilities[30] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18581) then
        if ai:GetHpRate(TARGET_SELF) <= 0.7 then
            probabilities[12] = 100
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if distanceEnemy >= 5 then
                probabilities[34] = 30
            else
                probabilities[1] = 30
                probabilities[2] = 20
                probabilities[3] = 40
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[34] = 10
            end
        elseif distanceEnemy >= 8 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[8] = 0
            probabilities[9] = 30
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 30
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 20
            probabilities[33] = 20
        elseif distanceEnemy >= 5 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 10
            probabilities[4] = 0
            probabilities[5] = 30
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 30
            probabilities[18] = 20
            probabilities[33] = 20
        elseif distanceEnemy >= 3 then
            probabilities[1] = 30
            probabilities[2] = 0
            probabilities[3] = 20
            probabilities[4] = 20
            probabilities[5] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 10
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 10
            probabilities[18] = 0
            probabilities[30] = 20
        else
            probabilities[1] = 20
            probabilities[2] = 20
            probabilities[3] = 10
            probabilities[4] = 10
            probabilities[5] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 20
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 20
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[30] = 20
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18582) then
        if ai:GetHpRate(TARGET_SELF) <= 0.4 then
            probabilities[16] = 100
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if distanceEnemy >= 5 then
                probabilities[34] = 30
            else
                probabilities[1] = 30
                probabilities[2] = 20
                probabilities[3] = 40
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[23] = 30
                probabilities[24] = 10
                probabilities[34] = 10
            end
        elseif distanceEnemy >= 8 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 20
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 20
            if ai:IsFinishTimer(4) == true then
                probabilities[19] = 10
                probabilities[20] = 10
                probabilities[21] = 10
                probabilities[22] = 10
            end
            probabilities[23] = 20
            probabilities[33] = 20
        elseif distanceEnemy >= 5 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 10
            probabilities[4] = 0
            probabilities[5] = 30
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 30
            probabilities[18] = 20
            if ai:IsFinishTimer(4) == true then
                probabilities[19] = 10
                probabilities[20] = 10
                probabilities[21] = 10
                probabilities[22] = 10
            end
            probabilities[23] = 20
            probabilities[33] = 20
        elseif distanceEnemy >= 3 then
            probabilities[1] = 30
            probabilities[2] = 0
            probabilities[3] = 20
            probabilities[4] = 20
            probabilities[5] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 10
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 20
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 10
            probabilities[18] = 0
            if ai:IsFinishTimer(4) == true then
                probabilities[19] = 10
                probabilities[20] = 10
                probabilities[21] = 10
                probabilities[22] = 10
            end
            probabilities[23] = 20
            probabilities[24] = 20
            probabilities[30] = 20
        else
            probabilities[1] = 20
            probabilities[2] = 20
            probabilities[3] = 10
            probabilities[4] = 10
            probabilities[5] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 20
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 20
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            if ai:IsFinishTimer(4) == true then
                probabilities[19] = 10
                probabilities[20] = 10
                probabilities[21] = 10
                probabilities[22] = 10
            end
            probabilities[23] = 20
            probabilities[24] = 20
            probabilities[30] = 20
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18583) then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if distanceEnemy >= 5 then
                probabilities[34] = 30
            else
                probabilities[1] = 30
                probabilities[2] = 10
                probabilities[3] = 30
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[23] = 30
                probabilities[24] = 10
                probabilities[34] = 30
            end
        elseif distanceEnemy >= 8 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 10
            probabilities[8] = 0
            probabilities[9] = 10
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 20
            probabilities[13] = 0
            probabilities[14] = 10
            probabilities[15] = 0
            probabilities[16] = 20
            probabilities[17] = 0
            probabilities[18] = 20
            probabilities[19] = 0
            if ai:IsFinishTimer(4) == true then
                probabilities[19] = 10
                probabilities[20] = 10
                probabilities[21] = 10
                probabilities[22] = 10
            end
            probabilities[23] = 20
            probabilities[33] = 0
        elseif distanceEnemy >= 3 then
            probabilities[1] = 15
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 20
            probabilities[13] = 20
            probabilities[14] = 0
            probabilities[15] = 10
            probabilities[16] = 20
            probabilities[17] = 0
            probabilities[18] = 10
            if ai:IsFinishTimer(4) == true then
                probabilities[19] = 10
                probabilities[20] = 10
                probabilities[21] = 10
                probabilities[22] = 10
            end
            probabilities[23] = 20
            probabilities[24] = 20
            probabilities[33] = 0
        else
            probabilities[1] = 20
            probabilities[2] = 10
            probabilities[3] = 20
            probabilities[4] = 10
            probabilities[5] = 0
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 10
            probabilities[11] = 0
            probabilities[12] = 10
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[15] = 10
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            if ai:IsFinishTimer(4) == true then
                probabilities[19] = 10
                probabilities[20] = 10
                probabilities[21] = 10
                probabilities[22] = 10
            end
            probabilities[23] = 0
            probabilities[24] = 20
            probabilities[33] = 0
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3004, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3007, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3009, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3011, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3012, 10, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3013, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3014, 10, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3015, 10, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3016, 30, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3017, 10, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3018, 30, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3019, 10, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3021, 10, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3022, 10, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3037, 80, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3026, 10, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3024, 10, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3027, 20, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3028, 20, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3029, 20, probabilities[21], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3030, 20, probabilities[22], 1)
    acts[1] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act24)
    acts[30] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act36)
    acts[47] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act47)
    acts[48] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act48)
    acts[49] = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_Act49)
    local actAfter = REGIST_FUNC(ai, goal, MaricaOfDistorted_219000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function MaricaOfDistorted_219000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18550)
    local goalLife = 5
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = ai:GetRandam_Float(1.7, 2.8)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18553)
    local goalLife = 5
    local animationId = 3004
    local target = TARGET_ENE_0
    local successDist = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = ai:GetRandam_Float(3.8, 5.2)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18554)
    local goalLife = 5
    local animationId = 3007
    local target = TARGET_ENE_0
    local successDist = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = ai:GetRandam_Float(3.8, 6.2)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
    local goalLife = 5
    local animationId = 3009
    local target = TARGET_ENE_0
    local successDist = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18550)
    local goalLife = 5
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDist = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act06(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3027
    local target = TARGET_ENE_0
    local successDist = 10
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 110) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act07(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3028
    local target = TARGET_ENE_0
    local successDist = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 110) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act08(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3014
    local target = TARGET_ENE_0
    local successDist = 10
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act09(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 18580) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local stopDist = 15
        local canRunDist = 0
        local forceRunMinDist = 999
        local runProbability = 0
        local guardProbability = 0
        local walkLife = 3
        local runLife = 0
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18556)
    local goalLife = 5
    local animationId = 3015
    local target = TARGET_ENE_0
    local successDist = 10
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act10(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18558)
    local goalLife = 5
    local animationId = 3016
    local target = TARGET_ENE_0
    local successDist = 10
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(3, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act11(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 10
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 1858) then
        local goalLife = 5
        local animationId = 3031
        local target = TARGET_ENE_0
        local successDist = 10
        local f14_local6 = 0
        local f14_local7 = 0
        local f14_local8 = 0
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    elseif distanceEnemy <= 4 then
        local goalLife = 5
        local animationId = 3031
        local target = TARGET_ENE_0
        local successDist = 10
        local f14_local6 = 0
        local f14_local7 = 0
        local f14_local8 = 0
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    local goalLife = 5
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDist = 10
    local f14_local6 = 0
    local f14_local7 = 0
    local f14_local8 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(4, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act13(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3019
    local target = TARGET_ENE_0
    local successDist = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act14(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3021
    local target = TARGET_ENE_0
    local successDist = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3022
    local target = TARGET_ENE_0
    local successDist = 10
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if distanceEnemy <= 5 then
        local goalLife = 5
        local animationId = 20006
        local animationId_2 = 3037
        local target = TARGET_ENE_0
        local successDist = 100
        local f18_local7 = 0
        local f18_local8 = 0
        local f18_local9 = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    else
        local goalLife = 5
        local animationId = 3037
        local target = TARGET_ENE_0
        local successDist = 100
        local f18_local6 = 0
        local f18_local7 = 0
        local f18_local8 = 0
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act17(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18562)
    local goalLife = 5
    local animationId = 3026
    local target = TARGET_ENE_0
    local successDist = 10
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act18(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18559)
    local goalLife = 5
    local animationId = 3020
    local target = TARGET_ENE_0
    local successDist = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act19(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18564)
    local goalLife = 5
    local animationId = 3027
    local target = TARGET_ENE_0
    local successDist = 10
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 190) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    ai:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act20(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18554)
    local goalLife = 5
    local animationId = 3028
    local target = TARGET_ENE_0
    local successDist = 10
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 190) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    ai:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act21(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
    local goalLife = 5
    local animationId = 3029
    local target = TARGET_ENE_0
    local successDist = 10
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 190) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    ai:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act22(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18565)
    local goalLife = 5
    local animationId = 3030
    local target = TARGET_ENE_0
    local successDist = 10
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 190) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    ai:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act23(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
    local goalLife = 5
    local animationId = 20001
    local target = TARGET_ENE_0
    local successDist = 100
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act24(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18589)
    local goalLife = 5
    local animationId = 20006
    local target = TARGET_ENE_0
    local successDist = 100
    local f26_local4 = 0
    local f26_local5 = 0
    local f26_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act30(ai, goal, paramTbl)
    local goalLife = 1
    local moveTarget = TARGET_ENE_0
    local stopDist = 0.1
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f27_local6 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f27_local6 then
        guardStateId = 9910
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18580) then
        goalLife = 2.5
        stopDist = -1
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act31(ai, goal, paramTbl)
    local goalLife = 3
    local moveTarget = TARGET_ENE_0
    local stopDist = 0
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f28_local6 = 100
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f28_local6 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act32(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 3)
    local moveTarget = TARGET_ENE_0
    local stopDist = 10
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f29_local6 = 100
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f29_local6 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act33(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(0.8, 1.5)
    local moveTarget = TARGET_ENE_0
    local right = 1
    local angleThreshold = 90
    local f30_local4 = 0
    local f30_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f30_local9 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f30_local9 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardStateId)
    ai:SetTimer(5, 20)
    MaricaOfDistorted_219000_Act48(ai, goal)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act34(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 90
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f31_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f31_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act35(ai, goal, paramTbl)
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

function MaricaOfDistorted_219000_Act36(ai, goal, paramTbl)
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

function MaricaOfDistorted_219000_Act47(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 20
    local target = TARGET_ENE_0
    local successDist = 100
    local f34_local5 = 0
    local f34_local6 = 0
    local animationId = 20002
    local f34_local8 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act48(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if distanceEnemy >= 10 then
        MaricaOfDistorted_219000_Act09(ai, goal)
    elseif distanceEnemy >= 5 then
        if random <= 50 then
            MaricaOfDistorted_219000_Act14(ai, goal)
        else
            MaricaOfDistorted_219000_Act18(ai, goal)
        end
    elseif random <= 50 then
        MaricaOfDistorted_219000_Act03(ai, goal)
    else
        MaricaOfDistorted_219000_Act15(ai, goal)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_Act49(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if distanceEnemy <= 5 then
        local goalLife = 5
        local target = TARGET_ENE_0
        local f36_local4 = 10
        local f36_local5 = 0
        local f36_local6 = 0
        local f36_local7 = 0
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18551)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18552)
        local animationId = nil
        local random_2 = ai:GetRandam_Int(1, 100)
        if random_2 <= 40 then
            animationId = 20003
        elseif random_2 <= 70 then
            animationId = 20004
        else
            animationId = 20005
        end
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MaricaOfDistorted_219000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_MaricaOfDistorted_219000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_GuardBreak) and ai:HasSpecialEffectId(TARGET_SELF, 18557) then
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18557)
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local random = ai:GetRandam_Int(1, 100)
        if distanceEnemy <= 4 then
            goal:ClearSubGoal()
            if ai:IsFinishTimer(1) then
                local goalLife = 5
                local animationId = 3022
                local target = TARGET_ENE_0
                local successDist = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                ai:SetTimer(1, 15)
            end
        end
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18568)
            goal:ClearSubGoal()
            MaricaOfDistorted_219000_Act30(ai, goal)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18550) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18550)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy <= 10 and distanceEnemy >= 3 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local animationId = 3003
                local random = ai:GetRandam_Int(1, 100)
                if ai:HasSpecialEffectId(TARGET_SELF, 18582) or ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if random >= 70 then
                        animationId = 20001
                    elseif random >= 20 then
                        animationId = 3003
                    else
                        animationId = 20006
                    end
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            elseif distanceEnemy <= 3 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18551)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local animationId = nil
                local random = ai:GetRandam_Int(1, 100)
                if ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if random <= 40 then
                        animationId = 3001
                    elseif random <= 60 then
                        animationId = 20006
                    elseif random <= 85 then
                        animationId = 20001
                    else
                        animationId = 3003
                    end
                elseif random <= 70 then
                    animationId = 3001
                else
                    animationId = 3003
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18551) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18551)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy <= 10 and distanceEnemy >= 3 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local animationId = nil
                local random = ai:GetRandam_Int(1, 100)
                if random <= 70 then
                    animationId = 3002
                else
                    animationId = 3026
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            elseif distanceEnemy <= 3 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18552)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18558)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local animationId = nil
                local random = ai:GetRandam_Int(1, 100)
                if random <= 70 then
                    animationId = 3002
                else
                    animationId = 3016
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18552) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18552)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 7 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18552)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 50 then
                    animationId = 3003
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18553) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18553)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 and distanceEnemy >= 4 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 40 then
                    animationId = 3005
                else
                    animationId = 3006
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            elseif distanceEnemy <= 4 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 70 then
                    animationId = 3005
                else
                    animationId = 3006
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18554) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18554)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 and distanceEnemy >= 3 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18559)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 40 then
                    animationId = 3024
                else
                    animationId = 3021
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            elseif distanceEnemy <= 3 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18559)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 70 then
                    animationId = 3008
                else
                    animationId = 3024
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18555) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18555)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 7 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 70 then
                    animationId = 3010
                else
                    animationId = 3003
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18556) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18556)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 15 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18585)
                end
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = 3035
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            elseif distanceEnemy >= 3 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                if ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18585)
                end
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if ai:HasSpecialEffectId(TARGET_SELF, 18582) or ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if random_2 >= 70 then
                        animationId = 20001
                    elseif random_2 >= 30 then
                        animationId = 3035
                    else
                        animationId = 3021
                    end
                else
                    animationId = 3021
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18585) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18585)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
            local goalLife = 5
            local target = TARGET_ENE_0
            local f40_local4 = 10
            local f40_local5 = 0
            local f40_local6 = 0
            local f40_local7 = 0
            local animationId = nil
            local random_2 = ai:GetRandam_Int(1, 100)
            if random_2 <= 30 then
                animationId = 20001
            elseif distanceEnemy <= 5 then
                animationId = 3036
            else
                animationId = 20001
            end
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18558) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18558)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 10 and distanceEnemy >= 3 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if ai:HasSpecialEffectId(TARGET_SELF, 18582) or ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if random_2 >= 75 then
                        animationId = 20001
                    else
                        animationId = 3021
                    end
                else
                    animationId = 3021
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            elseif distanceEnemy <= 3 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if ai:HasSpecialEffectId(TARGET_SELF, 18582) or ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if random_2 >= 75 then
                        animationId = 20001
                    elseif random_2 >= 35 then
                        animationId = 3009
                    else
                        animationId = 3026
                    end
                elseif random_2 <= 50 then
                    animationId = 3009
                else
                    animationId = 3026
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18559) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18559)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 5 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18561)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 40 then
                    animationId = 3025
                else
                    animationId = 3015
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            else
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18562)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 50 then
                    animationId = 3014
                else
                    animationId = 3026
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18561) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18561)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 5 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if ai:HasSpecialEffectId(TARGET_SELF, 18582) or ai:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if random_2 <= 30 then
                        animationId = 20001
                    elseif random_2 <= 40 then
                        animationId = 3018
                    elseif random_2 <= 50 then
                        animationId = 3027
                    elseif random_2 <= 60 then
                        animationId = 3028
                    elseif random_2 <= 70 then
                        animationId = 3029
                    elseif random_2 <= 80 then
                        animationId = 3030
                    else
                        animationId = 3021
                    end
                else
                    animationId = 3021
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            else
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 50 then
                    animationId = 3021
                else
                    animationId = 3026
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18562) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18562)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 5 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18551)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 60 then
                    animationId = 3001
                else
                    animationId = 3014
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18563) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18563)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18561)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18569)
            if distanceEnemy <= 8 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 70 then
                    animationId = 3017
                else
                    animationId = 3025
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            else
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 60 then
                    animationId = 3015
                else
                    animationId = 3025
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18564) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18564)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 3 then
                local goalLife = 5
                local animationId = 20001
                local target = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18565) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18565)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 3 then
                local goalLife = 5
                local animationId = 3021
                local target = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18567) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18567)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 18583) and random <= 80 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
                local goalLife = 5
                local animationId = 20001
                local target = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18568) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18568)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            MaricaOfDistorted_219000_Act49(ai, goal)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18569) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18569)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 5 then
                if random <= 40 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18558)
                    local goalLife = 5
                    local animationId = 3016
                    local target = TARGET_ENE_0
                    local f40_local5 = 10
                    local f40_local6 = 0
                    local f40_local7 = 0
                    local f40_local8 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18584) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18584)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            if random >= 60 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local successDist = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = 3033
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist)
            elseif random >= 20 then
                local goalLife = 5
                local target = TARGET_ENE_0
                local successDist = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = 3034
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist)
            else
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18588) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18588)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 8 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3032
                local target = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18589) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18589)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 5 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18561)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = 3021
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 20 then
                    animationId = 3025
                elseif random_2 <= 60 then
                    animationId = 3015
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            else
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18562)
                local goalLife = 5
                local target = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local animationId = nil
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 <= 50 then
                    animationId = 3014
                else
                    animationId = 3026
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local random = ai:GetRandam_Int(1, 100)
        if random <= 80 and distanceEnemy >= 3.5 then
            goal:ClearSubGoal()
            MaricaOfDistorted_219000_Act31(ai, goal)
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5033) then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    end
    return false
end

RegisterTableGoal(GOAL_MaricaOfDistorted_219000_AfterAttackAct, "MaricaOfDistorted_219000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaricaOfDistorted_219000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

