RegisterTableGoal(GOAL_Morgott213005_Battle, "Morgott213005_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213005_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetStringIndexedNumber("ShootInerruptFlg", 0)
    ai:SetStringIndexedNumber("ComboRoopCnt", 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    ai:SetStringIndexedNumber("Run_Odds", 0)
    ai:SetStringIndexedNumber("EnemyDown_Flg", 0)
    ai:SetStringIndexedNumber("Test_Flg", 0)
    ai:SetStringIndexedNumber("ComboRoopCnt", 0)
    ai:DeleteObserve(0)
    ai:DeleteObserve(1)
    if ai:HasSpecialEffectId(TARGET_SELF, 16201) or ai:HasSpecialEffectId(TARGET_SELF, 16203) then
        ai:SetStringIndexedNumber("Run_Odds", 100)
    end
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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16210)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16231)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16232)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16216)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16217)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16219)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16220)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16222)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16223)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16226)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16227)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16232)
    ai:SetNumber(5, ai:GetNumber(5) + 1)
    ai:SetNumber(6, 0)
    if ai:GetStringIndexedNumber("ShootInerruptFlg") > 0 then
        ai:SetStringIndexedNumber("ShootInerruptFlg", ai:GetStringIndexedNumber("ShootInerruptFlg") - 1)
    elseif ai:GetStringIndexedNumber("ShootInerruptFlg") < 0 then
        ai:SetStringIndexedNumber("ShootInerruptFlg", 0)
    end
    if ai:GetStringIndexedNumber("ShootInerruptFlg") >= 1 then
        ai:SetStringIndexedNumber("Run_Odds", 100)
    end
    if ai:HasSpecialEffectId(TARGET_ENE_0, 90) or ai:HasSpecialEffectId(TARGET_ENE_0, 30) or ai:HasSpecialEffectId(TARGET_ENE_0, 6992) then
        ai:SetStringIndexedNumber("EnemyDown_Flg", 1)
    else
        ai:SetStringIndexedNumber("EnemyDown_Flg", 0)
    end
    ai:SetStringIndexedNumber("Test_Flg", ai:GetRemainingAttackCoolTime(3008))
    if ai:GetNumber(7) == 0 then
        probabilities[40] = 90000
    elseif ai:GetHpRate(TARGET_SELF) <= 0.8 and not ai:HasSpecialEffectId(TARGET_SELF, 5020) then
        probabilities[15] = 10000000
    elseif ai:GetStringIndexedNumber("EnemyDown_Flg") == 1 and ai:GetRemainingAttackCoolTime(3008) <= 0 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15) then
        probabilities[14] = 90000
    elseif ai:HasSpecialEffectId(TARGET_SELF, 16203) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if distanceEnemy > 14 then
            probabilities[1] = 1
            probabilities[10] = 80
            probabilities[13] = 5
            probabilities[18] = 5
            probabilities[20] = 80
            probabilities[21] = 5
        elseif distanceEnemy > 8 then
            probabilities[1] = 1
            probabilities[10] = 60
            probabilities[13] = 5
            probabilities[18] = 5
            probabilities[20] = 60
        else
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[10] = 60
            end
            probabilities[1] = 1
            probabilities[2] = 1
            probabilities[3] = 1
            probabilities[13] = 5
            probabilities[20] = 60
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if distanceEnemy > 14 then
            probabilities[1] = 15
            probabilities[2] = 15
            probabilities[3] = 30
            probabilities[10] = 60
            probabilities[13] = 50
            probabilities[18] = 50
            probabilities[20] = 50
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[21] = 125
            if ai:GetStringIndexedNumber("Run_Odds") == 0 then
                probabilities[44] = 40
            end
        elseif distanceEnemy > 5 then
            probabilities[1] = 10
            probabilities[2] = 20
            probabilities[14] = 100
            probabilities[20] = 50
            probabilities[24] = 50
            if distanceEnemy > 8 then
                probabilities[3] = 50
                probabilities[10] = 100
                probabilities[13] = 100
                probabilities[18] = 100
                probabilities[20] = 80
                probabilities[21] = 150
                probabilities[24] = 80
            end
            if distanceEnemy > 7.5 and ai:GetStringIndexedNumber("Run_Odds") == 0 then
                probabilities[44] = 40
            end
            if ai:GetNumber(5) > 4 and ai:HasSpecialEffectId(TARGET_SELF, 16202) then
                probabilities[44] = 9000
            end
        else
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 40
                probabilities[2] = 25
                probabilities[4] = 20
                probabilities[5] = 20
                probabilities[6] = 50
                probabilities[14] = 100
                probabilities[15] = 60
                probabilities[23] = 30
                probabilities[24] = 50
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                probabilities[2] = 40
                probabilities[4] = 20
                probabilities[5] = 15
                probabilities[14] = 100
                probabilities[15] = 60
                probabilities[23] = 20
                probabilities[43] = 10
                probabilities[47] = 20
            else
                probabilities[4] = 30
                probabilities[5] = 40
                probabilities[15] = 60
                probabilities[14] = 100
                probabilities[20] = 20
                probabilities[43] = 15
                probabilities[47] = 30
            end
            if ai:GetNumber(5) > 4 and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4) then
                probabilities[43] = 100
            end
            if ai:GetNumber(5) > 4 * 2 and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) then
                probabilities[5] = 1000000
            end
            if ai:GetNumber(5) > 4 and ai:HasSpecialEffectId(TARGET_SELF, 16202) then
                probabilities[44] = 9000
            end
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, -1, 3 + ai:GetMapHitRadius(TARGET_SELF)) then
        probabilities[8] = 55
        probabilities[15] = 80
        probabilities[47] = 30
    elseif distanceEnemy < 7 then
        probabilities[47] = 50
        if distanceEnemy <= 5 then
            probabilities[4] = 50
            probabilities[15] = 50
        end
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            probabilities[23] = 50
        else
            probabilities[20] = 50
        end
    else
        probabilities[42] = 20
        probabilities[47] = 80
    end
    if distanceEnemy <= 7.5 then
        probabilities[13] = 0
    end
    if distanceEnemy < 5 then
        probabilities[3] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16202) then
        probabilities[5] = 0
    end
    if ai:GetTimer(1) > 0 then
        probabilities[4] = 0
    end
    if ai:GetTimer(2) > 0 then
        probabilities[23] = 0
    end
    if ai:GetHpRate(TARGET_SELF) > 0.8 then
        probabilities[15] = 0
        probabilities[21] = 0
    end
    if ai:GetHpRate(TARGET_SELF) < 0.3 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 8) then
        probabilities[19] = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16200) == false then
        probabilities[14] = 0
        probabilities[24] = 0
    end
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9999) and ai:GetStringIndexedNumber("Run_Odds") == 0 and ai:GetNumber(5) > 4 then
        probabilities[44] = 9000
        if distanceEnemy > 7 and random < 30 then
            probabilities[44] = 0
            ai:SetNumber(5, 0)
        elseif distanceEnemy <= 7 and ai:HasSpecialEffectId(TARGET_SELF, 16202) == false then
            probabilities[44] = 0
        end
    end
    if ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 3) == false and ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 3) == false then
        probabilities[44] = 0
    end
    if ai:GetHpRate(TARGET_SELF) <= 0.8 and not ai:HasSpecialEffectId(TARGET_SELF, 5020) then
        probabilities[44] = 0
    end
    if ai:GetNumber(7) == 0 then
        probabilities[13] = 0
        probabilities[18] = 0
        ai:SetNumber(7, 1)
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 20, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3010, 20, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3015, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3004, 20, probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3039, 30, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3014, 20, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3029, 20, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3038, 20, probabilities[8], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3018, 50, probabilities[10], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3037, 10, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3008, 40, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3023, 50, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3026, 40, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3022, 30, probabilities[17], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3008, 30, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3006, 10, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3026, 40, probabilities[19], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3028, 20, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3029, 15, probabilities[21], 0)
    probabilities[22] = SetCoolTime(ai, goal, 3032, 20, probabilities[22], 0)
    probabilities[23] = SetCoolTime(ai, goal, 3033, 20, probabilities[23], 1)
    probabilities[24] = SetCoolTime(ai, goal, 3034, 30, probabilities[24], 0)
    probabilities[24] = SetCoolTime(ai, goal, 3036, 30, probabilities[24], 0)
    acts[1] = REGIST_FUNC(ai, goal, Morgott213005_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Morgott213005_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Morgott213005_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Morgott213005_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Morgott213005_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Morgott213005_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Morgott213005_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Morgott213005_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Morgott213005_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Morgott213005_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Morgott213005_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Morgott213005_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Morgott213005_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Morgott213005_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Morgott213005_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Morgott213005_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Morgott213005_Act17)
    acts[18] = REGIST_FUNC(ai, goal, Morgott213005_Act18)
    acts[19] = REGIST_FUNC(ai, goal, Morgott213005_Act19)
    acts[20] = REGIST_FUNC(ai, goal, Morgott213005_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Morgott213005_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Morgott213005_Act22)
    acts[23] = REGIST_FUNC(ai, goal, Morgott213005_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Morgott213005_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Morgott213005_Act25)
    acts[26] = REGIST_FUNC(ai, goal, Morgott213005_Act26)
    acts[30] = REGIST_FUNC(ai, goal, Morgott213005_Act30)
    acts[31] = REGIST_FUNC(ai, goal, Morgott213005_Act31)
    acts[32] = REGIST_FUNC(ai, goal, Morgott213005_Act32)
    acts[33] = REGIST_FUNC(ai, goal, Morgott213005_Act33)
    acts[34] = REGIST_FUNC(ai, goal, Morgott213005_Act34)
    acts[35] = REGIST_FUNC(ai, goal, Morgott213005_Act35)
    acts[36] = REGIST_FUNC(ai, goal, Morgott213005_Act36)
    acts[37] = REGIST_FUNC(ai, goal, Morgott213005_Act37)
    acts[38] = REGIST_FUNC(ai, goal, Morgott213005_Act38)
    acts[39] = REGIST_FUNC(ai, goal, Morgott213005_Act39)
    acts[40] = REGIST_FUNC(ai, goal, Morgott213005_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Morgott213005_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Morgott213005_Act42)
    acts[43] = REGIST_FUNC(ai, goal, Morgott213005_Act43)
    acts[44] = REGIST_FUNC(ai, goal, Morgott213005_Act44)
    acts[45] = REGIST_FUNC(ai, goal, Morgott213005_Act45)
    acts[46] = REGIST_FUNC(ai, goal, Morgott213005_Act46)
    acts[47] = REGIST_FUNC(ai, goal, Morgott213005_Act47)
    local actAfter = REGIST_FUNC(ai, goal, Morgott213005_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Morgott213005_Act01(ai, goal, paramTbl)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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
    local goalLife = 10
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act02(ai, goal, paramTbl)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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
    local goalLife = 10
    local animationId = 3010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act03(ai, goal, paramTbl)
    local stopDist = 9
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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
    local goalLife = 10
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act04(ai, goal, paramTbl)
    local stopDist = 7.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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
    ai:SetTimer(1, 10)
    local goalLife = 10
    local animationId = 3004
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act05(ai, goal, paramTbl)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3039
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:SetNumber(5, ai:GetNumber(5) + 3)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act06(ai, goal, paramTbl)
    local stopDist = 4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3014
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act07(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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
    local goalLife = 10
    local animationId = 3029
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act08(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3038
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act09(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3024
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act10(ai, goal, paramTbl)
    local stopDist = 16
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local goalLife = 10
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act11(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local goalLife = 10
    local animationId = 3019
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act12(ai, goal, paramTbl)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local goalLife = 10
    local animationId = 3021
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act13(ai, goal, paramTbl)
    local stopDist = 30
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3037
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act14(ai, goal, paramTbl)
    if ai:GetStringIndexedNumber("EnemyDown_Flg") == 1 then
        local goalLife = 10
        local animationId = 3008
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local upAngleThreshold = 0
        local downAngleThreshold = 0
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, TARGET_ENE_0, successDist, upAngleThreshold, downAngleThreshold, 0, 0)
    else
        local stopDist = 12
        local canRunDist = 0
        local forceRunMinDist = 999
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 2
        local runLife = 10
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
        local goalLife = 10
        local animationId = 3008
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 0
        local turnFaceAngle = 0
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act15(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local goalLife = 10
    local animationId = 3023
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and distanceEnemy > 6 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        local goalLife = 4
        local animationId = 6001
        local f18_local3 = TARGET_ENE_0
        local turnTime = 0
        local dirSpaceCheck = AI_DIR_TYPE_B
        local distSpaceCheck = 0
        goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, turnTarget, turnTime, dirSpaceCheck, distSpaceCheck)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
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
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
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
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
end

function Morgott213005_Act17(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local goalLife = 10
    local animationId = 3022
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act18(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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
    local goalLife = 10
    local animationId = 3006
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act19(ai, goal, paramTbl)
    local stopDist = 7
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local goalLife = 10
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act20(ai, goal, paramTbl)
    local stopDist = 14
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16232)
    local goalLife = 10
    local animationId = 3028
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act21(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
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
    local goalLife = 10
    local animationId = 3029
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act22(ai, goal, paramTbl)
    local stopDist = 4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3032
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act23(ai, goal, paramTbl)
    local stopDist = 6.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16231)
    ai:SetTimer(2, 12)
    local goalLife = 10
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act24(ai, goal, paramTbl)
    local stopDist = 13
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3034
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act25(ai, goal, paramTbl)
    ai:SetTimer(4, 20)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20005, TARGET_ENE_0, 6.5, 0, 120, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20007, TARGET_ENE_0, 6.5, 0, 120, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20006, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act26(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 11.5 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act30(ai, goal, paramTbl)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act31(ai, goal, paramTbl)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, 3028, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act40(ai, goal, paramTbl)
    local goalLife = 10
    local stopDist = 10
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act41(ai, goal, paramTbl)
    local goalLife = 2
    local stopDist = 8
    local walk = false
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act43(ai, goal, paramTbl)
    ai:SetNumber(5, ai:GetNumber(5) + 3)
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

function Morgott213005_Act44(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:SetNumber(5, 0)
    local existMesh = ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 3)
    local existMesh_2 = ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 3)
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
    local goalLife = ai:GetRandam_Int(2.5, 3.5)
    local moveTarget = TARGET_ENE_0
    local right = random
    local angleThreshold = 100
    local isWalk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local f35_local11 = true
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act45(ai, goal, paramTbl)
    local goalLife = 6
    local stopDist = 15
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Morgott213005_Act46(ai, goal, paramTbl)
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

function Morgott213005_Act47(ai, goal, paramTbl)
    ai:SetNumber(5, ai:GetNumber(5) + 3)
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

function Morgott213005_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Morgott213005_AfterAttackAct, 10)
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
    local f42_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f42_local1 = 0
    local f42_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local random_3 = ai:GetRandam_Int(1, 100)
    local random_4 = ai:GetRandam_Int(1, 100)
    local f42_local8 = 0
    if ai:HasSpecialEffectId(TARGET_ENE_0, 6992) or ai:HasSpecialEffectId(TARGET_ENE_0, 30) then
        f42_local8 = 1
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
    end
    if ai:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if ai:IsInsideObserve(0) then
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        elseif ai:IsInsideObserve(1) then
            ai:DeleteObserve(1)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20009, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(16226) then
            ai:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 145, 3.5 + ai:GetMapHitRadius(TARGET_SELF))
        elseif ai:GetSpecialEffectActivateInterruptId(16227) then
            ai:DeleteObserve(1)
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 16233) then
        ai:SetStringIndexedNumber("ShootInerruptFlg", 2)
        if ai:HasSpecialEffectId(TARGET_SELF, 16200) == true and distanceEnemy > 8 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                return true
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                return true
            end
        else
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        ai:SetNumber(6, ai:GetNumber(6) + 1)
        if ai:GetNumber(6) >= 4 then
            ai:SetNumber(6, 0)
            ai:SetNumber(5, ai:GetNumber(5) + 1)
        end
        local f42_local9 = 0
        if ai:HasSpecialEffectId(TARGET_SELF, 5025) or ai:HasSpecialEffectId(TARGET_SELF, 5027) or ai:HasSpecialEffectId(TARGET_SELF, 5031) or ai:HasSpecialEffectId(TARGET_SELF, 5029) or ai:HasSpecialEffectId(TARGET_SELF, 16232) then
            f42_local9 = 1
        end
        if f42_local9 == 1 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 5.5 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(4) <= 0 and random < 40 then
            goal:ClearSubGoal()
            Morgott213005_Act25(ai, goal)
            return true
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16212) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f42_local8 == 1 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5025) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.3 + ai:GetMapHitRadius(TARGET_SELF)) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                ai:SetNumber(5, ai:GetNumber(5) + 3)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5026) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if random < 70 and ai:GetTimer(2) <= 0 and distanceEnemy < 5 then
                    ai:SetTimer(2, 12)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif random_3 < 60 and distanceEnemy > 2.4 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 2.4 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(1) <= 0 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                ai:SetTimer(1, 10)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 30 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if random < 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5027) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.3 + ai:GetMapHitRadius(TARGET_SELF)) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                ai:SetNumber(5, ai:GetNumber(5) + 3)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5028) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if distanceEnemy > 4.5 and random_2 > 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6.5 + ai:GetMapHitRadius(TARGET_SELF)) and random_3 > 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20007, TARGET_ENE_0, 6.5, 0, 120, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(1) <= 0 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                ai:SetTimer(1, 10)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random < 65 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5029) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.3 + ai:GetMapHitRadius(TARGET_SELF)) and random < 70 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                ai:SetNumber(5, ai:GetNumber(5) + 3)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 8.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5030) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(1) <= 0 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                ai:SetTimer(1, 10)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 16 then
                if random < 65 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16213) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f42_local8 == 1 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 2.4 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16214) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f42_local8 == 1 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 18 + ai:GetMapHitRadius(TARGET_SELF)) and distanceEnemy > 3.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5031) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + ai:GetMapHitRadius(TARGET_SELF)) and random < 60 and distanceEnemy > 2.4 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(1) <= 0 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                if ai:GetTimer(1) > 0 then
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                ai:SetTimer(1, 10)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 17 + ai:GetMapHitRadius(TARGET_SELF)) and random_2 < 50 then
                goal:ClearSubGoal()
                Morgott213005_Act26(ai, goal)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random < 65 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16218) then
            ai:SetStringIndexedNumber("ComboRoopCnt", ai:GetStringIndexedNumber("ComboRoopCnt") + 1)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + ai:GetMapHitRadius(TARGET_SELF)) and random < 70 and ai:GetStringIndexedNumber("ComboRoopCnt") < 2 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 17 + ai:GetMapHitRadius(TARGET_SELF)) and random_2 < 50 then
                goal:ClearSubGoal()
                Morgott213005_Act26(ai, goal)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random < 65 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5032) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if ai:HasSpecialEffectId(TARGET_SELF, 16203) or ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16211) then
            if distanceEnemy <= 5.4 or distanceEnemy > 15 then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16222) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 4 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5033) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if ai:GetRemainingAttackCoolTime(3018) <= 0 and random_3 < 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, -1, 999) then
                    if random < 30 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, -1, 999) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:GetRemainingAttackCoolTime(3018) <= 0 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 15.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 17 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random < 70 and ai:GetHpRate(TARGET_SELF) <= 0.8 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 18 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetHpRate(TARGET_SELF) <= 0.8 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16231) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 7 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if distanceEnemy > 2.4 and random < 40 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, -1, 7.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif ai:HasSpecialEffectId(TARGET_SELF, 16200) and ai:GetTimer(3) <= 0 then
                    ai:SetTimer(3, 35)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 19 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetTimer(3) <= 0 and ai:HasSpecialEffectId(TARGET_SELF, 16200) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 15 + ai:GetMapHitRadius(TARGET_SELF)) and random < 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6 + ai:GetMapHitRadius(TARGET_SELF)) and ai:HasSpecialEffectId(TARGET_SELF, 16212) == false then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                ai:SetNumber(5, ai:GetNumber(5) + 3)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16220) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16219) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16232) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 8 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                if random < 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.3 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16216) then
            if ai:HasSpecialEffectId(TARGET_SELF, 16200) == false and random < 60 and distanceEnemy > 4.5 then
                return false
            elseif ai:HasSpecialEffectId(TARGET_SELF, 16200) and random < 30 and distanceEnemy > 4.5 then
                return false
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 4.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random_3 < 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, -1, 999) then
                    if random < 30 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, -1, 999) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 12 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16217) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 4.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if random_3 < 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, -1, 999) then
                    if ai:GetRemainingAttackCoolTime(3018) <= 0 and random_3 < 60 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random < 60 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, -1, 999) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 12 + ai:GetMapHitRadius(TARGET_SELF)) then
                if ai:GetRemainingAttackCoolTime(3018) <= 0 and random_3 < 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:GetRemainingAttackCoolTime(3018) <= 0 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 15.5 + ai:GetMapHitRadius(TARGET_SELF)) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + ai:GetMapHitRadius(TARGET_SELF)) then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 18 + ai:GetMapHitRadius(TARGET_SELF)) and ai:GetHpRate(TARGET_SELF) <= 0.8 and random_3 < 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 16223) then
            local animationId = 3000
            if random < 25 then
                animationId = 3000
            elseif random < 50 then
                animationId = 3003
            elseif random < 75 then
                animationId = 3035
            else
                animationId = 3005
            end
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Morgott213005_AfterAttackAct, "Morgott213005_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213005_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

