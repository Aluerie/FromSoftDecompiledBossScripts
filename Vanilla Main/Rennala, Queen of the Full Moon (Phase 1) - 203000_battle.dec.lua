RegisterTableGoal(GOAL_ProlificRenala203000_Battle, "ProlificRenala203000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203000_Battle, true)

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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if ai:HasSpecialEffectId(TARGET_SELF, 14357) and ai:HasSpecialEffectId(TARGET_SELF, 14358) == false then
        probabilities[3] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 14358) then
        if ai:HasSpecialEffectId(TARGET_SELF, 14357) then
            probabilities[1] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 14356) then
            probabilities[4] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 14359) then
        if ai:GetTimer(0) <= 0 then
            probabilities[2] = 100
        else
            probabilities[20] = 100
        end
    else
        probabilities[20] = 100
    end
    acts[1] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act04)
    acts[20] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act20)
    acts[30] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act30)
    acts[40] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, ProlificRenala203000_Act47)
    local actAfter = REGIST_FUNC(ai, goal, ProlificRenala203000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function ProlificRenala203000_Act01(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act02(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local goalLife = 40
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act03(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 12
    local animationId = 20001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, TARGET_ENE_0, successDist, upAngleThreshold, downAngleThreshold, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act04(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local goalLife = 12
    local animationId = 3011
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act20(ai, goal, paramTbl)
    local f7_local0 = ai:GetMovePointNumber()
    local walk = true
    if f7_local0 >= 0 then
        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, 1.5, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, walk)
    else
        goal:AddSubGoal(GOAL_COMMON_Stay, 10, 0, TARGET_ENE_0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act30(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local goalLife = 40
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act40(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 2
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act41(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 8
    local walk = false
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act43(ai, goal, paramTbl)
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

function ProlificRenala203000_Act44(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(0, 1)
    local goalLife = 2
    local moveTarget = TARGET_ENE_0
    local right = random
    local angleThreshold = 15
    local isWalk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local f13_local8 = true
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act45(ai, goal, paramTbl)
    local goalLife = 6
    local stopDist = 15
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_Act46(ai, goal, paramTbl)
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

function ProlificRenala203000_Act47(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, 10, 0.2, 20, true, -1, 3, 4, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ProlificRenala203000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_ProlificRenala203000_AfterAttackAct, 10)
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
    local f20_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 0
    local f20_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsInterupt(INTERUPT_Damaged) then
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            ai:SetTimer(0, 40)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            goal:ClearSubGoal()
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_ProlificRenala203000_AfterAttackAct, "ProlificRenala203000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203000_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

