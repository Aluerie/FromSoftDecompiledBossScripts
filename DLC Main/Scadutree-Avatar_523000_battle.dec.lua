RegisterTableGoal(GOAL_ShadowOfErdtrees523000_Battle, "ShadowOfErdtrees523000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ShadowOfErdtrees523000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011400)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011401)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011402)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011403)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011405)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011407)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011408)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011409)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011443)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = 1
    local f2_local7 = 1
    local f2_local8 = 1
    local f2_local9 = 1
    if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
        f2_local7 = 0
        f2_local8 = 0
        if ai:GetHpRate(TARGET_SELF) <= 0.6 then
            f2_local9 = 2
            f2_local8 = 1
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011411) == true then
        f2_local7 = 2
        f2_local8 = 0.5
        if ai:GetHpRate(TARGET_SELF) <= 0.4 then
            f2_local7 = 3
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011412) == true then
        f2_local7 = 0.5
        f2_local8 = 0.5
        f2_local6 = 4
        if ai:GetHpRate(TARGET_SELF) <= 0.4 then
            f2_local6 = 8
        end
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
            probabilities[27] = 100
        elseif distanceEnemy >= 10 then
            probabilities[27] = 100
        else
            probabilities[12] = 5
            probabilities[13] = 10
            probabilities[27] = 15
            probabilities[17] = 70
        end
    elseif distanceEnemy >= 100 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 5
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 5 * f2_local7
        probabilities[15] = 0 * f2_local6
        probabilities[19] = 0 * f2_local6
        probabilities[16] = 5 * f2_local8
        probabilities[17] = 0
        probabilities[18] = 0
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[29] = 100
    elseif distanceEnemy >= 50 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 60
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 5 * f2_local7
        probabilities[15] = 0 * f2_local6
        probabilities[19] = 0 * f2_local6
        probabilities[16] = 5 * f2_local8
        probabilities[17] = 0
        probabilities[18] = 0
        probabilities[25] = 0
        probabilities[26] = 5
        probabilities[29] = 30
    elseif distanceEnemy >= 35 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 50
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 30 * f2_local7
        probabilities[15] = 15 * f2_local6
        probabilities[19] = 15 * f2_local6
        probabilities[16] = 30 * f2_local8
        probabilities[17] = 0
        probabilities[18] = 0
        probabilities[25] = 0
        probabilities[26] = 5
        probabilities[29] = 5
    elseif distanceEnemy >= 14.5 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 30
        probabilities[5] = 70
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 20 * f2_local7
        probabilities[15] = 10 * f2_local6
        probabilities[19] = 10 * f2_local6
        probabilities[16] = 20 * f2_local8
        probabilities[17] = 0
        probabilities[18] = 50
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[29] = 5
    elseif distanceEnemy >= 10 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 35
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 65
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 20 * f2_local7
        probabilities[15] = 10 * f2_local6
        probabilities[19] = 10 * f2_local6
        probabilities[16] = 20 * f2_local8
        probabilities[17] = 0
        probabilities[18] = 50
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[29] = 15
    elseif distanceEnemy >= 7 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 20
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 30
        probabilities[9] = 50
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 20 * f2_local7
        probabilities[15] = 25 * f2_local6
        probabilities[19] = 25 * f2_local6
        probabilities[16] = 20 * f2_local8
        probabilities[17] = 0
        probabilities[18] = 30
        probabilities[25] = 0
        probabilities[26] = 0
    elseif distanceEnemy >= 2 then
        probabilities[1] = 0
        probabilities[2] = 10
        probabilities[3] = 5
        probabilities[4] = 0
        probabilities[5] = 5
        probabilities[6] = 0
        probabilities[7] = 40
        probabilities[8] = 0
        probabilities[9] = 30
        probabilities[10] = 20
        probabilities[11] = 0
        probabilities[12] = 20 * f2_local9
        probabilities[13] = 0
        probabilities[14] = 0 * f2_local7
        probabilities[15] = 30 * f2_local6
        probabilities[19] = 30 * f2_local6
        probabilities[16] = 0 * f2_local8
        probabilities[17] = 0
        probabilities[18] = 40
        probabilities[25] = 0
        probabilities[26] = 0
    elseif distanceEnemy >= -3.5 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            probabilities[1] = 40
            probabilities[2] = 10
            probabilities[3] = 25
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 30
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 15
            probabilities[11] = 0
            probabilities[12] = 10 * f2_local9
            probabilities[13] = 0
            probabilities[14] = 0 * f2_local7
            probabilities[15] = 30 * f2_local6
            probabilities[19] = 30 * f2_local6
            probabilities[16] = 0 * f2_local8
            probabilities[17] = 20
            probabilities[18] = 30
            probabilities[25] = 0
            probabilities[26] = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
            probabilities[12] = 70 * f2_local9
            probabilities[13] = 30
        else
            probabilities[12] = 20
            probabilities[13] = 30
            probabilities[17] = 50
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 5
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[12] = 20 * f2_local9
        probabilities[13] = 30
        probabilities[14] = 0 * f2_local7
        probabilities[15] = 40 * f2_local6
        probabilities[19] = 40 * f2_local6
        probabilities[16] = 0 * f2_local8
        probabilities[17] = 50
        probabilities[18] = 0
        probabilities[25] = 20
        probabilities[26] = 0
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
        probabilities[12] = 70 * f2_local9
        probabilities[13] = 30
    else
        probabilities[12] = 20
        probabilities[13] = 30
        probabilities[17] = 50
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20011443) == true and ai:HasSpecialEffectId(TARGET_SELF, 20011444) == false then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
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
        probabilities[15] = 0
        probabilities[16] = 0
        probabilities[17] = 0
        probabilities[18] = 0
        probabilities[19] = 0
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[28] = 99999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
        probabilities[6] = 0
        probabilities[11] = 0
        probabilities[15] = 0
        probabilities[19] = 0
        probabilities[14] = 0
        probabilities[17] = 0
        probabilities[18] = 0
        if ai:GetHpRate(TARGET_SELF) <= 0.6 then
            probabilities[16] = 999
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011411) == true then
        probabilities[6] = 0
        probabilities[11] = 0
        probabilities[15] = 0
        probabilities[19] = 0
        probabilities[16] = 0
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011412) == true then
        probabilities[6] = 0
        probabilities[11] = 0
        probabilities[16] = 0
        probabilities[14] = 0
        if ai:GetHpRate(TARGET_SELF) <= 0.4 then
            probabilities[15] = 0
        else
            probabilities[19] = 0
        end
    else
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 0)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 30, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3005, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3007, 15, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3009, 15, probabilities[6], 0)
    probabilities[7] = SetCoolTime(ai, goal, 3010, 25, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3015, 10, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3016, 10, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3017, 20, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3018, 15, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3019, 30, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3020, 10, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3026, 20, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3030, 25, probabilities[15], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3027, 90, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3011, 15, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3012, 20, probabilities[18], 10)
    probabilities[18] = SetCoolTime(ai, goal, 3013, 50, probabilities[18], 0)
    probabilities[19] = SetCoolTime(ai, goal, 3033, 25, probabilities[19], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3019, 50, probabilities[16], 0)
    acts[1] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act19)
    acts[25] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_Act29)
    local actAfter = REGIST_FUNC(ai, goal, ShadowOfErdtrees523000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function ShadowOfErdtrees523000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 9 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 9 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011402)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act02(ai, goal, paramTbl)
    local animationId = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act03(ai, goal, paramTbl)
    local animationId = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011407)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 60.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 60.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011400)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act05(ai, goal, paramTbl)
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011401)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 999 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3009
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act07(ai, goal, paramTbl)
    local animationId = 3010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act08(ai, goal, paramTbl)
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011403)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act09(ai, goal, paramTbl)
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act10(ai, goal, paramTbl)
    local animationId = 3017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act11(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 8.5 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act12(ai, goal, paramTbl)
    local animationId = 3019
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011409)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act13(ai, goal, paramTbl)
    local animationId = 3020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011408)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 100 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 100 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 20 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3030
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 100 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 100 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3027
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy_2 >= 20 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3019, TARGET_ENE_0, 999, 180, 180, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act17(ai, goal, paramTbl)
    local animationId = 3011
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011405)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act18(ai, goal, paramTbl)
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act19(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if 20 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
        local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
        local canRunDist = stopDist + 0
        local forceRunMinDist = stopDist + 10
        local runProbability = 30
        local guardProbability = 0
        local walkLife = 3
        local runLife = 3
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    end
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act25(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 10
    local runDist = 12
    local guardProb = 50
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= guardProb then
        guardStateId = 9910
    end
    if stopDist <= distanceEnemy then
        Approach_Act(ai, goal, stopDist, runDist, guardProb, 3)
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, stopDist, TARGET_ENE_0, true, guardStateId)
    
end

function ShadowOfErdtrees523000_Act26(ai, goal, paramTbl)
    local f23_local0 = 50
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f23_local0 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act27(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act28(ai, goal, paramTbl)
    local distanceFromTarget = 5
    local directionFromTarget = AI_DIR_TYPE_F
    local warpTarget = TARGET_ENE_0
    local turnTarget = TARGET_ENE_0
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    local f25_local5 = true
    local f25_local6 = true
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 20011411) == true then
        f25_local6 = true
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011412) == true then
        f25_local6 = false
    end
    if f25_local6 == true then
        if ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 50 + lineWidth, lineWidth, 0) >= 50 then
            directionFromTarget = AI_DIR_TYPE_F
            distanceFromTarget = 10
            f25_local5 = true
        elseif ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FR, 50 + lineWidth, lineWidth, 0) >= 50 then
            directionFromTarget = AI_DIR_TYPE_FR
            distanceFromTarget = 10
            f25_local5 = true
        elseif ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FL, 50 + lineWidth, lineWidth, 0) >= 50 then
            directionFromTarget = AI_DIR_TYPE_FL
            distanceFromTarget = 10
            f25_local5 = true
        elseif ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, 50 + lineWidth, lineWidth, 0) >= 50 then
            directionFromTarget = AI_DIR_TYPE_R
            distanceFromTarget = 10
            f25_local5 = true
        elseif ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, 50 + lineWidth, lineWidth, 0) >= 50 then
            directionFromTarget = AI_DIR_TYPE_L
            distanceFromTarget = 10
            f25_local5 = true
        elseif ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, 50 + lineWidth, lineWidth, 0) >= 50 then
            directionFromTarget = AI_DIR_TYPE_B
            distanceFromTarget = 10
            f25_local5 = true
        elseif ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 50 + lineWidth, lineWidth, 0) >= 50 then
            directionFromTarget = AI_DIR_TYPE_F
            distanceFromTarget = 10
            f25_local5 = true
        else
            directionFromTarget = AI_DIR_TYPE_F
            distanceFromTarget = 0
            f25_local5 = false
        end
    elseif 5 <= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 2 + lineWidth, lineWidth, 0) then
        directionFromTarget = AI_DIR_TYPE_F
        distanceFromTarget = 5
        f25_local5 = true
    elseif 5 <= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, 2 + lineWidth, lineWidth, 0) then
        directionFromTarget = AI_DIR_TYPE_R
        distanceFromTarget = 5
        f25_local5 = true
    elseif 5 <= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, 2 + lineWidth, lineWidth, 0) then
        directionFromTarget = AI_DIR_TYPE_L
        distanceFromTarget = 5
        f25_local5 = true
    elseif 5 <= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, 2 + lineWidth, lineWidth, 0) then
        directionFromTarget = AI_DIR_TYPE_B
        distanceFromTarget = 5
        f25_local5 = true
    else
        directionFromTarget = AI_DIR_TYPE_F
        distanceFromTarget = 0
        f25_local5 = false
    end
    if f25_local5 == true then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTarget, directionFromTarget, distanceFromTarget, turnTarget, -1, -1, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3031, TARGET_ENE_0, 9999, 180, 180)
    else
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3031, TARGET_ENE_0, 9999, 180, 180)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20011411) == true then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3012, TARGET_ENE_0, 999, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011412) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3030, TARGET_ENE_0, 999, 0, 0)
    else
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_Act29(ai, goal, paramTbl)
    local goalLife = 3
    local moveTarget = TARGET_ENE_0
    local stopDist = 2
    local turnTarget = TARGET_ENE_0
    local walk = false
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShadowOfErdtrees523000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_ShadowOfErdtrees523000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 20011400) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011400)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 280, 180, 20) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011401)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 280, 180, 80) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011401) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011401)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                return false
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 280, 180, 20.5) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011402) then
            local random = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011402)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                return false
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5.5) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011408)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 9.5) then
                if random < 30 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random < 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return false
                end
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011403) then
            local random = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011403)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15.5) then
                if random < 90 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return false
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 8.5) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011402)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011404) then
            local random = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 180, 10.5) then
                if random < 40 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011402)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random < 70 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return false
                end
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011405) then
            local random = ai:GetRandam_Int(1, 100)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011405)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 50) then
                if distanceEnemy >= 20 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011400)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif distanceEnemy >= 7 then
                    if random <= 40 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011403)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif random <= 35 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011401)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 20011431) == false then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return false
                    end
                elseif distanceEnemy >= -3.5 then
                    if random <= 60 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif random <= 80 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return tru
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011408) then
            local random = ai:GetRandam_Int(1, 100)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011408)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                return false
            elseif distanceEnemy >= 7 then
                return false
            elseif distanceEnemy >= -3.5 then
                if random <= 60 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return false
                end
            elseif random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011406) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
            local random_2 = ai:GetRandam_Int(4, 4)
            if ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
                ai:SetTimer(0, 0)
                return true
            elseif ai:IsFinishTimer(0) then
                ai:SetTimer(0, random_2 + 100)
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            elseif distanceEnemy <= 120 and ai:GetTimer(0) > 100 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                ai:SetTimer(0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011407) then
            local random = ai:GetRandam_Int(1, 100)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011407)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                return false
            elseif distanceEnemy >= 20 then
                return false
            elseif distanceEnemy >= 6 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011403)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011405)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif distanceEnemy >= -3.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, 180, 100) then
                    if random <= 60 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011405)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011409)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 55 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011405)
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011408)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011409) then
            local random = ai:GetRandam_Int(1, 100)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011409)
            if distanceEnemy >= -3.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true and ai:GetHpRate(TARGET_SELF) <= 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 20011430) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return false
                end
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
        local f30_local2 = 10
        local f30_local3 = 10
        local timer1 = ai:GetTimer(1)
        local f30_local5 = 10
        local f30_local6 = false
        if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
            if distanceEnemy >= 10 then
                f30_local2 = 3
                f30_local3 = 10
            else
                f30_local2 = 5
                f30_local3 = 10
            end
        elseif distanceEnemy >= 10 then
            f30_local2 = 3
            f30_local3 = 10
        else
            f30_local2 = 5
            f30_local3 = 10
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
            if ai:IsFinishTimer(1) then
                ai:SetTimer(1, f30_local5)
                f30_local6 = false
            elseif random < (f30_local5 - f30_local2 - timer1) * 20 then
                f30_local6 = true
            end
            if random <= f30_local3 then
                f30_local6 = true
            end
        else
            f30_local6 = false
        end
        if f30_local6 == true and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                if distanceEnemy >= 80 then
                    return false
                elseif distanceEnemy >= 25.5 then
                    if random <= 70 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011400)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3005, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    else
                        return false
                    end
                elseif distanceEnemy >= 15 then
                    if random <= 70 then
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011401)
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3007, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    else
                        return false
                    end
                elseif distanceEnemy >= 4.5 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                elseif distanceEnemy >= -3.5 then
                    if random <= 40 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    elseif random <= 70 then
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011050)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    else
                        return false
                    end
                elseif random <= 70 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011409)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                elseif random <= 30 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011408)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                else
                    return false
                end
            elseif distanceEnemy >= 80 then
            elseif distanceEnemy >= 25.5 then
                if random <= 70 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011400)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                end
            elseif distanceEnemy >= 15 then
                if ai:HasSpecialEffectId(TARGET_SELF, 20011431) == false then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                elseif random <= 70 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011401)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                end
            elseif distanceEnemy >= 4.5 then
                if random <= 60 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011403)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                end
            elseif distanceEnemy >= -3.5 then
                if random <= 40 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                elseif random <= 70 then
                    if ai:HasSpecialEffectId(TARGET_SELF, 20011412) == true then
                        if ai:GetHpRate(TARGET_SELF) <= 0.4 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3030, TARGET_ENE_0, 999, 0, 0)
                            ai:SetTimer(1, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3033, TARGET_ENE_0, 999, 0, 0)
                            ai:SetTimer(1, 0)
                            return true
                        end
                    else
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011050)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    end
                else
                    return false
                end
            elseif random <= 50 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011408)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3020, TARGET_ENE_0, 999, 0, 0)
                ai:SetTimer(1, 0)
                return true
            elseif random <= 90 then
                if ai:HasSpecialEffectId(TARGET_SELF, 20011412) == true then
                    if ai:GetHpRate(TARGET_SELF) <= 0.4 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3030, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3033, TARGET_ENE_0, 999, 0, 0)
                        ai:SetTimer(1, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3019, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                end
            else
                return false
            end
            f30_local6 = false
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        local f30_local0 = false
        local random = ai:GetRandam_Int(1, 100)
        if ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                if random <= 40 then
                    Hannohswitch = true
                else
                    f30_local0 = false
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011411) == true then
                if random <= 70 and ai:IsFinishTimer(2) then
                    ai:SetTimer(2, 8.5)
                    Hannohswitch = true
                else
                    f30_local0 = false
                end
            elseif random <= 90 and ai:IsFinishTimer(2) then
                ai:SetTimer(2, 8.5)
                Hannohswitch = true
            else
                f30_local0 = false
            end
        else
            Hannohswitch = false
        end
        if Hannohswitch == true then
            if targetDist >= 80.5 then
                return false
            elseif targetDist >= 35.5 then
                if random <= 40 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011400)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3005, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3026, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                end
            elseif targetDist >= 14.5 then
                if random <= 70 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3007, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 20011410) == true then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3007, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 20011411) == true then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011406)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3007, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                end
            elseif targetDist >= 1.5 then
                if random <= 30 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011403)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3015, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011404)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    ai:SetTimer(1, 0)
                    return true
                end
            else
                return false
            end
        end
        f30_local0 = false
    end
    
end

RegisterTableGoal(GOAL_ShadowOfErdtrees523000_AfterAttackAct, "ShadowOfErdtrees523000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ShadowOfErdtrees523000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


