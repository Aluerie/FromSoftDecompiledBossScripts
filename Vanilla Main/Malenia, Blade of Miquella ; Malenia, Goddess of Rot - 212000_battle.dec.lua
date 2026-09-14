RegisterTableGoal(GOAL_Marenia212000_Battle, "Marenia212000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Marenia212000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:SetNumber(1, 0)
    ai:SetTimer(1, 0)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 150)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18045)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18170)
    if ai:HasSpecialEffectId(TARGET_SELF, 18404) == false and ai:HasSpecialEffectId(TARGET_SELF, 18405) == false then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18166)
    end
    ai:DeleteObserve(0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 18402) == true or ai:HasSpecialEffectId(TARGET_SELF, 18403) == true then
        probabilities[12] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18404) == true or ai:HasSpecialEffectId(TARGET_SELF, 18405) == true then
        probabilities[12] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18401) == true then
        probabilities[28] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18020) == true and ai:HasSpecialEffectId(TARGET_SELF, 18022) == false then
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18250)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18251)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18252)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18253)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18254)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18255)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18256)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18257)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18258)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18259)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18260)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18261)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18262)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18263)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18264)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18265)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18266)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18267)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18268)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18269)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18270)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18271)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18272)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18273)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18274)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18275)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18276)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18277)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18278)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18279)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18280)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18281)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18282)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18283)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18284)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18285)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18286)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18287)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18288)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18289)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18290)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18291)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18292)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18293)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18294)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18295)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18296)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18297)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18298)
        ai:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18299)
        probabilities[50] = 100
    elseif ai:HasSpecialEffectId(TARGET_ENE_0, 30) and distanceEnemy < 5 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 50
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[15] = 50
        probabilities[16] = 0
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[25] = 0
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18000) == true then
        if distanceEnemy >= 20 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 30
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 40
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 0
            probabilities[25] = 0
        elseif distanceEnemy >= 9.5 then
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 15
            probabilities[4] = 30
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 20
            probabilities[13] = 10
            probabilities[14] = 5
            probabilities[15] = 0
            probabilities[16] = 5
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 20
            probabilities[24] = 0
            probabilities[25] = 0
        elseif distanceEnemy >= 5.4 then
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 15
            probabilities[4] = 30
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 20
            probabilities[15] = 0
            probabilities[16] = 10
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 20
            probabilities[24] = 0
            probabilities[25] = 0
        elseif distanceEnemy >= 2.6 then
            probabilities[1] = 15
            probabilities[2] = 15
            probabilities[3] = 20
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 30
            probabilities[8] = 30
            probabilities[9] = 10
            probabilities[10] = 0
            probabilities[11] = 10
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 10
            probabilities[15] = 10
            probabilities[16] = 15
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 10
            probabilities[23] = 20
            probabilities[24] = 0
            probabilities[25] = 0
        else
            probabilities[1] = 10
            probabilities[2] = 20
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 40
            probabilities[8] = 40
            probabilities[9] = 0
            probabilities[10] = 10
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 5
            probabilities[15] = 10
            probabilities[16] = 10
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 0
            probabilities[25] = 0
        end
    elseif distanceEnemy >= 20 then
        probabilities[1] = 20
        probabilities[2] = 0
        probabilities[3] = 15
        probabilities[4] = 30
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[15] = 0
        probabilities[16] = 0
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[25] = 0
    elseif distanceEnemy >= 11 then
        probabilities[1] = 10
        probabilities[2] = 10
        probabilities[3] = 15
        probabilities[4] = 20
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[15] = 0
        probabilities[16] = 0
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 40
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[25] = 0
    elseif distanceEnemy >= 5.4 then
        probabilities[1] = 8
        probabilities[2] = 8
        probabilities[3] = 15
        probabilities[4] = 20
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[15] = 0
        probabilities[16] = 15
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 50
        probabilities[23] = 20
        probabilities[24] = 0
        probabilities[25] = 0
    elseif distanceEnemy >= 2.6 then
        probabilities[1] = 20
        probabilities[2] = 10
        probabilities[3] = 20
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 30
        probabilities[8] = 30
        probabilities[9] = 10
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[15] = 10
        probabilities[16] = 15
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 20
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[25] = 0
    else
        probabilities[1] = 10
        probabilities[2] = 30
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 40
        probabilities[8] = 40
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[15] = 5
        probabilities[16] = 5
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[25] = 0
    end
    if distanceEnemy < 1 then
        probabilities[5] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18077) == true then
        probabilities[22] = probabilities[22] * 2
    end
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 150, 90, 12) then
        probabilities[7] = 0
        probabilities[8] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18041) == false then
        if hpRatioSelf > 0.72 then
            probabilities[16] = 0
        else
            probabilities[16] = probabilities[16] * 20
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18042) == false then
        if hpRatioSelf > 0.64 then
            probabilities[13] = 0
        else
            probabilities[13] = probabilities[13] * 20
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18043) == false then
        if hpRatioSelf > 0.42 then
            probabilities[14] = 0
        else
            probabilities[14] = probabilities[14] * 20
        end
    end
    probabilities[3] = SetCoolTime(ai, goal, 3011, 12, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3008, 8, probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3007, 8, probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3010, 23, probabilities[6], 0)
    probabilities[7] = SetCoolTime(ai, goal, 3025, 6, probabilities[7], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3026, 6, probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3030, 6, probabilities[9], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3016, 6, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3031, 6, probabilities[11], 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 18404) == false and ai:HasSpecialEffectId(TARGET_SELF, 18405) == false and ai:HasSpecialEffectId(TARGET_SELF, 18403) == false and ai:HasSpecialEffectId(TARGET_SELF, 18402) == false then
        probabilities[12] = SetCoolTime(ai, goal, 3017, 10, probabilities[12], 0)
    end
    probabilities[13] = SetCoolTime(ai, goal, 3037, 36, probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3019, 36, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3022, 24, probabilities[15], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3038, 28, probabilities[16], 0)
    probabilities[23] = SetCoolTime(ai, goal, 6000, 5, probabilities[23], 0)
    probabilities[24] = SetCoolTime(ai, goal, 6001, 8, probabilities[24], 0)
    acts[1] = REGIST_FUNC(ai, goal, Marenia212000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Marenia212000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Marenia212000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Marenia212000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Marenia212000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Marenia212000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Marenia212000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Marenia212000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Marenia212000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Marenia212000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Marenia212000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Marenia212000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Marenia212000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Marenia212000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Marenia212000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Marenia212000_Act16)
    acts[20] = REGIST_FUNC(ai, goal, Marenia212000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Marenia212000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Marenia212000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, Marenia212000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Marenia212000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Marenia212000_Act25)
    acts[28] = REGIST_FUNC(ai, goal, Marenia212000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, Marenia212000_Act29)
    acts[40] = REGIST_FUNC(ai, goal, Marenia212000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Marenia212000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Marenia212000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, Marenia212000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, Marenia212000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, Marenia212000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, Marenia212000_Act46)
    acts[50] = REGIST_FUNC(ai, goal, Marenia212000_Act50)
    local actAfter = REGIST_FUNC(ai, goal, Marenia212000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter)
end

function Marenia212000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 12
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3024
    local target = TARGET_ENE_0
    local successDist = 12
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3011
    local animationId_2 = 3012
    local target = TARGET_ENE_0
    local successDist_2 = 24
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f5_local15 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f5_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3008
    local target = TARGET_ENE_0
    local successDist = 12
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 1
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3007
    local target = TARGET_ENE_0
    local successDist = 12
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18107)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3010
    local target = TARGET_ENE_0
    local successDist = 12
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act07(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3025
    local target = TARGET_ENE_0
    local successDist = 12
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act08(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3026
    local target = TARGET_ENE_0
    local successDist = 12
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act09(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5.3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3030
    local target = TARGET_ENE_0
    local successDist = 12
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16030)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act10(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2.4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3016
    local target = TARGET_ENE_0
    local successDist = 12
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18181)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act11(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3016
    local animationId_2 = 3031
    local target = TARGET_ENE_0
    local successDist_2 = 24
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f13_local15 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18131)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f13_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 18.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 18
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 18.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18444) == false and ai:HasSpecialEffectId(TARGET_SELF, 18442) == false and ai:HasSpecialEffectId(TARGET_SELF, 18443) == false and ai:HasSpecialEffectId(TARGET_SELF, 18445) == false then
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local goalLife = 5
    local animationId = 3037
    local animationId_2 = 3017
    local animationId_3 = 3038
    local animationId_4 = 20005
    local animationId_5 = 20006
    local target = TARGET_ENE_0
    local successDist = 18
    local f15_local16 = 0
    local f15_local17 = 0
    local f15_local18 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
    if ai:HasSpecialEffectId(TARGET_SELF, 18444) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, target, successDist, 0, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18445) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_3, target, successDist, 0, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18442) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_4, target, successDist, 0, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18443) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_5, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f16_local1 = 12
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    local goalLife = 30
    local animationId = 3019
    local target = TARGET_ENE_0
    local successDist = 30
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3022
    local target = TARGET_ENE_0
    local successDist = 12
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 9.6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3038
    local target = TARGET_ENE_0
    local successDist = 12
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act20(ai, goal, paramTbl)
    local goalLife = 3
    local moveTarget = TARGET_ENE_0
    local stopDist = 2
    local turnTarget = TARGET_SELF
    local walk = false
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act21(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 3)
    local moveTarget = TARGET_ENE_0
    local stopDist = 10
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act22(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(2.5, 3.5)
    local moveTarget = TARGET_ENE_0
    local right = ai:GetRandam_Int(0, 1)
    local angleThreshold = ai:GetRandam_Int(60, 90)
    local f21_local4 = 3
    local f21_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy > 8.5 then
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 8)
    else
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act23(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 180, 3.8)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act24(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = 1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act25(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local f24_local3 = 1
    local f24_local4 = 2
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, 1, -1, target, distSpaceCheck, turnTime, alwaysSuccess)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, -1, 1, target, distSpaceCheck, turnTime, alwaysSuccess)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act28(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3023, TARGET_ENE_0, 99, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act29(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProbability = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3039
    local target = TARGET_ENE_0
    local successDist = 12
    local f26_local12 = 0
    local f26_local13 = 0
    local f26_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18139)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act40(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3002
    local animationId_4 = 3003
    local animationId_5 = 3004
    local animationId_6 = 3005
    local animationId_7 = 3006
    local animationId_8 = 3013
    local animationId_9 = 3014
    local animationId_10 = 3020
    local target = TARGET_ENE_0
    local successDist_2 = 12
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f27_local23 = 0
    local random = ai:GetRandam_Int(1, 100)
    if random < 25 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_4, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_5, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
    elseif random < 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_4, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_8, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
    elseif random < 75 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_10, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_9, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_6, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_7, target, successDist, upAngleThreshold, downAngleThreshold, f27_local23)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act41(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3002
    local animationId_4 = 3003
    local animationId_5 = 3004
    local target = TARGET_ENE_0
    local successDist_2 = 12
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f28_local18 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f28_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f28_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_4, target, successDist, upAngleThreshold, downAngleThreshold, f28_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_5, target, successDist, upAngleThreshold, downAngleThreshold, f28_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act42(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3002
    local animationId_4 = 3003
    local animationId_5 = 3013
    local target = TARGET_ENE_0
    local successDist_2 = 12
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f29_local18 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f29_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f29_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_4, target, successDist, upAngleThreshold, downAngleThreshold, f29_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_5, target, successDist, upAngleThreshold, downAngleThreshold, f29_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act43(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3020
    local animationId_4 = 3014
    local target = TARGET_ENE_0
    local successDist_2 = 12
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f30_local17 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f30_local17)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f30_local17)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_4, target, successDist, upAngleThreshold, downAngleThreshold, f30_local17)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act44(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3005
    local animationId_3 = 3006
    local target = TARGET_ENE_0
    local successDist_2 = 12
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f31_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f31_local16)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f31_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act45(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3002
    local animationId_4 = 3027
    local animationId_5 = 3006
    local target = TARGET_ENE_0
    local successDist_2 = 12
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f32_local18 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f32_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, upAngleThreshold, downAngleThreshold, f32_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_4, target, successDist, upAngleThreshold, downAngleThreshold, f32_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_5, target, successDist, upAngleThreshold, downAngleThreshold, f32_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act46(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3027
    local f33_local11 = 3013
    local target = TARGET_ENE_0
    local successDist_2 = 12
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local f33_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, upAngleThreshold, downAngleThreshold, f33_local16)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animeID3, target, successDist, upAngleThreshold, downAngleThreshold, f33_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_Act50(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_EVENT, 18035) then
        Approach_Act_Flex(ai, goal, 1, 0, 999, 100, 0, 3, 3)
    elseif ai:HasSpecialEffectId(TARGET_EVENT, 18030) then
        Approach_Act_Flex(ai, goal, 1, 0, 999, 0, 0, 3, 3)
    elseif ai:HasSpecialEffectId(TARGET_EVENT, 18032) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, ai:GetRandam_Int(30, 60), isWalk, true, 0)
    elseif ai:HasSpecialEffectId(TARGET_EVENT, 18033) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, ai:GetRandam_Int(30, 60), isWalk, true, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 60), isWalk, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Marenia212000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Marenia212000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local random_3 = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:IsInterupt(INTERUPT_FindAttack) and ai:HasSpecialEffectId(TARGET_SELF, 5031) and ai:HasSpecialEffectId(TARGET_SELF, 18000) == false and ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 90, 2.4) and random < 30 then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
        return true
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 5025) and ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 99) then
        goal:ClearSubGoal()
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_4 = ai:GetRandam_Int(1, 2)
        if ai:HasSpecialEffectId(TARGET_SELF, 18000) and distanceEnemy_2 < 20 and distanceEnemy_2 > 10 and random_2 < 30 then
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 4, 0, 180)
            return true
        elseif distanceEnemy_2 < 4.2 and random_4 < 80 then
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 0, 180)
            return true
        elseif random_4 == 1 and ai:HasSpecialEffectId(TARGET_SELF, 18097) == false then
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 18098) == false then
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
            return true
        elseif random_4 == 1 then
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
            return true
        else
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
            return true
        end
        return true
    end
    if ai:IsInterupt(INTERUPT_OnCreateDamage) and ai:GetNumber(1) == 3 then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        return true
    end
    if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 5026) then
        local f38_local4 = 40
        if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
            f38_local4 = 80
        end
        if distanceEnemy < 4 then
        elseif distanceEnemy < 6.4 then
            if random < f38_local4 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3008, TARGET_ENE_0, 4, 0, 0, 90)
                return true
            end
        elseif distanceEnemy < 10 then
            if random < f38_local4 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3013, TARGET_ENE_0, 4, 0, 0, 90)
                return true
            end
        elseif distanceEnemy < 20 and ai:HasSpecialEffectId(TARGET_SELF, 18000) and ai:HasSpecialEffectId(TARGET_SELF, 18067) == false then
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3017, TARGET_ENE_0, 4, 0, 0, 90)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideObserve(0) then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 18021) then
            if ai:HasSpecialEffectId(TARGET_EVENT, 18250) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, 12, 0, 0, 0)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18251) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18101)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 4, 0, 90)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18252) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18253) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18103)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18254) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18255) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18256) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18257) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18258) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18259) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18260) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18110)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18261) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18111)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3011, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18262) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18112)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18263) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18113)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18264) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18265) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18266) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18116)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18267) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18268) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18118)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18269) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18119)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18270) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18271) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18272) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18273) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18123)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18274) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18275) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18276) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18277) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18278) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18128)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18279) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18129)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3029, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18280) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18281) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18131)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3031, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18282) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18132)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3032, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18283) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18284) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18134)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18285) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18135)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3035, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18286) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18287) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18137)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18288) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18138)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 4, 0, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18290) then
                goal:ClearSubGoal()
                Approach_Act_Flex(ai, goal, 1, 0, 999, 50, 0, 3, 3)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18295) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18297) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
            elseif ai:HasSpecialEffectId(TARGET_EVENT, 18298) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            if ai:HasSpecialEffectId(TARGET_SELF, 18005) then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                if ai:HasSpecialEffectId(TARGET_SELF, 18440) == true then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if ai:HasSpecialEffectId(TARGET_SELF, 18087) == false and random_4 < 0 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 180)
                        return true
                    end
                end
                if distanceEnemy < 4.2 then
                    if ai:IsFinishTimer(0) == false then
                        local f38_local4 = 10
                        if ai:HasSpecialEffectId(TARGET_SELF, 18000) == true then
                            f38_local4 = 40
                        end
                        local timer0 = ai:GetTimer(0)
                        ai:SetStringIndexedNumber("CounterProb", f38_local4 + 80 * ((10 - timer0) / 10))
                        if random < f38_local4 + 80 * ((10 - timer0) / 10) then
                            goal:ClearSubGoal()
                            ai:SetTimer(0, 0.1)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 180)
                            return true
                        end
                    else
                        ai:SetTimer(0, 10)
                        ai:SetStringIndexedNumber("CounterProb", 0)
                    end
                end
            elseif ai:IsFinishTimer(0) == false then
                local f38_local4 = 60
                local timer0 = ai:GetTimer(0)
                local f38_local6 = f38_local4 + 100 * ((10 - timer0) / 10)
                ai:SetStringIndexedNumber("X2", timer0)
                ai:SetStringIndexedNumber("CounterProb", f38_local4 + 100 * ((10 - timer0) / 10))
                ai:SetStringIndexedNumber("fate", random)
                if random < f38_local4 + 100 * ((10 - timer0) / 10) then
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    local f38_local8 = 0
                    local f38_local9 = 0
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    if distanceEnemy_2 < 3 then
                        if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 45, 90, 3) then
                            f38_local9 = 80
                        end
                        f38_local8 = 20
                    elseif distanceEnemy_2 < 5.4 then
                        f38_local8 = 20
                    else
                        ai:SetStringIndexedNumber("testetet", 4)
                        f38_local10 = 10
                        f38_local11 = 10
                    end
                    local max = f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12
                    if max ~= 0 then
                        local random_4 = ai:GetRandam_Int(1, max)
                        if random_4 <= f38_local8 then
                            goal:ClearSubGoal()
                            ai:SetTimer(0, 0.1)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 180)
                            return true
                        elseif random_4 <= f38_local8 + f38_local9 then
                            goal:ClearSubGoal()
                            ai:SetTimer(0, 0.1)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18171)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18139)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
                            return true
                        elseif random_4 <= f38_local8 + f38_local9 + f38_local10 then
                            goal:ClearSubGoal()
                            ai:SetTimer(0, 0.1)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
                            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
                            return true
                        elseif random_4 <= f38_local8 + f38_local9 + f38_local10 + Ath6003 then
                            goal:ClearSubGoal()
                            ai:SetTimer(0, 0.1)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
                            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
                            return true
                        end
                    end
                    return true
                end
            else
                ai:SetTimer(0, 10)
                ai:SetStringIndexedNumber("CounterProb", 0)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18045) then
            if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local f38_local5 = 0
                local f38_local6 = 0
                local f38_local7 = 0
                local f38_local8 = 0
                local f38_local9 = 0
                if ai:HasSpecialEffectId(TARGET_SELF, 18046) or ai:HasSpecialEffectId(TARGET_SELF, 18047) then
                    if distanceEnemy_2 < 4.2 then
                        f38_local5 = 0
                        f38_local6 = 3
                        f38_local7 = 47
                        f38_local8 = 30
                        f38_local9 = 0
                    elseif distanceEnemy_2 < 12.8 then
                        f38_local5 = 0
                        f38_local6 = 40
                        f38_local7 = 0
                        f38_local8 = 60
                        f38_local9 = 0
                    else
                        f38_local5 = 0
                        f38_local7 = 0
                        f38_local9 = 100
                    end
                elseif distanceEnemy_2 < 4.2 then
                    f38_local5 = 0
                    f38_local7 = 30
                    f38_local8 = 20
                    f38_local9 = 50
                elseif distanceEnemy_2 < 8.8 then
                    f38_local5 = 0
                    f38_local7 = 0
                    f38_local9 = 100
                else
                    f38_local5 = 0
                    f38_local7 = 0
                    f38_local9 = 100
                end
                local max = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9
                if max ~= 0 then
                    local random_4 = ai:GetRandam_Int(1, max)
                    if random_4 <= f38_local5 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 180)
                        return true
                    elseif random_4 <= f38_local5 + f38_local6 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 16, 0, 180)
                        return true
                    elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 180)
                        return true
                    elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 10, 0, 180)
                        return true
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18046) then
                local f38_local4 = 100
                if random < f38_local4 then
                    if random_2 < 30 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18171)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18139)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 180)
                    end
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18146) or ai:HasSpecialEffectId(TARGET_SELF, 18147) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                if distanceEnemy_2 < 4.2 then
                    f38_local6 = 0
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 0
                    f38_local11 = 100
                elseif distanceEnemy_2 < 7.5 then
                    f38_local6 = 10
                    f38_local7 = 0
                    f38_local8 = 10
                    f38_local9 = 0
                    f38_local10 = 10
                    f38_local11 = 0
                elseif distanceEnemy_2 < 14 then
                    f38_local6 = 0
                    f38_local7 = 10
                    f38_local8 = 10
                    f38_local9 = 10
                    f38_local10 = 40
                    f38_local11 = 0
                elseif distanceEnemy_2 < 20 then
                    f38_local6 = 0
                    f38_local7 = 20
                    f38_local8 = 20
                    f38_local9 = 20
                    f38_local10 = 20
                    f38_local11 = 0
                else
                    f38_local6 = 0
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 20
                    f38_local11 = 0
                end
            elseif distanceEnemy_2 < 4.2 then
                f38_local6 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 100
            elseif distanceEnemy_2 < 7.5 then
                f38_local6 = 10
                f38_local9 = 0
                f38_local10 = 10
                f38_local11 = 0
            elseif distanceEnemy_2 < 14 then
                f38_local6 = 0
                f38_local9 = 10
                f38_local10 = 40
                f38_local11 = 0
            elseif distanceEnemy_2 < 20 then
                f38_local6 = 0
                f38_local9 = 20
                f38_local10 = 30
                f38_local11 = 0
            else
                f38_local6 = 0
                f38_local9 = 0
                f38_local10 = 20
                f38_local11 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 18041) == false then
                if hpRatioSelf > 0.72 then
                    f38_local9 = 0
                else
                    f38_local9 = f38_local9 * 20
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 18043) == false then
                if hpRatioSelf > 0.42 then
                    f38_local8 = 0
                else
                    f38_local8 = f38_local8 * 20
                end
            end
            local max = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
                    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3008, TARGET_ENE_0, 4, 0, 0, 90)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 16, 0, 180)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 10, 0, 180)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    ai:SetStringIndexedNumber("step4", 1)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18178) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 < 6.3 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18128)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 180)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18179) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 < 6.3 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18129)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3029, TARGET_ENE_0, 4, 0, 180)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18181) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18000) and distanceEnemy_2 > 3.4 and distanceEnemy_2 < 8.3 and random_4 < 50 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18131)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3031, TARGET_ENE_0, 4, 0, 90)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18166) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18000) and distanceEnemy_2 <= 5.4 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18066) == false then
                    f38_local6 = 40
                end
                f38_local7 = 50
                if random_4 < f38_local6 / (f38_local6 + f38_local7) * 100 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18181)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18170) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            ai:SetNumber(1, distanceEnemy_2)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 10) and distanceEnemy_2 < 4.2 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18171) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if random_4 < 20 then
                goal:ClearSubGoal()
                ai:SetTimer(0, 0.1)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18155) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if random_4 < 35 and distanceEnemy_2 < 3 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18151) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local f38_local6 = 40
            if ai:HasSpecialEffectId(TARGET_SELF, 18000) == true then
                f38_local6 = 20
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 18077) == false and distanceEnemy_2 < 2 and random_4 < f38_local6 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif distanceEnemy_2 < 10 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18101)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18101) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            if distanceEnemy_2 < 2.4 then
                if ai:IsTargetGuard(TARGET_ENE_0) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local11 = 20
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local12 = 20
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local10 = 10
                    end
                    f38_local9 = 80
                    f38_local5 = 20
                else
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local11 = 30
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local12 = 30
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local10 = 10
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) and ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 5
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 18075) or ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 15
                    else
                        f38_local5 = 25
                    end
                    f38_local6 = 5
                    f38_local9 = 5
                    f38_local15 = 20
                end
            elseif distanceEnemy_2 < 4.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local11 = 30
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local12 = 30
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18075) and ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 12
                elseif ai:HasSpecialEffectId(TARGET_SELF, 18075) or ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 18
                else
                    f38_local5 = 24
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18080) == false then
                    f38_local13 = 6
                    f38_local14 = 4
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18080) and distanceEnemy_2 > 3.8 then
                    f38_local16 = 10
                end
                if ai:IsTargetGuard(TARGET_ENE_0) == true then
                    f38_local9 = 50
                else
                    f38_local9 = 10
                end
                f38_local6 = 10
                f38_local15 = 5
            elseif distanceEnemy_2 < 8.6 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local13 = 30
                    f38_local14 = 10
                else
                    f38_local13 = 20
                    f38_local14 = 30
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 30
                else
                    f38_local16 = 30
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 0
                else
                    f38_local17 = 0
                end
            elseif distanceEnemy_2 < 12 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 10
                else
                    f38_local7 = 15
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local8 = 40
                else
                    f38_local8 = 0
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 30
                else
                    f38_local16 = 35
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 20
                else
                    f38_local17 = 50
                end
            elseif distanceEnemy_2 < 17.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 20
                else
                    f38_local7 = 15
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) and ai:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local8 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 40
                else
                    f38_local17 = 60
                end
            end
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local11 = 0
                f38_local12 = 0
            end
            local max = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18102) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            if distanceEnemy_2 < 2.8 then
                f38_local5 = 50
                if ai:HasSpecialEffectId(TARGET_SELF, 18085) == false then
                    f38_local9 = 25
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18077) == false then
                    f38_local7 = 25
                end
            elseif distanceEnemy_2 < 5.5 then
                f38_local5 = 50
            elseif distanceEnemy_2 < 10 then
                f38_local10 = 60
                f38_local11 = 40
            end
            local max = f38_local5 + f38_local7 + f38_local9 + f38_local10 + f38_local11
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18103)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local7 + Atk3036 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local7 + Atk3036 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18103) or ai:HasSpecialEffectId(TARGET_SELF, 18130) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            if distanceEnemy_2 < 3.4 then
                f38_local5 = 40
                f38_local15 = 20
                if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local11 = 50
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local12 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                    f38_local10 = 10
                end
                if ai:IsTargetGuard(TARGET_ENE_0) then
                    f38_local9 = 80
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18076) == true then
                    f38_local15 = 40
                else
                    f38_local15 = 20
                end
            elseif distanceEnemy_2 < 5.2 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local11 = 20
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local12 = 20
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local13 = 8
                    f38_local14 = 12
                end
                f38_local5 = 20
                f38_local7 = 20
            elseif distanceEnemy_2 < 7 then
                f38_local5 = 20
                f38_local7 = 50
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 40
                else
                    f38_local16 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 0
                else
                    f38_local17 = 0
                end
            elseif distanceEnemy_2 < 12 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18056) == false then
                    f38_local6 = 20
                else
                    f38_local6 = 0
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local13 = 40
                    f38_local14 = 20
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 40
                else
                    f38_local16 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 0
                else
                    f38_local17 = 0
                end
            elseif distanceEnemy_2 < 17.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local6 = 20
                else
                    f38_local6 = 15
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) and ai:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local8 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 40
                else
                    f38_local17 = 80
                end
            end
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local11 = 0
                f38_local12 = 0
            end
            local max = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18107) or ai:HasSpecialEffectId(TARGET_SELF, 18127) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            if 4 > taragetoDist then
                f38_local9 = 100
            elseif distanceEnemy_2 < 6 then
                f38_local6 = 20
                f38_local9 = 40
            elseif distanceEnemy_2 < 9.5 then
                f38_local6 = 40
            elseif distanceEnemy_2 < 18 then
                f38_local5 = 20
                Akt0000 = 20
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 60
                end
            end
            local max = f38_local5 + f38_local6 + f38_local7 + f38_local9
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 10, 0, 180)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18108) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            if distanceEnemy_2 < 2 then
                f38_local6 = 25
                f38_local7 = 10
                f38_local8 = 40
                f38_local9 = 20
            elseif distanceEnemy_2 < 5 then
                f38_local6 = 30
                f38_local7 = 10
                f38_local8 = 50
            end
            local max = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10
            if max ~= 0 then
                local random_5 = ai:GetRandam_Int(1, max)
                if random_5 <= f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18112) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 > 6 then
                if distanceEnemy_2 < 9.5 then
                    if random_4 < 40 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                        return true
                    elseif random_4 < 60 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                        return true
                    end
                elseif distanceEnemy_2 < 12.5 and random_4 < 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18114) or ai:HasSpecialEffectId(TARGET_SELF, 18113) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
            local f38_local7 = 0
            local f38_local8 = 0
            if distanceEnemy_3 < 5.6 then
                local f38_local9 = 100
            elseif distanceEnemy_3 < 8.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 40
                end
                f38_local8 = 60
            elseif distanceEnemy_3 < 17.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 60
                end
                f38_local8 = 40
            end
            local max = f38_local7 + f38_local8
            if max ~= 0 then
                local random_5 = ai:GetRandam_Int(1, max)
                if random_5 <= f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18120) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            if ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
                if distanceEnemy_2 < 2.6 then
                    f38_local6 = 0
                    f38_local9 = 40
                elseif distanceEnemy_2 < 4.2 then
                    f38_local8 = 20
                    f38_local9 = 40
                elseif distanceEnemy_2 < 7 then
                    f38_local8 = 20
                    f38_local9 = 40
                end
            elseif distanceEnemy_2 < 2.6 then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local6 = 40
                    f38_local9 = 40
                else
                    f38_local5 = 30
                    f38_local6 = 30
                    f38_local11 = 40
                end
            elseif distanceEnemy_2 < 4.2 then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local8 = 20
                    f38_local9 = 40
                else
                    f38_local5 = 60
                    f38_local6 = 40
                end
            elseif distanceEnemy_2 < 7 then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local8 = 20
                    f38_local9 = 40
                else
                    f38_local8 = 50
                    f38_local10 = 20
                    f38_local12 = 30
                end
            elseif distanceEnemy_2 < 10 then
                f38_local7 = 30
                f38_local8 = 40
                f38_local12 = 10
                f38_local13 = 20
            end
            local max = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18121) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            if distanceEnemy_2 < 2.4 then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local7 = 40
                    f38_local10 = 40
                else
                    f38_local5 = 40
                    f38_local6 = 30
                    f38_local7 = 20
                    f38_local12 = 10
                end
            elseif distanceEnemy_2 < 4 then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local9 = 20
                    f38_local10 = 40
                else
                    f38_local5 = 40
                    f38_local6 = 30
                    f38_local7 = 20
                    f38_local14 = 0
                end
            elseif distanceEnemy_2 < 8 then
                f38_local9 = 40
            elseif distanceEnemy_2 < 12 then
                f38_local8 = 40
            end
            if random <= Atk3002 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif random <= Atk3002 + f38_local7 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif random <= Atk3002 + f38_local7 + f38_local8 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif random <= Atk3002 + f38_local7 + f38_local8 + f38_local9 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif random <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif random <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif random <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif random <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18122) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                if distanceEnemy_2 < 2.4 then
                    f38_local6 = 20
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 0
                    f38_local11 = 0
                    f38_local12 = 20
                elseif distanceEnemy_2 < 4.8 then
                    f38_local6 = 10
                    f38_local7 = 10
                    f38_local8 = 10
                    f38_local9 = 0
                    f38_local10 = 10
                    f38_local11 = 10
                    f38_local12 = 20
                elseif distanceEnemy_2 < 12.8 then
                    f38_local6 = 0
                    f38_local7 = 10
                    f38_local8 = 10
                    f38_local9 = 0
                    f38_local10 = 15
                    f38_local11 = 15
                    f38_local12 = 0
                else
                    f38_local6 = 0
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 0
                    f38_local11 = 0
                    f38_local12 = 20
                end
            elseif distanceEnemy_2 < 2.2 then
                f38_local6 = 0
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 0
                f38_local12 = 20
            elseif distanceEnemy_2 < 12.6 then
                f38_local6 = 0
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 0
                f38_local12 = 20
            else
                f38_local6 = 0
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 0
                f38_local12 = 20
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 18041) == false then
                if hpRatioSelf > 0.72 then
                    f38_local11 = 0
                else
                    f38_local11 = f38_local11 * 20
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 18043) == false then
                if hpRatioSelf > 0.42 then
                    f38_local8 = 0
                else
                    f38_local8 = f38_local8 * 20
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 18042) == false then
                if hpRatioSelf > 0.64 then
                    f38_local10 = 0
                else
                    f38_local10 = f38_local10 * 20
                end
            end
            local max = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18181)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 16, 3019, TARGET_ENE_0, 16, 0, 180)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 10, 0, 180)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18137)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3037, TARGET_ENE_0, 10, 0, 180)
                    return true
                elseif random_4 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    ai:SetStringIndexedNumber("nagecount6", 1)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 10, 0, 180)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18128) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            if distanceEnemy_2 < 2.4 then
                if ai:IsTargetGuard(TARGET_ENE_0) then
                    f38_local5 = 20
                    f38_local10 = 60
                    f38_local11 = 10
                    f38_local14 = 20
                else
                    f38_local5 = 30
                    f38_local6 = 10
                    f38_local10 = 0
                    f38_local11 = 10
                    f38_local14 = 30
                end
            elseif distanceEnemy_2 < 4.4 then
                f38_local5 = 70
                f38_local6 = 30
            elseif distanceEnemy_2 < 8.5 then
                f38_local8 = 40
                f38_local12 = 30
                f38_local13 = 10
                f38_local15 = 20
            elseif distanceEnemy_2 < 10.5 then
                f38_local8 = 30
                f38_local12 = 20
                f38_local13 = 10
                f38_local15 = 20
                f38_local15 = 20
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 10
                else
                    f38_local16 = 10
                end
            elseif distanceEnemy_2 < 17.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 50
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 50
                else
                    f38_local16 = 100
                end
            end
            local max = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18129) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            if distanceEnemy_2 < 5.4 then
                f38_local5 = 40
                f38_local6 = 40
                f38_local7 = 20
            end
            local max = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18101)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18103)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18135) or ai:HasSpecialEffectId(TARGET_SELF, 18136) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            local f38_local18 = 0
            local f38_local19 = 0
            if distanceEnemy_2 < 2.4 then
                if ai:IsTargetGuard(TARGET_ENE_0) then
                    f38_local10 = 80
                    f38_local5 = 20
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local12 = 20
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local13 = 20
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local11 = 10
                    end
                else
                    f38_local6 = 5
                    f38_local10 = 5
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local12 = 30
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local13 = 30
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local11 = 10
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) and ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 5
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 18075) or ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 15
                    else
                        f38_local5 = 25
                    end
                end
            elseif distanceEnemy_2 < 4.8 then
                f38_local6 = 10
                f38_local8 = 10
                f38_local10 = 10
                if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local12 = 30
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local13 = 30
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18075) and ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 12
                elseif ai:HasSpecialEffectId(TARGET_SELF, 18075) or ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 18
                else
                    f38_local5 = 24
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18080) == false then
                    f38_local14 = 6
                    f38_local15 = 4
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18080) and distanceEnemy_2 > 3.8 then
                    f38_local18 = 10
                end
            elseif distanceEnemy_2 < 9.6 then
                f38_local8 = 30
                f38_local14 = 50
                f38_local15 = 10
            elseif distanceEnemy_2 < 12 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 10
                else
                    f38_local7 = 15
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 40
                else
                    f38_local9 = 0
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local18 = 30
                else
                    f38_local18 = 25
                end
            elseif distanceEnemy_2 < 17.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 20
                else
                    f38_local7 = 15
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) and ai:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local9 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local19 = 40
                else
                    f38_local19 = 60
                end
            end
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local12 = 0
                f38_local13 = 0
            end
            local max = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local18 + f38_local19
            if max ~= 0 then
                local random_4 = ai:GetRandam_Int(1, max)
                if random_4 <= f38_local5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_4 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local18 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18116) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 < 5.4 then
                if random_4 < 75 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3032, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            elseif distanceEnemy_2 < 9 then
                return false
            elseif distanceEnemy_2 < 18 and random_4 < 60 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18117) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 < 5 then
                return false
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3032, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18131) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 < 1.8 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                return true
            elseif distanceEnemy_2 < 6.8 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18115) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            local f38_local18 = 0
            local f38_local19 = 0
            local f38_local20 = 0
            if distanceEnemy_2 < 2.4 then
                if ai:IsTargetGuard(TARGET_ENE_0) then
                    f38_local11 = 80
                    f38_local6 = 20
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local13 = 20
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local14 = 20
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local12 = 10
                    end
                else
                    f38_local7 = 5
                    f38_local11 = 5
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local13 = 30
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local14 = 30
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local12 = 10
                    end
                    if ai:HasSpecialEffectId(TARGET_SELF, 18075) and ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local6 = 5
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 18075) or ai:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local6 = 15
                    else
                        f38_local6 = 25
                    end
                end
            elseif distanceEnemy_2 < 4.8 then
            elseif distanceEnemy_2 < 9.6 then
            elseif distanceEnemy_2 < 12 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 10
                else
                    f38_local9 = 10
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local8 = 10
                else
                    f38_local8 = 20
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local10 = 40
                else
                    f38_local10 = 0
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local20 = 10
                else
                    f38_local20 = 10
                end
            elseif distanceEnemy_2 < 17.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local8 = 20
                else
                    f38_local8 = 15
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) and ai:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local10 = 40
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local20 = 40
                else
                    f38_local20 = 60
                end
            end
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local13 = 0
                f38_local14 = 0
            end
            local max = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17 + f38_local19 + f38_local20
            if max ~= 0 then
                local random_5 = ai:GetRandam_Int(1, max)
                if random_5 <= f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17 + f38_local19 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18139) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            if distanceEnemy_2 < 2 then
                f38_local6 = 20
                f38_local8 = 40
                f38_local9 = 40
            elseif distanceEnemy_2 < 5 then
                f38_local6 = 10
                f38_local8 = 10
                f38_local9 = 40
                if ai:HasSpecialEffectId(TARGET_SELF, 18064) == false then
                    f38_local7 = 40
                else
                    f38_local7 = 10
                end
            elseif distanceEnemy_2 < 12 then
                f38_local9 = 40
                f38_local10 = 20
                if ai:HasSpecialEffectId(TARGET_SELF, 18064) == false then
                    f38_local7 = 40
                else
                    f38_local7 = 10
                end
            end
            local max = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11
            ai:SetStringIndexedNumber("hajiki_dist", distanceEnemy_2)
            ai:SetStringIndexedNumber("hajiki_sumAtk", max)
            ai:SetStringIndexedNumber("hajiki_fate", random_4)
            if max ~= 0 then
                local random_5 = ai:GetRandam_Int(1, max)
                if random_5 <= f38_local6 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18145) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_4 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18000) then
                if distanceEnemy_3 < 4.2 then
                    f38_local7 = 50
                    f38_local8 = 0
                    f38_local9 = 0
                elseif distanceEnemy_3 < 7.5 then
                    f38_local7 = 0
                    f38_local8 = 10
                    f38_local9 = 10
                elseif distanceEnemy_3 < 14 then
                    f38_local7 = 0
                    f38_local8 = 20
                    f38_local9 = 20
                elseif distanceEnemy_3 < 20 then
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 20
                else
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                end
            elseif distanceEnemy_3 < 4.2 then
                f38_local7 = 50
                f38_local8 = 0
                f38_local9 = 10
            elseif distanceEnemy_3 < 7.5 then
                f38_local7 = 0
                f38_local8 = 10
                f38_local9 = 30
            elseif distanceEnemy_3 < 14 then
                f38_local7 = 0
                f38_local8 = 20
                f38_local9 = 40
            elseif distanceEnemy_3 < 20 then
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 20
            else
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
            end
            local max = f38_local7 + f38_local8 + f38_local9
            if max ~= 0 then
                local random_5 = ai:GetRandam_Int(1, max)
                if random_5 <= f38_local7 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif random_5 <= f38_local7 + f38_local8 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(150) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) and distanceEnemy > 10 and ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 99) then
        goal:ClearSubGoal()
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_4 = ai:GetRandam_Int(1, 2)
        if ai:HasSpecialEffectId(TARGET_SELF, 18000) and distanceEnemy_2 < 20 and distanceEnemy_2 > 10 and random_2 < 60 then
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 4, 0, 180)
            return true
        elseif random_4 == 1 then
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
        else
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
        end
        return true
    end
end

RegisterTableGoal(GOAL_Marenia212000_AfterAttackAct, "Marenia212000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Marenia212000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local angleToEnemy = ai:GetToTargetAngle(TARGET_ENE_0)
    ai:SetStringIndexedNumber("DistMin_AAA", -999)
    ai:SetStringIndexedNumber("DistMax_AAA", 7)
    ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    ai:SetStringIndexedNumber("Angle_AAA", 180)
    ai:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    ai:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    ai:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    ai:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if distanceEnemy >= 5 then
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif distanceEnemy >= 2 then
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

