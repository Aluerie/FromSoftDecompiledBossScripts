RegisterTableGoal(GOAL_Mesmer513000_Battle, "Mesmer513000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Mesmer513000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010694)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010695)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local f2_local6 = 0
    if ai:HasSpecialEffectId(TARGET_ENE_0, 90) and ai:HasSpecialEffectId(TARGET_SELF, 20010612) == false then
        probabilities[44] = 10
    elseif ai:GetNumber(1) <= 0 then
        probabilities[42] = 20
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20010612) == false then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                if distanceEnemy >= 6 then
                    probabilities[5] = 10
                    probabilities[10] = 0
                    probabilities[17] = 0
                    probabilities[40] = 1
                    probabilities[41] = 10
                elseif distanceEnemy >= 4 then
                    probabilities[10] = 10
                    probabilities[17] = 20
                    probabilities[41] = 10
                else
                    probabilities[10] = 20
                    probabilities[17] = 10
                    probabilities[41] = 10
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                if distanceEnemy >= 6 then
                    probabilities[5] = 10
                    probabilities[10] = 0
                    probabilities[17] = 0
                    probabilities[40] = 1
                    probabilities[41] = 10
                elseif distanceEnemy >= 4 then
                    probabilities[10] = 10
                    probabilities[17] = 20
                    probabilities[41] = 10
                else
                    probabilities[10] = 20
                    probabilities[17] = 10
                    probabilities[41] = 10
                end
            elseif distanceEnemy >= 6 then
                probabilities[5] = 10
                probabilities[10] = 0
                probabilities[17] = 0
                probabilities[40] = 1
                probabilities[41] = 10
            elseif distanceEnemy >= 4 then
                probabilities[10] = 10
                probabilities[17] = 20
                probabilities[41] = 10
            else
                probabilities[10] = 20
                probabilities[17] = 10
                probabilities[41] = 10
            end
        elseif distanceEnemy >= 25 then
            probabilities[45] = 50
            probabilities[14] = 50
        elseif distanceEnemy >= 15 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 10
            probabilities[13] = 0
            probabilities[14] = 10
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
            probabilities[45] = 5
        elseif distanceEnemy >= 10 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 0
            probabilities[7] = 10
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 10
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 10
            probabilities[43] = 0
            probabilities[44] = 0
        elseif distanceEnemy >= 8 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 10
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 0
            probabilities[7] = 20
            probabilities[8] = 20
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 20
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 10
            probabilities[43] = 0
            probabilities[44] = 10
        elseif distanceEnemy >= 6 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 20
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 0
            probabilities[7] = 20
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 30
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 20
            probabilities[18] = 10
            probabilities[19] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 20
        elseif distanceEnemy >= 4 then
            probabilities[1] = 10
            probabilities[2] = 0
            probabilities[3] = 10
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 0
            probabilities[7] = 10
            probabilities[8] = 0
            probabilities[9] = 10
            probabilities[10] = 0
            probabilities[11] = 30
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 20
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 20
        elseif distanceEnemy >= 2 then
            probabilities[1] = 10
            probabilities[2] = 20
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 5
            probabilities[6] = 10
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 10
            probabilities[10] = 0
            probabilities[11] = 30
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 20
            probabilities[17] = 10
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[40] = 0
            probabilities[41] = 20
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
        else
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 10
            probabilities[5] = 0
            probabilities[6] = 20
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 10
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 20
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[40] = 0
            probabilities[41] = 20
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20010680) == false then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                if distanceEnemy >= 6 then
                    probabilities[5] = 10
                    probabilities[10] = 0
                    probabilities[17] = 0
                    probabilities[34] = 10
                    probabilities[40] = 1
                    probabilities[41] = 10
                elseif distanceEnemy >= 4 then
                    probabilities[10] = 5
                    probabilities[17] = 1
                    probabilities[34] = 20
                    probabilities[41] = 10
                else
                    probabilities[10] = 5
                    probabilities[17] = 1
                    probabilities[34] = 20
                    probabilities[41] = 10
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                if distanceEnemy >= 6 then
                    probabilities[5] = 10
                    probabilities[10] = 0
                    probabilities[17] = 0
                    probabilities[34] = 10
                    probabilities[40] = 1
                    probabilities[41] = 10
                elseif distanceEnemy >= 4 then
                    probabilities[10] = 5
                    probabilities[17] = 1
                    probabilities[34] = 20
                    probabilities[41] = 10
                else
                    probabilities[10] = 5
                    probabilities[17] = 1
                    probabilities[34] = 20
                    probabilities[41] = 10
                end
            elseif distanceEnemy >= 6 then
                probabilities[5] = 10
                probabilities[10] = 0
                probabilities[17] = 0
                probabilities[34] = 10
                probabilities[40] = 1
                probabilities[41] = 10
            elseif distanceEnemy >= 4 then
                probabilities[10] = 5
                probabilities[17] = 1
                probabilities[34] = 20
                probabilities[41] = 10
            else
                probabilities[10] = 5
                probabilities[17] = 1
                probabilities[34] = 20
                probabilities[41] = 10
            end
        elseif distanceEnemy >= 25 then
            probabilities[45] = 10
            probabilities[22] = 50
            probabilities[14] = 50
        elseif distanceEnemy >= 15 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 5
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 10
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[22] = 50
            probabilities[23] = 20
            probabilities[24] = 0
            probabilities[32] = 20
            probabilities[33] = 0
            probabilities[34] = 0
            probabilities[35] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[43] = 0
            probabilities[44] = 0
            probabilities[45] = 5
        elseif distanceEnemy >= 10 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 5
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[22] = 50
            probabilities[23] = 10
            probabilities[24] = 0
            probabilities[32] = 20
            probabilities[33] = 0
            probabilities[34] = 5
            probabilities[35] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
            probabilities[45] = 5
        elseif distanceEnemy >= 8 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 5
            probabilities[4] = 0
            probabilities[5] = 5
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 10
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[22] = 50
            probabilities[23] = 0
            probabilities[24] = 0
            probabilities[32] = 20
            probabilities[33] = 0
            probabilities[34] = 1
            probabilities[35] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
            probabilities[45] = 5
        elseif distanceEnemy >= 6 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 1
            probabilities[4] = 0
            probabilities[5] = 5
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 10
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 1
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[22] = 50
            probabilities[23] = 0
            probabilities[24] = 20
            probabilities[32] = 20
            probabilities[33] = 0
            probabilities[34] = 20
            probabilities[35] = 0
            probabilities[36] = 10
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
        elseif distanceEnemy >= 4 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 1
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 5
            probabilities[10] = 0
            probabilities[11] = 10
            probabilities[12] = 0
            probabilities[13] = 10
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 1
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[22] = 50
            probabilities[23] = 0
            probabilities[24] = 20
            probabilities[32] = 0
            probabilities[33] = 20
            probabilities[34] = 20
            probabilities[35] = 20
            probabilities[36] = 20
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
        elseif distanceEnemy >= 2 then
            probabilities[1] = 0
            probabilities[2] = 1
            probabilities[3] = 0
            probabilities[4] = 1
            probabilities[5] = 0
            probabilities[6] = 5
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 5
            probabilities[10] = 0
            probabilities[11] = 10
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 1
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 40
            probabilities[21] = 10
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 40
            probabilities[32] = 0
            probabilities[33] = 30
            probabilities[34] = 20
            probabilities[35] = 0
            probabilities[36] = 0
            probabilities[40] = 0
            probabilities[41] = 1
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
        else
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 1
            probabilities[5] = 0
            probabilities[6] = 10
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 5
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 1
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 1
            probabilities[20] = 20
            probabilities[21] = 10
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 5
            probabilities[32] = 0
            probabilities[33] = 30
            probabilities[34] = 20
            probabilities[35] = 0
            probabilities[36] = 0
            probabilities[40] = 0
            probabilities[41] = 0
            probabilities[42] = 0
            probabilities[43] = 0
            probabilities[44] = 0
        end
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) == false then
        probabilities[44] = 0
    end
    if hpRatioSelf > 0.9 then
        probabilities[5] = 0
        probabilities[11] = 0
    elseif ai:GetNumber(0) <= 0 then
        probabilities[11] = probabilities[11] * 100
    end
    if hpRatioSelf > 0.4 then
        probabilities[33] = 0
    elseif ai:GetNumber(2) <= 0 then
        probabilities[33] = probabilities[33] * 100
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010628) then
        probabilities[14] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010623) then
        probabilities[1] = 0
        probabilities[6] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010622) then
        probabilities[2] = 0
        probabilities[3] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010625) then
        probabilities[11] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010626) then
        probabilities[23] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010620) then
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[41] = 0
        probabilities[44] = 0
        probabilities[45] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010634) then
        probabilities[42] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010627) then
        probabilities[6] = 0
        probabilities[41] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010624) then
        probabilities[6] = 0
        probabilities[41] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010633) then
        probabilities[21] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010631) then
        probabilities[6] = 0
        probabilities[16] = 0
        probabilities[34] = 0
        probabilities[41] = 0
        probabilities[42] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010632) then
        probabilities[6] = 0
        probabilities[35] = 0
        probabilities[36] = 0
        probabilities[41] = 0
        probabilities[42] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010635) and ai:HasSpecialEffectId(TARGET_SELF, 20010637) and ai:HasSpecialEffectId(TARGET_SELF, 20010612) then
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[32] = 0
        local f2_local7 = probabilities[33]
        probabilities[37] = f2_local7 * 10
        probabilities[33] = 0
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20010637) and ai:HasSpecialEffectId(TARGET_SELF, 20010612) then
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[24] = 0
        probabilities[32] = 0
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20010635) and ai:HasSpecialEffectId(TARGET_SELF, 20010612) then
        probabilities[22] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 8, probabilities[1], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3005, 8, probabilities[2], 0)
    probabilities[3] = SetCoolTime(ai, goal, 3009, 8, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3010, 8, probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3011, 10, probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3012, 8, probabilities[6], 0)
    probabilities[7] = SetCoolTime(ai, goal, 3013, 8, probabilities[7], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3014, 8, probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3016, 8, probabilities[9], 0)
    probabilities[10] = SetCoolTime(ai, goal, 3017, 8, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3018, 35, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3021, 30, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3022, 45, probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3036, 60, probabilities[14], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3032, 8, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3030, 8, probabilities[17], 0)
    probabilities[20] = SetCoolTime(ai, goal, 20000, 30, probabilities[20], 0)
    probabilities[21] = SetCoolTime(ai, goal, 20001, 10, probabilities[21], 0)
    probabilities[22] = SetCoolTime(ai, goal, 20002, 30, probabilities[22], 0)
    probabilities[23] = SetCoolTime(ai, goal, 20003, 30, probabilities[23], 0)
    probabilities[24] = SetCoolTime(ai, goal, 20004, 30, probabilities[24], 0)
    probabilities[32] = SetCoolTime(ai, goal, 20022, 10, probabilities[32], 0)
    probabilities[33] = SetCoolTime(ai, goal, 20023, 50, probabilities[33], 0)
    probabilities[34] = SetCoolTime(ai, goal, 3034, 10, probabilities[34], 0)
    probabilities[35] = SetCoolTime(ai, goal, 3035, 10, probabilities[35], 0)
    probabilities[37] = SetCoolTime(ai, goal, 20024, 15, probabilities[37], 0)
    acts[1] = REGIST_FUNC(ai, goal, Mesmer513000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Mesmer513000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Mesmer513000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Mesmer513000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Mesmer513000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Mesmer513000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Mesmer513000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Mesmer513000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Mesmer513000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Mesmer513000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Mesmer513000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Mesmer513000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Mesmer513000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Mesmer513000_Act14)
    acts[16] = REGIST_FUNC(ai, goal, Mesmer513000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Mesmer513000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, Mesmer513000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, Mesmer513000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, Mesmer513000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Mesmer513000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Mesmer513000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, Mesmer513000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Mesmer513000_Act24)
    acts[32] = REGIST_FUNC(ai, goal, Mesmer513000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, Mesmer513000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, Mesmer513000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, Mesmer513000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, Mesmer513000_Act36)
    acts[37] = REGIST_FUNC(ai, goal, Mesmer513000_Act37)
    acts[40] = REGIST_FUNC(ai, goal, Mesmer513000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Mesmer513000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Mesmer513000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, Mesmer513000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, Mesmer513000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, Mesmer513000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, Mesmer513000_Act46)
    acts[50] = REGIST_FUNC(ai, goal, Mesmer513000_Act50)
    local actAfter = REGIST_FUNC(ai, goal, Mesmer513000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function Mesmer513000_Act01(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 10
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010600)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act02(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(0, 10)
    local goalLife = 5
    local animationId = 3005
    local target = TARGET_ENE_0
    local successDist = 10
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010602)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act03(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3009
    local animationId_2 = 3007
    local target = TARGET_ENE_0
    local successDist = 15
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010605)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act04(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3010
    local target = TARGET_ENE_0
    local successDist = 10
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010603)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act05(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDist = 10
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010604)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act06(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3012
    local animationId_2 = 3004
    local target = TARGET_ENE_0
    local successDist = 10
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010601)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act07(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3013
    local target = TARGET_ENE_0
    local successDist = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act08(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3014
    local animationId_2 = 3004
    local animationId_3 = 3001
    local target = TARGET_ENE_0
    local successDist = 10
    local f10_local6 = 0
    local f10_local7 = 0
    local f10_local8 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010601)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_3, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act09(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3016
    local target = TARGET_ENE_0
    local successDist = 100
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010601)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act10(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 100
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010601)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act11(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDist = 10
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act12(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3021
    local target = TARGET_ENE_0
    local successDist = 10
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act13(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3022
    local target = TARGET_ENE_0
    local successDist = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act14(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3036
    local target = TARGET_ENE_0
    local successDist = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act16(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3032
    local animationId_2 = 3033
    local target = TARGET_ENE_0
    local successDist = 100
    local f17_local5 = 0
    local f17_local6 = 0
    local f17_local7 = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 20010612) and ai:HasSpecialEffectId(TARGET_SELF, 20010633) == false then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010693)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010694)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act17(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3030
    local animationId_2 = 3031
    local target = TARGET_ENE_0
    local successDist = 100
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act18(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3025
    local target = TARGET_ENE_0
    local successDist = 10
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act19(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3026
    local target = TARGET_ENE_0
    local successDist = 100
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act20(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 20000
    local target = TARGET_ENE_0
    local successDist = 999
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010695)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act21(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 20001
    local target = TARGET_ENE_0
    local successDist = 999
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010694)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act22(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 20002
    local target = TARGET_ENE_0
    local successDist = 999
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010695)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act23(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 20003
    local target = TARGET_ENE_0
    local successDist = 999
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act24(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 20004
    local target = TARGET_ENE_0
    local successDist = 999
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act32(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 20022
    local target = TARGET_ENE_0
    local successDist = 10
    local f26_local4 = 0
    local f26_local5 = 0
    local f26_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act33(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20023
    local animationId_2 = 20033
    local target = TARGET_ENE_0
    local successDist = 30
    local f27_local5 = 0
    local f27_local6 = 0
    local f27_local7 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010692)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    ai:SetNumber(2, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act34(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3034
    local target = TARGET_ENE_0
    local successDist = 10
    local f28_local4 = 0
    local f28_local5 = 0
    local f28_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    local random = ai:GetRandam_Int(1, 10)
    if ai:HasSpecialEffectId(TARGET_SELF, 20010612) and ai:HasSpecialEffectId(TARGET_SELF, 20010633) == false then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010693)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010694)
    elseif random > 8 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010604)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act35(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3035
    local target = TARGET_ENE_0
    local successDist = 10
    local f29_local4 = 0
    local f29_local5 = 0
    local f29_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 20010626) == false then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010691)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act36(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3035
    local target = TARGET_ENE_0
    local successDist = 10
    local f30_local4 = 0
    local f30_local5 = 0
    local f30_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010690)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act37(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 20024
    local animationId_2 = 20034
    local target = TARGET_ENE_0
    local successDist = 30
    local f31_local13 = 0
    local f31_local14 = 0
    local f31_local15 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010692)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act40(ai, goal, paramTbl)
    local goalLife = 2
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 60
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f32_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f32_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act41(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local f33_local3 = 1
    local f33_local4 = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, 1, -1, target, distSpaceCheck, turnTime, alwaysSuccess)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, -1, 1, target, distSpaceCheck, turnTime, alwaysSuccess)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act42(ai, goal, paramTbl)
    local goalLife = 1.8
    local moveTarget = TARGET_ENE_0
    local stopDist = 0.1
    local turnTarget = TARGET_SELF
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardActionId)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act43(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(0.5, 1)
    local moveTarget = TARGET_ENE_0
    local stopDist = 10
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act44(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(2, 3)
    local moveTarget = TARGET_ENE_0
    local right = ai:GetRandam_Int(0, 1)
    local angleThreshold = 90
    local f36_local4 = 0
    local f36_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy > 8.5 then
        ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 8)
    else
        ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 4)
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act45(ai, goal, paramTbl)
    local goalLife = 1.8
    local moveTarget = TARGET_ENE_0
    local stopDist = 6
    local turnTarget = TARGET_SELF
    local walk = false
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, moveTarget, stopDist, turnTarget, walk, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_Act46(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = 1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Mesmer513000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Mesmer513000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideObserve(0) and ai:GetHpRate(TARGET_ENE_0) > 0 then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 20010600) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010600)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy >= 5 then
            elseif distanceEnemy >= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local goalLife = 5
                local animationId = 3002
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                local goalLife = 5
                local animationId = 3003
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, MESMER_INTERRUPT_ACOMBO) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, MESMER_INTERRUPT_ACOMBO)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy <= 8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local goalLife = 5
                local animationId = 3002
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010601) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010601)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(0, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20010612) or random > 40 then
                if distanceEnemy >= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 20010612) then
                        local goalLife = 5
                        local animationId = 3023
                        local target = TARGET_ENE_0
                        local successDist = 10
                        local f42_local6 = 0
                        local f42_local7 = 0
                        local f42_local8 = 0
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010698)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                    else
                        local goalLife = 5
                        local animationId = 3001
                        local animationId_2 = 3023
                        local target = TARGET_ENE_0
                        local successDist = 10
                        local f42_local7 = 0
                        local f42_local8 = 0
                        local f42_local9 = 0
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 20010612) or ai:HasSpecialEffectId(TARGET_SELF, 20010629) then
                    local goalLife = 5
                    local animationId = 3024
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    if ai:HasSpecialEffectId(TARGET_SELF, 20010612) then
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010699)
                    end
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                else
                    local goalLife = 5
                    local animationId = 3015
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010697)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            else
                local goalLife = 5
                local animationId = 20040
                local animationId_2 = 20041
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local7 = 0
                local f42_local8 = 0
                local f42_local9 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010697) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010697)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy >= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local goalLife = 5
                local animationId = 3023
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                local goalLife = 5
                local animationId = 3024
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010602) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010602)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(0, 100)
            if random > 40 then
                if distanceEnemy <= 1.5 then
                    local goalLife = 5
                    local animationId = 3019
                    local target = TARGET_ENE_0
                    local successDist = 15
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010604)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                else
                    local goalLife = 5
                    local animationId = 3008
                    local animationId_2 = 3007
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local7 = 0
                    local f42_local8 = 0
                    local f42_local9 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010605)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
                end
            else
                local goalLife = 5
                local animationId = 20043
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local6 = 0
                local f42_local7 = 0
                local f42_local8 = 0
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010604)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010605) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010605)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(0, 100)
            if distanceEnemy <= 2 then
                local goalLife = 5
                local animationId = 3019
                local target = TARGET_ENE_0
                local successDist = 15
                local f42_local6 = 0
                local f42_local7 = 0
                local f42_local8 = 0
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010604)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                local goalLife = 5
                local animationId = 3006
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local6 = 0
                local f42_local7 = 0
                local f42_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010604) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010604)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy <= 1 then
                local goalLife = 5
                local animationId = 3020
                local target = TARGET_ENE_0
                local successDist = 15
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                local goalLife = 5
                local animationId = 3006
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010603) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010603)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 6.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 20010612) then
                    local goalLife = 5
                    local animationId = 20022
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif ai:HasSpecialEffectId(TARGET_SELF, 20010628) == false then
                    local goalLife = 5
                    local animationId = 3036
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif random >= 60 then
                    local goalLife = 5
                    local animationId = 3011
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif random >= 30 then
                    local goalLife = 5
                    local animationId = 3021
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                elseif random >= 0 then
                    local goalLife = 5
                    local animationId = 3013
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            else
                goal:ClearSubGoal()
                ai:Replaning()
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010690) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010690)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local goalLife = 5
            local animationId = 3039
            local target = TARGET_ENE_0
            local successDist = 10
            local f42_local5 = 0
            local f42_local6 = 0
            local f42_local7 = 0
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010691) and ai:HasSpecialEffectId(TARGET_SELF, 20010637) == false then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010691)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local goalLife = 5
            local animationId = 3038
            local target = TARGET_ENE_0
            local successDist = 10
            local f42_local5 = 0
            local f42_local6 = 0
            local f42_local7 = 0
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010692) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010692)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if ai:HasSpecialEffectId(TARGET_SELF, 20010626) or ai:HasSpecialEffectId(TARGET_SELF, 20010637) then
                local goalLife = 5
                local animationId = 3037
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                local goalLife = 5
                local animationId = 20003
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010693) and ai:HasSpecialEffectId(TARGET_SELF, 20010637) == false then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010693)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if ai:HasSpecialEffectId(TARGET_SELF, 20010633) == false then
                local goalLife = 5
                local animationId = 20042
                local target = TARGET_ENE_0
                local successDist = 999
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010694)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010694) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010694)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(0, 100)
            if distanceEnemy >= 4 then
                if random >= 60 then
                    local goalLife = 5
                    local animationId = 3014
                    local animationId_2 = 3004
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local7 = 0
                    local f42_local8 = 0
                    local f42_local9 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010601)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId_2, target, successDist, 0, 0, 0)
                else
                    local goalLife = 5
                    local animationId = 3011
                    local target = TARGET_ENE_0
                    local successDist = 10
                    local f42_local6 = 0
                    local f42_local7 = 0
                    local f42_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010604)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            else
                local goalLife = 5
                local animationId = 3029
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local6 = 0
                local f42_local7 = 0
                local f42_local8 = 0
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010602)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010698) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010698)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy <= 4 then
                local goalLife = 5
                local animationId = 20036
                local target = TARGET_ENE_0
                local successDist = 15
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                local goalLife = 5
                local animationId = 20037
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010690)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010699) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010699)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy <= 4 then
                local goalLife = 5
                local animationId = 20038
                local target = TARGET_ENE_0
                local successDist = 15
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                local goalLife = 5
                local animationId = 20039
                local target = TARGET_ENE_0
                local successDist = 10
                local f42_local5 = 0
                local f42_local6 = 0
                local f42_local7 = 0
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010690)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:IsInterupt(INTERUPT_Shoot) then
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010609) then
            goal:ClearSubGoal()
            ai:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Mesmer513000_AfterAttackAct, "Mesmer513000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Mesmer513000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


