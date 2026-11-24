RegisterTableGoal(GOAL_ElderDragon452000_Battle, "ElderDragon452000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ElderDragon452000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(10, 0)
end

Goal.Activate = function (self, ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local hasEffect16890 = ai:HasSpecialEffectId(TARGET_SELF, 16890)
    local hasEffect16891 = ai:HasSpecialEffectId(TARGET_SELF, 16891)
    local hasEffect16892 = ai:HasSpecialEffectId(TARGET_SELF, 16892)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if ai:HasSpecialEffectId(TARGET_SELF, 5030) or ai:HasSpecialEffectId(TARGET_SELF, 5031) or ai:HasSpecialEffectId(TARGET_SELF, 5032) or ai:HasSpecialEffectId(TARGET_SELF, 5033) then
        if ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            ai:SetNumber(10, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3033, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            if ai:GetNumber(10) == 0 then
                ai:SetNumber(10, 1)
                if random > 65 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                elseif random > 15 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 999, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif ai:GetNumber(10) == 1 then
                ai:SetNumber(10, 2)
                if random > 75 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 999, 0, 0)
                elseif random > 35 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif ai:GetNumber(10) == 2 then
                ai:SetNumber(10, 0)
                if random > 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                elseif random > 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3035, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        return
    end
    if hasEffect16890 == false and ai:GetHpRate(TARGET_SELF) < 0.65 then
        probabilities[30] = 10
    elseif hasEffect16890 == true and hasEffect16891 == false and ai:GetHpRate(TARGET_SELF) < 0.45 then
        probabilities[32] = 10
    elseif hasEffect16890 == true and hasEffect16891 == true and hasEffect16892 == false and ai:GetHpRate(TARGET_SELF) < 0.3 then
        probabilities[33] = 10
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 90, 16) then
        probabilities[3] = 5
        probabilities[4] = 10
        probabilities[5] = 20
        probabilities[6] = 25
        probabilities[7] = 25
        probabilities[8] = 35
        probabilities[9] = 10
        probabilities[15] = 10
        probabilities[17] = 20
        probabilities[18] = 20
        probabilities[32] = 40
        probabilities[31] = 60
        probabilities[33] = 60
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 90, 16) then
        probabilities[4] = 10
        probabilities[5] = 20
        probabilities[15] = 10
        probabilities[7] = 25
        probabilities[8] = 35
        probabilities[9] = 10
        probabilities[17] = 20
        probabilities[18] = 20
        probabilities[32] = 40
        probabilities[31] = 60
        probabilities[33] = 60
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 130, 90, 99) then
        probabilities[8] = 25
        probabilities[9] = 30
        probabilities[15] = 10
        probabilities[18] = 40
        probabilities[32] = 40
        probabilities[31] = 40
        probabilities[33] = 60
    elseif distanceEnemy >= 20 then
        probabilities[13] = 20
        probabilities[14] = 30
        probabilities[18] = 40
        probabilities[31] = 40
        probabilities[32] = 40
        probabilities[33] = 60
    elseif distanceEnemy >= 5 then
        probabilities[1] = 20
        probabilities[2] = 20
        probabilities[17] = 30
        probabilities[18] = 40
        probabilities[31] = 40
        probabilities[32] = 40
        probabilities[33] = 60
    else
        probabilities[3] = 20
        probabilities[4] = 20
        probabilities[5] = 20
        probabilities[6] = 30
        probabilities[7] = 25
        probabilities[15] = 30
        probabilities[17] = 30
        probabilities[18] = 40
        probabilities[31] = 40
        probabilities[32] = 40
        probabilities[33] = 60
    end
    if hasEffect16890 == false then
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        if distanceEnemy > 50 then
            probabilities[19] = 9999
        elseif distanceEnemy > 30 then
            probabilities[19] = 30
        end
    end
    if ai:GetHpRate(TARGET_SELF) > 0.45 then
        probabilities[32] = 0
    end
    if ai:GetHpRate(TARGET_SELF) > 0.3 then
        probabilities[33] = 0
    end
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 110, 90, 15) == false and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 110, 90, 15) == false then
        probabilities[7] = 0
    end
    if hasEffect16890 == true then
        probabilities[16] = 0
    end
    if distanceEnemy > 50 then
        probabilities[11] = 0
    end
    if hasEffect16890 == true then
        probabilities[7] = 0
        probabilities[11] = 0
        probabilities[13] = 0
        probabilities[14] = 0
    end
    if hasEffect16892 == true then
        probabilities[18] = 0
        probabilities[19] = 0
    end
    if distanceEnemy > 15 then
        probabilities[17] = 0
    end
    if distanceEnemy > 5 then
        probabilities[15] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 20, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 20, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3014, 20, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3015, 20, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3011, 30, probabilities[5], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3012, 30, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3016, 30, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3009, 20, probabilities[7], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3020, 50, probabilities[8], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3021, 50, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3025, 20, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3026, 20, probabilities[9], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3017, 30, probabilities[11], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3019, 50, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3030, 20, probabilities[14], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3028, 50, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3027, 40, probabilities[15], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3028, 40, probabilities[15], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3029, 50, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3022, 60, probabilities[17], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3023, 60, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3024, 50, probabilities[18], 0)
    probabilities[31] = SetCoolTime(ai, goal, 3039, 45, probabilities[31], 1)
    probabilities[31] = SetCoolTime(ai, goal, 3038, 45, probabilities[31], 1)
    if hasEffect16891 == true then
        probabilities[32] = SetCoolTime(ai, goal, 3034, 60, probabilities[32], 0)
    else
        probabilities[32] = SetCoolTime(ai, goal, 3034, 60, probabilities[32], 1)
    end
    if hasEffect16892 == true then
        probabilities[33] = SetCoolTime(ai, goal, 20017, 120, probabilities[33], 0)
    else
        probabilities[33] = SetCoolTime(ai, goal, 20017, 120, probabilities[33], 1)
    end
    if distanceEnemy > 8 then
        probabilities[1] = 0
    end
    if distanceEnemy > 20 then
        probabilities[2] = 0
    end
    local lineWidth = 5
    ai:SetStringIndexedNumber("ExistMeshOnLine_F", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToB", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToBL", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToBR", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToL", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToR", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToF", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToF, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToFL", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFL, 25 + lineWidth, lineWidth, 0))
    ai:SetStringIndexedNumber("ExistMeshOnLine_ToFR", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFR, 25 + lineWidth, lineWidth, 0))
    acts[1] = REGIST_FUNC(ai, goal, ElderDragon452000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, ElderDragon452000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, ElderDragon452000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, ElderDragon452000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, ElderDragon452000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, ElderDragon452000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, ElderDragon452000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, ElderDragon452000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, ElderDragon452000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, ElderDragon452000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, ElderDragon452000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, ElderDragon452000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, ElderDragon452000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, ElderDragon452000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, ElderDragon452000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, ElderDragon452000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, ElderDragon452000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, ElderDragon452000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, ElderDragon452000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, ElderDragon452000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, ElderDragon452000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, ElderDragon452000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, ElderDragon452000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, ElderDragon452000_Act24)
    acts[30] = REGIST_FUNC(ai, goal, ElderDragon452000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, ElderDragon452000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, ElderDragon452000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, ElderDragon452000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, ElderDragon452000_Act34)
    acts[36] = REGIST_FUNC(ai, goal, ElderDragon452000_Act36)
    acts[40] = REGIST_FUNC(ai, goal, ElderDragon452000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, ElderDragon452000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, ElderDragon452000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, ElderDragon452000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, ElderDragon452000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, ElderDragon452000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, ElderDragon452000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, ElderDragon452000_Act47)
    acts[48] = REGIST_FUNC(ai, goal, ElderDragon452000_Act48)
    acts[49] = REGIST_FUNC(ai, goal, ElderDragon452000_Act49)
    acts[50] = REGIST_FUNC(ai, goal, ElderDragon452000_Act50)
    acts[51] = REGIST_FUNC(ai, goal, ElderDragon452000_Act51)
    local actAfter = REGIST_FUNC(ai, goal, ElderDragon452000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function ElderDragon452000_Act01(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16855)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 10
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local f3_local10 = 40
    local f3_local11 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 3
    local turnFaceAngle = 60
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act02(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 18
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local f4_local10 = 40
    local f4_local11 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 3
    local turnFaceAngle = 60
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act03(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16855)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 7
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3014
    local successDist = 40
    local f5_local11 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act04(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3015
    local successDist = 40
    local f6_local4 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act05(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3011
    local animationId_2 = 3012
    local successDist = 90
    local f7_local5 = 90
    local f7_local6 = 40
    local f7_local7 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 100
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 150, 90, 40) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 150, 90, 40) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act06(ai, goal, paramTbl)
    local animationId = 3016
    local successDist = 90
    local f8_local2 = 90
    local f8_local3 = 40
    local f8_local4 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 100
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16854)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16873)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
end

function ElderDragon452000_Act07(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3009
    local animationId_2 = 3010
    local successDist = 90
    local f9_local5 = 90
    local f9_local6 = 40
    local f9_local7 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 100
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 110, 90, 15) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 110, 90, 15) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
end

function ElderDragon452000_Act08(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3020
    local animationId_2 = 3021
    local f10_local4 = 90
    local f10_local5 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local6 = 0
    local f10_local7 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16870)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16867)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId_2, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
end

function ElderDragon452000_Act09(ai, goal, paramTbl)
    local animationId = 3025
    local animationId_2 = 3026
    local successDist = 90
    local f11_local3 = 90
    local f11_local4 = 40
    local f11_local5 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 360
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16867)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 99) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act10(ai, goal, paramTbl)
    local animationId = 20019
    local successDist = 90
    local f12_local2 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
end

function ElderDragon452000_Act11(ai, goal, paramTbl)
    local animationId = 3017
    local successDist = 90
    local f13_local2 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 3
    local turnFaceAngle = 30
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act12(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16854)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 35
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3018
    local successDist = 80
    local f14_local11 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 20
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16858)
    local successDist = 80
    local f15_local3 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 20
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3019, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3030
    local f16_local3 = 3030
    local successDist = 90
    local f16_local5 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 3
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
end

function ElderDragon452000_Act15(ai, goal, paramTbl)
    local animationId = 3027
    local animationId_2 = 3028
    local f17_local2 = 90
    local f17_local3 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId_2, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
end

function ElderDragon452000_Act16(ai, goal, paramTbl)
    local animationId = 3029
    local successDist = 90
    local f18_local2 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16858)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
end

function ElderDragon452000_Act17(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3022
    local f19_local3 = 3023
    local successDist = 90
    local f19_local5 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 60
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16870)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act18(ai, goal, paramTbl)
    local animationId = 3024
    local successDist = 90
    local f20_local2 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act19(ai, goal, paramTbl)
    local animationId = 3024
    local successDist = 90
    local f21_local2 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act20(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 6, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act22(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f24_local1 = 10
    local f24_local2 = 30
    local f24_local3 = true
    local random = ai:GetRandam_Int(1, 100)
    local f24_local5 = -1
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(25, 30))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(25, 30))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act30(ai, goal, paramTbl)
    local f25_local0 = 300
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16868)
    local animationId = 3032
    local successDist = 999
    local f25_local3 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act31(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16859)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    local hasEffect16890 = ai:HasSpecialEffectId(TARGET_SELF, 16890)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3038
    local successDist = 90
    local f26_local5 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act32(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16859)
    local animationId = 3034
    local successDist = 999
    local f27_local2 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, animationId, TARGET_HOSTPLAYER, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act33(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16859)
    local hasEffect16890 = ai:HasSpecialEffectId(TARGET_SELF, 16890)
    local animationId = 20015
    local successDist = 999
    local f28_local3 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_Act52(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ElderDragon452000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_ElderDragon452000_AfterAttackAct, 10)
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
    local f33_local4 = ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16868)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16869)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16870)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16858)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16873)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    local hasEffect16890 = ai:HasSpecialEffectId(TARGET_SELF, 16890)
    local hasEffect16891 = ai:HasSpecialEffectId(TARGET_SELF, 16891)
    local hasEffect16892 = ai:HasSpecialEffectId(TARGET_SELF, 16892)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16867) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 180) and distanceEnemy_2 < 15 and ai:GetAttackPassedTime(20019) >= 40 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 20019, TARGET_ENE_0, 4, 0, 90)
            return true
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 20020, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16851) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 180) and distanceEnemy_2 < 8 and distanceEnemy_2 > 1 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 4, 0, 90)
            return true
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and distanceEnemy_2 < 8 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3007, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16852) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy_2 < 15 then
            if random_2 > 70 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3004, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16857) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3005, TARGET_ENE_0, 4, 0, 90)
        return true
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16853) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and distanceEnemy_2 > 1 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16855) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and distanceEnemy_2 > 1 and distanceEnemy_2 < 15 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3008, TARGET_ENE_0, 4, 0, 90)
            return true
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3009, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16860) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 40) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3017, TARGET_ENE_0, 20, 0, 90)
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16858) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        if distanceEnemy_2 > 16 then
            if random > 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 20, 0, 90)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 20, 0, 90)
                return true
            end
        elseif distanceEnemy_2 > 9 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 20, 0, 90)
            return true
        elseif distanceEnemy_2 > 2 then
            if random > 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3000, TARGET_ENE_0, 20, 0, 90)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 20, 0, 90)
                return true
            end
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3016, TARGET_ENE_0, 20, 0, 90)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16859) then
        local random_2 = ai:GetRandam_Int(1, 100)
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 20017, TARGET_HOSTPLAYER, 9999, 360, 360)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and (ai:GetSpecialEffectActivateInterruptId(5030) or ai:GetSpecialEffectActivateInterruptId(5031) or ai:GetSpecialEffectActivateInterruptId(5032) or ai:GetSpecialEffectActivateInterruptId(5033)) then
        goal:ClearSubGoal()
        local random_2 = ai:GetRandam_Int(1, 100)
        local random_3 = ai:GetRandam_Int(1, 100)
        local random_4 = ai:GetRandam_Int(1, 100)
        local directionFromTarget = AI_DIR_TYPE_F
        local lineWidth = 5
        ai:SetStringIndexedNumber("ExistMeshOnLine_F", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToB", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToBL", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToBR", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToL", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToR", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToF", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToF, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToFL", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFL, 25 + lineWidth, lineWidth, 0))
        ai:SetStringIndexedNumber("ExistMeshOnLine_ToFR", ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFR, 25 + lineWidth, lineWidth, 0))
        if ai:GetStringIndexedNumber("ExistMeshOnLine_ToBL") >= 25 or ai:GetStringIndexedNumber("ExistMeshOnLine_ToBR") >= 25 then
            if ai:GetStringIndexedNumber("ExistMeshOnLine_ToBL") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToBR
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_ToBR") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToBL
            elseif random_4 > 50 then
                directionFromTarget = AI_DIR_TYPE_ToBR
            else
                directionFromTarget = AI_DIR_TYPE_ToBL
            end
        elseif ai:GetStringIndexedNumber("ExistMeshOnLine_ToL") >= 25 or ai:GetStringIndexedNumber("ExistMeshOnLine_ToR") >= 25 then
            if ai:GetStringIndexedNumber("ExistMeshOnLine_ToL") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToR
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_ToR") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToL
            elseif random_4 > 50 then
                directionFromTarget = AI_DIR_TYPE_ToR
            else
                directionFromTarget = AI_DIR_TYPE_ToL
            end
        elseif ai:GetStringIndexedNumber("ExistMeshOnLine_ToFL") >= 25 or ai:GetStringIndexedNumber("ExistMeshOnLine_ToFR") >= 25 then
            if ai:GetStringIndexedNumber("ExistMeshOnLine_ToFL") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToFR
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_ToFR") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToFL
            elseif random_4 > 50 then
                directionFromTarget = AI_DIR_TYPE_ToFR
            else
                directionFromTarget = AI_DIR_TYPE_ToFL
            end
        elseif ai:GetStringIndexedNumber("ExistMeshOnLine_ToB") >= 25 or ai:GetStringIndexedNumber("ExistMeshOnLine_ToF") >= 25 then
            if ai:GetStringIndexedNumber("ExistMeshOnLine_ToB") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToF
            elseif ai:GetStringIndexedNumber("ExistMeshOnLine_ToF") < 25 then
                directionFromTarget = AI_DIR_TYPE_ToB
            elseif random_4 > 50 then
                directionFromTarget = AI_DIR_TYPE_ToF
            else
                directionFromTarget = AI_DIR_TYPE_ToB
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            ai:SetNumber(10, 0)
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_HOSTPLAYER, directionFromTarget, 5, TARGET_HOSTPLAYER, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3033, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            if ai:GetNumber(10) == 0 then
                ai:SetNumber(10, 1)
                if random_2 > 65 then
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 20, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                elseif random_2 > 15 then
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 20, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 999, 0, 0)
                else
                    ai:SetNumber(10, 0)
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 15, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif ai:GetNumber(10) == 1 then
                ai:SetNumber(10, 2)
                if random_2 > 75 then
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 20, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 999, 0, 0)
                elseif random_2 > 35 then
                    ai:SetNumber(10, 0)
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 20, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    ai:SetNumber(10, 0)
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 15, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif ai:GetNumber(10) == 2 then
                ai:SetNumber(10, 0)
                if random_2 > 80 then
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 15, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                elseif random_2 > 40 then
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 20, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 40, TARGET_ENE_0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_HOSTPLAYER, directionFromTarget, 0, TARGET_EVENT, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3035, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, directionFromTarget, 5, TARGET_ENE_0, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        return
    end
    return false
end

RegisterTableGoal(GOAL_ElderDragon452000_AfterAttackAct, "ElderDragon452000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ElderDragon452000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

