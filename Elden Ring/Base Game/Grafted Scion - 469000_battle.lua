RegisterTableGoal(GOAL_GraftSpider_469000_Battle, "GraftSpider_469000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftSpider_469000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(1, 0)
    ai:SetTimer(0, 0)
    ai:SetNumber(5, 0)
    ai:SetNumber(6, 0)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3006)
    ai:EnableUnfavorableAttackCheck(0, 3007)
    ai:EnableUnfavorableAttackCheck(0, 3008)
    ai:EnableUnfavorableAttackCheck(0, 3009)
    ai:EnableUnfavorableAttackCheck(0, 3013)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3015)
    ai:EnableUnfavorableAttackCheck(0, 3016)
    ai:EnableUnfavorableAttackCheck(0, 3017)
    ai:EnableUnfavorableAttackCheck(0, 3018)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3022)
    ai:EnableUnfavorableAttackCheck(0, 3023)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16251)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16252)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local hasEffect16290 = ai:HasSpecialEffectId(TARGET_SELF, 16290)
    local hasEffect16296 = ai:HasSpecialEffectId(TARGET_SELF, 16296)
    local hasEffect16283 = ai:HasSpecialEffectId(TARGET_SELF, 16283)
    if hasEffect16283 == true and ai:GetNumber(5) ~= 1 then
        probabilities[46] = 100
    elseif hasEffect16296 == true then
        probabilities[45] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 16251) == true then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            probabilities[24] = 100
        elseif distanceEnemy >= 15 then
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 100
        elseif distanceEnemy >= 10 then
            probabilities[30] = 100
            probabilities[31] = 0
            probabilities[32] = 0
        elseif distanceEnemy >= 4 then
            probabilities[30] = 60
            probabilities[31] = 40
            probabilities[32] = 0
        else
            probabilities[30] = 0
            probabilities[31] = 100
            probabilities[32] = 0
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 16251) == false then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if distanceEnemy <= 3 then
                probabilities[8] = 30
                probabilities[11] = 10
                probabilities[12] = 30
                probabilities[13] = 25
                probabilities[15] = 15
                probabilities[25] = 20
            elseif distanceEnemy <= 5 then
                probabilities[3] = 10
                probabilities[8] = 30
                probabilities[11] = 10
                probabilities[12] = 15
                probabilities[13] = 20
                probabilities[15] = 15
                probabilities[24] = 20
                probabilities[25] = 10
            else
                probabilities[3] = 10
                probabilities[4] = 20
                probabilities[8] = 30
                probabilities[24] = 70
            end
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if distanceEnemy <= 3.5 then
                probabilities[1] = 10
                probabilities[5] = 10
                probabilities[8] = 30
                probabilities[9] = 30
                probabilities[11] = 5
                probabilities[13] = 20
                probabilities[14] = 30
                probabilities[17] = 10
                probabilities[25] = 15
            elseif distanceEnemy <= 7 then
                probabilities[1] = 45
                probabilities[2] = 20
                probabilities[8] = 30
                probabilities[11] = 5
                probabilities[17] = 10
                probabilities[40] = 20
            else
                probabilities[2] = 10
                probabilities[3] = 5
                probabilities[4] = 30
                probabilities[8] = 30
                probabilities[14] = 15
                probabilities[20] = 35
                probabilities[40] = 5
            end
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            if distanceEnemy <= 3 then
                probabilities[8] = 30
                probabilities[9] = 30
                probabilities[11] = 10
                probabilities[12] = 15
                probabilities[13] = 25
                probabilities[16] = 30
                probabilities[25] = 20
            elseif distanceEnemy <= 6 then
                probabilities[1] = 15
                probabilities[8] = 30
                probabilities[11] = 10
                probabilities[16] = 25
                probabilities[24] = 25
                probabilities[40] = 25
            else
                probabilities[3] = 20
                probabilities[4] = 45
                probabilities[8] = 30
                probabilities[24] = 35
            end
        elseif distanceEnemy <= 3 then
            probabilities[6] = 20
            probabilities[8] = 30
            probabilities[9] = 30
            probabilities[11] = 10
            probabilities[12] = 15
            probabilities[15] = 35
            probabilities[25] = 20
        elseif distanceEnemy <= 6 then
            probabilities[6] = 25
            probabilities[8] = 30
            probabilities[11] = 10
            probabilities[24] = 30
            probabilities[40] = 15
            probabilities[25] = 20
        else
            probabilities[3] = 10
            probabilities[4] = 45
            probabilities[8] = 30
            probabilities[24] = 35
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16291) == false and ai:HasSpecialEffectId(TARGET_SELF, 16292) == false then
        probabilities[8] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16265) == true then
        probabilities[8] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16291) == true then
        if ai:GetHpRate(TARGET_SELF) > 0.5 then
            probabilities[8] = 0
        end
        if ai:GetNumber(6) ~= 1 then
            if ai:GetHpRate(TARGET_SELF) < 0.2 then
                probabilities[8] = probabilities[8] * 4
            elseif ai:GetHpRate(TARGET_SELF) < 0.3 then
                probabilities[8] = probabilities[8] * 3
            elseif ai:GetHpRate(TARGET_SELF) < 0.4 then
                probabilities[8] = probabilities[8] * 2
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16291) == true and ai:GetNumber(6) ~= 1 then
        probabilities[8] = probabilities[8] * 999
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 5 + ai:GetRandam_Int(0, 5), probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3004, 10 + ai:GetRandam_Int(0, 5), probabilities[2], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3016, 10 + ai:GetRandam_Int(0, 5), probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3006, 15 + ai:GetRandam_Int(0, 5), probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3007, 10 + ai:GetRandam_Int(0, 5), probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3008, 10 + ai:GetRandam_Int(0, 5), probabilities[5], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3010, 75 + ai:GetRandam_Int(0, 15), probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3005, 15 + ai:GetRandam_Int(0, 5), probabilities[9], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3018, 10 + ai:GetRandam_Int(0, 5), probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3019, 15 + ai:GetRandam_Int(0, 5), probabilities[12], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3021, 15 + ai:GetRandam_Int(0, 5), probabilities[14], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3023, 10 + ai:GetRandam_Int(0, 5), probabilities[17], 1)
    probabilities[25] = SetCoolTime(ai, goal, 6001, 5 + ai:GetRandam_Int(0, 5), probabilities[25], 1)
    probabilities[30] = SetCoolTime(ai, goal, 3202, 20 + ai:GetRandam_Int(0, 5), probabilities[30], 1)
    probabilities[31] = SetCoolTime(ai, goal, 3203, 20 + ai:GetRandam_Int(0, 5), probabilities[31], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3009, 10 + ai:GetRandam_Int(0, 5), probabilities[6], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3017, 10 + ai:GetRandam_Int(0, 5), probabilities[6], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3009, 10 + ai:GetRandam_Int(0, 5), probabilities[16], 1)
    probabilities[16] = SetCoolTime(ai, goal, 30017, 10 + ai:GetRandam_Int(0, 5), probabilities[16], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3020, 8 + ai:GetRandam_Int(0, 5), probabilities[13], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3022, 8 + ai:GetRandam_Int(0, 5), probabilities[13], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3020, 8 + ai:GetRandam_Int(0, 5), probabilities[15], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3022, 8 + ai:GetRandam_Int(0, 5), probabilities[15], 1)
    if hasEffect16290 == true then
        probabilities[3] = 0
    end
    if distanceEnemy > 3 then
        probabilities[9] = 0
    end
    acts[1] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act18)
    acts[20] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act26)
    acts[30] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act35)
    acts[39] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act39)
    acts[40] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act40)
    acts[45] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, GraftSpider_469000_Act46)
    local actAfter = REGIST_FUNC(ai, goal, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function GraftSpider_469000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local f3_local10 = 3001
    local target = TARGET_ENE_0
    local successDist = 5
    local f3_local13 = 6
    local f3_local14 = 0
    local f3_local15 = 0
    local f3_local16 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3004
    local target = TARGET_ENE_0
    local successDist = 12
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3006
    local target = TARGET_ENE_0
    local successDist = 12
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 8.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3007
    local target = TARGET_ENE_0
    local successDist = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 2
    local animationId = 3008
    local target = TARGET_ENE_0
    local successDist = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act07(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3014
    local target = TARGET_ENE_0
    local successDist = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act08(ai, goal, paramTbl)
    ai:SetNumber(6, 1)
    local goalLife = 5
    local animationId = 3010
    local target = TARGET_ENE_0
    local successDist = 10
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(0, 80)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act09(ai, goal, paramTbl)
    local goalLife = 2
    local animationId = 3005
    local target = TARGET_ENE_0
    local successDist = 10
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act10(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 2
    local animationId = 3015
    local target = TARGET_ENE_0
    local successDist = 10
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act11(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDist = 10
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act12(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3019
    local target = TARGET_ENE_0
    local successDist = 10
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3022
    local target = TARGET_ENE_0
    local successDist = 10
    local f15_local12 = 0
    local f15_local13 = 0
    local f15_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3021
    local target = TARGET_ENE_0
    local successDist = 10
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 6.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3020
    local target = TARGET_ENE_0
    local successDist = 10
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3009
    local target = TARGET_ENE_0
    local successDist = 10
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act17(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3023
    local target = TARGET_ENE_0
    local successDist = 10
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act18(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3002
    local animationId_4 = 3013
    local animationId_5 = 3003
    local target = TARGET_ENE_0
    local successDist = 6
    local successDist_2 = 6
    local f20_local17 = 0
    local f20_local18 = 0
    local f20_local19 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 180, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 180)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_3, target, successDist_2, 0, 0, 180)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_4, target, successDist_2, 0, 0, 180)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 180, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 180)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_5, target, successDist_2, 0, 0, 180)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act20(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(3, 5)
    local moveTarget = TARGET_ENE_0
    local stopDist = 4
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local guardStateId = 0
    if ai:IsFinishTimer(0) == true then
        guardStateId = 9910
        ai:SetTimer(0, 10)
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act21(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 3
    local moveTarget = TARGET_ENE_0
    local stopDist = 1
    local turnTarget = TARGET_SELF
    local walk = true
    local directionalDistance = ai:GetRandam_Int(5, 20)
    local f22_local7 = 100
    local random = ai:GetRandam_Int(1, 100)
    local f22_local9 = -1
    if random <= f22_local7 then
        f22_local9 = 9910
    end
    local f22_local10 = 50
    local random_2 = ai:GetRandam_Int(0, 100)
    local directionFromTarget = AI_DIR_TYPE_ToR
    if random_2 <= f22_local10 then
        directionFromTarget = AI_DIR_TYPE_ToL
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, goalLife, moveTarget, stopDist, turnTarget, walk, 9910, directionFromTarget, directionalDistance)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act22(ai, goal, paramTbl)
    local goalLife = 2
    local moveTarget = TARGET_ENE_0
    local stopDist = 4
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, 6001)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act23(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(3, 4)
    local moveTarget = TARGET_ENE_0
    local right = ai:GetRandam_Int(0, 1)
    local angleThreshold = ai:GetRandam_Int(60, 90)
    local f24_local4 = 3
    local f24_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f24_local9 = 100
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f24_local9 then
        guardStateId = 9910
    end
    if ai:IsFinishTimer(0) == true then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardStateId)
        ai:SetTimer(0, 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act24(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 45
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f25_local5 = 100
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if ai:HasSpecialEffectId(TARGET_SELF, 16251) then
        guardStateId = 9920
    else
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act25(ai, goal, paramTbl)
    local goalLife = 3
    local frontPriority = -1
    local backPriority = 100
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0.5
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act26(ai, goal, paramTbl)
    local goalLife = 3
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act30(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9920)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 12, TARGET_SELF, true, 9920)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3202, TARGET_ENE_0, 10, 0, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16251)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act31(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9920, true)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 8, TARGET_SELF, true, 9920)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3203, TARGET_ENE_0, 10, 0, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16251)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act32(ai, goal, paramTbl)
    local goalLife = 5
    local moveTarget = TARGET_ENE_0
    local stopDist = 10
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f30_local5 = 100
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f30_local5 then
        guardStateId = 9920
    end
    if stopDist <= distanceEnemy then
        local turnTarget = TARGET_SELF
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    else
        local turnTarget = TARGET_ENE_0
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act39(ai, goal, paramTbl)
    if ai:IsFinishTimer(0) == true then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 4.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
        ai:SetTimer(0, 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act40(ai, goal, paramTbl)
    if ai:IsFinishTimer(0) == true then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, 9910)
        ai:SetTimer(0, 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act45(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(3, 5)
    local moveTarget = TARGET_ENE_0
    local stopDist = 4
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local guardStateId = 0
    if ai:IsFinishTimer(0) == true then
        guardStateId = 9910
        ai:SetTimer(0, 10)
    end
    if distanceEnemy < stopDist then
        local goalLife_2 = 2
        local animationId = 3005
        local target = TARGET_ENE_0
        local successDist = 10
        local f33_local11 = 0
        local f33_local12 = 0
        local f33_local13 = 0
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife_2, animationId, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_Act46(ai, goal, paramTbl)
    ai:SetNumber(5, 1)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f34_local1 = 20
    local f34_local2 = 0
    local f34_local3 = 999
    local f34_local4 = 100
    local f34_local5 = 0
    local f34_local6 = 0
    local f34_local7 = 5
    local animationId = 20027
    local successDist = 12
    local f34_local10 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GraftSpider_469000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local random_3 = ai:GetRandam_Int(0, 5)
    local hasEffect16290 = ai:HasSpecialEffectId(TARGET_SELF, 16290)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and distanceEnemy_2 <= 7 then
                if ai:GetAttackPassedTime(3018) >= 15 + random_3 then
                    GraftSpider_469000_Act11(ai, goal)
                else
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
                end
            elseif distanceEnemy_2 >= 3 and random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 6)
            elseif random <= 60 and ai:GetAttackPassedTime(3016) >= 8 + random_3 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 6)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5025) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if distanceEnemy_2 >= 3.5 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 10)
                local f38_local6 = 0
                if ai:IsTargetGuard(TARGET_ENE_0) then
                    f38_local6 = 20
                end
                if random <= 70 + f38_local6 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 0)
                end
            elseif distanceEnemy_2 < 4 and ai:GetAttackPassedTime(3014) >= 20 + random_3 then
                local f38_local6 = 0
                if ai:GetHpRate(TARGET_SELF) <= 0.6 then
                    if ai:GetNumber(1) == 0 then
                        f38_local6 = 90
                        ai:SetNumber(1, 1)
                    else
                        f38_local6 = 30
                    end
                end
                if random <= 10 + f38_local6 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 0)
                end
            elseif distanceEnemy_2 <= 5.5 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 5)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if distanceEnemy_2 <= 3.5 and ai:GetAttackPassedTime(3014) >= 30 + random_3 then
                local f38_local6 = 0
                if ai:GetHpRate(TARGET_SELF) <= 0.6 then
                    f38_local6 = 30
                end
                if random <= 10 + f38_local6 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 0)
                end
            elseif distanceEnemy_2 <= 4 then
                if random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, true)
                elseif random <= 45 then
                    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                elseif ai:GetAttackPassedTime(3022) >= 15 + random_3 and random <= 60 then
                    GraftSpider_469000_Act13(ai, goal)
                end
            elseif distanceEnemy_2 <= 8 then
                if ai:GetAttackPassedTime(3009) >= 10 + random_3 and ai:GetAttackPassedTime(3017) >= 10 + random_3 and random <= 40 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 90) then
                        GraftSpider_469000_Act06(ai, goal)
                    else
                        GraftSpider_469000_Act16(ai, goal)
                    end
                end
            elseif distanceEnemy_2 > 8 and ai:GetAttackPassedTime(3007) >= 15 + random_3 and random <= 40 then
                GraftSpider_469000_Act04(ai, goal)
            end
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_4 = ai:GetRandam_Int(1, 100)
        local random_5 = ai:GetRandam_Int(1, 100)
        if ai:HasSpecialEffectId(TARGET_SELF, 16251) == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3202, TARGET_ENE_0, 15, 0, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16251) == false then
            goal:ClearSubGoal()
            if distanceEnemy_2 <= 5.5 then
                if random_4 <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, 6, 0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 0)
                elseif random_4 <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3020, TARGET_ENE_0, 6, 0, 0, 0)
                end
            elseif distanceEnemy_2 <= 8.5 and ai:GetAttackPassedTime(3007) >= 10 + random_3 then
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3007, TARGET_ENE_0, 10, 0, 0, 0)
            elseif distanceEnemy_2 <= 12 and ai:GetAttackPassedTime(3006) >= 20 + random_3 and hasEffect16290 == false then
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, 10, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
            end
        end
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 16251) == false and ai:HasSpecialEffectId(TARGET_SELF, 5030) then
        goal:ClearSubGoal()
        if random < 30 and ai:GetAttackPassedTime(6001) >= 5 then
            if distanceEnemy <= 2.5 then
                GraftSpider_469000_Act25(ai, goal)
            elseif distanceEnemy <= 5.5 then
                GraftSpider_469000_Act02(ai, goal)
            end
        elseif random < 50 then
            if distanceEnemy >= 4 then
                GraftSpider_469000_Act40(ai, goal)
            elseif ai:GetAttackPassedTime(2031) >= 20 then
                GraftSpider_469000_Act39(ai, goal)
            elseif ai:GetAttackPassedTime(3019) >= 15 and distanceEnemy < 3 then
                GraftSpider_469000_Act12(ai, goal)
            end
        end
        return true
    end
    if ai:IsInterupt(INTERUPT_SuccessGuard) and ai:HasSpecialEffectId(TARGET_SELF, 16251) == false then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy <= 4 and ai:GetAttackPassedTime(3015) >= 25 + random_3 then
            goal:ClearSubGoal()
            local f38_local5 = 0
            if ai:GetHpRate(TARGET_SELF) <= 0.6 then
                f38_local5 = 50
            end
            if random <= 10 + f38_local5 then
                goal:ClearSubGoal()
                GraftSpider_469000_Act10(ai, goal)
                return true
            end
        elseif random < 50 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy <= 3 and ai:GetAttackPassedTime(3023) >= 10 + random_3 then
            goal:ClearSubGoal()
            GraftSpider_469000_Act17(ai, goal)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        if ai:HasSpecialEffectId(TARGET_SELF, 16251) == false then
            if ai:GetHpRate(TARGET_SELF) <= 0.6 and ai:GetNumber(1) == 0 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy_2 <= 5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3014, TARGET_ENE_0, 5, 0, 0, 0)
                ai:SetNumber(1, 1)
                return true
            elseif random < 15 and distanceEnemy_2 <= 5 and ai:GetAttackPassedTime(3018) >= 15 + random_3 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3018, TARGET_ENE_0, 7, 0, 0, 0)
                return true
            elseif random < 50 and distanceEnemy_2 <= 3 and ai:GetAttackPassedTime(3005) >= 15 + random_3 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3005, TARGET_ENE_0, 3, 0, 0, 0)
                return true
            elseif random < 65 and ai:GetAttackPassedTime(3019) >= 8 + random_3 and distanceEnemy_2 <= 2 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3019, TARGET_ENE_0, 3, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16251) == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3203, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_GraftSpider_469000_AfterAttackAct, "GraftSpider_469000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftSpider_469000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

