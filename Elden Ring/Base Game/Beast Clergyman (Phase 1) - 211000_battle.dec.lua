RegisterTableGoal(GOAL_BlackSwordMariques211000_Battle, "BlackSwordMariques211000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211000_Battle, true)

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
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if distanceEnemy > 10 then
            probabilities[1] = 20
            probabilities[3] = 25
            probabilities[4] = 20
            probabilities[8] = 35
            probabilities[41] = 0
            probabilities[44] = 0
        elseif distanceEnemy > 7 then
            probabilities[1] = 30
            probabilities[4] = 15
            probabilities[2] = 0
            probabilities[5] = 30
            probabilities[6] = 25
        elseif distanceEnemy > 2.5 then
            probabilities[2] = 20
            probabilities[5] = 40
            probabilities[6] = 30
            probabilities[10] = 10
            probabilities[12] = 20
        else
            probabilities[1] = 0
            probabilities[2] = 30
            probabilities[4] = 20
            probabilities[5] = 0
            probabilities[7] = 15
            probabilities[10] = 10
            probabilities[11] = 25
            probabilities[12] = 30
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[43] = 0
        end
    elseif distanceEnemy < 2.5 then
        probabilities[2] = 20
        probabilities[9] = 80
        probabilities[12] = 20
    elseif distanceEnemy < 20 then
        probabilities[2] = 100
    else
        probabilities[42] = 100
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 18699) then
        probabilities[10] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 20, probabilities[1], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 20, probabilities[2], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 20, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3003, 20, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3005, 25, probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3007, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3010, 10, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3011, 20, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3012, 10, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3014, 20, probabilities[9], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3015, 40, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3038, 15, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3017, 15, probabilities[12], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3018, 15, probabilities[12], 1)
    acts[1] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act12)
    acts[40] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, BlackSwordMariques211000_Act46)
    local actAfter = REGIST_FUNC(ai, goal, BlackSwordMariques211000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function BlackSwordMariques211000_Act01(ai, goal, paramTbl)
    local stopDist = 15
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act02(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local goalLife = 10
        local animationId = 3001
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local goalLife = 10
        local animationId = 3002
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function BlackSwordMariques211000_Act03(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local goalLife = 10
    local animationId = 3003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act04(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local stopDist = 30
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act05(ai, goal, paramTbl)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local goalLife = 10
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act06(ai, goal, paramTbl)
    local stopDist = 9
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act07(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3011
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act08(ai, goal, paramTbl)
    local stopDist = 12.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act09(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3014
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act10(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 10
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act11(ai, goal, paramTbl)
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

function BlackSwordMariques211000_Act12(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local goalLife = 10
        local animationId = 3017
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local goalLife = 10
        local animationId = 3018
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function BlackSwordMariques211000_Act40(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 2
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act41(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 8
    local walk = false
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act43(ai, goal, paramTbl)
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

function BlackSwordMariques211000_Act44(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(0, 1)
    local goalLife = 2
    local moveTarget = TARGET_ENE_0
    local right = random
    local angleThreshold = 15
    local isWalk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local f19_local8 = true
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act45(ai, goal, paramTbl)
    local goalLife = 6
    local stopDist = 15
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSwordMariques211000_Act46(ai, goal, paramTbl)
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

function BlackSwordMariques211000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_BlackSwordMariques211000_AfterAttackAct, 10)
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
    local f25_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = 0
    local f25_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    if ai:IsInterupt(INTERUPT_Damaged) then
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 10 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy < 1.5 then
                if random < 60 and ai:GetTimer(1) <= 0 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    ai:SetTimer(1, 15)
                elseif random_2 < 70 and ai:GetAttackPassedTime(3005) > 20 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 3.6 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 5.5 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1.5 then
                if random > 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy < 1.5 then
                if random < 60 and ai:GetTimer(1) <= 0 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    ai:SetTimer(1, 15)
                elseif random_2 < 70 and ai:GetAttackPassedTime(3005) > 20 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5029) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 8.2 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 2.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy < 3.5 then
                if random < 60 and ai:GetTimer(1) <= 0 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    ai:SetTimer(1, 15)
                elseif random_2 < 70 and ai:GetAttackPassedTime(3005) > 20 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 50 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 9 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 5.4 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy < 1.5 then
                if random < 60 and ai:GetTimer(1) <= 0 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    ai:SetTimer(1, 15)
                elseif random_2 < 70 and ai:GetAttackPassedTime(3005) > 20 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 1.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy < 1.5 then
                if random < 60 and ai:GetTimer(1) <= 0 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    ai:SetTimer(1, 15)
                elseif random_2 < 70 and ai:GetAttackPassedTime(3005) > 20 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_BlackSwordMariques211000_AfterAttackAct, "BlackSwordMariques211000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211000_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

