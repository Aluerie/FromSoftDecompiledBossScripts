RegisterTableGoal(GOAL_GraftKing475000_Battle, "GraftKing475000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftKing475000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3005)
    ai:EnableUnfavorableAttackCheck(0, 3006)
    ai:EnableUnfavorableAttackCheck(0, 3007)
    ai:EnableUnfavorableAttackCheck(0, 3008)
    ai:EnableUnfavorableAttackCheck(0, 3009)
    ai:EnableUnfavorableAttackCheck(0, 3010)
    ai:EnableUnfavorableAttackCheck(0, 3011)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3016)
    ai:EnableUnfavorableAttackCheck(0, 3018)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3022)
    ai:EnableUnfavorableAttackCheck(0, 3023)
    ai:EnableUnfavorableAttackCheck(0, 3024)
    ai:EnableUnfavorableAttackCheck(0, 3025)
    ai:EnableUnfavorableAttackCheck(0, 3027)
    ai:EnableUnfavorableAttackCheck(0, 3028)
    ai:EnableUnfavorableAttackCheck(0, 3029)
    ai:EnableUnfavorableAttackCheck(0, 3039)
    ai:EnableUnfavorableAttackCheck(0, 3031)
    ai:EnableUnfavorableAttackCheck(0, 3032)
    ai:EnableUnfavorableAttackCheck(0, 3033)
    ai:EnableUnfavorableAttackCheck(0, 3034)
    ai:EnableUnfavorableAttackCheck(0, 3036)
    ai:EnableUnfavorableAttackCheck(0, 3038)
    ai:SetStringIndexedNumber("CantMoveErea", 0)
end

Goal.Activate = function (self, ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14767)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14790)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 14792)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14794)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 14796)
    if ai:HasSpecialEffectId(TARGET_SELF, 14790) and ai:HasSpecialEffectId(TARGET_ENE_0, 14792) or ai:HasSpecialEffectId(TARGET_SELF, 14794) and ai:HasSpecialEffectId(TARGET_ENE_0, 14796) then
        ai:SetStringIndexedNumber("CantMoveErea", 1)
    else
        ai:SetStringIndexedNumber("CantMoveErea", 0)
    end
    if ai:GetStringIndexedNumber("c4750_stormflag") <= 0 then
        ai:SetTimer(0, 10)
        ai:SetStringIndexedNumber("c4750_stormflag", 1)
    end
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    local f2_local8 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 30)
    local f2_local9 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30)
    local f2_local10 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30)
    local f2_local11 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30)
    ai:SetStringIndexedNumber("___________", 0)
    ai:SetStringIndexedNumber("_stormtimer", ai:GetTimer(0))
    ai:SetStringIndexedNumber("_eventno", eventRequest)
    ai:SetStringIndexedNumber("____________", 0)
    if hasEffect14750 == true then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
            if distanceEnemy_2 >= 18 then
                probabilities[21] = 50
                probabilities[22] = 50
            elseif distanceEnemy_2 >= 10 then
                probabilities[5] = 25
                probabilities[17] = 30
                probabilities[18] = 30
                probabilities[21] = 15
            elseif distanceEnemy_2 >= 3 then
                probabilities[2] = 60
                probabilities[5] = 20
                probabilities[10] = 20
            else
                probabilities[2] = 20
                probabilities[6] = 30
                probabilities[7] = 20
                probabilities[16] = 10
                probabilities[25] = 20
            end
        elseif distanceEnemy_2 >= 13 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[5] = 10
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[10] = 0
            probabilities[16] = 0
            probabilities[17] = 30
            probabilities[18] = 20
            probabilities[19] = 0
            probabilities[20] = 20
            probabilities[22] = 0
        elseif distanceEnemy_2 >= 7.5 then
            probabilities[1] = 0
            probabilities[2] = 10
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 20
            probabilities[16] = 0
            probabilities[17] = 30
            probabilities[18] = 20
            probabilities[19] = 0
            probabilities[20] = 20
            probabilities[22] = 0
        elseif distanceEnemy_2 >= 3 then
            probabilities[1] = 5
            probabilities[2] = 10
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 20
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 10
            probabilities[19] = 5
            probabilities[20] = 30
            probabilities[22] = 0
            probabilities[25] = 10
        else
            probabilities[1] = 15
            probabilities[2] = 0
            probabilities[5] = 0
            probabilities[6] = 10
            probabilities[7] = 15
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 20
            probabilities[16] = 15
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 5
            probabilities[20] = 5
            probabilities[25] = 15
        end
        if ai:IsTargetGuard(TARGET_ENE_0) == true and distanceEnemy_2 <= 2 then
            probabilities[19] = 200
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
        if distanceEnemy_2 >= 18 then
            probabilities[21] = 50
            probabilities[22] = 50
        elseif distanceEnemy_2 >= 10 then
            probabilities[5] = 50
            probabilities[12] = 45
            probabilities[21] = 25
            probabilities[22] = 25
        elseif distanceEnemy_2 >= 3 then
            probabilities[2] = 60
            probabilities[5] = 20
            probabilities[10] = 20
            probabilities[12] = 45
        else
            probabilities[2] = 20
            probabilities[7] = 20
            probabilities[10] = 20
            probabilities[12] = 40
            probabilities[16] = 10
            probabilities[25] = 30
        end
    elseif distanceEnemy_2 >= 13 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[5] = 30
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 40
        probabilities[10] = 30
        probabilities[16] = 0
        probabilities[22] = 10
    elseif distanceEnemy_2 >= 8 then
        probabilities[1] = 0
        probabilities[2] = 20
        probabilities[5] = 30
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 10
        probabilities[9] = 20
        probabilities[10] = 30
        probabilities[12] = 45
        probabilities[16] = 0
        probabilities[22] = 10
    elseif distanceEnemy_2 >= 3 then
        probabilities[1] = 25
        probabilities[2] = 40
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 10
        probabilities[9] = 0
        probabilities[10] = 30
        probabilities[12] = 45
        probabilities[16] = 20
        probabilities[22] = 0
        probabilities[25] = 10
    else
        probabilities[1] = 20
        probabilities[2] = 0
        probabilities[5] = 0
        probabilities[6] = 20
        probabilities[7] = 20
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 45
        probabilities[12] = 45
        probabilities[16] = 20
        probabilities[25] = 20
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 18, probabilities[2], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3023, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3009, 10, probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3011, 12, probabilities[6], 0)
    probabilities[7] = SetCoolTime(ai, goal, 3028, 15, probabilities[7], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3025, 10, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3027, 10, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3030, ai:GetRandam_Int(15, 20), probabilities[10], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3029, ai:GetRandam_Int(15, 20), probabilities[10], 0)
    probabilities[12] = SetCoolTime(ai, goal, 20006, ai:GetRandam_Int(15, 20), probabilities[12], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3031, 15, probabilities[16], 0)
    probabilities[16] = SetCoolTime(ai, goal, 20005, 15, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3039, ai:GetRandam_Int(12, 15), probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3013, ai:GetRandam_Int(10, 15), probabilities[18], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3017, ai:GetRandam_Int(10, 15), probabilities[18], 0)
    probabilities[18] = SetCoolTime(ai, goal, 20011, ai:GetRandam_Int(10, 15), probabilities[18], 0)
    probabilities[19] = SetCoolTime(ai, goal, 3016, 10, probabilities[19], 0)
    probabilities[19] = SetCoolTime(ai, goal, 3034, 10, probabilities[19], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3015, ai:GetRandam_Int(12, 15), probabilities[20], 0)
    probabilities[25] = SetCoolTime(ai, goal, 6002, 10, probabilities[25], 0)
    probabilities[25] = SetCoolTime(ai, goal, 6003, 10, probabilities[25], 0)
    if ai:IsFinishTimer(0) == false then
        probabilities[10] = 0
    end
    if ai:GetHpRate(TARGET_SELF) > 0.9 then
        probabilities[12] = 0
    end
    if distanceEnemy_2 > 7.5 then
        probabilities[16] = 0
    end
    if ai:IsFinishTimer(0) == true and ai:GetStringIndexedNumber("CantMoveErea") == 1 then
        probabilities[30] = 200
        probabilities[31] = 200
    end
    acts[1] = REGIST_FUNC(ai, goal, GraftKing475000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, GraftKing475000_Act02)
    acts[4] = REGIST_FUNC(ai, goal, GraftKing475000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, GraftKing475000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, GraftKing475000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, GraftKing475000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, GraftKing475000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, GraftKing475000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, GraftKing475000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GraftKing475000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GraftKing475000_Act12)
    acts[16] = REGIST_FUNC(ai, goal, GraftKing475000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, GraftKing475000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, GraftKing475000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, GraftKing475000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, GraftKing475000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, GraftKing475000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, GraftKing475000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, GraftKing475000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, GraftKing475000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, GraftKing475000_Act25)
    acts[30] = REGIST_FUNC(ai, goal, GraftKing475000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, GraftKing475000_Act31)
    acts[45] = REGIST_FUNC(ai, goal, GraftKing475000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, GraftKing475000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, GraftKing475000_Act47)
    local actAfter = REGIST_FUNC(ai, goal, GraftKing475000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function GraftKing475000_Act01(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local stopDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.2
    local canRunDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.2 + 1
    local forceRunMinDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.2 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local f3_local10 = 3001
    local f3_local11 = 3005
    local successDist = 5 + ai:GetMapHitRadius(TARGET_SELF) + 0.6
    local f3_local13 = ATT3002_DIST_MAX
    local f3_local14 = 2 + ai:GetMapHitRadius(TARGET_SELF) + 0.8
    local f3_local15 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    if hasEffect14750 == true then
        f3_local10 = 3003
        f3_local11 = 3004
        successDist = 8
        f3_local14 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 1
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act02(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local stopDist = 5 + ai:GetMapHitRadius(TARGET_SELF) + 0.6
    local canRunDist = 5 + ai:GetMapHitRadius(TARGET_SELF) + 0.6 + 1
    local forceRunMinDist = 5 + ai:GetMapHitRadius(TARGET_SELF) + 0.6 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3021
    local animationId_2 = 3005
    local successDist = 2 + ai:GetMapHitRadius(TARGET_SELF) + 0.8
    local f4_local12 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    if hasEffect14750 == true then
        animationId = 3022
        animationId_2 = 3004
        successDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 1
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_2, TARGET_ENE_0, 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act03(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act04(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local f6_local2 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f6_local4 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 10
    local f6_local5 = 100
    local f6_local6 = 0
    local f6_local7 = 4
    local f6_local8 = 8
    if hasEffect14750 == true then
        f6_local2 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 1
        f6_local3 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 1 + 1
        f6_local4 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 1 + 5
    end
    local animationId = 3023
    local animationId_2 = 3005
    local successDist = 5
    local f6_local12 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    if hasEffect14750 == true then
        animationId = 3024
        animationId_2 = 3004
        successDist = 8
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_2, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act05(ai, goal, paramTbl)
    local stopDist = 12
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3009
    local successDist = 9 + ai:GetMapHitRadius(TARGET_SELF) + 0.8
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act06(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local f8_local1 = 1.5 + ai:GetMapHitRadius(TARGET_SELF) + 0.8
    local f8_local2 = 1.5 + ai:GetMapHitRadius(TARGET_SELF) + 0.8 + 1
    local f8_local3 = 1.5 + ai:GetMapHitRadius(TARGET_SELF) + 0.8 + 10
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 4
    local f8_local7 = 8
    local animationId = 3011
    local successDist = 1.5 + ai:GetMapHitRadius(TARGET_SELF) + 0.8
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act07(ai, goal, paramTbl)
    local stopDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.3
    local canRunDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.3 + 1
    local forceRunMinDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.3 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3028
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.3
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act08(ai, goal, paramTbl)
    local stopDist = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0.3
    local canRunDist = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0.3 + 1
    local forceRunMinDist = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0.3 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3025
    local successDist = ATT3034_DIST_MAX
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act09(ai, goal, paramTbl)
    local stopDist = 15
    local canRunDist = 11 + ai:GetMapHitRadius(TARGET_SELF) + 0.5 + 1
    local forceRunMinDist = 11 + ai:GetMapHitRadius(TARGET_SELF) + 0.5 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3027
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act10(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local f12_local2 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local3 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f12_local4 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 4
    local f12_local8 = 4
    local animationId = 3030
    local f12_local10 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    if hasEffect14750 == true then
        animationId = 3029
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, 20, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act11(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local f13_local2 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local f13_local3 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f13_local4 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = 4
    local f13_local8 = 4
    local animationId = 20005
    local f13_local10 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, 20, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act12(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local f14_local2 = 12 + ai:GetMapHitRadius(TARGET_SELF) + 3
    local f14_local3 = 12 + ai:GetMapHitRadius(TARGET_SELF) + 3 + 1
    local f14_local4 = 12 + ai:GetMapHitRadius(TARGET_SELF) + 3 + 15
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 4
    local f14_local8 = 4
    local animationId = 20006
    local f14_local10 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, 20, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act16(ai, goal, paramTbl)
    local f15_local0 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local1 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 1 + 1
    local f15_local2 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 1 + 10
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    if ai:GetHpRate(TARGET_SELF) > 0.6 then
        local animationId = 20005
        local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 180
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local animationId = 3031
        local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 180
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act17(ai, goal, paramTbl)
    local stopDist = 15
    local canRunDist = 15 + ai:GetMapHitRadius(TARGET_SELF) + 3 + 1
    local forceRunMinDist = 15 + ai:GetMapHitRadius(TARGET_SELF) + 3 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3039
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act18(ai, goal, paramTbl)
    local f17_local0 = 6.5 + ai:GetMapHitRadius(TARGET_SELF) + 20
    local f17_local1 = 6.5 + ai:GetMapHitRadius(TARGET_SELF) + 20 + 1
    local f17_local2 = 6.5 + ai:GetMapHitRadius(TARGET_SELF) + 20 + 10
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 8
    local animationId = 3017
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act19(ai, goal, paramTbl)
    local f18_local0 = 1.5 + ai:GetMapHitRadius(TARGET_SELF) + 0.2
    local f18_local1 = 1.5 + ai:GetMapHitRadius(TARGET_SELF) + 0.2 + 1
    local f18_local2 = 1.5 + ai:GetMapHitRadius(TARGET_SELF) + 0.2 + 10
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 8
    local animationId = 3016
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act20(ai, goal, paramTbl)
    local stopDist = 9 + ai:GetMapHitRadius(TARGET_SELF) + 5.5
    local canRunDist = 9 + ai:GetMapHitRadius(TARGET_SELF) + 5.5 + 1
    local forceRunMinDist = 9 + ai:GetMapHitRadius(TARGET_SELF) + 5.5 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3015
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_ActCP1(ai, goal, f20_arg2)
    local stopDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local canRunDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local forceRunMinDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 30
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_ActCP2(ai, goal, f21_arg2)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local canRunDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local forceRunMinDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 30
    local animationId_2 = 30
    local animationId_3 = 30
    local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local successDist_2 = 3 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local successDist_3 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_2, TARGET_ENE_0, successDist_2, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_3, TARGET_ENE_0, successDist_3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act22(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 8
    local f23_local2 = 20
    local f23_local3 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, stopDist, TARGET_ENE_0, true, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act23(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 10
    local runDist = 20
    local guardProb = 100
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= guardProb then
        guardStateId = 9910
    end
    if stopDist <= distanceEnemy then
        Approach_Act(ai, goal, stopDist, runDist, guardProb, 3)
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, stopDist, TARGET_ENE_0, false, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act24(ai, goal, paramTbl)
    local f25_local0 = 80
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f25_local0 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act25(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = ai:GetRandam_Int(6002, 6003)
    local dirSpaceCheck = AI_DIR_TYPE_L
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30) then
        animationId = 6003
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30) then
        animationId = 6002
    end
    if animationId == 6003 then
        dirSpaceCheck = AI_DIR_TYPE_R
    end
    goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, animationId, TARGET_ENE_0, 0, dirSpaceCheck, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act30(ai, goal, paramTbl)
    ai:SetTimer(0, 15)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local f27_local2 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 1
    local f27_local3 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 1 + 1
    local f27_local4 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 1 + 10
    local f27_local5 = 0
    local f27_local6 = 0
    local f27_local7 = 4
    local f27_local8 = 8
    if ai:GetHpRate(TARGET_SELF) > 0.6 then
        local animationId = 20005
        local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 180
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local animationId = 3031
        local successDist = 3 + ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 180
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act31(ai, goal, paramTbl)
    ai:SetTimer(0, 15)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    local f28_local2 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0
    local f28_local3 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f28_local4 = 6 + ai:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f28_local5 = 0
    local f28_local6 = 0
    local f28_local7 = 4
    local f28_local8 = 4
    local animationId = 3030
    local f28_local10 = 3 + ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    if hasEffect14750 == true then
        animationId = 3029
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, 20, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_ActCP3(f29_arg0, goal, f29_arg2)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act45(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act46(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3039, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_Act47(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftKing475000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GraftKing475000_AfterAttackAct, 10)
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
    local prevTargetingState = ai:GetPrevTargetState()
    local f36_local4 = ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local hasEffect14750 = ai:HasSpecialEffectId(TARGET_SELF, 14750)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptType(0) == PLAN_SP_EFFECT_TRUNK_COLLAPSE or ai:GetSpecialEffectActivateInterruptType(0) == 90 then
            goal:ClearSubGoal()
            if distanceEnemy <= 3 + ai:GetMapHitRadius(TARGET_SELF) + 0.3 then
                GraftKing475000_Act07(ai, goal)
            elseif distanceEnemy <= 6 + ai:GetMapHitRadius(TARGET_SELF) + 0.3 then
                GraftKing475000_Act08(ai, goal)
            else
                GraftKing475000_Act05(ai, goal)
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5025) then
            goal:ClearSubGoal()
            if distanceEnemy <= 7.5 then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 99, 0, 0, 180)
            elseif distanceEnemy <= 11 then
                if random < 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 99, 0, 0, 180)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 30, 90, 90, 180)
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 30, 90, 90)
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 30, 90, 90, 180)
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 30, 90, 90)
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5026) then
            goal:ClearSubGoal()
            if distanceEnemy >= 20 or random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 30, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 30, 0, 0)
            elseif hasEffect14750 == true then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 99, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 99, 0, 0)
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, 99, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 99, 0, 0)
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5027) then
            goal:ClearSubGoal()
            if hasEffect14750 == false then
                if distanceEnemy <= 5 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 99, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5, 0, 0)
                elseif distanceEnemy >= 7 and distanceEnemy <= 10 then
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 99, 0, 0)
                end
            elseif hasEffect14750 == true then
                if distanceEnemy <= 3.5 and random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
                elseif 6.5 + ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy and random <= 60 and ai:GetAttackPassedTime(3017) >= 15 and ai:GetAttackPassedTime(3013) >= 15 then
                    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 6.5 + ai:GetMapHitRadius(TARGET_SELF) + 20, 0, 0)
                elseif distanceEnemy <= 7 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 99, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 8, 0, 0)
                end
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5028) then
            goal:ClearSubGoal()
            if distanceEnemy >= 5 then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 99, 0, 0)
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5029) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if distanceEnemy_2 >= 6 and distanceEnemy_2 <= 13 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 99, 0, 0)
            elseif hasEffect14750 == false then
                if distanceEnemy_2 >= 2 and distanceEnemy_2 <= 7.5 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 99, 0, 180)
                elseif distanceEnemy_2 <= 2 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 99, 0, 180)
                end
            elseif hasEffect14750 == true then
                if distanceEnemy_2 <= 3.5 and random < 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
                elseif distanceEnemy_2 <= 3.5 and random <= 75 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 99, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 99, 0, 0)
                end
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5031) then
            goal:ClearSubGoal()
            if distanceEnemy >= 5 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6.5 + ai:GetMapHitRadius(TARGET_SELF) + 20) then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6.5 + ai:GetMapHitRadius(TARGET_SELF) + 20, 0, 0)
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5032) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if hasEffect14750 == false then
                if distanceEnemy_2 <= 7.5 and distanceEnemy_2 >= 1.5 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 99, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 99, 0, 0)
                elseif distanceEnemy_2 < 1.5 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 99, 0, 0)
                end
            elseif hasEffect14750 == true then
                if distanceEnemy_2 <= 3.5 and random < 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
                elseif distanceEnemy_2 <= 7.5 and distanceEnemy_2 >= 1.5 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 99, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 99, 0, 0)
                elseif distanceEnemy_2 < 1.5 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 99, 0, 0)
                end
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5039) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if hasEffect14750 == true and distanceEnemy_2 <= 3.5 and random < 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(14767) then
            goal:ClearSubGoal()
            if random <= 50 and distanceEnemy >= 5 then
                GraftKing475000_Act05(ai, goal)
            elseif distanceEnemy >= 5 then
                GraftKing475000_Act09(ai, goal)
            else
                GraftKing475000_Act02(ai, goal)
            end
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        if distanceEnemy >= 5 then
            goal:ClearSubGoal()
            if hasEffect14750 == true then
                if distanceEnemy <= 30 and random <= 50 and ai:GetAttackPassedTime(3029) >= 15 then
                    GraftKing475000_Act10(ai, goal)
                elseif distanceEnemy <= 6.5 + ai:GetMapHitRadius(TARGET_SELF) + 20 and random <= 65 and ai:GetAttackPassedTime(3017) >= 15 then
                    GraftKing475000_Act18(ai, goal)
                elseif distanceEnemy <= 9 + ai:GetMapHitRadius(TARGET_SELF) + 5.5 and random <= 75 and ai:GetAttackPassedTime(3015) >= 15 then
                    GraftKing475000_Act20(ai, goal)
                elseif distanceEnemy <= 15 + ai:GetMapHitRadius(TARGET_SELF) + 3 and random <= 85 and ai:GetAttackPassedTime(3039) >= 15 then
                    GraftKing475000_Act17(ai, goal)
                elseif distanceEnemy <= 12 and random <= 90 and ai:GetAttackPassedTime(3009) >= 10 then
                    GraftKing475000_Act05(ai, goal)
                else
                    GraftKing475000_Act25(ai, goal)
                end
            elseif distanceEnemy <= 30 and random <= 70 and ai:GetAttackPassedTime(3030) >= 15 then
                GraftKing475000_Act10(ai, goal)
            elseif distanceEnemy <= 14.5 and random <= 75 then
                GraftKing475000_Act09(ai, goal)
            elseif distanceEnemy <= 12 and random <= 85 then
                GraftKing475000_Act05(ai, goal)
            else
                GraftKing475000_Act25(ai, goal)
            end
            return true
        elseif random <= 50 then
            GraftKing475000_Act10(ai, goal)
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
        if random <= 15 and ai:GetAttackPassedTime(3031) >= 25 and ai:GetAttackPassedTime(20005) >= 25 and distanceEnemy <= 3 then
            goal:ClearSubGoal()
            GraftKing475000_Act16(ai, goal)
        elseif random <= 20 and ai:GetAttackPassedTime(3029) >= 25 and ai:GetAttackPassedTime(3030) >= 25 then
            goal:ClearSubGoal()
            GraftKing475000_Act10(ai, goal)
        end
        return true
    end
    return false
end

RegisterTableGoal(GOAL_GraftKing475000_AfterAttackAct, "GraftKing475000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftKing475000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

