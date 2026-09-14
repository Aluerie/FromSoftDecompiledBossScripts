RegisterTableGoal(GOAL_CastleGargoyle477000_Battle, "CastleGargoyle477000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CastleGargoyle477000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(0, 0)
    ai:SetNumber(7, 0)
    ai:SetNumber(9, 0)
    ai:SetStringIndexedNumber("Run_Odds", 0)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3005)
    ai:EnableUnfavorableAttackCheck(0, 3008)
    ai:EnableUnfavorableAttackCheck(0, 3009)
    ai:EnableUnfavorableAttackCheck(0, 3011)
    ai:EnableUnfavorableAttackCheck(0, 3013)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3015)
    ai:EnableUnfavorableAttackCheck(0, 3016)
    ai:EnableUnfavorableAttackCheck(0, 3017)
    ai:EnableUnfavorableAttackCheck(0, 3018)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3022)
    ai:EnableUnfavorableAttackCheck(0, 3024)
    ai:EnableUnfavorableAttackCheck(0, 3025)
    ai:EnableUnfavorableAttackCheck(0, 3026)
    ai:EnableUnfavorableAttackCheck(0, 3027)
    ai:EnableUnfavorableAttackCheck(0, 3032)
    ai:EnableUnfavorableAttackCheck(1000000, 3000)
    ai:EnableUnfavorableAttackCheck(1000000, 3001)
    ai:EnableUnfavorableAttackCheck(1000000, 3002)
    ai:EnableUnfavorableAttackCheck(1000000, 3003)
    ai:EnableUnfavorableAttackCheck(1000000, 3004)
    ai:EnableUnfavorableAttackCheck(1000000, 3005)
    ai:EnableUnfavorableAttackCheck(1000000, 3006)
    ai:EnableUnfavorableAttackCheck(1000000, 3007)
    ai:EnableUnfavorableAttackCheck(1000000, 3008)
    ai:EnableUnfavorableAttackCheck(1000000, 3010)
    ai:EnableUnfavorableAttackCheck(1000000, 3011)
    ai:EnableUnfavorableAttackCheck(1000000, 3012)
    ai:EnableUnfavorableAttackCheck(1000000, 3013)
    ai:EnableUnfavorableAttackCheck(1000000, 3014)
    ai:EnableUnfavorableAttackCheck(1000000, 3015)
    ai:EnableUnfavorableAttackCheck(1000000, 3016)
    ai:EnableUnfavorableAttackCheck(1000000, 3017)
    ai:EnableUnfavorableAttackCheck(1000000, 3018)
    ai:EnableUnfavorableAttackCheck(1000000, 3019)
    ai:EnableUnfavorableAttackCheck(1000000, 3020)
    ai:EnableUnfavorableAttackCheck(1000000, 3021)
    ai:EnableUnfavorableAttackCheck(1000000, 3022)
    ai:EnableUnfavorableAttackCheck(1000000, 3023)
    ai:EnableUnfavorableAttackCheck(1000000, 3024)
    ai:EnableUnfavorableAttackCheck(1000000, 3025)
    ai:EnableUnfavorableAttackCheck(1000000, 3026)
    ai:EnableUnfavorableAttackCheck(1000000, 3027)
    ai:EnableUnfavorableAttackCheck(1000000, 3028)
    ai:EnableUnfavorableAttackCheck(1000000, 3029)
    ai:EnableUnfavorableAttackCheck(1000000, 3030)
    ai:EnableUnfavorableAttackCheck(1000000, 3031)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:GetStringIndexedNumber("Rolling_Cnt")
    ai:GetStringIndexedNumber("Warcry_Cnt")
    ai:GetStringIndexedNumber("Beam_Cnt")
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local distanceSound = ai:GetDist(TARGET_SOUND)
    local random_2 = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local random_3 = 1
    local f2_local11 = 1
    ai:SetNumber(4, 0)
    ai:SetNumber(6, 0)
    local hasEffect5400 = ai:HasSpecialEffectId(TARGET_SELF, 5400)
    local hasEffect5401 = ai:HasSpecialEffectId(TARGET_SELF, 5401)
    local hasEffect17640 = ai:HasSpecialEffectId(TARGET_SELF, 17640)
    local hasEffect17641 = ai:HasSpecialEffectId(TARGET_SELF, 17641)
    local hasEffect17642 = ai:HasSpecialEffectId(TARGET_SELF, 17642)
    local hasEffect17643 = ai:HasSpecialEffectId(TARGET_SELF, 17643)
    local hasEffect17644 = ai:HasSpecialEffectId(TARGET_SELF, 17644)
    local hasEffect17645 = ai:HasSpecialEffectId(TARGET_SELF, 17645)
    local hasEffect17648 = ai:HasSpecialEffectId(TARGET_SELF, 17648)
    local hasEffect17649 = ai:HasSpecialEffectId(TARGET_SELF, 17649)
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    local hasEffect17638 = ai:HasSpecialEffectId(TARGET_SELF, 17638)
    local hasEffect17637 = ai:HasSpecialEffectId(TARGET_SELF, 17637)
    local hasEffect17636 = ai:HasSpecialEffectId(TARGET_SELF, 17636)
    local hasEffect17626 = ai:HasSpecialEffectId(TARGET_SELF, 17626)
    local hasEffect17631 = ai:HasSpecialEffectId(TARGET_SELF, 17631)
    if ai:GetNumber(7) == 0 and ai:GetHpRate(TARGET_SELF) <= 0.5 then
        random_3 = ai:GetRandam_Int(100, 120)
    end
    if hasEffect17631 == true then
        random_3 = ai:GetRandam_Int(80, 180)
        f2_local11 = 3
    end
    local f2_local28 = 1
    local hasEffect17603 = ai:HasSpecialEffectId(TARGET_SELF, 17603)
    if hasEffect17603 == true then
        f2_local28 = 0
    end
    local f2_local30 = 1
    local hasEffect17635 = ai:HasSpecialEffectId(TARGET_SELF, 17635)
    if hasEffect17635 == true then
        f2_local30 = 0
    end
    local f2_local32 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 7) == false then
        f2_local32 = 1
    end
    local f2_local33 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 200, 90, 20) == false then
        f2_local33 = 1
    end
    local f2_local34 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 90, 3) then
        f2_local34 = 1
    end
    local f2_local35 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 90, 3) then
        f2_local35 = 1
    end
    local f2_local36 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 7) == false then
        f2_local36 = 1
    end
    local f2_local37 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 15) == true then
        f2_local37 = 1
    end
    local f2_local38 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 7) == false then
        f2_local38 = 1
    end
    local f2_local39 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 1500, 90, 30) == true and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 20) == false then
        f2_local39 = 1
    end
    local f2_local40 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 90, 90, 10) == true then
        f2_local40 = 1
    end
    local f2_local41 = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 15) == false and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 30) == true then
        f2_local41 = 1
    end
    ai:SetStringIndexedNumber("Run_Odds", 0)
    if ai:GetNumber(9) == 1 then
        ai:SetStringIndexedNumber("Run_Odds", 100)
        ai:SetNumber(9, 0)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16461)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16462)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if (hasEffect17648 == true or hasEffect17649 == true) and paramDoAdmire == 0 and (ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
        ai:SetNumber(2, 0)
        if ai:GetLatestSoundBehaviorID() == 477000 then
            probabilities[25] = 50
            if hasEffect17640 then
                probabilities[25] = 10
                probabilities[5] = 50
                probabilities[9] = 50
                probabilities[10] = 50
                probabilities[7] = 1
                if distanceEnemy_2 > 15 then
                    probabilities[5] = 0
                    probabilities[9] = 0
                end
                if distanceEnemy_2 > 17 then
                    probabilities[10] = 0
                end
            elseif hasEffect17643 then
                probabilities[25] = 10
                probabilities[41] = 50
                probabilities[44] = 50
                probabilities[48] = 50 * f2_local41
                probabilities[46] = 1
                if distanceEnemy_2 > 15 then
                    probabilities[41] = 0
                end
                if distanceEnemy_2 > 20 then
                    probabilities[44] = 0
                end
                if distanceEnemy_2 > 30 then
                    probabilities[48] = 0
                end
            elseif hasEffect17642 then
                probabilities[35] = 50
                probabilities[25] = 10
                probabilities[34] = 1
                if distanceEnemy_2 > 19 then
                    probabilities[35] = 0
                end
            elseif hasEffect17641 then
                probabilities[25] = 10
                probabilities[12] = 50
                probabilities[15] = 50
                probabilities[14] = 1
            end
            if distanceEnemy_2 > 25 then
                probabilities[12] = 0
            end
            if distanceEnemy_2 > 35 then
                probabilities[15] = 0
            end
            if distanceEnemy_2 < 18 then
                probabilities[15] = 0
                probabilities[25] = 0
            end
        elseif distanceEnemy_2 > 25 then
            probabilities[23] = 50
            probabilities[19] = 25
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 360, 20, 5) then
                probabilities[23] = 0
                probabilities[24] = 15
            end
        elseif distanceEnemy_2 > 10 then
            probabilities[23] = 15
            probabilities[24] = 15
            probabilities[19] = 50
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 360, 20, 5) then
                probabilities[23] = 0
            end
        else
            probabilities[24] = 15
            probabilities[21] = 15
            probabilities[19] = 25
            probabilities[4] = 25
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 360, 20, 5) then
                probabilities[24] = 0
            end
        end
    elseif hasEffect17644 == true then
        probabilities[50] = 1
    elseif hasEffect17640 then
        if random_3 >= 100 then
            probabilities[7] = 1
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if distanceEnemy_2 < 5 then
                probabilities[3] = 50 * f2_local11
                probabilities[4] = 40
                probabilities[26] = 25
                probabilities[27] = 25
                probabilities[28] = 25
            elseif distanceEnemy_2 < 15 then
                probabilities[26] = 25
                probabilities[27] = 25
            else
                probabilities[29] = 100
            end
        elseif distanceEnemy_2 > 15 then
            probabilities[22] = 50 * f2_local28
            probabilities[25] = 50 * f2_local39
            probabilities[24] = 1
            probabilities[30] = 50
        elseif distanceEnemy_2 > 5 then
            probabilities[1] = 30 * f2_local28
            probabilities[2] = 30 * f2_local32 * f2_local28
            probabilities[3] = 30 * f2_local11
            probabilities[5] = 30 * f2_local33
            probabilities[9] = 30
            probabilities[10] = 30
            probabilities[24] = 50 * f2_local30
            probabilities[30] = 50
        elseif distanceEnemy_2 > 2.5 then
            probabilities[1] = 30
            probabilities[3] = 25 * f2_local11
            probabilities[4] = 40
            probabilities[5] = 30 * f2_local33
            probabilities[6] = 40 * f2_local34
            probabilities[8] = 50 * f2_local35
            probabilities[9] = 30
            probabilities[24] = 15 * f2_local30
            probabilities[26] = 25
            probabilities[27] = 25
        else
            probabilities[3] = 25 * f2_local11
            probabilities[4] = 40
            probabilities[5] = 30 * f2_local33
            probabilities[6] = 40
            probabilities[8] = 50
            probabilities[26] = 15
            probabilities[27] = 15
        end
    elseif hasEffect17641 == true then
        if random_3 >= 100 and distanceEnemy_2 < 10 then
            probabilities[14] = 1
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if distanceEnemy_2 < 5 then
                probabilities[4] = 40
                probabilities[26] = 25
                probabilities[27] = 25
                probabilities[28] = 25
            elseif distanceEnemy_2 < 15 then
                probabilities[15] = 25
                probabilities[26] = 25
                probabilities[27] = 25
            else
                probabilities[29] = 100
            end
        elseif distanceEnemy_2 > 25 then
            probabilities[22] = 50 * f2_local28
            probabilities[25] = 50 * f2_local39
            probabilities[24] = 1
            probabilities[30] = 50
        elseif distanceEnemy_2 > 7 then
            probabilities[11] = 30 * f2_local28 * f2_local36
            probabilities[12] = 45
            probabilities[13] = 40 * f2_local11 * f2_local37
            probabilities[15] = 30
            probabilities[17] = 30 * f2_local28 * f2_local38
            probabilities[24] = 15 * f2_local30
            probabilities[30] = 50
        else
            probabilities[4] = 30
            probabilities[12] = 45
            probabilities[13] = 30 * f2_local11 * f2_local37
            probabilities[15] = 30
            probabilities[16] = 50
            probabilities[17] = 50 * f2_local28 * f2_local38
            probabilities[18] = 30 * f2_local28
            probabilities[26] = 30
            probabilities[27] = 30
            probabilities[28] = 20
        end
    elseif hasEffect17642 then
        if random_3 >= 100 then
            probabilities[34] = 1
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if distanceEnemy_2 < 5 then
                probabilities[4] = 40
                probabilities[36] = 30 * f2_local28
                probabilities[26] = 25
                probabilities[27] = 25
                probabilities[28] = 25
            elseif distanceEnemy_2 < 15 then
                probabilities[26] = 25
                probabilities[27] = 25
            else
                probabilities[29] = 100
            end
        elseif distanceEnemy_2 > 15 then
            probabilities[22] = 50 * f2_local28
            probabilities[25] = 50 * f2_local39
            probabilities[24] = 1 * f2_local30
            probabilities[30] = 50
        elseif distanceEnemy_2 > 7 then
            probabilities[31] = 30 * f2_local28
            probabilities[32] = 30 * f2_local28
            probabilities[33] = 30 * f2_local11
            probabilities[35] = 50
            probabilities[36] = 30 * f2_local28
            probabilities[24] = 50 * f2_local30
            probabilities[30] = 50
        elseif distanceEnemy_2 > 4 then
            probabilities[31] = 30 * f2_local28
            probabilities[32] = 30 * f2_local28
            probabilities[33] = 30 * f2_local11
            probabilities[35] = 50
            probabilities[36] = 30 * f2_local28
            probabilities[38] = 30
            probabilities[4] = 40
            probabilities[24] = 15 * f2_local30
            probabilities[26] = 25
            probabilities[27] = 25
        else
            probabilities[32] = 30 * f2_local28
            probabilities[33] = 30 * f2_local11
            probabilities[37] = 30
            probabilities[38] = 30
            probabilities[4] = 30
            probabilities[26] = 25
            probabilities[27] = 25
        end
    elseif hasEffect17643 then
        if random_3 >= 100 then
            probabilities[46] = 1
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if distanceEnemy_2 < 5 then
                probabilities[4] = 40
                probabilities[42] = 30
                probabilities[49] = 25
                probabilities[26] = 25
                probabilities[27] = 25
                probabilities[28] = 25
            elseif distanceEnemy_2 < 15 then
                probabilities[26] = 25
                probabilities[27] = 25
            else
                probabilities[29] = 100
            end
        elseif distanceEnemy_2 > 15 then
            probabilities[22] = 30 * f2_local28
            probabilities[25] = 30 * f2_local39
            probabilities[24] = 1
            probabilities[48] = 70 * f2_local41
            probabilities[30] = 50
        elseif distanceEnemy_2 > 5 then
            probabilities[40] = 40
            probabilities[41] = 30 * f2_local28
            probabilities[44] = 30
            probabilities[48] = 30 * f2_local41
            probabilities[43] = 30 * f2_local11
            probabilities[24] = 50 * f2_local30
            probabilities[30] = 50
        elseif distanceEnemy_2 > 3 then
            probabilities[40] = 40
            probabilities[42] = 30
            probabilities[43] = 25 * f2_local11
            probabilities[45] = 30 * f2_local40
            probabilities[47] = 30
            probabilities[4] = 40
            probabilities[24] = 15 * f2_local30
            probabilities[26] = 25
            probabilities[27] = 25
        else
            probabilities[40] = 30
            probabilities[42] = 30
            probabilities[43] = 25 * f2_local11
            probabilities[44] = 30
            probabilities[45] = 30 * f2_local40
            probabilities[4] = 40
            probabilities[26] = 25
            probabilities[27] = 25
        end
    end
    local random_4 = 1
    if ai:GetNumber(2) >= 40 then
        random_4 = ai:GetRandam_Int(100, 150)
    elseif ai:GetNumber(2) >= 30 then
        random_4 = ai:GetRandam_Int(70, 150)
    elseif ai:GetNumber(2) >= 20 then
        random_4 = ai:GetRandam_Int(50, 150)
    else
        random_4 = ai:GetRandam_Int(1, 10)
    end
    if (hasEffect17648 == true or hasEffect17649 == true) and ai:GetNumber(2) >= 15 and ai:GetHpRate(TARGET_FRI_0) > 0 then
        if hasEffect17640 == true then
            probabilities[3] = 9999
            probabilities[26] = 9999
            probabilities[27] = 9999
            probabilities[28] = 9999
        elseif hasEffect17643 == true then
            probabilities[26] = 9999
            probabilities[27] = 9999
            probabilities[28] = 9999
        elseif hasEffect17642 == true then
            probabilities[26] = 9999
            probabilities[27] = 9999
            probabilities[28] = 9999
        elseif hasEffect17641 == true then
            probabilities[14] = 9999
            probabilities[26] = 9999
            probabilities[27] = 9999
            probabilities[28] = 9999
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3006, 30, probabilities[3], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3010, 30, probabilities[3], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3033, 30, probabilities[3], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3034, 30, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3035, 30, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3005, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3008, 10, probabilities[6], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3032, 10, probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3012, 20, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3031, 20, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3003, 10, probabilities[11], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3012, 10, probabilities[18], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3006, 30, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3005, 40, probabilities[13], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3032, 40, probabilities[13], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3001, 20, probabilities[15], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3000, 20, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3004, 10, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3012, 10, probabilities[18], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3003, 10, probabilities[11], 0)
    probabilities[30] = SetCoolTime(ai, goal, 20025, 10, probabilities[30], 1)
    probabilities[30] = SetCoolTime(ai, goal, 20026, 10, probabilities[30], 1)
    probabilities[31] = SetCoolTime(ai, goal, 3017, 10, probabilities[31], 1)
    probabilities[32] = SetCoolTime(ai, goal, 3015, 15, probabilities[32], 0)
    probabilities[33] = SetCoolTime(ai, goal, 3022, 40, probabilities[33], 0)
    probabilities[33] = SetCoolTime(ai, goal, 3028, 40, probabilities[33], 0)
    probabilities[35] = SetCoolTime(ai, goal, 3016, 15, probabilities[35], 1)
    probabilities[36] = SetCoolTime(ai, goal, 3020, 10, probabilities[36], 1)
    probabilities[38] = SetCoolTime(ai, goal, 3026, 15, probabilities[38], 1)
    probabilities[38] = SetCoolTime(ai, goal, 3027, 15, probabilities[38], 1)
    probabilities[40] = SetCoolTime(ai, goal, 3018, 15, probabilities[40], 0)
    probabilities[41] = SetCoolTime(ai, goal, 3019, 20, probabilities[41], 0)
    probabilities[43] = SetCoolTime(ai, goal, 3022, 40, probabilities[43], 0)
    probabilities[43] = SetCoolTime(ai, goal, 3033, 40, probabilities[43], 0)
    probabilities[44] = SetCoolTime(ai, goal, 3026, 20, probabilities[44], 1)
    probabilities[45] = SetCoolTime(ai, goal, 3027, 30, probabilities[45], 0)
    probabilities[48] = SetCoolTime(ai, goal, 3021, 30, probabilities[48], 0)
    probabilities[19] = SetCoolTime(ai, goal, 20020, 15, probabilities[19], 0)
    probabilities[20] = SetCoolTime(ai, goal, 20021, 15, probabilities[20], 0)
    if hasEffect17637 == true then
        probabilities[28] = 0
        probabilities[12] = 0
        probabilities[16] = 0
        if distanceEnemy_2 < 7 then
            probabilities[3] = 0
        end
    end
    if ai:GetTimer(2) > 15 then
        probabilities[26] = probabilities[26] / 3
        probabilities[27] = probabilities[27] / 3
        probabilities[28] = probabilities[28] / 3
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 50) then
            probabilities[26] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 50) then
            probabilities[27] = 0
        end
    end
    if hasEffect17645 == false then
        probabilities[4] = 0
    end
    probabilities[30] = 0
    if distanceEnemy_2 > 25 then
        probabilities[30] = probabilities[30] * 2
    elseif distanceEnemy_2 < 15 then
        probabilities[30] = probabilities[30] * 2
    end
    acts[1] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act29)
    acts[30] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act36)
    acts[37] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act37)
    acts[38] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act38)
    acts[39] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act39)
    acts[40] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act47)
    acts[48] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act48)
    acts[49] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act49)
    acts[50] = REGIST_FUNC(ai, goal, CastleGargoyle477000_Act50)
    local actAfter = REGIST_FUNC(ai, goal, CastleGargoyle477000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function CastleGargoyle477000_Act01(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:SetNumber(2, ai:GetNumber(2) + 4)
    local goalLife = 10
    local animationId = 3000
    local f3_local11 = 3001
    local f3_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act02(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3002
    local f4_local2 = 3001
    local f4_local3 = 3002
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 4)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act03(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    local hasEffect17637 = ai:HasSpecialEffectId(TARGET_SELF, 17637)
    local random = ai:GetRandam_Int(1, 100)
    if hasEffect17646 == true then
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local goalLife = 10
        local animationId = 3033
        local animationId_2 = 3034
        local f5_local7 = 3002
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        if distanceEnemy > 10 or hasEffect17637 == true then
            ai:SetNumber(2, ai:GetNumber(2) + 8)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        else
            ai:SetNumber(2, ai:GetNumber(2) + 8)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    else
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local goalLife = 10
        local animationId = 3006
        local animationId_2 = 3010
        local f5_local7 = 3002
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        if distanceEnemy > 10 or hasEffect17637 == true then
            ai:SetNumber(2, ai:GetNumber(2) + 8)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        else
            ai:SetNumber(2, ai:GetNumber(2) + 8)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act04(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3035
    local f6_local2 = 3001
    local f6_local3 = 3002
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 4)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act05(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3005
    local f7_local2 = 3001
    local f7_local3 = 3002
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act06(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3008
    local f8_local2 = 3001
    local f8_local3 = 3002
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    ai:SetNumber(2, ai:GetNumber(2) + 4)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act07(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3007
    local f9_local2 = 3001
    local f9_local3 = 3002
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(7, 1)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act08(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    local goalLife = 10
    local animationId = 3032
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
end

function CastleGargoyle477000_Act09(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 13
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:SetNumber(2, ai:GetNumber(2) + 4)
    local goalLife = 10
    local animationId = 3012
    local f11_local11 = 3014
    local f11_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act10(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:SetNumber(2, ai:GetNumber(2) + 4)
    local goalLife = 10
    local animationId = 3012
    local f12_local11 = 3014
    local f12_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 10, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act11(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    local random_2 = ai:GetRandam_Int(1, 100)
    local goalLife = 10
    local animationId = 3012
    local animationId_2 = 3002
    local f13_local14 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_3 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17605)
    if distanceEnemy_2 < 5 then
        ai:SetNumber(2, ai:GetNumber(2) + 8)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        ai:SetNumber(2, ai:GetNumber(2) + 8)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act12(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 25
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3006
    local animationId_2 = 3014
    local f14_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    ai:SetNumber(2, ai:GetNumber(2) + 16)
    if distanceEnemy > 10 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act13(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    local random = ai:GetRandam_Int(1, 100)
    if hasEffect17646 == true then
        local goalLife = 10
        local animationId = 3032
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        local random_2 = ai:GetRandam_Int(1, 100)
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        ai:SetNumber(2, ai:GetNumber(2) + 16)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local goalLife = 10
        local animationId = 3005
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        local random_2 = ai:GetRandam_Int(1, 100)
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        ai:SetNumber(2, ai:GetNumber(2) + 16)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act14(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17607)
    local goalLife = 10
    local animationId = 3009
    local f16_local2 = 3003
    local f16_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(7, 1)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act15(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17604)
    local goalLife = 10
    local animationId = 3001
    local f17_local2 = 3003
    local f17_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 16)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act16(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3000
    local f18_local2 = 3003
    local f18_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17604)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act17(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3004
    local f19_local11 = 3003
    local f19_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act18(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3012
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17605)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act19(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 28
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 20020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 3
    local turnFaceAngle = 45
    ai:SetTimer(6, 18)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act20(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 28
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3039
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 3
    local turnFaceAngle = 90
    ai:SetTimer(6, 18)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act21(ai, goal, paramTbl)
    ai:SetNumber(2, ai:GetNumber(2) + 2)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_ENE_0, RunSwitch, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act22(ai, goal, paramTbl)
    ai:SetNumber(2, ai:GetNumber(2) + 2)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act23(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 90, 20, 999) == false then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 15, TARGET_SELF, true, -1)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_L, 180, 20, 999) then
        ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, 90, distanceEnemy / 1.8, AI_SPA_DIR_TYPE_ToTarget)
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(3, 5), POINT_AI_FIXED_POS, 20, TARGET_SELF, true, -1)
    else
        ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, -90, distanceEnemy / 1.8, AI_SPA_DIR_TYPE_ToTarget)
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(3, 5), POINT_AI_FIXED_POS, 20, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act24(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetNumber(3) == 1 then
        ai:SetNumber(3, 1)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(1, 3), TARGET_ENE_0, 0, ai:GetRandam_Int(30, 45), true, true, -1)
    elseif ai:GetNumber(3) == 2 then
        ai:SetNumber(3, 2)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(1, 3), TARGET_ENE_0, 1, ai:GetRandam_Int(30, 45), true, true, -1)
    elseif random > 50 then
        ai:SetNumber(3, 1)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(1, 3), TARGET_ENE_0, 0, ai:GetRandam_Int(30, 45), true, true, -1)
    else
        ai:SetNumber(3, 2)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(1, 3), TARGET_ENE_0, 1, ai:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act25(ai, goal, paramTbl)
    ai:SetNumber(2, ai:GetNumber(2) + 4)
    local goalLife = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 0
    local turnTime = 2
    local alwaysSuccess = true
    ai:SetTimer(2, 20)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act26(ai, goal, paramTbl)
    ai:SetNumber(2, 0)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:SetTimer(2, 20)
    ai:SetNumber(3, 1)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act27(ai, goal, paramTbl)
    ai:SetNumber(2, 0)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:SetTimer(2, 20)
    ai:SetNumber(3, 2)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act28(ai, goal, paramTbl)
    ai:SetNumber(2, 0)
    local f30_local0 = 1
    local f30_local1 = 5
    local f30_local2 = -1
    local f30_local3 = 1
    local f30_local4 = -1
    local f30_local5 = -1
    local f30_local6 = TARGET_ENE_0
    local f30_local7 = 3
    local f30_local8 = 0
    local f30_local9 = true
    ai:SetTimer(2, 20)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, -90, distanceEnemy / 2, AI_SPA_DIR_TYPE_ToTarget)
    goal:AddSubGoal(GOAL_COMMON_SpinStep, 30, 6001, POINT_AI_FIXED_POS, 0, AI_DIR_TYPE_B, 0)
    f30_local0 = 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act29(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act30(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20025
    local animationId_2 = 20026
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    local random = ai:GetRandam_Int(1, 100)
    if hasEffect17646 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act31(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17620)
    local goalLife = 10
    local animationId = 3017
    local f33_local11 = 3003
    local f33_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act32(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3015
    local f34_local11 = 3003
    local f34_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17618)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act33(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    local random = ai:GetRandam_Int(1, 100)
    if hasEffect17646 == true then
        local goalLife = 10
        local animationId = 3028
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        local random_2 = ai:GetRandam_Int(1, 100)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17617)
        ai:SetNumber(2, ai:GetNumber(2) + 8)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local goalLife = 10
        local animationId = 3022
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        local random_2 = ai:GetRandam_Int(1, 100)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17617)
        ai:SetNumber(2, ai:GetNumber(2) + 8)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act34(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3023
    local f36_local2 = 3003
    local f36_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:SetNumber(7, 1)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act35(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    local goalLife = 10
    local animationId = 3016
    local f37_local11 = 3003
    local f37_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act36(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    local goalLife = 10
    local animationId = 3020
    local f38_local11 = 3003
    local f38_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act37(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17620)
    local goalLife = 10
    local animationId = 3024
    local f39_local11 = 3003
    local f39_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act38(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 15
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17620)
    local goalLife = 10
    local animationId = 3026
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act40(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3018
    local f41_local11 = 3003
    local f41_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17619)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act41(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3019
    local f42_local2 = 3003
    local f42_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act42(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3015
    local f43_local2 = 3003
    local f43_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    ai:SetNumber(6, ai:GetNumber(6) + 1)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act43(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    local random = ai:GetRandam_Int(1, 100)
    if hasEffect17646 == true then
        local goalLife = 10
        local animationId = 3033
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        local random_2 = ai:GetRandam_Int(1, 100)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
        ai:SetNumber(2, ai:GetNumber(2) + 8)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local goalLife = 10
        local animationId = 3022
        local successDist = 999
        local turnTime = 0
        local turnFaceAngle = 120
        local random_2 = ai:GetRandam_Int(1, 100)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
        ai:SetNumber(2, ai:GetNumber(2) + 8)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act44(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3026
    local f45_local2 = 3003
    local f45_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    ai:SetNumber(6, ai:GetNumber(6) + 1)
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act45(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3027
    local f46_local2 = 3003
    local f46_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act46(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local f47_local10 = 3023
    local f47_local11 = 3003
    local f47_local12 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:SetNumber(7, 1)
    if hasEffect17646 == true then
        local animationId = 3025
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local animationId = 3023
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act47(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3016
    local f48_local2 = 3003
    local f48_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    ai:SetNumber(4, 1)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act48(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3021
    local f49_local2 = 3003
    local f49_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act49(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3020
    local f50_local2 = 3003
    local f50_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    ai:SetNumber(2, ai:GetNumber(2) + 8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_Act50(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local f51_local1 = 3000
    local f51_local2 = 3003
    local f51_local3 = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local hasEffect17644 = ai:HasSpecialEffectId(TARGET_SELF, 17644)
    local hasEffect17638 = ai:HasSpecialEffectId(TARGET_SELF, 17638)
    if ai:HasSpecialEffectId(TARGET_SELF, 17638) or ai:HasSpecialEffectId(TARGET_SELF, 17639) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 180, 45) then
            local animationId = 3006
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 180, 45) then
        local animationId = 3000
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CastleGargoyle477000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_CastleGargoyle477000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local f55_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f55_local1 = 0
    local f55_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local f55_local5 = STEP_CANCELDIST
    local hasEffect5401 = ai:HasSpecialEffectId(TARGET_SELF, 5401)
    local hasEffect17644 = ai:HasSpecialEffectId(TARGET_SELF, 17644)
    local hasEffect17636 = ai:HasSpecialEffectId(TARGET_SELF, 17636)
    local hasEffect17626 = ai:HasSpecialEffectId(TARGET_SELF, 17626)
    local hasEffect17640 = ai:HasSpecialEffectId(TARGET_SELF, 17640)
    local hasEffect17641 = ai:HasSpecialEffectId(TARGET_SELF, 17641)
    local hasEffect17642 = ai:HasSpecialEffectId(TARGET_SELF, 17642)
    local hasEffect17643 = ai:HasSpecialEffectId(TARGET_SELF, 17643)
    local hasEffect17646 = ai:HasSpecialEffectId(TARGET_SELF, 17646)
    if ai:GetNumber(2) >= 150 then
        rateswitch = ai:GetRandam_Int(100, 120)
        ratearts = 20
    elseif ai:GetNumber(2) >= 100 then
        rateswitch = ai:GetRandam_Int(90, 120)
        ratearts = 10
    elseif ai:GetNumber(2) >= 75 then
        rateswitch = ai:GetRandam_Int(60, 120)
        ratearts = 5
    elseif ai:GetNumber(2) >= 50 then
        rateswitch = ai:GetRandam_Int(10, 110)
        ratearts = 2
    else
        rateswitch = ai:GetRandam_Int(1, 10)
        ratearts = 1
    end
    local hasEffect17603 = ai:HasSpecialEffectId(TARGET_SELF, 17603)
    if ai:IsInterupt(INTERUPT_Damaged) and hasEffect17603 == true then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        local random_3 = ai:GetRandam_Int(1, 100)
        goal:ClearSubGoal()
        return true
    end
    if ai:IsInterupt(INTERUPT_Shoot) and hasEffect17626 == true then
        if hasEffect17640 == true then
            if random > 60 then
                if distanceEnemy < 12 and random > 70 then
                    goal:ClearSubGoal()
                    CastleGargoyle477000_Act05(ai, goal)
                    return true
                elseif distanceEnemy < 20 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 200, 90, 20) == false and random > 85 then
                    goal:ClearSubGoal()
                    CastleGargoyle477000_Act05(ai, goal)
                    return true
                elseif distanceEnemy < 30 then
                    goal:ClearSubGoal()
                    CastleGargoyle477000_Act3(ai, goal)
                    return true
                end
            else
                goal:ClearSubGoal()
                ai:SetNumber(9, 1)
                CastleGargoyle477000_Act26(ai, goal)
                return true
            end
        elseif hasEffect17641 == true then
            if random > 40 then
                if distanceEnemy < 25 and random > 70 then
                    goal:ClearSubGoal()
                    CastleGargoyle477000_Act12(ai, goal)
                    return true
                elseif distanceEnemy < 30 then
                    goal:ClearSubGoal()
                    CastleGargoyle477000_Act15(ai, goal)
                    return true
                end
            else
                goal:ClearSubGoal()
                ai:SetNumber(9, 1)
                CastleGargoyle477000_Act26(ai, goal)
                return true
            end
        elseif hasEffect17642 == true then
            if distanceEnemy < 20 and random > 60 then
                goal:ClearSubGoal()
                CastleGargoyle477000_Act35(ai, goal)
                return true
            else
                goal:ClearSubGoal()
                ai:SetNumber(9, 1)
                CastleGargoyle477000_Act26(ai, goal)
                return true
            end
        elseif hasEffect17643 == true then
            if distanceEnemy < 15 and random > 60 then
                goal:ClearSubGoal()
                CastleGargoyle477000_Act44(ai, goal)
                return true
            elseif distanceEnemy > 15 and distanceEnemy < 30 and random > 60 then
                goal:ClearSubGoal()
                CastleGargoyle477000_Act48(ai, goal)
                return true
            else
                goal:ClearSubGoal()
                ai:SetNumber(9, 1)
                CastleGargoyle477000_Act26(ai, goal)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(17601) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if distanceEnemy_2 <= 4 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 4)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif distanceEnemy_2 <= 13 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 4)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17602) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy_2 <= 10 and distanceEnemy_2 >= 4 then
                goal:ClearSubGoal()
                ai:SetNumber(2, ai:GetNumber(2) + 4)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17607) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy_2 <= 15 and distanceEnemy_2 >= 4 then
                goal:ClearSubGoal()
                ai:SetNumber(2, ai:GetNumber(2) + 4)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 17604) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 <= 7 then
                goal:ClearSubGoal()
                ai:SetNumber(2, ai:GetNumber(2) + 8)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17605) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if distanceEnemy_2 < 6 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 8)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif distanceEnemy_2 <= 15 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 8)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17608) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if distanceEnemy_2 <= 4 then
                    if ai:GetAttackPassedTime(3027) >= 20 and random_2 > 30 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 80 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 <= 8 then
                    if ai:GetAttackPassedTime(3019) >= 20 and random_2 > 30 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif ai:GetAttackPassedTime(3027) >= 20 and random_2 > 30 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 90 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 80 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17620) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if distanceEnemy_2 <= 4 then
                    if random_2 > 70 and ai:GetAttackPassedTime(3027) >= 15 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 40 and ai:GetAttackPassedTime(3019) >= 15 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 <= 9 then
                    if random_2 > 70 and ai:GetAttackPassedTime(3027) >= 15 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 6)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 12 and ai:GetAttackPassedTime(3027) >= 15 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 6)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17617) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if hasEffect17646 == true then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    if distanceEnemy_2 >= 6 and random_2 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif distanceEnemy_2 >= 12 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if distanceEnemy_2 >= 6 and random_2 > 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif distanceEnemy_2 >= 12 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17618) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if distanceEnemy_2 <= 2.5 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 6)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif distanceEnemy_2 >= 6 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 6)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17609) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and distanceEnemy_2 <= 30 then
                if distanceEnemy_2 < 8 then
                    if ai:GetNumber(6) <= 2 and random_2 > 40 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        ai:SetNumber(6, ai:GetNumber(6) + 1)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 100, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 18 then
                    if random_2 > 60 and ai:GetNumber(6) <= 2 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        ai:SetNumber(6, ai:GetNumber(6) + 1)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif ai:GetAttackPassedTime(3022) <= 40 == false and random_2 > 40 or (ai:GetAttackPassedTime(3033) <= 40 == false and random_2 > 40) == true then
                        if hasEffect17646 == true then
                            goal:ClearSubGoal()
                            ai:SetNumber(2, ai:GetNumber(2) + 4)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            ai:SetNumber(2, ai:GetNumber(2) + 4)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    else
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 25 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 2)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 100, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17610) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if ai:GetNumber(4) == 1 then
                    if distanceEnemy_2 <= 7 and distanceEnemy_2 > 2 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif distanceEnemy_2 < 10 then
                        if random_2 > 40 then
                            goal:ClearSubGoal()
                            ai:SetNumber(2, ai:GetNumber(2) + 2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            ai:SetNumber(2, ai:GetNumber(2) + 2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 20 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 2 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 2)
                    ai:SetNumber(4, 1)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif distanceEnemy_2 < 10 then
                    if random_2 > 40 then
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        ai:SetNumber(4, 1)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 20 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 2)
                    ai:SetNumber(4, 1)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17616) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and distanceEnemy_2 >= 12 and distanceEnemy_2 < 40 then
                if hasEffect17646 == true then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17613) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            local random_3 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if ai:GetNumber(6) >= 2 or random_2 > 70 then
                    if distanceEnemy_2 <= 10 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 > 12 and random_2 > 20 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 2)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17611) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and distanceEnemy_2 <= 30 then
                if distanceEnemy_2 < 8 and ai:GetNumber(6) <= 2 then
                    goal:ClearSubGoal()
                    ai:SetNumber(2, ai:GetNumber(2) + 2)
                    ai:SetNumber(6, ai:GetNumber(6) + 1)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif distanceEnemy_2 < 15 then
                    if ai:GetAttackPassedTime(3022) <= 40 == false and random_2 > 70 or (ai:GetAttackPassedTime(3033) <= 40 == false and random_2 > 70) == true then
                        if hasEffect17646 == true then
                            goal:ClearSubGoal()
                            ai:SetNumber(2, ai:GetNumber(2) + 2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            ai:SetNumber(2, ai:GetNumber(2) + 2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif random_2 > 40 and ai:GetNumber(6) <= 2 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 30 then
                    if ai:GetAttackPassedTime(3022) <= 40 == false and random_2 > 60 then
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:SetNumber(2, ai:GetNumber(2) + 2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(17619) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and distanceEnemy_2 <= 4 then
                goal:ClearSubGoal()
                ai:SetNumber(2, ai:GetNumber(2) + 2)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_CastleGargoyle477000_AfterAttackAct, "CastleGargoyle477000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CastleGargoyle477000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

