RegisterTableGoal(GOAL_GreaterDemon480000_Battle, "GreaterDemon480000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreaterDemon480000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(4, 0)
    ai:SetNumber(15, 0)
    ai:GetStringIndexedNumber("c4800flag_surrender")
    ai:SetStringIndexedNumber("Attack_Cnt", 0)
end

Goal.Activate = function (self, ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local f2_local6 = 0
    local f2_local7 = 5
    ai:SetStringIndexedNumber("c4800_enchDist", 0)
    ai:SetStringIndexedNumber("c4800_DashRate", 0)
    local hasEffect10630 = ai:HasSpecialEffectId(TARGET_SELF, 10630)
    local hasEffect10631 = ai:HasSpecialEffectId(TARGET_SELF, 10631)
    local hasEffect10635 = ai:HasSpecialEffectId(TARGET_SELF, 10635)
    local hasEffect10640 = ai:HasSpecialEffectId(TARGET_SELF, 10640)
    local hasEffect10641 = ai:HasSpecialEffectId(TARGET_SELF, 10641)
    local hasEffect10642 = ai:HasSpecialEffectId(TARGET_SELF, 10642)
    local hasEffect10643 = ai:HasSpecialEffectId(TARGET_SELF, 10643)
    local f2_local15 = 1
    if hasEffect10631 == true then
        f2_local6 = 20
        f2_local15 = 0
        ai:SetStringIndexedNumber("c4800_enchDist", 6)
    end
    local hasEffect10610 = ai:HasSpecialEffectId(TARGET_SELF, 10610)
    local hasEffect10611 = ai:HasSpecialEffectId(TARGET_SELF, 10611)
    local hasEffect10612 = ai:HasSpecialEffectId(TARGET_SELF, 10612)
    if hasEffect10630 == true then
        ai:SetStringIndexedNumber("c4800_DashRate", 100)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10600)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10602)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10603)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10604)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10605)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16454)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10606)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10608)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10620)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10645)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10646)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10647)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10648)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10649)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    if hasEffect10635 == true then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
            probabilities[15] = 35
            probabilities[21] = 55
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
            probabilities[15] = 10
            probabilities[21] = 30
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                probabilities[4] = 0
                probabilities[5] = 60
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                probabilities[4] = 60
                probabilities[5] = 0
            end
        elseif distanceEnemy >= 20 then
            probabilities[2] = 20
            probabilities[6] = 20
            probabilities[11] = 40
            probabilities[22] = 20
        elseif distanceEnemy >= 13 then
            probabilities[2] = 10
            probabilities[6] = 30
            probabilities[11] = 30
            probabilities[22] = 30
            probabilities[24] = 25
        elseif distanceEnemy >= 5 then
            probabilities[2] = 10
            probabilities[4] = 10
            probabilities[5] = 10
            probabilities[6] = 25
            probabilities[7] = 20
            probabilities[11] = 30
            probabilities[22] = 10
            probabilities[23] = 50
            probabilities[24] = 25
        else
            probabilities[4] = 30
            probabilities[5] = 20
            probabilities[10] = 40
            probabilities[11] = 10
            probabilities[15] = 15
            probabilities[17] = 25
            probabilities[23] = 50
        end
    elseif hasEffect10630 == true then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, 90, 90) then
            probabilities[5] = 50
            probabilities[9] = 30
            probabilities[15] = 10 * f2_local15
        elseif distanceEnemy >= 17 then
            probabilities[8] = 30
            probabilities[11] = 30
            probabilities[16] = 35
            probabilities[22] = 40
        elseif distanceEnemy >= 11 then
            probabilities[2] = 10 * f2_local15
            probabilities[4] = 10
            probabilities[5] = 10
            probabilities[6] = 10
            probabilities[7] = 0
            probabilities[8] = 30
            probabilities[11] = 30
            probabilities[16] = 30
            probabilities[22] = 30
            probabilities[24] = 25
        elseif distanceEnemy >= 6 then
            probabilities[4] = 10
            probabilities[5] = 10
            probabilities[6] = 10
            probabilities[7] = 20
            probabilities[8] = 30
            probabilities[9] = 20
            probabilities[11] = 20
            probabilities[12] = 20
            probabilities[16] = 20
            probabilities[24] = 25
        else
            probabilities[4] = 20
            probabilities[5] = 20
            probabilities[9] = 30
            probabilities[10] = 50
            probabilities[11] = 20
            probabilities[15] = 10
            probabilities[17] = 35
            probabilities[23] = 50
        end
    elseif hasEffect10640 == true and hasEffect10641 == false and ai:GetHpRate(TARGET_SELF) < 0.9 then
        probabilities[34] = 100
    elseif hasEffect10641 == true and hasEffect10642 == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        probabilities[34] = 100
    elseif hasEffect10642 == true and hasEffect10643 == false and ai:GetHpRate(TARGET_SELF) < 0.5 then
        probabilities[34] = 100
    elseif hasEffect10643 == true and hasEffect10631 == false then
        probabilities[35] = 100
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
        probabilities[15] = 35
        probabilities[21] = 55
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
        probabilities[15] = 10
        probabilities[21] = 30
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
            probabilities[4] = 0
            probabilities[5] = 60
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
            probabilities[4] = 60
            probabilities[5] = 0
        end
    elseif distanceEnemy >= 20 then
        probabilities[2] = 20
        probabilities[6] = 20
        probabilities[11] = 40
        probabilities[22] = 20
    elseif distanceEnemy >= 13 then
        probabilities[2] = 10
        probabilities[6] = 30
        probabilities[11] = 30
        probabilities[22] = 30
        probabilities[24] = 25
    elseif distanceEnemy >= 5 then
        probabilities[2] = 10
        probabilities[4] = 10
        probabilities[5] = 10
        probabilities[6] = 25
        probabilities[7] = 20
        probabilities[11] = 30
        probabilities[22] = 10
        probabilities[23] = 30
        probabilities[24] = 25
    else
        probabilities[4] = 30
        probabilities[5] = 20
        probabilities[10] = 40
        probabilities[11] = 10
        probabilities[15] = 15
        probabilities[17] = 25
        probabilities[23] = 50
    end
    if hasEffect10610 == true then
        probabilities[23] = 0
        probabilities[24] = 0
    end
    if hasEffect10611 == true then
        probabilities[23] = 0
    end
    if hasEffect10612 == true then
        probabilities[24] = 0
    end
    if ai:GetStringIndexedNumber("Attack_Cnt") <= 3 then
        probabilities[23] = probabilities[23] * 1
        probabilities[24] = probabilities[24] * 1
    elseif ai:GetStringIndexedNumber("Attack_Cnt") <= 5 then
        probabilities[23] = probabilities[23] * 1.2
        probabilities[24] = probabilities[24] * 1.5
    elseif ai:GetStringIndexedNumber("Attack_Cnt") <= 8 then
        probabilities[23] = probabilities[23] * 1.5
        probabilities[24] = probabilities[24] * 3
    else
        probabilities[23] = probabilities[23] * 2
        probabilities[24] = probabilities[24] * 4
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 60, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 15, probabilities[2], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3006, 8, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3007, 8, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3008, 4, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3009, 15, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3027, 40, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3028, 30, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3011, 15, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3010, 5, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3029, 15, probabilities[12], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3016, 15, probabilities[15], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3017, 15, probabilities[15], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3020, 25, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3033, 40, probabilities[17], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3014, 8, probabilities[5], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3015, 8, probabilities[5], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3016, 8, probabilities[5], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3017, 8, probabilities[5], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3014, 8, probabilities[4], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3015, 8, probabilities[4], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3016, 8, probabilities[4], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3017, 8, probabilities[4], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3014, 8, probabilities[6], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3015, 8, probabilities[6], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3016, 8, probabilities[6], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3017, 8, probabilities[6], 1)
    if distanceEnemy < 3 then
        probabilities[5] = 0
        probabilities[11] = 0
    end
    acts[1] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act12)
    acts[15] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act17)
    acts[21] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act24)
    acts[34] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act35)
    acts[45] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, GreaterDemon480000_Act47)
    local actAfter = REGIST_FUNC(ai, goal, GreaterDemon480000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function GreaterDemon480000_Act01(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f3_local0 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 30 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    local animationId = 3000
    local f3_local8 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 30, animationId, TARGET_ENE_0, DIST_None, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act02(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 20 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 1
    local runLife = 1
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3001
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act03(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act04(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 0.5
    local runLife = 0.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3006
    local f6_local10 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act05(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 0.5
    local runLife = 0.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local f7_local10 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (8.5 - ai:GetMapHitRadius(TARGET_SELF)), turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act06(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 18 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 18 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 18 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 1
    local runLife = 1
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3008
    local f8_local10 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (18 - ai:GetMapHitRadius(TARGET_SELF)), turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act07(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local hasEffect10631 = ai:HasSpecialEffectId(TARGET_SELF, 10631)
    local stopDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 1
    local runLife = 1
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3009
    local animationId_2 = 3025
    local successDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (8.5 - ai:GetMapHitRadius(TARGET_SELF)), turnTime, turnFaceAngle, 0, 0)
    if hasEffect10631 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, animationId_2, TARGET_ENE_0, successDist, 0, 0, turnFaceAngle)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act08(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f10_local2 = 18 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 18 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local4 = 18 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local f10_local5 = ai:GetStringIndexedNumber("c4800_DashRate")
    local f10_local6 = 0
    local f10_local7 = 4
    local f10_local8 = 8
    local animationId = 3027
    local f10_local10 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (18 - ai:GetMapHitRadius(TARGET_SELF)), turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act09(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f11_local2 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = 30 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local f11_local5 = ai:GetStringIndexedNumber("c4800_DashRate")
    local f11_local6 = 0
    local f11_local7 = 4
    local f11_local8 = 8
    local animationId = 3028
    local f11_local10 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, DIST_None, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act10(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local stopDist = 4 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 4 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 4 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 1
    local runLife = 1
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16456)
    local animationId = 3011
    local f12_local8 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, DIST_None, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act11(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local stopDist = 16 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 16 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 16 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 0.5
    local runLife = 0.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3010
    local f13_local8 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (16 - ai:GetMapHitRadius(TARGET_SELF)), turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act12(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7.8 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 7.8 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 7.8 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local runProbability = ai:GetStringIndexedNumber("c4800_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3029
    local f14_local10 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7.8 - ai:GetMapHitRadius(TARGET_SELF)), turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act15(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local random = ai:GetRandam_Int(1, 100)
    local f15_local1 = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 6 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local f15_local4 = ai:GetStringIndexedNumber("c4800_DashRate")
    local f15_local5 = 0
    local f15_local6 = 1
    local f15_local7 = 1
    local animationId = 3016
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 7 - ai:GetMapHitRadius(TARGET_SELF)) and random <= 60 then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(2, 5), TARGET_ENE_0, 6.5, TARGET_ENE_0, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act16(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f16_local0 = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 20 - ai:GetMapHitRadius(TARGET_SELF) + 10
    local f16_local3 = ai:GetStringIndexedNumber("c4800_DashRate")
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    local animationId = 3020
    local f16_local8 = 3027
    local successDist = 100
    local f16_local10 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act17(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetStringIndexedNumber("Attack_Cnt", ai:GetStringIndexedNumber("Attack_Cnt") + 1)
    local animationId = 3033
    local f17_local1 = 3027
    local successDist = 100
    local f17_local3 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_ActCP1(ai, goal, f18_arg2)
    local stopDist = ATT30_DIST_MAX
    local canRunDist = ATT30_DIST_MAX
    local forceRunMinDist = ATT30_DIST_MAX + 3
    local runProbability = 50
    local guardProbability = 50
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_ActCP2(ai, goal, f19_arg2)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = ATT30_DIST_MAX
    local canRunDist = ATT30_DIST_MAX
    local forceRunMinDist = ATT30_DIST_MAX + 3
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3001
    local animationId_2 = 3002
    local animationId_3 = 3003
    local successDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local successDist_2 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local successDist_3 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, animationId_2, TARGET_ENE_0, successDist_2, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, animationId_3, TARGET_ENE_0, successDist_3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act22(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 6.5
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(2, 4), TARGET_ENE_0, stopDist, TARGET_ENE_0, false, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act23(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = ai:GetRandam_Int(5, 6)
    local f22_local2 = 20
    local f22_local3 = 100
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect10555 = ai:HasSpecialEffectId(TARGET_SELF, 10555)
    local guardStateId = -1
    if random <= f22_local3 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, stopDist, TARGET_ENE_0, false, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act24(ai, goal, paramTbl)
    ai:SetStringIndexedNumber("Attack_Cnt", 0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetNumber(3) == 1 then
        ai:SetNumber(3, 1)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 0, ai:GetRandam_Int(60, 80), true, true, -1)
    elseif ai:GetNumber(3) == 2 then
        ai:SetNumber(3, 2)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 1, ai:GetRandam_Int(60, 80), true, true, -1)
    elseif random > 50 then
        ai:SetNumber(3, 1)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 0, ai:GetRandam_Int(60, 80), true, true, -1)
    else
        ai:SetNumber(3, 2)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 1, ai:GetRandam_Int(60, 80), true, true, -1)
    end
    ai:SetNumber(10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act34(ai, goal, paramTbl)
    local hasEffect10640 = ai:HasSpecialEffectId(TARGET_SELF, 10640)
    local hasEffect10641 = ai:HasSpecialEffectId(TARGET_SELF, 10641)
    local hasEffect10642 = ai:HasSpecialEffectId(TARGET_SELF, 10642)
    local hasEffect10643 = ai:HasSpecialEffectId(TARGET_SELF, 10643)
    if hasEffect10640 == true and hasEffect10641 == false and ai:GetHpRate(TARGET_SELF) < 0.9 then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3002, TARGET_SELF, DIST_None, 0, 0)
    elseif hasEffect10641 == true and hasEffect10642 == false and ai:GetHpRate(TARGET_SELF) < 0.8 then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_SELF, DIST_None, 0, 0)
    elseif hasEffect10642 == true and hasEffect10643 == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_SELF, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act35(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3023, TARGET_SELF, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_ActCP3(f26_arg0, goal, f26_arg2)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act45(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act46(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_Act47(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 30, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GreaterDemon480000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GreaterDemon480000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local hasEffect10630 = ai:HasSpecialEffectId(TARGET_SELF, 10630)
    local hasEffect10631 = ai:HasSpecialEffectId(TARGET_SELF, 10631)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10600)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10602)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10603)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10604)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10605)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16454)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10606)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10608)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10620)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10645)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10646)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10647)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10648)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10649)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    local prevTargetingState = ai:GetPrevTargetState()
    local f33_local7 = ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    local hasEffect17603 = ai:HasSpecialEffectId(TARGET_SELF, 17603)
    if ai:IsInterupt(INTERUPT_Damaged) then
        if BreakDown == true and ReactionTime == false then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_SELF, 0, 0, 0, 0, 0)
            return true
        elseif hasEffect17603 == true then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_3 = ai:GetRandam_Int(1, 100)
            local random_4 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) and pcSurrendCheck == true then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 60, 3039, TARGET_ENE_0, DIST_None, 0, 0, 0)
        GreaterDemon480000_Act05(ai, goal)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(10607) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_3 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            if distanceEnemy_2 < 25 then
                if random_3 > 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3022, TARGET_ENE_0, 30 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                elseif random_3 > 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3027, TARGET_ENE_0, 30 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10620) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_3 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 > 10 then
                if random_3 > 50 then
                    goal:ClearSubGoal()
                    GreaterDemon480000_Act09(ai, goal)
                    return true
                else
                    goal:ClearSubGoal()
                    GreaterDemon480000_Act16(ai, goal)
                    return true
                end
            else
                goal:ClearSubGoal()
                GreaterDemon480000_Act09(ai, goal)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10608) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_3 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            if distanceEnemy_2 > 7 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3030, TARGET_ENE_0, 30 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10602) and distanceEnemy <= 45 then
            goal:ClearSubGoal()
            if distanceEnemy <= 4 then
                local random_3 = ai:GetRandam_Int(1, 100)
                if ai:GetAttackPassedTime(3011) >= 30 and random_3 > 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                else
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                    end
                    return true
                end
            elseif distanceEnemy < 6 then
                local random_3 = ai:GetRandam_Int(1, 100)
                if random_3 > 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                else
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    end
                end
            elseif random > 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                return true
            elseif random > 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(10605) then
            local random_3 = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 45 then
                goal:ClearSubGoal()
                if distanceEnemy <= 5 then
                    if ai:GetAttackPassedTime(3011) >= 30 and random_3 > 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        if random_3 > 40 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                        end
                        return true
                    end
                elseif distanceEnemy < 9 then
                    if random_3 < 60 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3029, TARGET_ENE_0, 7.8 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    end
                elseif distanceEnemy < 18 then
                    if random_3 < 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3029, TARGET_ENE_0, 7.8 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    end
                end
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10603) then
            local random_3 = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 45 then
                goal:ClearSubGoal()
                if distanceEnemy <= 4 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if ai:GetAttackPassedTime(3011) >= 30 and random_4 > 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        local random_5 = ai:GetRandam_Int(1, 100)
                        if random_5 > 66 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3026, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        elseif random_5 > 33 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3013, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3017, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        end
                        return true
                    end
                elseif distanceEnemy < 6 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 30 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3013, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                    else
                        local random_5 = ai:GetRandam_Int(1, 100)
                        if random_5 > 50 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                            return true
                        else
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        end
                    end
                elseif random_3 > 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                    return true
                elseif random_3 > 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10600) then
            local random_3 = ai:GetRandam_Int(1, 100)
            if hasEffect10630 == true and random_3 > 40 then
                if distanceEnemy <= 45 then
                    goal:ClearSubGoal()
                    if distanceEnemy < 4 then
                        local random_4 = ai:GetRandam_Int(1, 100)
                        if ai:GetAttackPassedTime(3011) >= 30 and random_4 > 50 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        end
                        return true
                    elseif ai:GetAttackPassedTime(3020) >= 30 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3020, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                    else
                        local random_4 = ai:GetRandam_Int(1, 100)
                        if random_4 > 50 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                            return true
                        else
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        end
                        return true
                    end
                end
            else
                goal:ClearSubGoal()
                if distanceEnemy < 4 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if ai:GetAttackPassedTime(3011) >= 30 and random_4 > 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    end
                    return true
                elseif random_3 > 50 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10606) then
            local random_3 = ai:GetRandam_Int(1, 100)
            if hasEffect10630 == true and 7 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy and distanceEnemy <= ai:GetStringIndexedNumber("c4800_enchDist") + (20 - ai:GetMapHitRadius(TARGET_SELF)) + 2 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3031, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (20 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10604) then
            local random_3 = ai:GetRandam_Int(1, 100)
            if hasEffect10630 == true and random_3 > 40 then
                goal:ClearSubGoal()
                if distanceEnemy <= 4 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3026, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                    return true
                elseif distanceEnemy > 6 and distanceEnemy < 15 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 40 then
                        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3029, TARGET_ENE_0, 7 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        local random_5 = ai:GetRandam_Int(1, 100)
                        if random_5 > 50 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                            return true
                        else
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        end
                    end
                end
                return true
            else
                goal:ClearSubGoal()
                local random_4 = ai:GetRandam_Int(1, 100)
                if distanceEnemy <= 3 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3026, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                    return true
                elseif random_4 > 60 then
                    local random_5 = ai:GetRandam_Int(1, 100)
                    if random_5 > 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, ai:GetStringIndexedNumber("c4800_enchDist") + (7 - ai:GetMapHitRadius(TARGET_SELF)), 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(10601) and distanceEnemy <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3034, TARGET_ENE_0, 30 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16456) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_3 = ai:GetRandam_Int(1, 100)
        if hasEffect10630 == true then
            if random_3 > 50 and ai:GetAttackPassedTime(3020) >= 20 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3020, TARGET_ENE_0, 30 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif random_3 > 30 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16482)
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3008, TARGET_ENE_0, 7 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3027, TARGET_ENE_0, 30 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        elseif distanceEnemy_2 <= 8 then
            if random_3 > 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3009, TARGET_ENE_0, 30 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                local hasEffect10631_2 = ai:HasSpecialEffectId(TARGET_SELF, 10631)
                local animationId = 3025
                local successDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
                local f33_local14 = 7 - ai:GetMapHitRadius(TARGET_SELF)
                local f33_local15 = 0
                local f33_local16 = 120
                if hasEffect10631_2 == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, animationId, TARGET_ENE_0, successDist, 0, 0, f33_local16)
                    return true
                end
            end
        else
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16482)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3008, TARGET_ENE_0, 7 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_GreaterDemon480000_AfterAttackAct, "GreaterDemon480000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreaterDemon480000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

