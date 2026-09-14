RegisterTableGoal(GOAL_Astile462010_Battle, "Astile462010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Astile462010_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(1, 0)
    ai:SetNumber(5, 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16720)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16721)
    local hasEffect16741 = ai:HasSpecialEffectId(TARGET_SELF, 16741)
    local hasEffect16746 = ai:HasSpecialEffectId(TARGET_SELF, 16746)
    local hasEffect16747 = ai:HasSpecialEffectId(TARGET_SELF, 16747)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    if hasEffect16746 == true then
        if distanceEnemy > 15 then
            probabilities[1] = 70
            probabilities[10] = 20
        else
            probabilities[4] = 30
            probabilities[5] = 30
            probabilities[6] = 30
            probabilities[10] = 10
        end
    elseif hasEffect16747 == true then
        if distanceEnemy > 15 then
            probabilities[1] = 70
            probabilities[10] = 20
        else
            probabilities[4] = 30
            probabilities[5] = 30
            probabilities[6] = 30
            probabilities[10] = 10
        end
    elseif distanceEnemy > 15 then
        probabilities[1] = 70
        probabilities[10] = 20
    else
        probabilities[1] = 20
        probabilities[4] = 30
        probabilities[5] = 30
        probabilities[6] = 30
        probabilities[10] = 10
    end
    if ai:GetNumber(1) == 0 then
        probabilities[10] = 0
    end
    if ai:GetNumber(5) == 1 then
        probabilities[10] = 1
    end
    probabilities[1] = SetCoolTime(ai, goal, 3015, 5 + ai:GetRandam_Int(0, 3), probabilities[1], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3010, 5 + ai:GetRandam_Int(3, 7), probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3011, 5 + ai:GetRandam_Int(3, 7), probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3012, 5 + ai:GetRandam_Int(3, 7), probabilities[6], 0)
    if distanceEnemy > -3 then
        probabilities[4] = 0
    end
    if distanceEnemy > -1.5 then
        probabilities[5] = 0
    end
    if distanceEnemy > -1.5 then
        probabilities[6] = 0
    end
    if distanceEnemy < -1 then
        probabilities[1] = 1
    end
    acts[1] = REGIST_FUNC(ai, goal, Astile462010_Act01)
    acts[4] = REGIST_FUNC(ai, goal, Astile462010_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Astile462010_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Astile462010_Act06)
    acts[10] = REGIST_FUNC(ai, goal, Astile462010_Act10)
    local actAfter = REGIST_FUNC(ai, goal, Astile462010_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Astile462010_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3015
    local successDist = 4.5
    local f3_local4 = 0
    local f3_local5 = 0
    ai:SetNumber(1, 1)
    ai:SetNumber(5, 0)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Astile462010_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3010
    local successDist = 4.5
    local f4_local4 = 2
    local f4_local5 = 120
    ai:SetNumber(1, 1)
    ai:SetNumber(5, 0)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Astile462010_Act05(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3011
    local successDist = 4.5
    local f5_local4 = 2
    local f5_local5 = 120
    ai:SetNumber(1, 1)
    ai:SetNumber(5, 0)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Astile462010_Act06(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3012
    local successDist = 4.5
    local f6_local4 = 2
    local f6_local5 = 120
    ai:SetNumber(1, 1)
    ai:SetNumber(5, 0)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Astile462010_Act10(ai, goal, paramTbl)
    ai:SetNumber(1, 1)
    if ai:GetNumber(5) == 0 then
        ai:SetNumber(5, 1)
    end
    goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Int(3, 5), TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Astile462010_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Astile462010_AfterAttackAct, 10)
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
    local number0 = ai:GetNumber(0)
    local number1 = ai:GetNumber(1)
    local random_3 = ai:GetRandam_Int(0, 10)
    local random_4 = ai:GetRandam_Int(0, 5)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        goal:ClearSubGoal()
        if distanceEnemy > 5 and random > 60 then
            goal:ClearSubGoal()
            Astile462010_Act01(ai, goal)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
        goal:ClearSubGoal()
        if distanceEnemy > 8 then
            if random > 60 then
                goal:ClearSubGoal()
                Astile462010_Act01(ai, goal)
                return true
            end
        else
            goal:ClearSubGoal()
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Astile462010_AfterAttackAct, "Astile462010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Astile462010_AfterAttackAct, true)

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

