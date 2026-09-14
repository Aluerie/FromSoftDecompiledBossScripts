RegisterTableGoal(GOAL_ProlificRenala203100_Battle, "ProlificRenala203100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203100_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:GetStringIndexedNumber("MoonPosibleFlg")
    ai:GetStringIndexedNumber("Warp_Cnt")
    ai:SetStringIndexedNumber("BackStepFlg", 0)
    ai:SetStringIndexedNumber("MoonPosibleFlg", 0)
    ai:SetStringIndexedNumber("Warp_Cnt", 0)
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
    ai:SetStringIndexedNumber("MoonPosibleFlg", 0)
    if ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 2) == true and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) == true and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) == true and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) == true and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_FL, 2) == true and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_FR, 2) == true and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_BL, 2) == true and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_BR, 2) == true then
        ai:SetStringIndexedNumber("MoonPosibleFlg", 1)
    end
    if ai:GetStringIndexedNumber("BackStepFlg") == 1 and ai:HasSpecialEffectId(TARGET_SELF, 14590) == false then
        ai:SetStringIndexedNumber("BackStepFlg", 0)
    end
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if ai:IsEventFlag(14003970) and not ai:IsEventFlag(14003971) and ai:HasSpecialEffectId(TARGET_SELF, 14590) then
        if ai:GetStringIndexedNumber("BackStepFlg") == 0 then
            probabilities[43] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            probabilities[47] = 100
        else
            probabilities[42] = 100
        end
    elseif ai:IsEventFlag(14003920) and not ai:IsEventFlag(14003921) and ai:HasSpecialEffectId(TARGET_SELF, 14590) then
        if ai:GetStringIndexedNumber("BackStepFlg") == 0 then
            probabilities[43] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            probabilities[47] = 100
        else
            probabilities[42] = 100
        end
    elseif ai:IsEventFlag(14003960) and not ai:IsEventFlag(14003961) and ai:HasSpecialEffectId(TARGET_SELF, 14590) then
        if ai:GetStringIndexedNumber("BackStepFlg") == 0 then
            probabilities[43] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            probabilities[47] = 100
        else
            probabilities[42] = 100
        end
    elseif ai:IsEventFlag(14003935) and not ai:IsEventFlag(14003936) and ai:HasSpecialEffectId(TARGET_SELF, 14590) then
        if ai:GetStringIndexedNumber("BackStepFlg") == 0 then
            probabilities[43] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            probabilities[47] = 100
        else
            probabilities[42] = 100
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if distanceEnemy > 20 then
            if ai:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                probabilities[1] = 30
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[16] = 10
            else
                probabilities[1] = 30
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[16] = 10
            end
            probabilities[26] = 80
            probabilities[28] = 80
            probabilities[25] = 30
            probabilities[27] = 30
        elseif distanceEnemy > 10 then
            if ai:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                probabilities[1] = 20
                probabilities[2] = 15
                probabilities[3] = 15
                probabilities[4] = 20
                probabilities[5] = 40
                probabilities[9] = 15
                probabilities[16] = 10
            else
                probabilities[1] = 25
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[9] = 15
                probabilities[16] = 10
            end
            probabilities[26] = 80
            probabilities[28] = 80
            probabilities[25] = 30
            probabilities[27] = 30
        elseif distanceEnemy > 5 then
            if ai:HasSpecialEffectId(TARGET_SELF, 5032) and ai:GetTimer(0) <= 0 and random < 80 then
                ai:SetTimer(0, 10)
                probabilities[12] = 70
                probabilities[15] = 30
            else
                if ai:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                    probabilities[5] = 50
                end
                probabilities[4] = 10
                probabilities[8] = 45
                probabilities[9] = 30
                probabilities[26] = 30
                probabilities[28] = 30
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) and random < 50 then
            probabilities[12] = 15
            probabilities[13] = 80
            probabilities[20] = 5
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) and random < 50 then
            probabilities[12] = 50
            probabilities[13] = 30
            probabilities[20] = 5
        else
            probabilities[12] = 20
            probabilities[13] = 50
            probabilities[20] = 30
            probabilities[25] = 160
            probabilities[26] = 200
            probabilities[27] = 200
            probabilities[28] = 200
            if ai:GetHpRate(TARGET_SELF) > 0.6 and ai:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                probabilities[5] = 100
            end
        end
    else
        probabilities[42] = 100
    end
    probabilities[21] = 0
    if ai:IsEventFlag(14003970) then
        probabilities[25] = 0
    end
    if ai:IsEventFlag(14003920) then
        probabilities[26] = 0
    end
    if ai:IsEventFlag(14003960) then
        probabilities[27] = 0
    end
    if ai:IsEventFlag(14003935) then
        probabilities[28] = 0
    end
    if ai:GetTimer(2) > 0 then
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[27] = 0
        probabilities[28] = 0
    end
    if ai:GetHpRate(TARGET_SELF) > 0.6 then
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[27] = 0
        probabilities[28] = 0
    end
    if ai:GetNumber(1) == 0 then
        probabilities[41] = 1000000
        ai:SetNumber(1, 1)
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 16, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 16, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 16, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3003, 15, probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3005, 40, probabilities[5], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3008, 10, probabilities[8], 10)
    probabilities[9] = SetCoolTime(ai, goal, 3009, 10, probabilities[9], 5)
    probabilities[12] = SetCoolTime(ai, goal, 3018, 15, probabilities[12], 5)
    probabilities[13] = SetCoolTime(ai, goal, 3013, 15, probabilities[13], 5)
    probabilities[15] = SetCoolTime(ai, goal, 3014, 15, probabilities[15], 5)
    probabilities[15] = SetCoolTime(ai, goal, 3019, 15, probabilities[15], 5)
    probabilities[16] = SetCoolTime(ai, goal, 3007, 20, probabilities[16], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3015, 10, probabilities[20], 0)
    probabilities[21] = SetCoolTime(ai, goal, 3016, 45, probabilities[21], 1)
    probabilities[25] = SetCoolTime(ai, goal, 3030, 90, probabilities[25], 0)
    probabilities[26] = SetCoolTime(ai, goal, 3031, 60, probabilities[26], 0)
    probabilities[27] = SetCoolTime(ai, goal, 3032, 70, probabilities[27], 0)
    probabilities[28] = SetCoolTime(ai, goal, 3033, 60, probabilities[28], 0)
    acts[1] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act01)
    acts[2] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act02)
    acts[3] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act03)
    acts[4] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act04)
    acts[5] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act05)
    acts[8] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act08)
    acts[9] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act09)
    acts[12] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act12)
    acts[13] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act13)
    acts[14] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act14)
    acts[15] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act15)
    acts[16] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act16)
    acts[20] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act20)
    acts[21] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act21)
    acts[22] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act22)
    acts[25] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act25)
    acts[26] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act26)
    acts[27] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act27)
    acts[28] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act28)
    acts[30] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act30)
    acts[31] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act31)
    acts[40] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act40)
    acts[41] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act41)
    acts[42] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act42)
    acts[43] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act43)
    acts[44] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act44)
    acts[45] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act45)
    acts[46] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act46)
    acts[47] = REGIST_FUNC(ai, goal, ProlificRenala203100_Act47)
    local actAfter = REGIST_FUNC(ai, goal, ProlificRenala203100_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function ProlificRenala203100_Act01(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act02(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act03(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act04(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local goalLife = 4
    local animationId = 3003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act05(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act08(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3008
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act09(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3009
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act12(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local goalLife = 4
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act13(ai, goal, paramTbl)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local goalLife = 4
    local animationId = 3013
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act14(ai, goal, paramTbl)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local goalLife = 4
    local animationId = 3010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act15(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, -1, 999) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local goalLife = 4
        local animationId = 3014
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local goalLife = 4
        local animationId = 3019
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function ProlificRenala203100_Act16(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 15
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act20(ai, goal, paramTbl)
    if ai:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_B, 4) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local goalLife = 10
        local animationId = 3015
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        local goalLife = 10
        local animationId = 3016
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function ProlificRenala203100_Act21(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local goalLife = 10
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act22(ai, goal, paramTbl)
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

function ProlificRenala203100_Act25(ai, goal, paramTbl)
    ai:SetTimer(2, 15)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 20
    local animationId = 3030
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act26(ai, goal, paramTbl)
    ai:SetTimer(2, 15)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 20
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act27(ai, goal, paramTbl)
    ai:SetTimer(2, 15)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 14586)
    local goalLife = 20
    local animationId = 3032
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act28(ai, goal, paramTbl)
    ai:SetTimer(2, 15)
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

function ProlificRenala203100_Act30(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act31(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 4
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act40(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 2
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act41(ai, goal, paramTbl)
    local goalLife = 3
    local stopDist = 20
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act43(ai, goal, paramTbl)
    ai:SetStringIndexedNumber("BackStepFlg", 1)
    local goalLife = 20
    local animationId = 6001
    local target = TARGET_ENE_0
    local turnTime = 0
    local dirSpaceCheck = AI_DIR_TYPE_R
    local distSpaceCheck = 0
    goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, target, turnTime, dirSpaceCheck, distSpaceCheck)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act44(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(0, 1)
    local goalLife = 3.5
    local moveTarget = TARGET_ENE_0
    local right = random
    local angleThreshold = 15
    local isWalk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local f28_local8 = true
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act45(ai, goal, paramTbl)
    local goalLife = 6
    local stopDist = 15
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_Act46(ai, goal, paramTbl)
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

function ProlificRenala203100_Act47(ai, goal, paramTbl)
    if ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 1.5) and ai:GetDist(TARGET_ENE_0) <= 8 then
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
    else
        local random = ai:GetRandam_Int(0, 1)
        local goalLife = 3.5
        local moveTarget = TARGET_ENE_0
        local right = random
        local angleThreshold = 100
        local isWalk = true
        local guardStateId = -1
        local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
        local f31_local8 = true
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203100_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_ProlificRenala203100_AfterAttackAct, 10)
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
    local f35_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5034) == false and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 300, -1, 999) and ai:GetTimer(1) <= 0 and random < 30 and distanceEnemy < 5 then
        ai:SetTimer(1, 10)
        goal:ClearSubGoal()
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 50) and distanceEnemy > 15 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 1)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 20) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 999) and ai:GetRemainingAttackCoolTime(3007) <= 0 and distanceEnemy > 15 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 14586) then
            local distanceFromTarget = 7
            local directionFromTarget = 0
            local lineWidth = 1.5
            goal:ClearSubGoal()
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_F", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 70 + lineWidth, lineWidth, 0))
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_FL", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_FL, 70 + lineWidth, lineWidth, 0))
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_FR", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_FR, 70 + lineWidth, lineWidth, 0))
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_L", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 70 + lineWidth, lineWidth, 0))
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_R", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 70 + lineWidth, lineWidth, 0))
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_B", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 70 + lineWidth, lineWidth, 0))
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_BL", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_BL, 70 + lineWidth, lineWidth, 0))
            ai:SetStringIndexedNumber("ExistMeshOnLine_SELF_BR", ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_BR, 70 + lineWidth, lineWidth, 0))
            if ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_BL") >= 8 or ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_BR") >= 8 then
                if ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_BL") < 8 then
                    directionFromTarget = AI_DIR_TYPE_BR
                elseif ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_BR") < 8 then
                    directionFromTarget = AI_DIR_TYPE_BL
                elseif random > 50 then
                    directionFromTarget = AI_DIR_TYPE_BL
                else
                    directionFromTarget = AI_DIR_TYPE_BR
                end
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_BL") >= 8 then
                directionFromTarget = AI_DIR_TYPE_B
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_L") >= 8 or ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_R") >= 8 then
                if ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_L") < 8 then
                    directionFromTarget = AI_DIR_TYPE_R
                elseif ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_R") < 8 then
                    directionFromTarget = AI_DIR_TYPE_L
                elseif random > 50 then
                    directionFromTarget = AI_DIR_TYPE_L
                else
                    directionFromTarget = AI_DIR_TYPE_R
                end
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_FL") >= 8 or ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_FR") >= 8 then
                if ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_FL") < 8 then
                    directionFromTarget = AI_DIR_TYPE_FR
                elseif ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_FR") < 8 then
                    directionFromTarget = AI_DIR_TYPE_FL
                elseif random > 50 then
                    directionFromTarget = AI_DIR_TYPE_FL
                else
                    directionFromTarget = AI_DIR_TYPE_FR
                end
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_SELF_F") < 8 then
                directionFromTarget = AI_DIR_TYPE_F
            else
                directionFromTarget = AI_DIR_TYPE_F
                distanceFromTarget = 0
            end
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, TARGET_SELF, directionFromTarget, distanceFromTarget, TARGET_ENE_0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_ProlificRenala203100_AfterAttackAct, "ProlificRenala203100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203100_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

