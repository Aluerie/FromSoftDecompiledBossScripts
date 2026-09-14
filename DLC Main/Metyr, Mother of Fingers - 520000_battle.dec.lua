RegisterTableGoal(GOAL_FingerNursery520000_Battle, "FingerNursery520000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FingerNursery520000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetTimer(0, 40)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local hasEffect20010890 = ai:HasSpecialEffectId(TARGET_SELF, 20010890)
    local hasEffect19641 = ai:HasSpecialEffectId(TARGET_SELF, 19641)
    local random_2 = ai:GetRandam_Int(5, 15)
    if hasEffect20010890 == true then
        if distanceEnemy >= 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[13] = 30
                probabilities[23] = 70
            else
                probabilities[7] = 10
                probabilities[8] = 40
                probabilities[9] = 10
                probabilities[10] = 20
                probabilities[13] = 20
            end
        elseif distanceEnemy >= 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[8] = 50
                probabilities[13] = 40
                probabilities[23] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                probabilities[3] = 10
                probabilities[7] = 10
                probabilities[8] = 10
                probabilities[9] = 10
                probabilities[10] = 20
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 30
                probabilities[14] = 30
                probabilities[23] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                probabilities[3] = 10
                probabilities[7] = 10
                probabilities[8] = 20
                probabilities[9] = 10
                probabilities[11] = 20
                probabilities[12] = 20
                probabilities[13] = 20
                probabilities[14] = 20
            else
                probabilities[3] = 10
                probabilities[6] = 0
                probabilities[8] = 20
                probabilities[9] = 10
                probabilities[11] = 20
                probabilities[13] = 20
                probabilities[14] = 20
            end
        elseif distanceEnemy >= 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[8] = 30
                probabilities[13] = 40
                probabilities[17] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                probabilities[8] = 30
                probabilities[2] = 10
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[9] = 10
                probabilities[10] = 20
                probabilities[13] = 10
                probabilities[14] = 20
                probabilities[15] = 10
                probabilities[17] = 20
                probabilities[18] = 20
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                probabilities[6] = 30
                probabilities[8] = 20
                probabilities[11] = 20
                probabilities[13] = 10
                probabilities[14] = 20
                probabilities[17] = 20
                probabilities[18] = 20
            else
                probabilities[6] = 30
                probabilities[8] = 20
                probabilities[11] = 20
                probabilities[13] = 10
                probabilities[14] = 20
                probabilities[17] = 20
                probabilities[18] = 20
            end
        elseif distanceEnemy >= 2.5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[4] = 20
                probabilities[8] = 40
                probabilities[22] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                probabilities[1] = 20
                probabilities[2] = 10
                probabilities[4] = 10
                probabilities[5] = 20
                probabilities[6] = 10
                probabilities[8] = 30
                probabilities[13] = 20
                probabilities[14] = 20
                probabilities[15] = 10
                probabilities[18] = 10
            else
                probabilities[2] = 20
                probabilities[6] = 10
                probabilities[8] = 20
                probabilities[11] = 10
                probabilities[13] = 20
                probabilities[14] = 20
                probabilities[17] = 20
                probabilities[18] = 20
                probabilities[22] = 20
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[4] = 40
            probabilities[8] = 40
            probabilities[22] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
            probabilities[1] = 20
            probabilities[2] = 20
            probabilities[4] = 10
            probabilities[5] = 10
            probabilities[6] = 10
            probabilities[8] = 20
            probabilities[14] = 20
            probabilities[15] = 20
            probabilities[16] = 10
            probabilities[24] = 10
        else
            probabilities[2] = 10
            probabilities[4] = 20
            probabilities[8] = 20
            probabilities[14] = 20
            probabilities[16] = 10
            probabilities[17] = 20
            probabilities[22] = 40
            probabilities[24] = 20
        end
    elseif hpRatioSelf <= 0.6 and hasEffect20010890 == false then
        probabilities[25] = 100
    elseif distanceEnemy >= 30 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[23] = 100
        else
            probabilities[7] = 60
            probabilities[9] = 10
            probabilities[10] = 30
        end
    elseif distanceEnemy >= 10 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[23] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
            probabilities[3] = 20
            probabilities[6] = 10
            probabilities[7] = 40
            probabilities[9] = 30
            probabilities[10] = 30
            probabilities[12] = 20
            probabilities[23] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
            probabilities[3] = 20
            probabilities[6] = 10
            probabilities[7] = 40
            probabilities[9] = 30
            probabilities[11] = 30
            probabilities[12] = 20
        else
            probabilities[3] = 40
            probabilities[6] = 10
            probabilities[7] = 40
            probabilities[9] = 10
            probabilities[11] = 30
        end
    elseif distanceEnemy >= 5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[17] = 40
            probabilities[22] = 60
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
            probabilities[2] = 10
            probabilities[5] = 10
            probabilities[6] = 10
            probabilities[9] = 10
            probabilities[10] = 20
            probabilities[16] = 10
            probabilities[17] = 10
            probabilities[18] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
            probabilities[6] = 20
            probabilities[11] = 20
            probabilities[16] = 10
            probabilities[17] = 40
            probabilities[18] = 20
        else
            probabilities[6] = 20
            probabilities[11] = 20
            probabilities[16] = 10
            probabilities[17] = 40
            probabilities[18] = 20
        end
    elseif distanceEnemy >= 2.5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[4] = 40
            probabilities[22] = 60
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
            probabilities[1] = 10
            probabilities[2] = 20
            probabilities[4] = 20
            probabilities[5] = 20
            probabilities[6] = 10
            probabilities[15] = 20
            probabilities[16] = 20
            probabilities[18] = 10
            probabilities[24] = 10
        else
            probabilities[2] = 20
            probabilities[11] = 30
            probabilities[16] = 10
            probabilities[17] = 20
            probabilities[18] = 20
            probabilities[22] = 10
            probabilities[24] = 10
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
        probabilities[4] = 40
        probabilities[22] = 60
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
        probabilities[1] = 20
        probabilities[2] = 20
        probabilities[4] = 20
        probabilities[5] = 20
        probabilities[6] = 20
        probabilities[15] = 20
        probabilities[16] = 10
        probabilities[24] = 10
    else
        probabilities[2] = 10
        probabilities[4] = 40
        probabilities[16] = 10
        probabilities[17] = 20
        probabilities[22] = 10
        probabilities[24] = 20
    end
    if ai:IsFinishTimer(0) == false then
        probabilities[9] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010855) then
        probabilities[9] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 20, probabilities[2], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3007, 20, probabilities[2], 0)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 30, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3003, 10, probabilities[4], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3004, 10, probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3005, 15, probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3006, 25, probabilities[6], 0)
    probabilities[7] = SetCoolTime(ai, goal, 3007, 12, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3008, 20, probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3009, 70, probabilities[9], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3010, 15, probabilities[10], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3017, 15, probabilities[10], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3011, 15, probabilities[10], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3018, 15, probabilities[10], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3012, 15, probabilities[10], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3019, 15, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3010, 15, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3017, 15, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3011, 15, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3018, 15, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3012, 15, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3019, 15, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3013, 30, probabilities[12], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3020, 30, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3015, 40, probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3016, 70, probabilities[14], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3031, 30, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3025, 20, probabilities[15], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3026, 20, probabilities[16], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3027, 20, probabilities[16], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3029, 20, probabilities[16], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3030, 20, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3021, 20, probabilities[17], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3022, 20, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3023, 15, probabilities[18], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3024, 15, probabilities[18], 0)
    probabilities[24] = SetCoolTime(ai, goal, 3028, 30, probabilities[24], 0)
    acts[1] = REGIST_FUNC(ai, goal, FingerNursery520000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, FingerNursery520000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, FingerNursery520000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, FingerNursery520000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, FingerNursery520000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, FingerNursery520000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, FingerNursery520000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, FingerNursery520000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, FingerNursery520000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, FingerNursery520000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, FingerNursery520000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, FingerNursery520000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, FingerNursery520000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, FingerNursery520000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, FingerNursery520000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, FingerNursery520000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, FingerNursery520000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, FingerNursery520000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, FingerNursery520000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, FingerNursery520000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, FingerNursery520000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, FingerNursery520000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, FingerNursery520000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, FingerNursery520000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, FingerNursery520000_Act25)
    local actAfter = REGIST_FUNC(ai, goal, FingerNursery520000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function FingerNursery520000_Act01(ai, goal, paramTbl)
    local stopDist = 3
    local canRunDist = 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act02(ai, goal, paramTbl)
    local f4_local0 = 10
    local f4_local1 = 0
    local f4_local2 = f4_local0 + 1
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3001
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    if random <= 70 and ai:GetAttackPassedTime(3029) >= 20 and ai:GetAttackPassedTime(3030) >= 20 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act03(ai, goal, paramTbl)
    local stopDist = 45
    local canRunDist = 0
    local forceRunMinDist = stopDist + 1
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act04(ai, goal, paramTbl)
    local animationId = 3003
    local animationId_2 = 3004
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        return true
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act05(ai, goal, paramTbl)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3005
    local successDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act06(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3006
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act07(ai, goal, paramTbl)
    local stopDist = 25
    local canRunDist = 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    if random <= 70 and ai:GetAttackPassedTime(3029) >= 20 and ai:GetAttackPassedTime(3030) >= 20 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    local animationId = 3007
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act08(ai, goal, paramTbl)
    local f10_local0 = 5
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
    local f10_local4 = 100
    local f10_local5 = 3
    local f10_local6 = 3
    local animationId = 3008
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act09(ai, goal, paramTbl)
    local animationId = 3009
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 180
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act10(ai, goal, paramTbl)
    local animationId = 3010
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local f12_local3 = 0
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect20010890 = ai:HasSpecialEffectId(TARGET_SELF, 20010890)
    if hasEffect20010890 == true then
        animationId = 3017
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, animationId, TARGET_ENE_0, successDist, turnTime, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act11(ai, goal, paramTbl)
    local animationId = 3011
    local animationId_2 = 3012
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect20010890 = ai:HasSpecialEffectId(TARGET_SELF, 20010890)
    if hasEffect20010890 == true then
        animationId = 3018
        animationId_2 = 3019
    end
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        return true
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act12(ai, goal, paramTbl)
    local f14_local0 = 10
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 10
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local animationId = 3013
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act13(ai, goal, paramTbl)
    local animationId = 3015
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act14(ai, goal, paramTbl)
    local animationId = 3016
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act15(ai, goal, paramTbl)
    local animationId = 3025
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act16(ai, goal, paramTbl)
    local animationId = 3026
    local animationId_2 = 3027
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act17(ai, goal, paramTbl)
    local animationId = 3021
    local animationId_2 = 3022
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        return true
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act18(ai, goal, paramTbl)
    local animationId = 3023
    local animationId_2 = 3024
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        return true
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act19(ai, goal, paramTbl)
    local animationId = 3006
    local animationId_2 = 3016
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy <= 8 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act20(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(2, 3), TARGET_ENE_0, 15, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act21(ai, goal, paramTbl)
    local goalLife = 3
    local frontPriority = -1
    local backPriority = 100
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0.5
    local alwaysSuccess = true
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act22(ai, goal, paramTbl)
    local goalLife = 3
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 100) then
        leftPriority = 1
    else
        rightPriority = 1
    end
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act23(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 45, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act24(ai, goal, paramTbl)
    local animationId = 3028
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_Act25(ai, goal, paramTbl)
    local animationId = 3031
    local successDist = 10 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerNursery520000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_FingerNursery520000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f31_local1 = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 0
    local f31_local3 = 0
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local hitRadius = ai:GetMapHitRadius(TARGET_SELF)
    local prevTargetingState = ai:GetPrevTargetState()
    local f31_local10 = ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local hasEffect10010050 = ai:HasSpecialEffectId(TARGET_SELF, 10010050)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_ILLNESS) == true then
        return false
    end
    if ai:IsInterupt(INTERUPT_UseItem) then
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5025) then
            if distanceEnemy >= 2 and distanceEnemy <= 25 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3020, TARGET_ENE_0, 999, 0, 180, 0, 0)
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            if distanceEnemy <= 15 and ai:GetNumber(0) == 0 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 180, 0, 0)
                ai:SetNumber(0, ai:GetNumber(0) + 1)
                if distanceEnemy <= 15 and ai:GetNumber(0) < 2 and random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3014, TARGET_ENE_0, 999, 0, 180, 0, 0)
                    ai:SetNumber(0, 0)
                else
                    ai:SetNumber(0, 0)
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            goal:ClearSubGoal()
            if ai:GetNumber(1) == 0 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 20) and ai:GetNumber(1) == 0 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3030, TARGET_ENE_0, 999, 0, 180, 0, 0)
                    ai:SetNumber(1, ai:GetNumber(1) + 1)
                    if ai:GetNumber(1) < 2 and random <= 60 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 20) then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 180, 0, 0)
                            ai:SetNumber(1, 0)
                        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 20) then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3029, TARGET_ENE_0, 999, 0, 180, 0, 0)
                            ai:SetNumber(1, 0)
                        end
                    else
                        ai:SetNumber(1, 0)
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 20) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3029, TARGET_ENE_0, 999, 0, 180, 0, 0)
                    ai:SetNumber(1, ai:GetNumber(1) + 1)
                    if ai:GetNumber(1) < 2 and random <= 60 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 20) then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 180, 0, 0)
                            ai:SetNumber(1, 0)
                        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 20) then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3029, TARGET_ENE_0, 999, 0, 180, 0, 0)
                            ai:SetNumber(1, 0)
                        end
                    else
                        ai:SetNumber(1, 0)
                    end
                end
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_FingerNursery520000_AfterAttackAct, "FingerNursery520000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FingerNursery520000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


