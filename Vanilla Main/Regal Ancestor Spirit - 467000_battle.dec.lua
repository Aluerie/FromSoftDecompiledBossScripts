RegisterTableGoal(GOAL_Ancestor467000_Battle, "Ancestor467000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Ancestor467000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:GetStringIndexedNumber("Warp_Cnt")
    ai:GetStringIndexedNumber("Drain_Cnt")
    ai:GetStringIndexedNumber("Charge_Flg")
    ai:GetStringIndexedNumber("ChargeLR_Flg")
    ai:SetStringIndexedNumber("Debug_Test_Flg", 0)
    ai:SetStringIndexedNumber("Drain_Cnt", 0)
    ai:SetStringIndexedNumber("Warp_Cnt", 0)
    ai:SetStringIndexedNumber("Charge_Flg", 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    ai:GetStringIndexedNumber("Rolling_Cnt")
    ai:GetStringIndexedNumber("Jumping_Cnt")
    ai:GetStringIndexedNumber("AnimalActive_Flg")
    ai:GetStringIndexedNumber("ActiveAnimalVariety_Cnt")
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    local f2_local7 = 1
    if ai:HasSpecialEffectId(TARGET_SELF, 13622) then
        f2_local7 = 50
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13638) then
        ai:SetStringIndexedNumber("Debug_Test_Flg", 1)
    else
        ai:SetStringIndexedNumber("Debug_Test_Flg", 0)
    end
    if ai:GetNumber(0) ~= 2 then
        ai:SetNumber(0, 2)
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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 13636)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 13637)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13628)
    ai:SetStringIndexedNumber("AnimalActive_Flg", 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 13606) or ai:HasSpecialEffectId(TARGET_SELF, 13607) or ai:HasSpecialEffectId(TARGET_SELF, 13608) or ai:HasSpecialEffectId(TARGET_SELF, 13609) then
        ai:SetStringIndexedNumber("AnimalActive_Flg", 1)
        ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 1)
    end
    ai:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 13606) then
        ai:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", ai:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13607) then
        ai:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", ai:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13608) then
        ai:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", ai:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13609) then
        ai:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", ai:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13638) then
        if ai:HasSpecialEffectId(TARGET_SELF, 13615) then
            probabilities[10] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13614) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 10000) then
                probabilities[16] = 100
            else
                probabilities[43] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13616) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 10000) then
                probabilities[8] = 100
            else
                probabilities[43] = 100
            end
        end
    elseif distanceEnemy > 40 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            probabilities[41] = 100
        else
            probabilities[41] = 10
            probabilities[43] = 90
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 40 + ai:GetMapHitRadius(TARGET_SELF)) then
        if ai:HasSpecialEffectId(TARGET_SELF, 13611) == false and ai:HasSpecialEffectId(TARGET_SELF, 13644) == false and ai:GetHpRate(TARGET_SELF) < 0.5 and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            probabilities[14] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13611) and ai:HasSpecialEffectId(TARGET_SELF, 13644) == false and ai:GetHpRate(TARGET_SELF) < 0.4 and ai:GetStringIndexedNumber("Drain_Cnt") == 1 and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            probabilities[5] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13611) and ai:HasSpecialEffectId(TARGET_SELF, 13644) == false and ai:GetHpRate(TARGET_SELF) < 0.3 and ai:GetStringIndexedNumber("Drain_Cnt") == 2 and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            probabilities[5] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13611) and ai:HasSpecialEffectId(TARGET_SELF, 13644) == false and ai:GetHpRate(TARGET_SELF) < 0.1 and ai:GetStringIndexedNumber("Drain_Cnt") > ai:GetNumber(0) and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            probabilities[5] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13625) and ai:HasSpecialEffectId(TARGET_SELF, 13644) == false and ai:GetStringIndexedNumber("Drain_Cnt") <= ai:GetNumber(0) and ai:HasSpecialEffectId(TARGET_SELF, 13612) == false then
            probabilities[3] = 100
            probabilities[17] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13615) and ai:HasSpecialEffectId(TARGET_SELF, 13622) then
            probabilities[10] = 100
            probabilities[43] = 1
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13614) and ai:HasSpecialEffectId(TARGET_SELF, 13622) then
            probabilities[24] = 100
            probabilities[43] = 1
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13616) and ai:HasSpecialEffectId(TARGET_SELF, 13622) then
            probabilities[8] = 100
            probabilities[43] = 1
        elseif distanceEnemy > 16 then
            probabilities[3] = 50
            probabilities[13] = 40
            probabilities[41] = 10
            if ai:HasSpecialEffectId(TARGET_SELF, 13615) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[10] = 100
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 13614) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[24] = 100
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 13616) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[8] = 100
            end
        elseif distanceEnemy > 12 then
            probabilities[3] = 40
            probabilities[13] = 50
            probabilities[41] = 10
            if ai:HasSpecialEffectId(TARGET_SELF, 13615) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[10] = 120
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 13614) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[24] = 100
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 13616) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[8] = 70
            end
        elseif distanceEnemy > 5.5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 10
                probabilities[3] = 50
                probabilities[12] = 30
                probabilities[41] = 10
            else
                probabilities[3] = 20
                probabilities[41] = 20
                probabilities[43] = 60
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 13615) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[10] = 100
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 13616) and ai:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                probabilities[8] = 100
            end
        elseif distanceEnemy > -1 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 70) then
                probabilities[1] = 65
                probabilities[3] = 10
                probabilities[4] = 20
                probabilities[43] = 5
            else
                probabilities[1] = 35
                probabilities[3] = 20
                probabilities[4] = 10
                probabilities[17] = 20
                probabilities[43] = 20
            end
        elseif distanceEnemy > -2 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                probabilities[5] = 60
                probabilities[17] = 20
                probabilities[43] = 20
            else
                probabilities[17] = 20
                probabilities[43] = 80
            end
        else
            if distanceEnemy <= -4 then
                probabilities[4] = 50
                probabilities[5] = 40
                probabilities[43] = 10
            else
                probabilities[43] = 70
                probabilities[5] = 30
            end
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                probabilities[4] = 100
            end
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
                probabilities[4] = 100
                probabilities[5] = 100
            end
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, -1, 40) then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 40) then
            if distanceEnemy > -2 and distanceEnemy < 1.5 then
                probabilities[2] = 80
                probabilities[4] = 0
                probabilities[43] = 20
                if ai:HasSpecialEffectId(TARGET_SELF, 13615) then
                    probabilities[10] = 100
                end
            elseif distanceEnemy <= -1.5 then
                probabilities[4] = 50
                probabilities[5] = 50
                probabilities[17] = 50
                probabilities[20] = 50
            else
                probabilities[17] = 20
                probabilities[43] = 80
                if ai:HasSpecialEffectId(TARGET_SELF, 13615) then
                    probabilities[10] = 150
                end
            end
        elseif distanceEnemy < -2.5 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                probabilities[4] = 30
                probabilities[5] = 70
                probabilities[43] = 0
            else
                probabilities[4] = 70
                probabilities[5] = 30
                probabilities[43] = 0
            end
            probabilities[20] = 50
        else
            probabilities[43] = 100
            if ai:HasSpecialEffectId(TARGET_SELF, 13615) then
                probabilities[10] = 150
            end
        end
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 220) and ai:HasSpecialEffectId(TARGET_SELF, 13638) == false and distanceEnemy <= 20 then
        probabilities[17] = 40
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and distanceEnemy > 15 then
        probabilities[26] = 60
    end
    if not ai:HasSpecialEffectId(TARGET_SELF, 13638) and ai:HasSpecialEffectId(TARGET_SELF, 13614) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        probabilities[24] = 60
    end
    if not ai:HasSpecialEffectId(TARGET_SELF, 13622) and ai:GetRemainingAttackCoolTime(3006) <= 0 and ai:GetRemainingAttackCoolTime(3031) <= 0 and distanceEnemy < 13 then
        probabilities[24] = 0
    end
    if not ai:HasSpecialEffectId(TARGET_SELF, 13638) then
        probabilities[16] = 0
    end
    if ai:GetStringIndexedNumber("Warp_Cnt") >= 35 and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
        probabilities[11] = 5 * ai:GetStringIndexedNumber("Warp_Cnt")
    elseif distanceEnemy <= 6 and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
        probabilities[11] = 5 * ai:GetStringIndexedNumber("Warp_Cnt")
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13645) and not ai:HasSpecialEffectId(TARGET_SELF, 13618) then
        ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 6)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13645) and (not ai:HasSpecialEffectId(TARGET_SELF, 13606) or ai:HasSpecialEffectId(TARGET_SELF, 13618)) then
        probabilities[11] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13646) and not ai:HasSpecialEffectId(TARGET_SELF, 13621) and not ai:HasSpecialEffectId(TARGET_SELF, 13619) then
        ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 6)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13646) then
        if ai:HasSpecialEffectId(TARGET_SELF, 13621) and ai:HasSpecialEffectId(TARGET_SELF, 13619) then
            probabilities[11] = 0
        end
        if not ai:HasSpecialEffectId(TARGET_SELF, 13607) and not ai:HasSpecialEffectId(TARGET_SELF, 13609) then
            probabilities[11] = 0
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13647) and not ai:HasSpecialEffectId(TARGET_SELF, 13620) then
        ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 6)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 13644) then
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[14] = 0
        probabilities[15] = 0
        probabilities[16] = 0
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[25] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 12, probabilities[1], 5)
    probabilities[2] = SetCoolTime(ai, goal, 3005, 12, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3006, 20, probabilities[3], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3031, 20, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3007, 5, probabilities[4], 2)
    probabilities[5] = SetCoolTime(ai, goal, 3008, 25, probabilities[5], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3027, 20, probabilities[8], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3020, 20, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3010, 23, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3021, 23, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3022, 23, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3023, 23, probabilities[11], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3025, 8, probabilities[13], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3035, 20, probabilities[17], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3036, 20, probabilities[17], 0)
    probabilities[3] = SetCoolTime(ai, goal, 3035, 15, probabilities[3], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3036, 15, probabilities[3], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3006, 15, probabilities[17], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3031, 15, probabilities[17], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3030, 20, probabilities[20], 1)
    probabilities[26] = SetCoolTime(ai, goal, 3038, 20, probabilities[26], 1)
    if ai:HasSpecialEffectId(TARGET_SELF, 13614) == false and ai:HasSpecialEffectId(TARGET_SELF, 13622) == false then
        probabilities[24] = SetCoolTime(ai, goal, 3033, 30, probabilities[24], 1)
        probabilities[24] = SetCoolTime(ai, goal, 3032, 30, probabilities[24], 1)
        probabilities[24] = SetCoolTime(ai, goal, 3015, 30, probabilities[24], 1)
    end
    probabilities[43] = SetCoolTime(ai, goal, 6002, 7, probabilities[43], 1)
    probabilities[43] = SetCoolTime(ai, goal, 6003, 7, probabilities[43], 1)
    acts[1] = REGIST_FUNC(ai, goal, Ancestor467000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Ancestor467000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Ancestor467000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Ancestor467000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Ancestor467000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Ancestor467000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Ancestor467000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Ancestor467000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Ancestor467000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Ancestor467000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Ancestor467000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Ancestor467000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Ancestor467000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Ancestor467000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Ancestor467000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Ancestor467000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Ancestor467000_Act17)
    acts[20] = REGIST_FUNC(ai, goal, Ancestor467000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Ancestor467000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Ancestor467000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, Ancestor467000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Ancestor467000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Ancestor467000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, Ancestor467000_Act26)
    acts[40] = REGIST_FUNC(ai, goal, Ancestor467000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Ancestor467000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Ancestor467000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, Ancestor467000_Act43)
    local actAfter = REGIST_FUNC(ai, goal, Ancestor467000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Ancestor467000_Act01(ai, goal, paramTbl)
    local stopDist = 3.2
    local canRunDist = 0
    local forceRunMinDist = 0
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 3.5
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act02(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 4
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act03(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 13638) then
        local goalLife = 16
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, 3033, TARGET_ENE_0, successDist, upAngleThreshold, downAngleThreshold, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local stopDist = 15
    local canRunDist = 0
    local forceRunMinDist = 0
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 16
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3006
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 20) then
        if random < 50 then
            animationId = 3006
        else
            animationId = 3031
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        animationId = 3006
    else
        animationId = 3031
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act04(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 3.3
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act05(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 13611) and ai:GetHpRate(TARGET_SELF) < 0.4 and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        local goalLife = 4.9
        local animationId = 3008
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        local goalLife = 4.9
        local animationId = 3008
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function Ancestor467000_Act06(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 30
    local animationId = 3009
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act07(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_R, 8) and ai:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_BR, 8) and ai:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_B, 8) and distanceEnemy > 8 then
        if ai:GetStringIndexedNumber("Charge_Flg") == 0 then
            ai:SetStringIndexedNumber("Charge_Flg", 1)
            ai:SetStringIndexedNumber("ChargeLR_Flg", 1)
            ai:SetTimer(0, 4)
            ai:SetTimer(1, 10)
            ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, 90, 12, AI_SPA_DIR_TYPE_TargetF)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    elseif ai:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_L, 8) and ai:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_BL, 8) and ai:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_B, 8) and distanceEnemy > 8 then
        if ai:GetStringIndexedNumber("Charge_Flg") == 0 then
            ai:SetStringIndexedNumber("Charge_Flg", 1)
            ai:SetStringIndexedNumber("ChargeLR_Flg", 0)
            ai:SetTimer(0, 4)
            ai:SetTimer(1, 10)
            ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, -90, 12, AI_SPA_DIR_TYPE_TargetF)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    else
        ai:SetTimer(2, 3)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act08(ai, goal, paramTbl)
    ai:SetStringIndexedNumber("Jumping_Cnt", 0)
    ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 2)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 12
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, TARGET_ENE_0, successDist, upAngleThreshold, downAngleThreshold, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act09(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:SetStringIndexedNumber("Warp_Cnt", 0)
    local goalLife = 9
    local animationId = 3017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act10(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:SetStringIndexedNumber("Rolling_Cnt", 0)
    ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 5)
    local goalLife = 10
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, TARGET_ENE_0, successDist, upAngleThreshold, downAngleThreshold, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act11(ai, goal, paramTbl)
    ai:SetStringIndexedNumber("Warp_Cnt", 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f13_local0 = 0
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 13645) then
        if not ai:HasSpecialEffectId(TARGET_SELF, 13618) and ai:HasSpecialEffectId(TARGET_SELF, 13606) then
            f13_local0 = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13606) then
            f13_local0 = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13609) then
            f13_local0 = 1
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13607) then
            f13_local0 = 2
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13608) then
            f13_local0 = 3
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13646) then
        if ai:HasSpecialEffectId(TARGET_SELF, 13609) and not ai:HasSpecialEffectId(TARGET_SELF, 13621) and ai:HasSpecialEffectId(TARGET_SELF, 13607) and not ai:HasSpecialEffectId(TARGET_SELF, 13619) then
            if random <= 50 then
                f13_local0 = 1
            else
                f13_local0 = 2
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13609) and not ai:HasSpecialEffectId(TARGET_SELF, 13621) then
            f13_local0 = 1
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13607) and not ai:HasSpecialEffectId(TARGET_SELF, 13619) then
            f13_local0 = 2
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13609) and not ai:HasSpecialEffectId(TARGET_SELF, 13621) then
            f13_local0 = 1
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13607) and not ai:HasSpecialEffectId(TARGET_SELF, 13619) then
            f13_local0 = 2
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13607) then
            f13_local0 = 2
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13609) then
            f13_local0 = 1
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13606) then
            f13_local0 = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13608) then
            f13_local0 = 3
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13608) and not ai:HasSpecialEffectId(TARGET_SELF, 13620) then
        f13_local0 = 3
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13608) and not ai:HasSpecialEffectId(TARGET_SELF, 13620) and not ai:HasSpecialEffectId(TARGET_SELF, 13621) then
        f13_local0 = 3
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13609) and not ai:HasSpecialEffectId(TARGET_SELF, 13621) then
        f13_local0 = 1
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13607) and not ai:HasSpecialEffectId(TARGET_SELF, 13619) then
        f13_local0 = 2
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13608) then
        f13_local0 = 3
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13609) then
        f13_local0 = 1
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13607) then
        f13_local0 = 2
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13606) then
        f13_local0 = 0
    end
    if f13_local0 == 0 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif f13_local0 == 1 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif f13_local0 == 2 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif f13_local0 == 3 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act12(ai, goal, paramTbl)
    local stopDist = 7.5
    local canRunDist = 0
    local forceRunMinDist = 0
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 5.1
    local animationId = 3024
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act13(ai, goal, paramTbl)
    local stopDist = 15
    local canRunDist = 0
    local forceRunMinDist = 0
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 5.4
    local animationId = 3025
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act14(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local goalLife = 4.9
    local animationId = 3008
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act15(ai, goal, paramTbl)
    if ai:GetStringIndexedNumber("ChargeLR_Flg") == 1 then
        ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, 40, 12, AI_SPA_DIR_TYPE_TargetF)
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif ai:GetStringIndexedNumber("ChargeLR_Flg") == 0 then
        ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, -40, 12, AI_SPA_DIR_TYPE_TargetF)
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function Ancestor467000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 3)
    ai:SetStringIndexedNumber("Charge_Flg", 0)
    local goalLife = 7.3
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    if distanceEnemy >= 22 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act17(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3035
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act20(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13636)
    local goalLife = 16
    local animationId = 3030
    local successDist = 9999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act21(ai, goal, paramTbl)
    local goalLife = 16
    local animationId = 3006
    local animationId_2 = 3032
    local successDist = 9999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act22(ai, goal, paramTbl)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 9999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 16
    local animationId = 3033
    local animationId_2 = 3032
    local successDist = 9999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3028, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act23(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:SetStringIndexedNumber("Rolling_Cnt", 9)
    ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 5)
    local goalLife = 10
    local animationId = 3018
    local successDist = 9999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3028, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act24(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 4.9
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act25(ai, goal, paramTbl)
    ai:SetStringIndexedNumber("Jumping_Cnt", 4)
    ai:SetStringIndexedNumber("Warp_Cnt", ai:GetStringIndexedNumber("Warp_Cnt") + 2)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 12
    local animationId = 3016
    local successDist = 9999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3028, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act26(ai, goal, paramTbl)
    local stopDist = 35
    local canRunDist = 0
    local forceRunMinDist = 9999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 16
    local f26_local8 = 3038
    local successDist = 9999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3038, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act40(ai, goal, paramTbl)
    local goalLife = 1.5
    local stopDist = 12 + ai:GetMapHitRadius(TARGET_SELF)
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act41(ai, goal, paramTbl)
    local goalLife = 1.15
    local stopDist = 10 + ai:GetMapHitRadius(TARGET_SELF)
    local walk = false
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(20, 30), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ancestor467000_Act43(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local goalLife = 2
        local animationId = 6003
        local target = TARGET_ENE_0
        local turnTime = 0
        local dirSpaceCheck = AI_DIR_TYPE_R
        local distSpaceCheck = 0
        goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, target, turnTime, dirSpaceCheck, distSpaceCheck)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local goalLife = 2
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

function Ancestor467000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Ancestor467000_AfterAttackAct, 10)
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
    local f34_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f34_local1 = 0
    local f34_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local f34_local5 = 3
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5025) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, -1 + ai:GetMapHitRadius(TARGET_SELF)) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, -1, -1.3 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 1.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random < 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.9, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 80, 5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.9, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 150, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.1, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5027) and ai:HasSpecialEffectId(TARGET_SELF, 13613) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.1, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            goal:ClearSubGoal()
            ai:SetStringIndexedNumber("Rolling_Cnt", ai:GetStringIndexedNumber("Rolling_Cnt") + 1)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5029) then
            ai:SetStringIndexedNumber("Rolling_Cnt", ai:GetStringIndexedNumber("Rolling_Cnt") + 1)
            if ai:GetStringIndexedNumber("Rolling_Cnt") >= 10 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and ai:GetStringIndexedNumber("Rolling_Cnt") >= 7 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
            else
                goal:ClearSubGoal()
                if distanceEnemy > 10 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            ai:SetStringIndexedNumber("Jumping_Cnt", ai:GetStringIndexedNumber("Jumping_Cnt") + 1)
            if ai:GetStringIndexedNumber("Jumping_Cnt") > 2 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.2, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 270) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif distanceEnemy > 0 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.2, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            ai:SetStringIndexedNumber("Drain_Cnt", ai:GetStringIndexedNumber("Drain_Cnt") + 1)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            goal:ClearSubGoal()
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13636) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, -1, 999 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > -3.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 999 + ai:GetMapHitRadius(TARGET_SELF)) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13611) and ai:GetHpRate(TARGET_SELF) < 0.4 and ai:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13628) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and distanceEnemy > 11 and distanceEnemy < 34 then
            goal:ClearSubGoal()
            if distanceEnemy >= 22 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        else
        end
    end
end

RegisterTableGoal(GOAL_Ancestor467000_AfterAttackAct, "Ancestor467000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Ancestor467000_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

