RegisterTableGoal(GOAL_Morgott213000_Battle, "Morgott213000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetStringIndexedNumber("Run_Odds", 0)
    ai:SetStringIndexedNumber("ShootInerruptFlg", 0)
    ai:SetStringIndexedNumber("HeatUpMiss_Flg", 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    ai:DeleteObserve(0)
    ai:SetStringIndexedNumber("Run_Odds", 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 16201) or ai:HasSpecialEffectId(TARGET_SELF, 16203) then
        ai:SetStringIndexedNumber("Run_Odds", 100)
    end
    if ai:GetStringIndexedNumber("ShootInerruptFlg") > 0 then
        ai:SetStringIndexedNumber("ShootInerruptFlg", ai:GetStringIndexedNumber("ShootInerruptFlg") - 1)
    elseif ai:GetStringIndexedNumber("ShootInerruptFlg") < 0 then
        ai:SetStringIndexedNumber("ShootInerruptFlg", 0)
    end
    ai:SetNumber(5, 0)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:SetNumber(1, 0)
    ai:SetNumber(2, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16210)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16211)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16212)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16216)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16217)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16219)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16220)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16221)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16222)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16216)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16217)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16219)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16220)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16221)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16222)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16223)
    ai:SetNumber(7, ai:GetNumber(7) + 1)
    ai:SetNumber(8, 0)
    if ai:GetStringIndexedNumber("ShootInerruptFlg") >= 1 then
        ai:SetStringIndexedNumber("Run_Odds", 100)
    end
    if ai:GetHpRate(TARGET_SELF) < 0.65 and ai:HasSpecialEffectId(TARGET_SELF, 16200) == false then
        probabilities[21] = 10000000
    elseif ai:HasSpecialEffectId(TARGET_SELF, 16202) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20) and ai:GetTimer(0) <= 0 and distanceEnemy > 6.5 then
        ai:SetTimer(0, 12)
        if distanceEnemy > 20 then
            probabilities[1] = 5
            probabilities[20] = 95
        else
            probabilities[1] = 5
            probabilities[12] = 65
            if distanceEnemy > 5 then
                probabilities[20] = 30
            end
        end
        if distanceEnemy < 15 then
            probabilities[9] = 50
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if distanceEnemy > 10 then
            probabilities[3] = 30
            probabilities[15] = 20
            probabilities[7] = 30
            probabilities[41] = 0
            probabilities[20] = 50
            if ai:GetStringIndexedNumber("Run_Odds") ~= 100 then
                probabilities[40] = 40
            end
            if distanceEnemy < 15 then
                probabilities[12] = 50
                if ai:GetStringIndexedNumber("Run_Odds") ~= 100 then
                    probabilities[44] = 30
                end
            end
            if distanceEnemy < 15 then
                probabilities[9] = 50
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[3] = 30
                probabilities[7] = 20
                probabilities[12] = 30
                probabilities[15] = 100
                probabilities[20] = 40
            else
                probabilities[2] = 20
                probabilities[16] = 0
                probabilities[15] = 100
                probabilities[47] = 30
            end
            if distanceEnemy < 15 then
                probabilities[9] = 50
            end
            if distanceEnemy > 7.5 and ai:GetStringIndexedNumber("Run_Odds") ~= 100 then
                probabilities[44] = 30
            end
            if distanceEnemy < 7.3 then
                probabilities[7] = 0
            end
        elseif distanceEnemy > 1.5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 20
                probabilities[2] = 30
                probabilities[3] = 10
                probabilities[4] = 30
                probabilities[5] = 0
                probabilities[12] = 40
                probabilities[14] = 100
                probabilities[16] = 10
            else
                probabilities[2] = 30
                probabilities[4] = 30
                probabilities[5] = 20
                probabilities[12] = 40
                probabilities[13] = 50
                probabilities[16] = 10
                probabilities[47] = 20
            end
            if ai:GetNumber(7) > 4 * 2 and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) then
                probabilities[5] = 1000000
            end
        else
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 25
                probabilities[2] = 20
                probabilities[4] = 20
                probabilities[5] = 10
                probabilities[47] = 10
                probabilities[12] = 40
                probabilities[14] = 100
                probabilities[16] = 40
            else
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                    probabilities[2] = 40
                    probabilities[47] = 10
                    probabilities[16] = 50
                else
                    probabilities[43] = 0
                    probabilities[47] = 30
                    probabilities[16] = 50
                end
                probabilities[13] = 50
            end
            if ai:GetNumber(7) > 4 * 2 and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) then
                probabilities[5] = 1000000
            end
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, -1, 3) then
        probabilities[8] = 30
        probabilities[47] = 10
        probabilities[13] = 40
    elseif distanceEnemy < 4 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
            probabilities[2] = 60
            probabilities[47] = 10
        else
            probabilities[47] = 60
        end
        probabilities[13] = 70
    else
        probabilities[42] = 100
    end
    if distanceEnemy <= 7.5 then
        probabilities[20] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16200) == false and ai:GetNumber(0) == 0 then
        probabilities[13] = 0
        probabilities[14] = 0
        probabilities[15] = 0
    end
    if ai:GetHpRate(TARGET_SELF) >= 0.65 then
        probabilities[9] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16200) then
        probabilities[7] = 0
    end
    if ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) == false and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) == false then
        probabilities[44] = 0
    end
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9999) and ai:GetStringIndexedNumber("Run_Odds") == 0 and ai:GetNumber(7) > 4 then
        probabilities[44] = 9000
        if distanceEnemy > 7 and random < 30 then
            probabilities[44] = 0
            ai:SetNumber(7, 0)
        elseif distanceEnemy <= 7 and ai:HasSpecialEffectId(TARGET_SELF, 16202) == false then
            probabilities[44] = 0
        end
    end
    if ai:GetNumber(6) == 0 then
        probabilities[20] = 0
        probabilities[7] = 0
        ai:SetNumber(6, 1)
    end
    probabilities[10] = 0
    probabilities[11] = 0
    probabilities[6] = 0
    probabilities[16] = 0
    probabilities[1] = SetCoolTime(ai, goal, 3000, 30, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3006, 30, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3011, 30, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3014, 30, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3025, 30, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3028, 30, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3029, 30, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3024, 15, probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3027, 40, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3018, 40, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3020, 40, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3021, 40, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3010, 15, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3030, 30, probabilities[14], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3033, 10, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3032, 30, probabilities[15], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3033, 10, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3035, 40, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3036, 40, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3023, 30, probabilities[18], 0)
    probabilities[19] = SetCoolTime(ai, goal, 3034, 30, probabilities[19], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3017, 15, probabilities[20], 0)
    probabilities[43] = SetCoolTime(ai, goal, 6001, 20, probabilities[43], 1)
    acts[1] = REGIST_FUNC(ai, goal, Morgott213000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Morgott213000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Morgott213000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Morgott213000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Morgott213000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Morgott213000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Morgott213000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Morgott213000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Morgott213000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Morgott213000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Morgott213000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Morgott213000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Morgott213000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Morgott213000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Morgott213000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Morgott213000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Morgott213000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, Morgott213000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, Morgott213000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, Morgott213000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Morgott213000_Act21)
    acts[40] = REGIST_FUNC(ai, goal, Morgott213000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Morgott213000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Morgott213000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, Morgott213000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, Morgott213000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, Morgott213000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, Morgott213000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, Morgott213000_Act47)
    local actAfter = REGIST_FUNC(ai, goal, Morgott213000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Morgott213000_Act01(ai, goal, paramTbl)
    local stopDist = 5.6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3000
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act02(ai, goal, paramTbl)
    local stopDist = 6.3
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3006
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act03(ai, goal, paramTbl)
    local stopDist = 5.2
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3011
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act04(ai, goal, paramTbl)
    local stopDist = 4.2
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3014
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act05(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3025
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    ai:SetNumber(7, ai:GetNumber(7) + 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act06(ai, goal, paramTbl)
    local stopDist = 25
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3028
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act07(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3029
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act08(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3024
    local successDist = 6
    local turnTime = 0
    local turnFaceAngle = 140
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 16200) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act09(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy > 6 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
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

function Morgott213000_Act10(ai, goal, paramTbl)
    local stopDist = 12
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3017
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act11(ai, goal, paramTbl)
    local stopDist = 12
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3019
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act12(ai, goal, paramTbl)
    local stopDist = 12
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3021
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act13(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3010
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act14(ai, goal, paramTbl)
    local stopDist = 4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3030
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act15(ai, goal, paramTbl)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    local goalLife = 10
    local animationId = 3032
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act16(ai, goal, paramTbl)
    local stopDist = 13
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3035
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act17(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3036
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 60
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act18(ai, goal, paramTbl)
    local stopDist = 5.6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    local goalLife = 10
    local animationId = 3023
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act19(ai, goal, paramTbl)
    local stopDist = 4.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    local goalLife = 10
    local animationId = 3034
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act20(ai, goal, paramTbl)
    local stopDist = 30
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3017
    local successDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act21(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:GetStringIndexedNumber("HeatUpMiss_Flg") == 1 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy > 6 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local goalLife = 4
        local animationId = 6003
        local target = TARGET_ENE_0
        local turnTime = 0
        local dirSpaceCheck = AI_DIR_TYPE_R
        local distSpaceCheck = 0
        goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, target, turnTime, dirSpaceCheck, distSpaceCheck)
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local goalLife = 4
        local animationId = 6002
        local target = TARGET_ENE_0
        local turnTime = 0
        local dirSpaceCheck = AI_DIR_TYPE_L
        local distSpaceCheck = 0
        goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, target, turnTime, dirSpaceCheck, distSpaceCheck)
    end
    ai:SetStringIndexedNumber("HeatUpMiss_Flg", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act40(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 10
    local walk = true
    local guardStateId = -1
    if ai:GetStringIndexedNumber("Run_Odds") == 100 then
        walk = false
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act41(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 8
    local walk = false
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(30, 60), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act43(ai, goal, paramTbl)
    local goalLife = 10
    local frontPriority = -1
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

function Morgott213000_Act44(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:SetNumber(7, 0)
    local existMesh = ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2)
    local existMesh_2 = ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2)
    local random = ai:GetRandam_Int(0, 1)
    if existMesh_2 == true and existMesh == true then
    elseif existMesh_2 == true and existMesh == false then
        random = 0
    elseif existMesh_2 == false and existMesh == true then
        random = 1
    elseif existMesh_2 == false and existMesh == false then
        random = 2
    end
    if distanceEnemy > 7.5 then
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 7 + ai:GetMapHitRadius(TARGET_SELF))
    else
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 2 + ai:GetMapHitRadius(TARGET_SELF))
    end
    local goalLife = 3
    local moveTarget = TARGET_ENE_0
    local right = random
    local angleThreshold = 100
    local isWalk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local f28_local11 = true
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act45(ai, goal, paramTbl)
    local goalLife = 6
    local stopDist = 15
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213000_Act46(ai, goal, paramTbl)
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

function Morgott213000_Act47(ai, goal, paramTbl)
    ai:SetNumber(7, ai:GetNumber(7) + 2)
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

function Morgott213000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Morgott213000_AfterAttackAct, 10)
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
    if ai:GetHpRate(TARGET_ENE_0) <= 0 then
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16210)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16211)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16212)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16213)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16214)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16215)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16216)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16217)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16218)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16219)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16220)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16221)
        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16222)
        ai:SetNumber(7, ai:GetNumber(7) + 20)
        return false
    end
    local f35_local0 = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local f35_local5 = 0
    local f35_local6 = 0
    if ai:HasSpecialEffectId(TARGET_ENE_0, 6992) or ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
        f35_local5 = 1
    end
    if ai:HasSpecialEffectId(TARGET_ENE_0, 90) then
        f35_local6 = 1
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
    end
    if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideObserve(0) then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 16233) then
        ai:SetStringIndexedNumber("ShootInerruptFlg", 2)
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:GetNumber(2) > 0 then
        ai:SetNumber(2, 0)
    end
    if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 16233) and ai:GetTimer(3) <= 0 and distanceEnemy > 8 then
        ai:SetStringIndexedNumber("ShootInerruptFlg", 2)
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        ai:SetNumber(5, 1)
        ai:SetNumber(8, ai:GetNumber(8) + 1)
        if ai:GetNumber(8) >= 4 then
            ai:SetNumber(8, 0)
            ai:SetNumber(7, ai:GetNumber(7) + 1)
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5025) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 5.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + ai:GetMapHitRadius(TARGET_SELF)) and random < 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and ai:GetNumber(1) < 1 and ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                ai:SetNumber(1, ai:GetNumber(1) + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10.5) and distanceEnemy > 5.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and ai:GetNumber(1) < 1 then
                if ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                    ai:SetNumber(1, ai:GetNumber(1) + 1)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40) and distanceEnemy >= 7.5 and ai:GetNumber(2) < 1 then
                ai:SetNumber(2, 2 + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 8) and random < 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetNumber(2) < 1 then
                ai:SetNumber(2, 2 + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40) and distanceEnemy >= 7.5 and ai:GetNumber(2) < 1 then
                ai:SetNumber(2, 2 + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5029) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5) and random < 65 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and ai:GetNumber(1) < 1 and ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                ai:SetNumber(1, ai:GetNumber(1) + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 5.5) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) and ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and ai:GetNumber(1) < 1 then
                if ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                    ai:SetNumber(1, ai:GetNumber(1) + 1)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetNumber(2) < 1 then
                ai:SetNumber(2, 2 + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16210) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetNumber(2) < 1 then
                ai:SetNumber(2, 2 + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16211) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16200) and ai:GetTimer(4) <= 0 and f35_local6 == 1 and ai:HasSpecialEffectId(TARGET_SELF, 16222) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 18 + ai:GetMapHitRadius(TARGET_SELF)) then
                ai:SetTimer(4, 15)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16212) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f35_local5 == 1 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16213) then
            if ai:GetTimer(2) <= 0 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 280, -1, 3.5) then
                ai:SetTimer(2, 15)
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                ai:SetNumber(7, ai:GetNumber(7) + 3)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16214) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 145, -1, 4 + ai:GetMapHitRadius(TARGET_SELF)) and f35_local6 == 0 then
                ai:SetTimer(2, 15)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) and distanceEnemy >= 7.5 and ai:HasSpecialEffectId(TARGET_SELF, 16200) and random < 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16215) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 110, -1, 3.8 + ai:GetMapHitRadius(TARGET_SELF)) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 145, -1, 2.7 + ai:GetMapHitRadius(TARGET_SELF)) and f35_local6 == 0 then
                ai:SetTimer(2, 15)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) and distanceEnemy >= 7.5 and ai:HasSpecialEffectId(TARGET_SELF, 16200) and random < 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                return false
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10.5) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5034) then
            if distanceEnemy <= 5.4 then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16216) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if ai:HasSpecialEffectId(TARGET_SELF, 16200) == false and random < 40 then
                    return false
                elseif ai:HasSpecialEffectId(TARGET_SELF, 16200) and random < 60 then
                    return false
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16217) then
            if distanceEnemy < 6 then
                return false
            elseif ai:HasSpecialEffectId(TARGET_SELF, 16200) == false and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 11 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 16200) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16218) then
            if ai:GetAttackPassedTime(3034) > 25 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7) and f35_local5 == 1 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7) and ai:GetNumber(1) > 1 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                ai:SetNumber(7, ai:GetNumber(7) + 3)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) and distanceEnemy > 3.5 and random < 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 2.5) and random < 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 3 + ai:GetMapHitRadius(TARGET_SELF)) then
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetNumber(2) < 1 then
                ai:SetNumber(2, 2 + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40) and distanceEnemy >= 7.5 and ai:GetNumber(2) < 1 then
                ai:SetNumber(2, 2 + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16219) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and ai:GetNumber(1) < 1 and ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                ai:SetNumber(1, ai:GetNumber(1) + 1)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16220) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f35_local5 == 1 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16221) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 10) then
                goal:ClearSubGoal()
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 7) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16223) then
            goal:ClearSubGoal()
            if random < 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Morgott213000_AfterAttackAct, "Morgott213000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213000_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

