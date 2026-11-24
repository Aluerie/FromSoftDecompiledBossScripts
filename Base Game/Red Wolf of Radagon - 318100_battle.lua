RegisterTableGoal(GOAL_RuneWolf318100_Battle, "RuneWolf318100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneWolf318100_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(1, 0)
    ai:SetNumber(2, 0)
    ai:SetNumber(3, 0)
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
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 50)
    local f2_local7 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 50)
    local hasEffect16902 = ai:HasSpecialEffectId(TARGET_SELF, 16902)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16903)
    if ai:HasSpecialEffectId(TARGET_SELF, 16904) and distanceEnemy <= 50 then
        probabilities[8] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 16941) then
        probabilities[8] = 100
    elseif ai:GetNumber(2) == 0 and distanceEnemy >= 7 then
        probabilities[23] = 100
    else
        local paramDoAdmire_2 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
        if paramDoAdmire_2 == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            probabilities[22] = 20
            probabilities[24] = 80
            if ai:HasSpecialEffectId(TARGET_SELF, 16940) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[8] = 50
            end
        elseif paramDoAdmire_2 == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            probabilities[3] = 10
            probabilities[6] = 30
            probabilities[24] = 60
            if ai:HasSpecialEffectId(TARGET_SELF, 16940) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[8] = 50
            end
        elseif hasEffect16902 == true then
            if f2_local7 == true then
                if distanceEnemy <= 5 then
                    probabilities[5] = 50
                    probabilities[27] = 50
                else
                    probabilities[27] = 100
                end
            elseif f2_local6 == true then
                if distanceEnemy <= 7 then
                    probabilities[1] = 30
                    probabilities[2] = 10
                    probabilities[10] = 30
                    probabilities[11] = 25
                    probabilities[13] = 10
                elseif distanceEnemy <= 15 then
                    probabilities[1] = 20
                    probabilities[6] = 25
                    probabilities[10] = 45
                    probabilities[26] = 20
                else
                    probabilities[3] = 20
                    probabilities[6] = 35
                    probabilities[14] = 25
                    probabilities[23] = 20
                end
            elseif distanceEnemy <= 7 then
                probabilities[2] = 30
                probabilities[13] = 20
                probabilities[26] = 30
                probabilities[25] = 10
                probabilities[27] = 10
            elseif distanceEnemy <= 15 then
                probabilities[1] = 25
                probabilities[2] = 30
                probabilities[10] = 20
                probabilities[26] = 25
            else
                probabilities[6] = 20
                probabilities[10] = 10
                probabilities[14] = 30
                probabilities[23] = 40
            end
        elseif f2_local7 == true then
            if distanceEnemy <= 5 then
                probabilities[5] = 50
                probabilities[27] = 50
            else
                probabilities[27] = 100
            end
        elseif f2_local6 == true then
            if distanceEnemy <= 7 then
                probabilities[1] = 40
                probabilities[2] = 20
                probabilities[25] = 20
                probabilities[26] = 20
            elseif distanceEnemy <= 15 then
                probabilities[1] = 10
                probabilities[3] = 35
                probabilities[4] = 15
                probabilities[6] = 35
                probabilities[26] = 20
            else
                probabilities[1] = 15
                probabilities[3] = 40
                probabilities[4] = 10
                probabilities[6] = 55
            end
        elseif distanceEnemy <= 12 then
            probabilities[1] = 20
            probabilities[2] = 40
            probabilities[26] = 30
            probabilities[27] = 10
        elseif distanceEnemy <= 15 then
            probabilities[1] = 15
            probabilities[4] = 25
            probabilities[6] = 20
            probabilities[26] = 40
        else
            probabilities[3] = 25
            probabilities[4] = 25
            probabilities[23] = 20
            probabilities[24] = 30
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 7 + ai:GetRandam_Int(3, 5), probabilities[1], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 7 + ai:GetRandam_Int(3, 5), probabilities[2], 0)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 7 + ai:GetRandam_Int(0, 5), probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3005, 7 + ai:GetRandam_Int(0, 5), probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3007, 7 + ai:GetRandam_Int(0, 5), probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3015, 10 + ai:GetRandam_Int(0, 5), probabilities[6], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3016, 10 + ai:GetRandam_Int(0, 5), probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3017, 15 + ai:GetRandam_Int(0, 5), probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3018, 30, probabilities[8], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3019, 7 + ai:GetRandam_Int(0, 5), probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3003, 10 + ai:GetRandam_Int(0, 5), probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3008, 10 + ai:GetRandam_Int(0, 5), probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3021, 15 + ai:GetRandam_Int(0, 5), probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3022, 15 + ai:GetRandam_Int(0, 5), probabilities[14], 0)
    probabilities[25] = SetCoolTime(ai, goal, 3010, 5 + ai:GetRandam_Int(0, 5), probabilities[25], 1)
    probabilities[25] = SetCoolTime(ai, goal, 3011, 5 + ai:GetRandam_Int(0, 5), probabilities[25], 1)
    probabilities[25] = SetCoolTime(ai, goal, 3012, 5 + ai:GetRandam_Int(0, 5), probabilities[25], 1)
    probabilities[25] = SetCoolTime(ai, goal, 6001, 5 + ai:GetRandam_Int(0, 5), probabilities[25], 0)
    probabilities[26] = SetCoolTime(ai, goal, 3010, 8 + ai:GetRandam_Int(0, 5), probabilities[26], 1)
    probabilities[26] = SetCoolTime(ai, goal, 3011, 8 + ai:GetRandam_Int(0, 5), probabilities[26], 1)
    probabilities[26] = SetCoolTime(ai, goal, 3012, 8 + ai:GetRandam_Int(0, 5), probabilities[26], 1)
    probabilities[26] = SetCoolTime(ai, goal, 6001, 8 + ai:GetRandam_Int(0, 5), probabilities[26], 1)
    probabilities[26] = SetCoolTime(ai, goal, 6002, 8 + ai:GetRandam_Int(0, 5), probabilities[26], 1)
    probabilities[26] = SetCoolTime(ai, goal, 6003, 8 + ai:GetRandam_Int(0, 5), probabilities[26], 1)
    probabilities[27] = SetCoolTime(ai, goal, 6000, 8 + ai:GetRandam_Int(0, 5), probabilities[27], 1)
    acts[1] = REGIST_FUNC(ai, goal, RuneWolf3181_Act01)
    acts[2] = REGIST_FUNC(ai, goal, RuneWolf3181_Act02)
    acts[3] = REGIST_FUNC(ai, goal, RuneWolf3181_Act03)
    acts[4] = REGIST_FUNC(ai, goal, RuneWolf3181_Act04)
    acts[5] = REGIST_FUNC(ai, goal, RuneWolf3181_Act05)
    acts[6] = REGIST_FUNC(ai, goal, RuneWolf3181_Act06)
    acts[7] = REGIST_FUNC(ai, goal, RuneWolf3181_Act07)
    acts[8] = REGIST_FUNC(ai, goal, RuneWolf3181_Act08)
    acts[9] = REGIST_FUNC(ai, goal, RuneWolf3181_Act09)
    acts[10] = REGIST_FUNC(ai, goal, RuneWolf3181_Act10)
    acts[11] = REGIST_FUNC(ai, goal, RuneWolf3181_Act11)
    acts[12] = REGIST_FUNC(ai, goal, RuneWolf3181_Act12)
    acts[13] = REGIST_FUNC(ai, goal, RuneWolf3181_Act13)
    acts[14] = REGIST_FUNC(ai, goal, RuneWolf3181_Act14)
    acts[20] = REGIST_FUNC(ai, goal, RuneWolf3181_Act20)
    acts[21] = REGIST_FUNC(ai, goal, RuneWolf3181_Act21)
    acts[22] = REGIST_FUNC(ai, goal, RuneWolf3181_Act22)
    acts[23] = REGIST_FUNC(ai, goal, RuneWolf3181_Act23)
    acts[24] = REGIST_FUNC(ai, goal, RuneWolf3181_Act24)
    acts[25] = REGIST_FUNC(ai, goal, RuneWolf3181_Act25)
    acts[26] = REGIST_FUNC(ai, goal, RuneWolf3181_Act26)
    acts[27] = REGIST_FUNC(ai, goal, RuneWolf3181_Act27)
    local actAfter = REGIST_FUNC(ai, goal, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function RuneWolf3181_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 180
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3001
    local target = TARGET_ENE_0
    local successDist = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 40
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    local stopDist = 17
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3002
    local target = TARGET_ENE_0
    local successDist = 10
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 40
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 12
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    local hasEffect16902 = ai:HasSpecialEffectId(TARGET_SELF, 16902)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3005
    local f6_local11 = 3004
    local target = TARGET_ENE_0
    local successDist = 10
    local f6_local14 = 0
    local f6_local15 = 0
    local f6_local16 = 120
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    if hasEffect16902 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 6, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 2.5, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 6, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act05(ai, goal, paramTbl)
    local goalLife = 2
    local animationId = 3009
    local target = TARGET_ENE_0
    local successDist = 10
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    local hasEffect16902 = ai:HasSpecialEffectId(TARGET_SELF, 16902)
    if hasEffect16902 == true then
        animationId = 3007
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act06(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 5
    local animationId = 3015
    local animationId_2 = 3016
    local target = TARGET_ENE_0
    local successDist = 10
    local f8_local7 = 0
    local f8_local8 = 0
    local f8_local9 = 0
    local f8_local10 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 90, 90, ATT_MAX)
    local f8_local11 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 90, 90, ATT_MAX)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f8_local11 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    elseif f8_local10 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, target, successDist, 0, 0, 0)
    elseif random <= 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act07(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 30
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 10
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act08(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDist = 50
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetNumber(1, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act09(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3015
    local f11_local2 = 3016
    local animationId_2 = 3017
    local target = TARGET_ENE_0
    local successDist = 50
    local f11_local6 = 0
    local f11_local7 = 0
    local f11_local8 = 0
    local hasEffect16902 = ai:HasSpecialEffectId(TARGET_SELF, 16902)
    if hasEffect16902 == true then
        animationId_2 = 3022
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, successDist, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_2, TARGET_ENE_0, successDist, 0, 0)
    ai:SetNumber(3, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act10(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3019
    local animationId_2 = 3023
    local animationId_3 = 3020
    local target = TARGET_ENE_0
    local f12_local13 = 0
    local f12_local14 = 0
    local f12_local15 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, 7, 0, 180, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_2, TARGET_ENE_0, 2.5, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_3, TARGET_ENE_0, 8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act11(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3003
    local target = TARGET_ENE_0
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, 7, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local goalLife = 5
    local animationId = 3008
    local target = TARGET_ENE_0
    local f14_local11 = 0
    local f14_local12 = 0
    local f14_local13 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, 7, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act13(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3021
    local target = TARGET_ENE_0
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, 6, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3022
    local target = TARGET_ENE_0
    local f16_local11 = 0
    local f16_local12 = 0
    local f16_local13 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, 20, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act20(ai, goal, paramTbl)
    local goalLife = 5
    local moveTarget = TARGET_ENE_0
    local stopDist = 7
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act21(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 2
    local moveTarget = TARGET_ENE_0
    local stopDist = 5
    local turnTarget = TARGET_SELF
    local walk = false
    local directionalDistance = 20
    local f18_local7 = -1
    local f18_local8 = 50
    local random = ai:GetRandam_Int(0, 100)
    local directionFromTarget = AI_DIR_TYPE_ToR
    if random <= f18_local8 then
        directionFromTarget = AI_DIR_TYPE_ToL
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, goalLife, moveTarget, stopDist, turnTarget, walk, -1, directionFromTarget, directionalDistance)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act22(ai, goal, paramTbl)
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

function RuneWolf3181_Act23(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(2.5, 3)
    local moveTarget = TARGET_ENE_0
    local right = ai:GetRandam_Int(0, 1)
    local angleThreshold = ai:GetRandam_Int(30, 45)
    local f20_local4 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f20_local8 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f20_local8 then
        guardStateId = 9910
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardStateId)
    ai:SetNumber(2, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act24(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 45
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f21_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act25(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = 1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneWolf3181_Act26(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local goalLife = 4
        local animationId = 6003
        local target = TARGET_ENE_0
        local turnTime = 0
        local dirSpaceCheck = AI_DIR_TYPE_R
        local distSpaceCheck = 0
        goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, target, turnTime, dirSpaceCheck, distSpaceCheck)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local goalLife = 4
        local animationId = 6002
        local target = TARGET_ENE_0
        local turnTime = 0
        local dirSpaceCheck = AI_DIR_TYPE_L
        local distSpaceCheck = 0
        goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, target, turnTime, dirSpaceCheck, distSpaceCheck)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function RuneWolf3181_Act27(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GraftSpider_469000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_RuneWolf318100_AfterAttackAct, 10)
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
    local random_3 = ai:GetRandam_Int(0, 10)
    local random_4 = ai:GetRandam_Int(0, 5)
    local hasEffect16902 = ai:HasSpecialEffectId(TARGET_SELF, 16902)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5025) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if random <= 30 and distanceEnemy_2 >= 7 and ai:GetAttackPassedTime(3002) >= 15 then
                RuneWolf3181_Act03(ai, goal, paramTbl)
                return true
            elseif random <= 30 and distanceEnemy_2 >= 10 and ai:GetAttackPassedTime(3022) >= 15 and hasEffect16902 == true then
                RuneWolf3181_Act22(ai, goal, paramTbl)
                return true
            elseif ai:GetHpRate(TARGET_SELF) <= 0.7 and distanceEnemy_2 >= 15 and random <= 50 and ai:GetAttackPassedTime(3017) >= 20 then
                RuneWolf3181_Act07(ai, goal, paramTbl)
                return true
            else
                if random <= 40 and distanceEnemy_2 >= 8 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 3), TARGET_ENE_0, 1, ai:GetRandam_Int(30, 45), true, true, -1)
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 5, 0, 0)
                return true
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            goal:ClearSubGoal()
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            if random <= 30 and distanceEnemy_2 >= 7 and ai:GetAttackPassedTime(3002) >= 15 then
                RuneWolf3181_Act03(ai, goal, paramTbl)
                return true
            elseif random <= 30 and distanceEnemy_2 >= 10 and ai:GetAttackPassedTime(3022) >= 15 and hasEffect16902 == true then
                RuneWolf3181_Act22(ai, goal, paramTbl)
                return true
            elseif ai:GetHpRate(TARGET_SELF) <= 0.7 and distanceEnemy_2 >= 15 and random <= 50 and ai:GetAttackPassedTime(3017) >= 20 then
                RuneWolf3181_Act07(ai, goal, paramTbl)
                return true
            else
                if random <= 40 and distanceEnemy_2 >= 8 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 3), TARGET_ENE_0, 0, ai:GetRandam_Int(30, 45), true, true, -1)
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 5, 0, 0)
                return true
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f28_local7 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 20)
            local f28_local8 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 210, 90, 20)
            local f28_local9 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 60, 90, 5)
            local f28_local10 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 45, 90, 20)
            local f28_local11 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 45, 90, 20)
            goal:ClearSubGoal()
            if hasEffect16902 == true then
                local f28_local12 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 20)
                if f28_local12 == true and distanceEnemy_2 <= 6 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 5, 0, 0)
                    return true
                elseif f28_local9 == true then
                    if ai:GetAttackPassedTime(3019) >= 20 and distanceEnemy_2 <= 5 and random <= 60 then
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 10, 0, 0)
                        return true
                    end
                elseif f28_local7 == true then
                    if ai:GetAttackPassedTime(3019) >= 20 and distanceEnemy_2 >= 3 and distanceEnemy_2 <= 7 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 6, 0, 0)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 2.5, 0, 0)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 6, 0, 0)
                        return true
                    elseif ai:GetAttackPassedTime(3003) >= 20 and distanceEnemy_2 >= 3 and distanceEnemy_2 <= 5 then
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 10, 0, 0)
                        return true
                    elseif distanceEnemy_2 >= 8 then
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 8, 0, 0)
                        return true
                    end
                end
            elseif f28_local8 == true and distanceEnemy_2 <= 6 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif f28_local7 == true and distanceEnemy_2 >= 8 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 10, 0, 0)
                return true
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if ai:GetHpRate(TARGET_SELF) <= 0.3 and ai:GetNumber(3) == 0 and distanceEnemy_2 >= 7 then
                RuneWolf3181_Act09(ai, goal, paramTbl)
                ai:SetNumber(3, 1)
                return true
            elseif ai:GetHpRate(TARGET_SELF) <= 0.7 and distanceEnemy_2 >= 15 and random_2 <= 70 and ai:GetAttackPassedTime(3017) >= 20 then
                RuneWolf3181_Act07(ai, goal, paramTbl)
                return true
            elseif distanceEnemy_2 >= 12 and random <= 30 then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                end
                RuneWolf3181_Act06(ai, goal)
                return true
            else
                if random <= 50 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                end
                RuneWolf3181_Act04(ai, goal)
                return true
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5029) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if hasEffect16902 == true then
                if ai:GetAttackPassedTime(3019) >= 15 and distanceEnemy_2 <= 5 and random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 6, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 2.5, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 6, 0, 0)
                    return true
                elseif ai:GetAttackPassedTime(3003) >= 20 and distanceEnemy_2 <= 5 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 6, 0, 0)
                    return true
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 5) and random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 6, 0, 0)
                    return true
                else
                    RuneWolf3181_Act26(ai, goal, paramTbl)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 5) and random > 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 6, 0, 0)
                return true
            else
                RuneWolf3181_Act26(ai, goal, paramTbl)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if ai:GetHpRate(TARGET_SELF) <= 0.3 and ai:GetNumber(3) == 0 then
                goal:ClearSubGoal()
                RuneWolf3181_Act09(ai, goal, paramTbl)
                ai:SetNumber(3, 1)
                return true
            elseif ai:GetHpRate(TARGET_SELF) <= 0.7 and distanceEnemy_2 >= 15 and random_2 <= 70 and ai:GetAttackPassedTime(3017) >= 20 then
                goal:ClearSubGoal()
                RuneWolf3181_Act07(ai, goal, paramTbl)
                return true
            elseif distanceEnemy_2 >= 12 and ai:GetAttackPassedTime(3015) >= 10 and ai:GetAttackPassedTime(3016) >= 10 then
                goal:ClearSubGoal()
                RuneWolf3181_Act06(ai, goal)
                return true
            elseif random <= 50 then
                goal:ClearSubGoal()
                if random <= 40 and distanceEnemy_2 >= 8 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 5, 0, 0)
            else
                goal:ClearSubGoal()
                if random <= 40 and distanceEnemy_2 >= 8 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                end
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 5, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            goal:ClearSubGoal()
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 7.5) then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif hasEffect16902 == true and distanceEnemy_2 <= 7.5 and ai:GetAttackPassedTime(3019) >= 10 then
                RuneWolf3181_Act10(ai, goal, paramTbl)
                return true
            elseif distanceEnemy_2 <= 5 and random <= 70 and ai:GetAttackPassedTime(3000) >= 15 then
                RuneWolf3181_Act01(ai, goal, paramTbl)
                return true
            elseif distanceEnemy_2 <= 5 and ai:GetAttackPassedTime(3001) >= 15 then
                RuneWolf3181_Act02(ai, goal, paramTbl)
                return true
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            goal:ClearSubGoal()
            if hasEffect16902 == true then
                if distanceEnemy_2 >= 12 and distanceEnemy_2 <= 22 and ai:GetAttackPassedTime(3022) >= 20 then
                    RuneWolf3181_Act14(ai, goal)
                    return true
                elseif distanceEnemy_2 <= 12 then
                    if ai:GetAttackPassedTime(3017) >= 20 and random > 70 then
                        RuneWolf3181_Act07(ai, goal, paramTbl)
                    else
                        RuneWolf3181_Act04(ai, goal)
                    end
                    return true
                elseif distanceEnemy_2 > 12 then
                    if random > 40 then
                        RuneWolf3181_Act26(ai, goal)
                    else
                        RuneWolf3181_Act04(ai, goal)
                    end
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) <= 0.6 and distanceEnemy_2 >= 20 and random_2 <= 70 and ai:GetAttackPassedTime(3017) >= 15 then
                RuneWolf3181_Act07(ai, goal, paramTbl)
                return true
            elseif distanceEnemy_2 >= 7 then
                RuneWolf3181_Act03(ai, goal)
                return true
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16903) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local f28_local7 = 5
            if distanceEnemy_2 <= f28_local7 then
                goal:ClearSubGoal()
                RuneWolf3181_Act26(ai, goal, paramTbl)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local f28_local7 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 20)
        local f28_local8 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 210, 90, 20)
        local f28_local9 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 90, 5)
        if hasEffect16902 == true then
            if distanceEnemy_2 <= 5 then
                if random <= 5 and ai:GetAttackPassedTime(3021) >= 15 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3021, TARGET_ENE_0, 5, 0, 180, 0, 0)
                    return true
                elseif random <= 10 and ai:GetAttackPassedTime(3003) >= 15 and f28_local7 == true then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3003, TARGET_ENE_0, 6, 0, 180, 0, 0)
                    return true
                elseif random <= 15 and ai:GetAttackPassedTime(3008) >= 15 and f28_local9 == true then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3008, TARGET_ENE_0, 5, 0, 180, 0, 0)
                    return true
                end
            elseif random <= 50 and ai:GetAttackPassedTime(3007) >= 15 and distanceEnemy_2 <= 6 then
                goal:ClearSubGoal()
                RuneWolf3181_Act05(ai, goal, paramTbl)
                return true
            elseif random <= 65 then
                goal:ClearSubGoal()
                RuneWolf3181_Act27(ai, goal, paramTbl)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                RuneWolf3181_Act26(ai, goal, paramTbl)
                return true
            end
        elseif distanceEnemy_2 <= 10 and f28_local7 == true then
            if random <= 20 then
                goal:ClearSubGoal()
                RuneWolf3181_Act25(ai, goal, paramTbl)
                return true
            elseif random <= 40 then
                goal:ClearSubGoal()
                RuneWolf3181_Act26(ai, goal, paramTbl)
                return true
            end
        elseif random <= 20 then
            goal:ClearSubGoal()
            RuneWolf3181_Act27(ai, goal, paramTbl)
            return true
        end
        return true
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_5 = ai:GetRandam_Int(1, 100)
        local random_6 = ai:GetRandam_Int(1, 100)
        if distanceEnemy_2 >= 7 then
            if random_6 <= 35 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif random_5 <= 70 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 5, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                RuneWolf3181_Act03(ai, goal, paramTbl)
                return true
            end
        end
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_ENE_0, 6992) and ai:GetAttackPassedTime(3011) >= 10 then
        goal:ClearSubGoal()
        RuneWolf3181_Act02(ai, goal, paramTbl)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_RuneWolf318100_AfterAttackAct, "RuneWolf318100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneWolf318100_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

