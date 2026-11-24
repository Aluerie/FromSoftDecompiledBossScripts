RegisterTableGoal(GOAL_BlackSwordMariques211010_Battle, "BlackSwordMariques211010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211010_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetStringIndexedNumber("WallGrapple_Flg", 0)
    ai:SetStringIndexedNumber("WallDoesExist", 0)
    ai:SetStringIndexedNumber("Disenchant_Cnt", 0)
    ai:SetStringIndexedNumber("Wait_Cnt", 0)
    ai:SetStringIndexedNumber("isCombo", 0)
    ai:SetNumber(0, 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    ai:SetStringIndexedNumber("isCombo", 0)
    if ai:IsEventFlag(13002822) == true or ai:IsEventFlag(13002823) == true or ai:IsEventFlag(13002824) == true then
        ai:SetStringIndexedNumber("WallGrapple_Flg", 1)
    else
        ai:SetStringIndexedNumber("WallGrapple_Flg", 0)
    end
    if ai:GetStringIndexedNumber("Disenchant_Cnt") > 0 and ai:HasSpecialEffectId(TARGET_SELF, 15253) then
        ai:SetStringIndexedNumber("Disenchant_Cnt", 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 15254) then
        ai:SetStringIndexedNumber("Disenchant_Cnt", ai:GetStringIndexedNumber("Disenchant_Cnt") + 1)
    end
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15255)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15256)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15258)
    if ai:HasSpecialEffectId(TARGET_SELF, 5034) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15299) then
            probabilities[22] = 50
        else
            probabilities[21] = 50
            probabilities[22] = 50
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 15270) and ai:HasSpecialEffectId(TARGET_SELF, 5034) == false then
        probabilities[26] = 10000
    elseif ai:HasSpecialEffectId(TARGET_SELF, 15299) and ai:GetStringIndexedNumber("WallGrapple_Flg") == 1 then
        probabilities[23] = 10000
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(0) <= 0 and ai:GetStringIndexedNumber("WallGrapple_Flg") == 1 then
        probabilities[23] = 30
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if distanceEnemy > 15 then
            if ai:HasSpecialEffectId(TARGET_SELF, 15252) then
                probabilities[1] = 30
                probabilities[18] = 30
                probabilities[5] = 30
                if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[13] = 90
                end
            else
                probabilities[1] = 30
                probabilities[18] = 30
                probabilities[5] = 30
                if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[13] = 30
                end
            end
        elseif distanceEnemy > 6 then
            if ai:HasSpecialEffectId(TARGET_SELF, 15252) or ai:HasSpecialEffectId(TARGET_SELF, 15252) then
                probabilities[1] = 20
                probabilities[18] = 20
                probabilities[14] = 25
                if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 40
                end
            else
                probabilities[1] = 25
                probabilities[18] = 25
                probabilities[5] = 35
                probabilities[14] = 30
                if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 25
                end
            end
        elseif distanceEnemy > 4 then
            probabilities[1] = 30
            probabilities[18] = 30
            probabilities[5] = 25
            probabilities[14] = 20
            if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                probabilities[7] = 15
                probabilities[15] = 10
            end
        elseif distanceEnemy > 1.5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                probabilities[4] = 0
                probabilities[5] = 20
                probabilities[6] = 0
                probabilities[14] = 30
                probabilities[20] = 20
                if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 10
                    probabilities[7] = 20
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                probabilities[4] = 20
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[14] = 30
                probabilities[17] = 30
                probabilities[20] = 20
                if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                    probabilities[15] = 20
                    probabilities[7] = 10
                end
            end
        elseif distanceEnemy > -2 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) then
                    probabilities[4] = 0
                    probabilities[5] = 10
                    probabilities[6] = 50
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[7] = 20
                    end
                else
                    probabilities[4] = 0
                    probabilities[5] = 45
                    probabilities[6] = 0
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[7] = 35
                    end
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
                    probabilities[4] = 10
                    probabilities[5] = 0
                    probabilities[6] = 50
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[15] = 20
                    end
                else
                    probabilities[4] = 20
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[17] = 50
                    probabilities[19] = 25
                    probabilities[20] = 20
                    if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                        probabilities[15] = 35
                    end
                end
            end
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            probabilities[4] = 0
            probabilities[5] = 10
            probabilities[6] = 30
            probabilities[17] = 30
            probabilities[19] = 25
            probabilities[20] = 30
            if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                probabilities[7] = 25
                probabilities[15] = 20
            end
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            probabilities[4] = 10
            probabilities[5] = 0
            probabilities[6] = 35
            probabilities[17] = 50
            probabilities[19] = 25
            probabilities[20] = 35
            if ai:GetHpRate(TARGET_SELF) <= 0.7 then
                probabilities[15] = 30
            end
        end
    elseif distanceEnemy < 0 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 80
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            probabilities[4] = 20
            probabilities[5] = 0
            probabilities[6] = 30
            probabilities[17] = 50
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[42] = 100
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        probabilities[4] = 100
        probabilities[5] = 0
        probabilities[6] = 0
    end
    if ai:GetNumber(0) == 0 then
        ai:SetNumber(0, 1)
        probabilities[1] = 100000
    end
    if ai:GetHpRate(TARGET_SELF) <= 0.7 and ai:GetTimer(2) <= 0 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and distanceEnemy <= 5 then
        probabilities[25] = 60
    end
    probabilities[20] = 0
    probabilities[1] = SetCoolTime(ai, goal, 3016, 30, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3021, 20, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3022, 15, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3026, 20, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3027, 15, probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3028, 15, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3031, 15, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3032, 60, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3033, 45, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3034, 60, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3029, 30, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3023, 15, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3035, 20, probabilities[13], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3030, 15, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3025, 10, probabilities[14], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3020, 10, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3030, 20, probabilities[15], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3035, 15, probabilities[15], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3003, 16, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3001, 15, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3000, 15, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3036, 60, probabilities[20], 1)
    probabilities[44] = SetCoolTime(ai, goal, 2002, 30, probabilities[44], 0)
    probabilities[44] = SetCoolTime(ai, goal, 2003, 30, probabilities[44], 0)
    acts[1] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act01)
    acts[2] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act02)
    acts[3] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act03)
    acts[4] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act04)
    acts[5] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act05)
    acts[6] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act06)
    acts[7] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act07)
    acts[8] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act08)
    acts[9] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act09)
    acts[10] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act10)
    acts[11] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act11)
    acts[12] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act12)
    acts[13] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act13)
    acts[14] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act14)
    acts[15] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act15)
    acts[16] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act16)
    acts[17] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act17)
    acts[18] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act18)
    acts[19] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act19)
    acts[20] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act20)
    acts[21] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act21)
    acts[22] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act22)
    acts[23] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act23)
    acts[25] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act25)
    acts[26] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act26)
    acts[40] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act40)
    acts[41] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act41)
    acts[42] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act42)
    acts[43] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act43)
    acts[44] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act44)
    acts[45] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act45)
    acts[46] = REGIST_FUNC(ai, goal, BlackSwordMariques211010_Act46)
    local actAfter = REGIST_FUNC(ai, goal, BlackSwordMariques211010_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function BlackSwordMariques211010_Act01(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act02(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3021
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act03(ai, goal, paramTbl)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 20
    local animationId = 3022
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act04(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act05(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local stopDist = 15
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3027
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act06(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3028
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act07(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act08(ai, goal, paramTbl)
    local stopDist = 25
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3032
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act09(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act10(ai, goal, paramTbl)
    local stopDist = 11
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3034
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act11(ai, goal, paramTbl)
    local stopDist = 8.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3029
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act12(ai, goal, paramTbl)
    local stopDist = 17
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3023
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act13(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15256)
    local goalLife = 10
    local animationId = 3035
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act14(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:SetTimer(1, 20)
    local goalLife = 10
    local animationId = 3025
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act15(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15255)
    local goalLife = 10
    local animationId = 3030
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act16(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 20
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act17(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 20
    local animationId = 3003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act18(ai, goal, paramTbl)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act19(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15258)
    local goalLife = 20
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act20(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 15
    local animationId = 3036
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_SELF, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act21(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        ai:SetTimer(0, 15)
    end
    ai:SetStringIndexedNumber("Wait_Cnt", 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3037
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act22(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        ai:SetTimer(0, 20)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3038
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act23(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        ai:SetTimer(0, 5)
    end
    local goalLife = 15
    local animationId = 3036
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    if ai:GetStringIndexedNumber("isCombo") == 1 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, POINT_EVENT, successDist, upAngleThreshold, downAngleThreshold, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, POINT_EVENT, successDist, upAngleThreshold, downAngleThreshold, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act25(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    ai:SetTimer(2, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act26(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20006
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act40(ai, goal, paramTbl)
    local goalLife = 3
    local stopDist = 14.8
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act41(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 8
    local walk = false
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(55, 60), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act43(ai, goal, paramTbl)
    local goalLife = 1
    local frontPriority = 0
    local backPriority = 100
    local leftPriority = 0
    local rightPriority = 0
    local target = TARGET_ENE_0
    local distSpaceCheck = 1
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act44(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(0, 1)
    local goalLife = 3.5
    local moveTarget = TARGET_ENE_0
    local right = random
    local angleThreshold = 100
    local isWalk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local f32_local8 = true
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act45(ai, goal, paramTbl)
    local goalLife = 6
    local stopDist = 15
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_Act46(ai, goal, paramTbl)
    local goalLife = 3
    local moveTarget = TARGET_ENE_0
    local stopDist = 8
    local turnTarget = TARGET_ENE_0
    local walk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local guardSuccessOnEnd = false
    local distSpaceCheck = 1
    goal:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, goalLife, moveTarget, stopDist, turnTarget, walk, guardStateId, onGuardResult, guardSuccessOnEnd, distSpaceCheck)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211010_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_BlackSwordMariques211010_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f38_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f38_local1 = 0
    local f38_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsEventFlag(13002822) == true or ai:IsEventFlag(13002823) == true or ai:IsEventFlag(13002824) == true then
        ai:SetStringIndexedNumber("WallGrapple_Flg", 1)
    else
        ai:SetStringIndexedNumber("WallGrapple_Flg", 0)
    end
    ai:SetStringIndexedNumber("isCombo", 1)
    if ai:IsInterupt(INTERUPT_Damaged) then
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 15257) and ai:GetTimer(4) <= 0 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        goal:ClearSubGoal()
        if distanceEnemy > 15 then
            Approach_Act_Flex(ai, goal, 13, 0, 999, 100, 0, 5, 5)
        end
        ai:SetTimer(4, 5)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(0) <= 0 and ai:GetStringIndexedNumber("WallGrapple_Flg") == 1 and (ai:HasSpecialEffectId(TARGET_SELF, 15258) or ai:HasSpecialEffectId(TARGET_SELF, 5027) or ai:HasSpecialEffectId(TARGET_SELF, 5028) or ai:HasSpecialEffectId(TARGET_SELF, 5032)) then
            goal:ClearSubGoal()
            BlackSwordMariques211010_Act23(ai, goal)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetRemainingAttackCoolTime(3003) <= 0 and random < 45 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 2.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1 and ai:GetTimer(1) <= 0 then
                ai:SetTimer(1, 30)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif distanceEnemy < 1 then
                goal:ClearSubGoal()
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5029) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_RF, 240, -1, 9 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) and ai:GetTimer(3) <= 0 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_RF, 240, -1, 999 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 3 then
                ai:SetTimer(3, 15)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > -0.5 then
                if random < 10 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            if ai:GetHpRate(TARGET_SELF) <= 0.7 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 50 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 5 then
                ai:SetTimer(2, 30)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 11 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 1 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(2) <= 0 and ai:GetHpRate(TARGET_SELF) <= 0.7 then
                ai:SetTimer(2, 30)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 40 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1 and ai:GetTimer(1) <= 0 then
                ai:SetTimer(1, 20)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15255) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 13.3 + ai:GetMapHitRadius(TARGET_SELF)) and random < 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15256) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 13.3 + ai:GetMapHitRadius(TARGET_SELF)) and random < 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15258) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random > 70 then
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_BlackSwordMariques211010_AfterAttackAct, "BlackSwordMariques211010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211010_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

