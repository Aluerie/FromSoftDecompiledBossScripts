RegisterTableGoal(GOAL_OldGeneral_305000_Battle, "OldGeneral_305000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldGeneral_305000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetTimer(10, 20)
end

Goal.Activate = function (self, ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local hasEffect11100 = ai:HasSpecialEffectId(TARGET_SELF, 11100)
    local hasEffect11130 = ai:HasSpecialEffectId(TARGET_SELF, 11130)
    local hasEffect11131 = ai:HasSpecialEffectId(TARGET_SELF, 11131)
    local hasEffect11122 = ai:HasSpecialEffectId(TARGET_SELF, 11122)
    local hasEffect11123 = ai:HasSpecialEffectId(TARGET_SELF, 11123)
    local hasEffect11135 = ai:HasSpecialEffectId(TARGET_SELF, 11135)
    ai:SetStringIndexedNumber("c3050_DashRate", 0)
    if hasEffect11100 == true then
        ai:SetStringIndexedNumber("c3050_DashRate", 100)
    end
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 11160)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 11161)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    local eventRequest_2 = ai:GetEventRequest()
    if hasEffect11122 == true then
        if ai:GetHpRate(TARGET_SELF) < 0.6 and hasEffect11100 == false then
            probabilities[31] = 100
        elseif hasEffect11122 == true and hasEffect11135 == true and hasEffect11100 == false then
            probabilities[31] = 100
        elseif hasEffect11100 == false then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
                probabilities[21] = 1
                probabilities[15] = 10
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
                    probabilities[5] = 90
                end
            elseif distanceEnemy >= 15 then
                probabilities[16] = 15
                probabilities[17] = 15
                probabilities[26] = 10
            elseif distanceEnemy >= 8 then
                probabilities[3] = 0
                probabilities[13] = 15
                probabilities[16] = 15
                probabilities[17] = 15
                probabilities[24] = 15
                probabilities[26] = 10
            elseif distanceEnemy >= 5 then
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[3] = 5
                probabilities[13] = 15
                probabilities[16] = 15
                probabilities[17] = 15
                probabilities[26] = 30
            else
                probabilities[1] = 10
                probabilities[3] = 10
                probabilities[13] = 10
                probabilities[26] = 30
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
            probabilities[21] = 1
            probabilities[15] = 10
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
                probabilities[5] = 90
            else
                probabilities[6] = 90
            end
        elseif ai:IsTargetGuard(TARGET_ENE_0) == true and random <= 70 then
            if 12.2 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
                probabilities[7] = 100
            elseif 5.2 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
                probabilities[11] = 100
            else
                probabilities[8] = 100
            end
        elseif distanceEnemy >= 15 then
            probabilities[4] = 10
            probabilities[7] = 40
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 40
            probabilities[13] = 0
            probabilities[22] = 10
        elseif distanceEnemy >= 8 then
            probabilities[1] = 5
            probabilities[2] = 10
            probabilities[3] = 0
            probabilities[4] = 10
            probabilities[7] = 40
            probabilities[11] = 20
            probabilities[13] = 0
            probabilities[22] = 10
            probabilities[25] = 20
        elseif distanceEnemy >= 5 then
            probabilities[1] = 15
            probabilities[2] = 15
            probabilities[3] = 5
            probabilities[7] = 20
            probabilities[9] = 10
            probabilities[10] = 15
            probabilities[11] = 10
            probabilities[25] = 20
        else
            probabilities[1] = 25
            probabilities[3] = 10
            probabilities[7] = 10
            probabilities[9] = 20
            probabilities[10] = 20
            probabilities[11] = 10
            probabilities[25] = 20
        end
    elseif hasEffect11123 == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 11130) == false and ai:HasSpecialEffectId(TARGET_SELF, 11131) == false then
            probabilities[18] = 1000
            probabilities[26] = 1
        elseif ai:HasSpecialEffectId(TARGET_SELF, 11130) == true and ai:HasSpecialEffectId(TARGET_SELF, 11131) == false and ai:GetHpRate(TARGET_SELF) <= 0.4 then
            probabilities[18] = 1000
            probabilities[26] = 1
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
                probabilities[5] = 90
            elseif ai:IsTargetGuard(TARGET_ENE_0) == true and random <= 70 then
                if 12.2 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
                    probabilities[7] = 100
                else
                    probabilities[8] = 100
                end
            elseif distanceEnemy >= 15 then
                probabilities[4] = 10
                probabilities[7] = 40
                probabilities[8] = 0
                probabilities[13] = 0
                probabilities[22] = 10
            elseif distanceEnemy >= 8 then
                probabilities[1] = 5
                probabilities[2] = 10
                probabilities[3] = 0
                probabilities[4] = 10
                probabilities[7] = 40
                probabilities[13] = 0
                probabilities[22] = 10
                probabilities[25] = 20
            elseif distanceEnemy >= 5 then
                probabilities[1] = 15
                probabilities[2] = 15
                probabilities[3] = 5
                probabilities[7] = 20
                probabilities[25] = 20
            else
                probabilities[1] = 25
                probabilities[3] = 10
                probabilities[7] = 10
                probabilities[25] = 20
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
            probabilities[21] = 1
            probabilities[15] = 10
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF)) then
                probabilities[5] = 90
            end
        elseif distanceEnemy >= 15 then
            probabilities[16] = 15
            probabilities[17] = 15
            probabilities[26] = 10
        elseif distanceEnemy >= 8 then
            probabilities[3] = 0
            probabilities[13] = 15
            probabilities[16] = 15
            probabilities[17] = 15
            probabilities[24] = 15
            probabilities[26] = 10
        elseif distanceEnemy >= 5 then
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 5
            probabilities[13] = 15
            probabilities[16] = 15
            probabilities[17] = 15
        else
            probabilities[1] = 15
            probabilities[3] = 10
            probabilities[13] = 15
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3005, 20, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3006, 20, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3008, 8, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3009, 8, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3010, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3012, 5, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3013, 10, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3014, 10, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3015, 10, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3024, 30, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3025, 60, probabilities[13], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3023, 7, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3030, 50, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3031, 50, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 20010, 10, probabilities[18], 0)
    probabilities[18] = SetCoolTime(ai, goal, 20011, 10, probabilities[18], 0)
    probabilities[25] = SetCoolTime(ai, goal, 6002, 25, probabilities[25], 0)
    probabilities[25] = SetCoolTime(ai, goal, 6003, 25, probabilities[25], 0)
    if hasEffect11100 == false then
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[13] = 0
        probabilities[25] = 0
    end
    if ai:GetTimer(10) > 1 then
        probabilities[15] = 0
        probabilities[16] = 0
    end
    acts[1] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act13)
    acts[15] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act18)
    acts[21] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act26)
    acts[31] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act31)
    acts[45] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, OldGeneral_305000_Act47)
    local actAfter = REGIST_FUNC(ai, goal, OldGeneral_305000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function OldGeneral_305000_Act01(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect11100 = ai:HasSpecialEffectId(TARGET_SELF, 11100)
    local stopDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local animationId_2 = 3033
    local f3_local11 = 3034
    local f3_local12 = 3007
    local successDist = 5.6 - ai:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local14 = 5.5 - ai:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local15 = 4.5 - ai:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local16 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, stopDist + 2, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, animationId_2, TARGET_ENE_0, successDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act02(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local animationId_2 = 3003
    local f4_local10 = 3004
    local successDist = 5.6 - ai:GetMapHitRadius(TARGET_SELF)
    local successDist_2 = 5.2 - ai:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, animationId_2, TARGET_ENE_0, successDist_2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act03(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 5.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 5.5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 5.5 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3005
    local animationId_2 = 3007
    local f5_local10 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, stopDist + 1.5, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, animationId_2, TARGET_ENE_0, f5_local10 + 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act04(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3006
    local animationId_2 = 3007
    local f6_local10 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, stopDist + 1.5, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, animationId_2, TARGET_ENE_0, f6_local10 + 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act05(ai, goal, paramTbl)
    local stopDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3008
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act06(ai, goal, paramTbl)
    local stopDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3009
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act07(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 15.2 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 15.2 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 15.2 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local f9_local8 = 3010
    local animationId = 3039
    local animationId_2 = 3011
    local f9_local11 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local12 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 0
    local f9_local14 = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, animationId, TARGET_ENE_0, DIST_None)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, animationId_2, TARGET_ENE_0, f9_local11 + 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act08(ai, goal, paramTbl)
    local stopDist = 5.2 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 5.2 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 5.2 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act09(ai, goal, paramTbl)
    local stopDist = 6.2 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 6.2 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 6.2 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3013
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act10(ai, goal, paramTbl)
    local stopDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3014
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act11(ai, goal, paramTbl)
    local stopDist = 12.2 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 12.2 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 12.2 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act13(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect11100 = ai:HasSpecialEffectId(TARGET_SELF, 11100)
    local f15_local2 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local4 = 30 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local f15_local5 = ai:GetStringIndexedNumber("c3050_DashRate")
    local f15_local6 = 0
    local f15_local7 = 4
    local f15_local8 = 8
    local animationId = 3025
    local animationId_2 = 3026
    local animationId_3 = 3027
    local f15_local12 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local13 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local14 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local15 = 0
    local f15_local16 = 180
    ai:SetTimer(3, 30)
    goal:ClearSubGoal()
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, DIST_None)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_2, TARGET_ENE_0, DIST_None)
    if hasEffect11100 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_3, TARGET_ENE_0, DIST_None)
    end
    ai:SetTimer(FINISHER_TIME_SLOT, ai:GetRandam_Int(30, 60))
    if ai:IsFinishTimer(1) == true and ai:GetStringIndexedNumber("c3050flag_summon01") == 0 then
        ai:SetTimer(1, ai:GetRandam_Int(5, 15))
        ai:SetStringIndexedNumber("c3050flag_summon01", 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act15(ai, goal, paramTbl)
    local stopDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = ai:GetStringIndexedNumber("c3050_DashRate")
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3023
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = 3030
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 50
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act17(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 50
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act18(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f19_local1 = 20010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 11130) == true then
        local animationId = 20011
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local animationId = 20010
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_ActCP1(ai, goal, f20_arg2)
    local stopDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_ActCP2(ai, goal, f21_arg2)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local forceRunMinDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 3
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3001
    local animationId_2 = 3002
    local animationId_3 = 3003
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local successDist_2 = 5.6 - ai:GetMapHitRadius(TARGET_SELF)
    local successDist_3 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, animationId_2, TARGET_ENE_0, successDist_2, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, animationId_3, TARGET_ENE_0, successDist_3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act22(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 6
    local f23_local2 = 20
    local walk = true
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if ai:GetStringIndexedNumber("c3010_DashRate") >= 100 then
        walk = false
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, stopDist, TARGET_ENE_0, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act23(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f24_local1 = 10
    local f24_local2 = 20
    local f24_local3 = 100
    local f24_local4 = true
    local random = ai:GetRandam_Int(1, 100)
    local f24_local6 = -1
    if ai:GetStringIndexedNumber("c3010_DashRate") >= 100 then
        f24_local4 = false
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act24(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(2, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act25(ai, goal, paramTbl)
    local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local f26_local2 = -1
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 5, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act26(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 9
    local f27_local2 = 20
    local walk = false
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, stopDist, TARGET_ENE_0, walk, guardStateId)
    if distanceEnemy >= 12 then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, ai:GetRandam_Float(9, 11.5), TARGET_ENE_0, true, 9910)
    elseif distanceEnemy <= 6 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 9, TARGET_ENE_0, true, 9910)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, ai:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act31(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_ActCP3(f29_arg0, goal, f29_arg2)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act45(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act46(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_Act47(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldGeneral_305000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_OldGeneral_305000_AfterAttackAct, 10)
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
    local hasEffect11100 = ai:HasSpecialEffectId(TARGET_SELF, 11100)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(11160) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if distanceEnemy_2 <= 5 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif distanceEnemy_2 <= 5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(11161) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if distanceEnemy_2 <= 5 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif distanceEnemy_2 <= 5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptType(0) == PLAN_SP_EFFECT_TRUNK_COLLAPSE then
            if hasEffect11100 == true and ai:IsFinishTimer(3) == true and distanceEnemy <= 6.2 - ai:GetMapHitRadius(TARGET_SELF) then
                goal:ClearSubGoal()
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 8) then
                    OldGeneral_305000_Act05(ai, goal)
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 70, 90, 8) then
                    OldGeneral_305000_Act06(ai, goal)
                else
                    OldGeneral_305000_Act09(ai, goal)
                end
                return true
            elseif ai:IsFinishTimer(3) == true and distanceEnemy <= 5.2 - ai:GetMapHitRadius(TARGET_SELF) then
                goal:ClearSubGoal()
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 8) then
                    OldGeneral_305000_Act05(ai, goal)
                else
                    OldGeneral_305000_Act08(ai, goal)
                end
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(5026) then
            if ai:IsTargetGuard(TARGET_ENE_0) == true and distanceEnemy <= 2.5 - ai:GetMapHitRadius(TARGET_SELF) + 0.5 and random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3001, TARGET_ENE_0, 2.5 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 6.2 - ai:GetMapHitRadius(TARGET_SELF) + 1) and hasEffect11100 == true and random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3016, TARGET_ENE_0, 6.2 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(5027) then
            if ai:IsTargetGuard(TARGET_ENE_0) == true and random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3004, TARGET_ENE_0, 5 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 140, 90, 4.5 - ai:GetMapHitRadius(TARGET_SELF) + 2.5) and hasEffect11100 == true then
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3017, TARGET_ENE_0, 5 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 5.5 - ai:GetMapHitRadius(TARGET_SELF) + 1.5) and random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 10 - ai:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 4.5 - ai:GetMapHitRadius(TARGET_SELF) + 5, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3019, TARGET_ENE_0, 5 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5028) and distanceEnemy <= 30 - ai:GetMapHitRadius(TARGET_SELF) then
            goal:ClearSubGoal()
            if distanceEnemy <= 6.2 - ai:GetMapHitRadius(TARGET_SELF) + 1 and random <= 50 then
                OldGeneral_305000_Act09(ai, goal)
            elseif distanceEnemy <= 12.2 - ai:GetMapHitRadius(TARGET_SELF) + 1.5 and random <= 70 then
                OldGeneral_305000_Act11(ai, goal)
            else
                OldGeneral_305000_Act07(ai, goal)
            end
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5029) and distanceEnemy <= 8.3 - ai:GetMapHitRadius(TARGET_SELF) + 2 then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, 5 - ai:GetMapHitRadius(TARGET_SELF), 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5033) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        goal:ClearSubGoal()
        ai:SetStringIndexedNumber("c3010_DashRate", 100)
        if hasEffect11100 == true and random <= 80 then
            if 12.2 - ai:GetMapHitRadius(TARGET_SELF) <= distanceEnemy then
                OldGeneral_305000_Act07(ai, goal)
            else
                OldGeneral_305000_Act11(ai, goal)
            end
        elseif random <= 70 then
            OldGeneral_305000_Act04(ai, goal)
        end
        return true
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:GetHpRate(TARGET_SELF) < 0.85 and ai:GetStringIndexedNumber("c3050flag_finisher") == 0 then
        goal:ClearSubGoal()
        OldGeneral_305000_Act13(ai, goal)
        ai:SetStringIndexedNumber("c3050flag_finisher", 1)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_OldGeneral_305000_AfterAttackAct, "OldGeneral_305000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldGeneral_305000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

