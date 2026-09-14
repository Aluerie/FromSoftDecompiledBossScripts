RegisterTableGoal(GOAL_NebulaDragon_220000_Battle, "NebulaDragon_220000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NebulaDragon_220000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 18601) then
        probabilities[34] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18602) and ai:GetHpRate(TARGET_SELF) <= 0.8 then
        probabilities[32] = 100
        probabilities[11] = 10
        probabilities[12] = 10
        probabilities[14] = 10
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18603) and ai:GetHpRate(TARGET_SELF) <= 0.5 then
        probabilities[22] = 100
        probabilities[11] = 10
        probabilities[12] = 10
        probabilities[14] = 10
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) and ai:GetHpRate(TARGET_SELF) <= 0.3 then
        probabilities[33] = 100
        probabilities[11] = 10
        probabilities[12] = 10
        probabilities[14] = 10
    else
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            if distanceEnemy >= 8 then
                probabilities[24] = 100
            else
                probabilities[24] = 0
                probabilities[10] = 0
                probabilities[11] = 20
                probabilities[12] = 20
                probabilities[14] = 10
                probabilities[15] = 0
                probabilities[18] = 20
                probabilities[20] = 0
                probabilities[21] = 0
                if ai:HasSpecialEffectId(TARGET_SELF, 18603) then
                    probabilities[30] = 5
                    probabilities[31] = 5
                    probabilities[32] = 1000
                elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) then
                    probabilities[30] = 5
                    probabilities[31] = 5
                    probabilities[22] = 1000
                elseif ai:HasSpecialEffectId(TARGET_SELF, 18605) then
                    probabilities[30] = 5
                    probabilities[31] = 5
                    probabilities[22] = 1000
                    probabilities[33] = 1000
                end
            end
        elseif distanceEnemy >= 100 then
            probabilities[5] = 10
            probabilities[13] = 10
            probabilities[14] = 10
            probabilities[35] = 70
        elseif distanceEnemy >= 24 then
            probabilities[1] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 10
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 20
            probabilities[14] = 20
            probabilities[15] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18603) then
                probabilities[19] = 0
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[32] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) then
                probabilities[19] = 0
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[22] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18605) then
                probabilities[19] = 0
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[22] = 1000
                probabilities[33] = 1000
            end
        elseif distanceEnemy >= 18 then
            probabilities[4] = 30
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 20
            probabilities[8] = 10
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 20
            probabilities[14] = 20
            probabilities[15] = 0
            probabilities[18] = 0
            probabilities[20] = 10
            probabilities[21] = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18603) then
                probabilities[19] = 0
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[32] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) then
                probabilities[19] = 0
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[22] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18605) then
                probabilities[19] = 0
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[22] = 1000
                probabilities[33] = 1000
            end
        elseif distanceEnemy >= 10 then
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[7] = 20
            probabilities[8] = 10
            probabilities[10] = 0
            probabilities[11] = 10
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 10
            probabilities[15] = 0
            probabilities[18] = 0
            probabilities[20] = 20
            probabilities[21] = 0
            if ai:HasSpecialEffectId(TARGET_SELF, 18603) then
                probabilities[19] = 20
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[32] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) then
                probabilities[19] = 20
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[22] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18605) then
                probabilities[19] = 20
                probabilities[30] = 10
                probabilities[31] = 10
                probabilities[22] = 1000
                probabilities[33] = 1000
            end
        elseif distanceEnemy >= 4 then
            probabilities[4] = 0
            probabilities[5] = 10
            probabilities[6] = 10
            probabilities[7] = 0
            probabilities[8] = 10
            probabilities[10] = 0
            probabilities[11] = 10
            probabilities[12] = 10
            probabilities[13] = 0
            probabilities[14] = 10
            probabilities[15] = 0
            probabilities[18] = 10
            probabilities[20] = 10
            probabilities[21] = 20
            if ai:HasSpecialEffectId(TARGET_SELF, 18603) then
                probabilities[19] = 20
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[32] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) then
                probabilities[19] = 20
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[22] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18605) then
                probabilities[19] = 20
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[22] = 1000
                probabilities[33] = 1000
            end
        elseif distanceEnemy >= -1 then
            probabilities[1] = 20
            probabilities[3] = 20
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 10
            probabilities[7] = 0
            probabilities[8] = 10
            probabilities[10] = 0
            probabilities[11] = 20
            probabilities[12] = 20
            probabilities[13] = 0
            probabilities[14] = 10
            probabilities[15] = 20
            probabilities[18] = 10
            probabilities[20] = 0
            probabilities[21] = 20
            if ai:HasSpecialEffectId(TARGET_SELF, 18603) then
                probabilities[19] = 10
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[32] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) then
                probabilities[19] = 10
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[22] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18605) then
                probabilities[19] = 10
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[22] = 1000
                probabilities[33] = 1000
            end
        else
            probabilities[1] = 20
            probabilities[3] = 20
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 10
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[10] = 20
            probabilities[11] = 10
            probabilities[12] = 10
            probabilities[13] = 0
            probabilities[14] = 10
            probabilities[15] = 20
            probabilities[18] = 10
            probabilities[20] = 0
            probabilities[21] = 10
            if ai:HasSpecialEffectId(TARGET_SELF, 18603) then
                probabilities[19] = 0
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[32] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18604) then
                probabilities[19] = 0
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[22] = 1000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 18605) then
                probabilities[19] = 0
                probabilities[30] = 5
                probabilities[31] = 5
                probabilities[22] = 1000
                probabilities[33] = 1000
            end
        end
        if ai:IsFinishTimer(0) == false then
            probabilities[14] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18607) then
            probabilities[32] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18608) then
            probabilities[22] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18609) then
            probabilities[33] = 0
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 7, probabilities[1], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3004, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3006, 7, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3008, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3010, 10, probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3011, 30, probabilities[6], 0)
    probabilities[7] = SetCoolTime(ai, goal, 3012, 30, probabilities[7], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3013, 40, probabilities[8], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3015, 30, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3016, 10, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3017, 10, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3019, 25, probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3020, 30, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3021, 10, probabilities[15], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3023, 30, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 6000, 20, probabilities[18], 1)
    probabilities[18] = SetCoolTime(ai, goal, 6001, 20, probabilities[18], 1)
    probabilities[18] = SetCoolTime(ai, goal, 6002, 20, probabilities[18], 1)
    probabilities[18] = SetCoolTime(ai, goal, 6003, 20, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3033, 30, probabilities[19], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3025, 20, probabilities[20], 0)
    probabilities[21] = SetCoolTime(ai, goal, 3026, 30, probabilities[21], 0)
    probabilities[30] = SetCoolTime(ai, goal, 3027, 20, probabilities[30], 0)
    probabilities[31] = SetCoolTime(ai, goal, 3028, 20, probabilities[31], 0)
    acts[1] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act01)
    acts[3] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act08)
    acts[10] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act15)
    acts[17] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act22)
    acts[30] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act35)
    acts[24] = REGIST_FUNC(ai, goal, NebulaDragon_220000_Act24)
    local actAfter = REGIST_FUNC(ai, goal, NebulaDragon_220000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function NebulaDragon_220000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 13
    local canRunDist = 999
    local forceRunMinDist = 0
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 5
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 10
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18614)
    local goalLife = 5
    local animationId = 3006
    local target = TARGET_ENE_0
    local successDist = 20
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act04(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18618)
    local goalLife = 5
    local animationId = 3008
    local target = TARGET_ENE_0
    local successDist = 100
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3010
    local target = TARGET_ENE_0
    local successDist = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:GetNumber(0) == 0 then
        ai:SetNumber(0, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDist = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act07(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3012
    local target = TARGET_ENE_0
    local successDist = 100
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act08(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18619)
    local goalLife = 5
    local animationId = 3013
    local target = TARGET_ENE_0
    local successDist = 100
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act09(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3023
    local target = TARGET_ENE_0
    local successDist = 10
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act10(ai, goal, paramTbl)
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

function NebulaDragon_220000_Act11(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18616)
    local goalLife = 15
    local animationId = 3016
    local target = TARGET_ENE_0
    local successDist = 15
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act12(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18615)
    local goalLife = 15
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 20
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act13(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3019
    local target = TARGET_ENE_0
    local successDist = 100
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act14(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3020
    local target = TARGET_ENE_0
    local successDist = 100
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act15(ai, goal, paramTbl)
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

function NebulaDragon_220000_Act17(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3021
    local target = TARGET_ENE_0
    local successDist = 100
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act18(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 5
    local animationId = ai:GetRandam_Int(6001, 6003)
    local target = TARGET_ENE_0
    local successDist = 10
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 0
    if distanceEnemy > 25 then
        animationId = ai:GetRandam_Int(6002, 6003)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act19(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3033
    local target = TARGET_ENE_0
    local successDist = 10
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act20(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3025
    local target = TARGET_ENE_0
    local successDist = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act21(ai, goal, paramTbl)
    local goalLife = 30
    local animationId = 3026
    local target = TARGET_ENE_0
    local successDist = 10
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act22(ai, goal, paramTbl)
    local goalLife = 30
    local animationId = 3032
    local target = TARGET_ENE_0
    local successDist = 10
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(2, 200)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act24(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 45
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f23_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f23_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act26(ai, goal, paramTbl)
    local goalLife = 20
    local animationId = 3024
    local animationId_2 = 3028
    local target = TARGET_ENE_0
    local target_2 = TARGET_SELF
    local successDist = 40
    local f24_local6 = 0
    local f24_local7 = 0
    local f24_local8 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target_2, successDist2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act30(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3027
    local target = TARGET_ENE_0
    local successDist = 50
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act31(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3028
    local target = TARGET_ENE_0
    local successDist = 50
    local f26_local4 = 0
    local f26_local5 = 0
    local f26_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act32(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if distanceEnemy <= 10 then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, 1, 1, 1, TARGET_ENE_0, 20, 0, false)
    end
    local goalLife = 10
    local animationId = 3035
    local target = TARGET_ENE_0
    local successDist = 50
    local f27_local6 = 0
    local f27_local7 = 0
    local f27_local8 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(1, 340)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act33(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if distanceEnemy <= 10 then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, 1, 1, 1, TARGET_ENE_0, 20, 0, false)
    end
    local goalLife = 10
    local animationId = 3036
    local target = TARGET_ENE_0
    local successDist = 50
    local f28_local6 = 0
    local f28_local7 = 0
    local f28_local8 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetTimer(3, 240)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act34(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18619)
    local goalLife = 5
    local animationId = 3013
    local target = TARGET_ENE_0
    local successDist = 100
    local f29_local4 = 0
    local f29_local5 = 0
    local f29_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NebulaDragon_220000_Act35(ai, goal, paramTbl)
    local goalLife = 6
    local moveTarget = TARGET_ENE_0
    local stopDist = 22
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f30_local6 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f30_local6 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId)
end

function NebulaDragon_220000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_NebulaDragon_220000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 18605) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18605)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            local goalLife = 18
            local target = TARGET_ENE_0
            local successDist = 100
            local f34_local5 = 0
            local f34_local6 = 0
            local f34_local7 = 0
            local animationId = 6011
            local animationId_2 = 3023
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18614) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18614)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18618)
            if distanceEnemy <= 25 and distanceEnemy >= 10.1 then
                local goalLife = 18
                local target = TARGET_ENE_0
                local f34_local4 = 10
                local f34_local5 = 0
                local f34_local6 = 0
                local f34_local7 = 0
                local animationId = 3010
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            elseif distanceEnemy <= 10 then
                local goalLife = 18
                local target = TARGET_ENE_0
                local f34_local4 = 10
                local f34_local5 = 0
                local f34_local6 = 0
                local f34_local7 = 0
                local animationId = 3003
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18618) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18618)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 15 and distanceEnemy >= 2 then
                if random <= 50 then
                    NebulaDragon_220000_Act11(ai, goal)
                elseif random <= 80 then
                    NebulaDragon_220000_Act12(ai, goal)
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18615) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18615)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 18 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18617)
                local goalLife = 18
                local animationId = 3018
                local target = TARGET_ENE_0
                local f34_local5 = 10
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18617) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18617)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 11 then
                local goalLife = 18
                local animationId = 3034
                local target = TARGET_ENE_0
                local successDist = 10
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 18616) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18616)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy <= 18 and distanceEnemy >= 3 then
                local goalLife = 18
                local animationId = 3031
                local target = TARGET_ENE_0
                local f34_local5 = 10
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        end
        return true
    end
    return false
end

RegisterTableGoal(GOAL_NebulaDragon_220000_AfterAttackAct, "NebulaDragon_220000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NebulaDragon_220000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

