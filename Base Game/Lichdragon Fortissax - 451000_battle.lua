RegisterTableGoal(GOAL_GuardianDescendant451000_Battle, "GuardianDescendant451000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GuardianDescendant451000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetStringIndexedNumber("isCombo", 0)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3005)
    ai:EnableUnfavorableAttackCheck(0, 3006)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3015)
    ai:EnableUnfavorableAttackCheck(0, 3031)
    ai:EnableUnfavorableAttackCheck(0, 3032)
    ai:EnableUnfavorableAttackCheck(0, 3033)
    ai:EnableUnfavorableAttackCheck(0, 3034)
    ai:EnableUnfavorableAttackCheck(0, 3035)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14860)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14861)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14862)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14863)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14864)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14865)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14866)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14867)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18920)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18921)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18922)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18923)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18924)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local eventRequest = ai:GetEventRequest()
    ai:SetStringIndexedNumber("isCombo", 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 14854) == false and (ai:HasSpecialEffectId(TARGET_SELF, 14852) or ai:HasSpecialEffectId(TARGET_SELF, 14853)) then
        probabilities[20] = 10000000
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18941) then
        probabilities[14] = 10000000
    else
        if distanceEnemy < 0 then
            probabilities[3] = 15
            probabilities[15] = 10
            probabilities[22] = 10
            probabilities[25] = 30
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                probabilities[4] = 10
            end
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[23] = 10
            end
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                probabilities[2] = 30
            end
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                probabilities[17] = 40
            else
                probabilities[16] = 40
            end
        elseif distanceEnemy < 5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 130) then
                probabilities[1] = 30
                probabilities[4] = 10
                probabilities[7] = 20
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                    probabilities[6] = 20
                    probabilities[24] = 30
                end
            else
                probabilities[15] = 10
                probabilities[22] = 15
                if distanceEnemy > -2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BR, 110) then
                    probabilities[21] = 40
                end
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                    probabilities[5] = 20
                end
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    probabilities[17] = 40
                else
                    probabilities[16] = 40
                end
            end
        elseif distanceEnemy < 15 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 130) then
                probabilities[1] = 30
                probabilities[4] = 10
                probabilities[7] = 20
                if distanceEnemy < 11 then
                    probabilities[26] = 50
                end
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    probabilities[23] = 20
                end
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                    probabilities[6] = 20
                    probabilities[24] = 30
                end
            else
                probabilities[44] = 50
                if distanceEnemy < 10 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BR, 110) then
                    probabilities[21] = 40
                end
            end
        elseif distanceEnemy < 9999 then
            if distanceEnemy > 15 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 40) then
                probabilities[14] = 50
                probabilities[45] = 25
                probabilities[46] = 25
            else
                probabilities[42] = 100
            end
        else
            probabilities[42] = 100
        end
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 20) then
            probabilities[8] = 10000
            probabilities[11] = 999999
        end
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 40) then
            probabilities[9] = 10000
            probabilities[13] = 999999
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 14852) == false then
        probabilities[8] = 0
        probabilities[11] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 14853) == false then
        probabilities[9] = 0
        probabilities[13] = 0
    end
    if ai:GetHpRate(TARGET_SELF) > 0.6 or ai:HasSpecialEffectId(TARGET_SELF, 18938) then
        probabilities[13] = 0
        probabilities[11] = 0
    elseif ai:HasSpecialEffectId(TARGET_SELF, 14850) == false then
        probabilities[13] = 0
        probabilities[11] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 14850) == false then
        probabilities[23] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18937) then
        probabilities[8] = 0
        probabilities[9] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 14876) then
        probabilities[5] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[15] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18936) and ai:HasSpecialEffectId(TARGET_SELF, 18941) == false and ai:HasSpecialEffectId(TARGET_SELF, 14886) == false then
        probabilities[14] = 0
        probabilities[4] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 14886) and ai:GetHpRate(TARGET_SELF) < 0.85 then
        probabilities[29] = 999999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 14878) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 35) and ai:GetHpRate(TARGET_SELF) < 0.6 then
            probabilities[27] = 1000
        end
        probabilities[28] = 1000
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18935) then
        probabilities[5] = 0
        probabilities[22] = 0
        probabilities[23] = 0
    end
    if ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 10) == false then
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 5, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 5, probabilities[2], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3014, 5, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3015, 5, probabilities[7], 1)
    probabilities[24] = SetCoolTime(ai, goal, 3034, 5, probabilities[24], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3009, 60 + ai:GetRandam_Int(0, 5), probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3010, 60 + ai:GetRandam_Int(0, 5), probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3011, 120 + ai:GetRandam_Int(0, 5), probabilities[5], 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 18941) == false then
        probabilities[14] = SetCoolTime(ai, goal, 3022, 60 + ai:GetRandam_Int(0, 5), probabilities[14], 0)
    end
    probabilities[15] = SetCoolTime(ai, goal, 3028, 60 + ai:GetRandam_Int(0, 5), probabilities[15], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3012, 90 + ai:GetRandam_Int(0, 5), probabilities[22], 0)
    probabilities[23] = SetCoolTime(ai, goal, 3013, 20 + ai:GetRandam_Int(0, 5), probabilities[23], 0)
    probabilities[25] = SetCoolTime(ai, goal, 3001, 20, probabilities[25], 0)
    probabilities[26] = SetCoolTime(ai, goal, 3004, 20, probabilities[26], 0)
    probabilities[27] = SetCoolTime(ai, goal, 3037, 40, probabilities[27], 0)
    probabilities[28] = SetCoolTime(ai, goal, 3038, 60, probabilities[28], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3019, 15, probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3021, 15, probabilities[9], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3016, 15, probabilities[11], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3017, 15, probabilities[13], 0)
    acts[1] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act29)
    acts[40] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act46)
    acts[48] = REGIST_FUNC(ai, goal, GuardianDescendant451000_Act48)
    local actAfter = REGIST_FUNC(ai, goal, GuardianDescendant451000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function GuardianDescendant451000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 3.5
    local f3_local11 = 0
    local f3_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local successDist = 3.5
    local f4_local11 = 0
    local f4_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3009
    local successDist = 3.5
    local f5_local4 = 0
    local f5_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3010
    local successDist = 3.5
    local f6_local4 = 0
    local f6_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3011
    local successDist = 3.5
    local f7_local4 = 0
    local f7_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3014
    local successDist = 3.5
    local f8_local11 = 0
    local f8_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act07(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3015
    local successDist = 3.5
    local f9_local11 = 0
    local f9_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act08(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3016
    local successDist = 3.5
    local f10_local11 = 0
    local f10_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act09(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3017
    local successDist = 3.5
    local f11_local4 = 0
    local f11_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act10(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3018
    local successDist = 3.5
    local f12_local4 = 0
    local f12_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act11(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3029
    local animationId_2 = 3019
    local successDist = 50
    local f13_local5 = 0
    local f13_local6 = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 14878) == false then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_2, TARGET_ENE_0, successDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3020
    local successDist = 3.5
    local f14_local4 = 0
    local f14_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3029
    local animationId_2 = 3021
    local successDist = 50
    local f15_local5 = 0
    local f15_local6 = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 14878) == false then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_2, TARGET_ENE_0, successDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3022
    local successDist = 3.5
    local turnTime = 5
    local turnFaceAngle = 60
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3028
    local successDist = 3.5
    local f17_local4 = 0
    local f17_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3031
    local successDist = 3.5
    local f18_local4 = 0
    local f18_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act17(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3033
    local successDist = 3.5
    local f19_local4 = 0
    local f19_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act18(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3.5
    local runLife = 3.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3032
    local successDist = 3.5
    local f20_local11 = 0
    local f20_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act19(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local f21_local1 = 3004
    local successDist = 999
    local f21_local3 = 0
    local f21_local4 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, successDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act20(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3030
    local successDist = 3.5
    local f22_local4 = 0
    local f22_local5 = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 14850) then
        animationId = 3029
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 14878) then
        animationId = 3038
    end
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act21(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3036
    local successDist = 3.5
    local f23_local4 = 0
    local f23_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act22(ai, goal, paramTbl)
    local animationId = 3012
    local successDist = 999
    local f24_local2 = 0
    local f24_local3 = 60
    if ai:GetStringIndexedNumber("isCombo") == 0 then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0)
    end
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 14852) and ai:HasSpecialEffectId(TARGET_SELF, 18937) == false then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, successDist, 0, 0, f24_local3)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 14853) and ai:HasSpecialEffectId(TARGET_SELF, 18937) == false then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, successDist, 0, 0, f24_local3)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18936) == false then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, successDist, 0, 0, f24_local3)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 18936) and random < 60 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, successDist, 0, 0, f24_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act23(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 1.5
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3013
    local successDist = 3.5
    local f25_local11 = 0
    local f25_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act24(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3.5
    local runLife = 3.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3034
    local successDist = 3.5
    local f26_local11 = 0
    local f26_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act25(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3001
    local successDist = 3.5
    local f27_local4 = 0
    local f27_local5 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act26(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3.5
    local runLife = 3.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3004
    local successDist = 3.5
    local f28_local11 = 0
    local f28_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act27(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3.5
    local runLife = 3.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3037
    local successDist = 3.5
    local f29_local11 = 0
    local f29_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act28(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3.5
    local runLife = 3.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3038
    local successDist = 3.5
    local f30_local11 = 0
    local f30_local12 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act29(ai, goal, paramTbl)
    local animationId = 20001
    local successDist = 3.5
    local f31_local2 = 0
    local f31_local3 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act40(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act41(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act43(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act44(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act45(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachAround, 5, TARGET_ENE_0, 8, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBL, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act46(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachAround, 5, TARGET_ENE_0, 8, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBR, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_Act48(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GuardianDescendant451000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GuardianDescendant451000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random_3 = ai:GetRandam_Int(0, 10)
    local random_4 = ai:GetRandam_Int(0, 5)
    ai:SetStringIndexedNumber("isCombo", 1)
    local f43_local6 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 0 + ai:GetMapHitRadius(TARGET_SELF))
    if not f43_local6 then
        f43_local6 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 120, 4)
    end
    local f43_local7 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 1 + ai:GetMapHitRadius(TARGET_SELF))
    local f43_local8 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 1 + ai:GetMapHitRadius(TARGET_SELF))
    local f43_local9 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 11 + ai:GetMapHitRadius(TARGET_SELF))
    if f43_local9 then
        if not (ai:GetAttackPassedTime(3004) > 15) then
            f43_local9 = false
        else
            f43_local9 = true
        end
    end
    local f43_local10 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 5 + ai:GetMapHitRadius(TARGET_SELF))
    if not f43_local10 then
        f43_local10 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 120, -3 + ai:GetMapHitRadius(TARGET_SELF))
        if not f43_local10 then
            f43_local10 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 120, -4 + ai:GetMapHitRadius(TARGET_SELF))
        end
    end
    local f43_local11 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 120, 5 + ai:GetMapHitRadius(TARGET_SELF))
    local f43_local12 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 20 + ai:GetMapHitRadius(TARGET_SELF))
    if f43_local12 then
        if not (ai:GetAttackPassedTime(3013) > 20) then
            f43_local12 = false
        else
            f43_local12 = true
        end
    end
    local f43_local13 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 120, 7 + ai:GetMapHitRadius(TARGET_SELF))
    local f43_local14 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 6 + ai:GetMapHitRadius(TARGET_SELF))
    local f43_local15 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 120, -2 + ai:GetMapHitRadius(TARGET_SELF))
    if f43_local15 then
        if not (ai:GetAttackPassedTime(3031) > 10) then
            f43_local15 = false
        else
            f43_local15 = true
        end
    end
    local f43_local16 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 120, 9 + ai:GetMapHitRadius(TARGET_SELF))
    local f43_local17 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 120, -2 + ai:GetMapHitRadius(TARGET_SELF))
    if f43_local17 then
        if not (ai:GetAttackPassedTime(3033) > 10) then
            f43_local17 = false
        else
            f43_local17 = true
        end
    end
    local f43_local18 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 120, 9 + ai:GetMapHitRadius(TARGET_SELF))
    local f43_local19 = ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 15 + ai:GetMapHitRadius(TARGET_SELF))
    if f43_local19 then
        if ai:HasSpecialEffectId(TARGET_SELF, 18937) ~= false then
            f43_local19 = false
        else
            f43_local19 = true
        end
    end
    if f43_local10 == true then
        ai:SetNumber(15, 15)
    else
        ai:SetNumber(15, 0)
    end
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
    end
    if (ai:HasSpecialEffectId(TARGET_SELF, 18936) == false or ai:HasSpecialEffectId(TARGET_SELF, 14886) == true) and ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 14860) or ai:HasSpecialEffectId(TARGET_SELF, 14861) or ai:HasSpecialEffectId(TARGET_SELF, 14866) or ai:HasSpecialEffectId(TARGET_SELF, 14867) or ai:HasSpecialEffectId(TARGET_SELF, 18920) then
            if f43_local10 == true and ai:GetAttackPassedTime(3010) >= 10 and ai:HasSpecialEffectId(TARGET_SELF, 14886) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif f43_local10 == true and random > 60 and ai:GetAttackPassedTime(3010) >= 10 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif ai:GetHpRate(TARGET_SELF) < 0.6 and (ai:HasSpecialEffectId(TARGET_SELF, 18921) or ai:HasSpecialEffectId(TARGET_SELF, 18923)) then
            if f43_local10 == true and ai:GetAttackPassedTime(3010) >= 10 and ai:HasSpecialEffectId(TARGET_SELF, 14886) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif f43_local10 == true and random > 60 and ai:GetAttackPassedTime(3010) >= 10 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18935) == false and ai:GetHpRate(TARGET_SELF) < 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 14850) and ai:HasSpecialEffectId(TARGET_SELF, 14876) == false and ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and (ai:HasSpecialEffectId(TARGET_SELF, 14860) or ai:HasSpecialEffectId(TARGET_SELF, 14861) or ai:HasSpecialEffectId(TARGET_SELF, 14866) or ai:HasSpecialEffectId(TARGET_SELF, 14867) or ai:HasSpecialEffectId(TARGET_SELF, 18920) or ai:HasSpecialEffectId(TARGET_SELF, 18921) or ai:HasSpecialEffectId(TARGET_SELF, 18922) or ai:HasSpecialEffectId(TARGET_SELF, 18923)) and f43_local12 == true and random > 50 then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18935) == false and ai:GetHpRate(TARGET_SELF) < 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 14876) == false and ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 14860) or ai:HasSpecialEffectId(TARGET_SELF, 14861) or ai:HasSpecialEffectId(TARGET_SELF, 14867) or ai:HasSpecialEffectId(TARGET_SELF, 18920) then
            if f43_local11 == true and random > 40 then
                goal:ClearSubGoal()
                GuardianDescendant451000_Act22(ai, goal)
                return true
            end
        elseif ai:GetHpRate(TARGET_SELF) < 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 18921) and f43_local11 == true and random > 40 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14860) then
        if f43_local6 == true and ai:GetAttackPassedTime(3001) > 30 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local15 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local8 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14861) then
        if f43_local17 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local8 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local19 == true and ai:HasSpecialEffectId(TARGET_SELF, 14852) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local19 == true and ai:HasSpecialEffectId(TARGET_SELF, 14853) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local9 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14862) then
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14863) then
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14866) then
        if f43_local17 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local16 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14867) then
        if f43_local6 == true and ai:GetAttackPassedTime(3001) > 30 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local14 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local9 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 18920) then
        if f43_local15 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local14 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 18921) and ai:GetHpRate(TARGET_SELF) < 0.6 then
        if f43_local6 == true and ai:GetAttackPassedTime(3001) > 30 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local15 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 18923) and ai:GetHpRate(TARGET_SELF) < 0.6 then
        if f43_local7 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local15 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local14 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 18924) then
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14864) then
        if distanceEnemy < 13 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 14865) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 50) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 50) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_GuardianDescendant451000_AfterAttackAct, "GuardianDescendant451000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GuardianDescendant451000_AfterAttackAct, true)

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

