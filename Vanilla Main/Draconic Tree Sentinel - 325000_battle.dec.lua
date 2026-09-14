RegisterTableGoal(GOAL_TreeGuardVariant325000_Battle, "GOAL_TreeGuardVariant325000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TreeGuardVariant325000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3005)
    ai:EnableUnfavorableAttackCheck(0, 3006)
    ai:EnableUnfavorableAttackCheck(0, 3007)
    ai:EnableUnfavorableAttackCheck(0, 3010)
    ai:EnableUnfavorableAttackCheck(0, 3011)
    ai:EnableUnfavorableAttackCheck(0, 3012)
    ai:EnableUnfavorableAttackCheck(0, 3017)
    ai:EnableUnfavorableAttackCheck(0, 3018)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3022)
    ai:EnableUnfavorableAttackCheck(0, 3023)
    ai:EnableUnfavorableAttackCheck(0, 3024)
    ai:EnableUnfavorableAttackCheck(0, 3025)
    ai:EnableUnfavorableAttackCheck(0, 3026)
    ai:EnableUnfavorableAttackCheck(0, 3028)
    ai:EnableUnfavorableAttackCheck(0, 3029)
    ai:EnableUnfavorableAttackCheck(0, 3032)
    ai:EnableUnfavorableAttackCheck(0, 3033)
    ai:EnableUnfavorableAttackCheck(0, 3034)
    ai:EnableUnfavorableAttackCheck(0, 3037)
    ai:EnableUnfavorableAttackCheck(1000000, 3000)
    ai:EnableUnfavorableAttackCheck(1000000, 3001)
    ai:EnableUnfavorableAttackCheck(1000000, 3002)
    ai:EnableUnfavorableAttackCheck(1000000, 3003)
    ai:EnableUnfavorableAttackCheck(1000000, 3004)
    ai:EnableUnfavorableAttackCheck(1000000, 3006)
    ai:EnableUnfavorableAttackCheck(1000000, 3010)
    ai:EnableUnfavorableAttackCheck(1000000, 3025)
    ai:EnableUnfavorableAttackCheck(1000000, 3026)
    ai:EnableUnfavorableAttackCheck(1000000, 3029)
    ai:EnableUnfavorableAttackCheck(1000000, 3034)
    ai:EnableUnfavorableAttackCheck(1000000, 3037)
end

Goal.Activate = function (self, ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    if ai:HasSpecialEffectId(TARGET_SELF, 13708) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 13700) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 13702) == true then
                if distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 15 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 30
                        probabilities[22] = 30
                        probabilities[24] = 30
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 7.5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[26] = 100
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 4 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[19] = 150
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[26] = 100
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[19] = 150
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    probabilities[19] = 100
                    probabilities[40] = 0
                    probabilities[41] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    probabilities[19] = 100
                    probabilities[40] = 0
                    probabilities[41] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    probabilities[19] = 30
                    probabilities[40] = 0
                    probabilities[41] = 70
                else
                    probabilities[19] = 30
                    probabilities[40] = 0
                    probabilities[41] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 13702) == false then
                if distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[26] = 0
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[26] = 0
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[26] = 0
                        probabilities[40] = 0
                        probabilities[41] = 30
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 15 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[26] = 0
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[26] = 0
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[26] = 0
                        probabilities[40] = 0
                        probabilities[41] = 30
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[22] = 60
                        probabilities[24] = 15
                        probabilities[26] = 0
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 7.5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[26] = 100
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 30
                        probabilities[22] = 30
                        probabilities[24] = 30
                        probabilities[26] = 0
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 4 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 15
                        probabilities[21] = 60
                        probabilities[22] = 15
                        probabilities[24] = 10
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 60
                        probabilities[22] = 35
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 30
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 2 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 20
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 10
                        probabilities[8] = 10
                        probabilities[16] = 0
                        probabilities[17] = 20
                        probabilities[20] = 20
                        probabilities[22] = 0
                        probabilities[24] = 0
                        probabilities[25] = 20
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[3] = 10
                        probabilities[5] = 10
                        probabilities[8] = 10
                        probabilities[15] = 10
                        probabilities[23] = 10
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[1] = 10
                        probabilities[2] = 10
                        probabilities[3] = 0
                        probabilities[4] = 10
                        probabilities[5] = 10
                        probabilities[8] = 10
                        probabilities[16] = 10
                        probabilities[17] = 10
                        probabilities[20] = 10
                        probabilities[25] = 10
                        probabilities[40] = 0
                        probabilities[41] = 0
                    else
                        probabilities[23] = 70
                        probabilities[40] = 0
                        probabilities[41] = 30
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 10
                    probabilities[8] = 10
                    probabilities[16] = 0
                    probabilities[17] = 20
                    probabilities[20] = 20
                    probabilities[22] = 0
                    probabilities[24] = 0
                    probabilities[25] = 20
                    probabilities[26] = 100
                    probabilities[40] = 0
                    probabilities[41] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[8] = 10
                    probabilities[9] = 10
                    probabilities[10] = 10
                    probabilities[11] = 10
                    probabilities[12] = 10
                    probabilities[13] = 10
                    probabilities[14] = 10
                    probabilities[15] = 10
                    probabilities[23] = 10
                    probabilities[26] = 100
                    probabilities[40] = 0
                    probabilities[41] = 10
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    probabilities[1] = 10
                    probabilities[2] = 10
                    probabilities[3] = 0
                    probabilities[4] = 10
                    probabilities[5] = 10
                    probabilities[8] = 10
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[20] = 10
                    probabilities[25] = 10
                    probabilities[40] = 0
                    probabilities[41] = 0
                else
                    probabilities[23] = 70
                    probabilities[40] = 0
                    probabilities[41] = 30
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13700) == false then
            if ai:HasSpecialEffectId(TARGET_SELF, 13706) == true then
                if distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 15 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[40] = 0
                        probabilities[41] = 30
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 24
                        probabilities[24] = 30
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 7.5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[26] = 100
                        probabilities[40] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 30
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[22] = 24
                        probabilities[24] = 30
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 4 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[24] = 30
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[7] = 35
                        probabilities[21] = 100
                        probabilities[22] = 35
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 30
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[7] = 30
                        probabilities[22] = 30
                        probabilities[24] = 30
                        probabilities[40] = 0
                        probabilities[41] = 10
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif distanceEnemy > 2 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 20
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 10
                        probabilities[8] = 10
                        probabilities[16] = 0
                        probabilities[17] = 20
                        probabilities[20] = 20
                        probabilities[22] = 0
                        probabilities[24] = 0
                        probabilities[25] = 20
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[3] = 10
                        probabilities[5] = 10
                        probabilities[8] = 10
                        probabilities[15] = 10
                        probabilities[23] = 10
                        probabilities[26] = 100
                        probabilities[40] = 0
                        probabilities[41] = 10
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[1] = 10
                        probabilities[2] = 10
                        probabilities[3] = 0
                        probabilities[4] = 10
                        probabilities[5] = 10
                        probabilities[8] = 10
                        probabilities[16] = 10
                        probabilities[17] = 10
                        probabilities[20] = 10
                        probabilities[25] = 10
                        probabilities[40] = 0
                        probabilities[41] = 0
                    else
                        probabilities[23] = 70
                        probabilities[40] = 0
                        probabilities[41] = 30
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 10
                    probabilities[8] = 10
                    probabilities[16] = 0
                    probabilities[17] = 20
                    probabilities[20] = 20
                    probabilities[22] = 0
                    probabilities[24] = 0
                    probabilities[25] = 20
                    probabilities[26] = 100
                    probabilities[40] = 0
                    probabilities[41] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[8] = 10
                    probabilities[9] = 10
                    probabilities[10] = 10
                    probabilities[11] = 10
                    probabilities[12] = 10
                    probabilities[13] = 10
                    probabilities[14] = 10
                    probabilities[15] = 10
                    probabilities[23] = 10
                    probabilities[26] = 100
                    probabilities[40] = 0
                    probabilities[41] = 10
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    probabilities[1] = 10
                    probabilities[2] = 10
                    probabilities[3] = 0
                    probabilities[4] = 10
                    probabilities[5] = 10
                    probabilities[8] = 10
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[20] = 10
                    probabilities[25] = 10
                    probabilities[40] = 0
                    probabilities[41] = 0
                else
                    probabilities[23] = 70
                    probabilities[40] = 0
                    probabilities[41] = 30
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 13706) == false then
                if distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[18] = 100
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                        probabilities[18] = 100
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                        probabilities[18] = 100
                    else
                        probabilities[40] = 0
                        probabilities[41] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[18] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    probabilities[18] = 70
                    probabilities[40] = 0
                    probabilities[41] = 30
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    probabilities[18] = 70
                    probabilities[40] = 0
                    probabilities[41] = 30
                else
                    probabilities[40] = 0
                    probabilities[41] = 100
                end
            end
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13707) == true then
        if ai:GetHpRate(TARGET_SELF) < 0.6 then
            if distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[18] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    probabilities[18] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    probabilities[18] = 100
                else
                    probabilities[40] = 0
                    probabilities[41] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[18] = 100
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[18] = 70
                probabilities[40] = 0
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[18] = 70
                probabilities[40] = 0
                probabilities[41] = 30
            else
                probabilities[40] = 0
                probabilities[41] = 100
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[24] = 30
                probabilities[40] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[40] = 0
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[40] = 0
                probabilities[41] = 30
            else
                probabilities[40] = 0
                probabilities[41] = 100
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[24] = 30
                probabilities[40] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[40] = 0
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[40] = 0
                probabilities[41] = 30
            else
                probabilities[40] = 0
                probabilities[41] = 100
            end
        elseif distanceEnemy > 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[24] = 30
                probabilities[40] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[40] = 0
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[7] = 30
                probabilities[22] = 30
                probabilities[24] = 30
                probabilities[40] = 0
                probabilities[41] = 10
            else
                probabilities[40] = 0
                probabilities[41] = 100
            end
        elseif distanceEnemy > 7.5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[24] = 30
                probabilities[40] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[40] = 0
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[24] = 30
                probabilities[40] = 0
                probabilities[41] = 10
            else
                probabilities[23] = 30
                probabilities[40] = 0
                probabilities[41] = 70
            end
        elseif distanceEnemy > 4 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[24] = 30
                probabilities[40] = 0
                probabilities[41] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[40] = 0
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[7] = 35
                probabilities[22] = 35
                probabilities[24] = 30
                probabilities[40] = 0
                probabilities[41] = 10
            else
                probabilities[23] = 30
                probabilities[40] = 0
                probabilities[41] = 70
            end
        elseif distanceEnemy > 2 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 20
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[8] = 10
                probabilities[16] = 0
                probabilities[17] = 20
                probabilities[20] = 20
                probabilities[22] = 0
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[40] = 0
                probabilities[41] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[8] = 10
                probabilities[15] = 10
                probabilities[23] = 10
                probabilities[40] = 0
                probabilities[41] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[3] = 0
                probabilities[4] = 10
                probabilities[5] = 10
                probabilities[8] = 10
                probabilities[16] = 10
                probabilities[17] = 10
                probabilities[20] = 10
                probabilities[25] = 10
                probabilities[40] = 0
                probabilities[41] = 0
            else
                probabilities[23] = 30
                probabilities[40] = 0
                probabilities[41] = 70
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 20
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 10
            probabilities[8] = 10
            probabilities[16] = 0
            probabilities[17] = 20
            probabilities[20] = 20
            probabilities[22] = 0
            probabilities[24] = 0
            probabilities[25] = 20
            probabilities[40] = 0
            probabilities[41] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[8] = 10
            probabilities[9] = 10
            probabilities[10] = 10
            probabilities[11] = 10
            probabilities[12] = 10
            probabilities[13] = 10
            probabilities[14] = 10
            probabilities[15] = 10
            probabilities[23] = 10
            probabilities[40] = 0
            probabilities[41] = 10
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 0
            probabilities[4] = 10
            probabilities[5] = 10
            probabilities[8] = 10
            probabilities[16] = 10
            probabilities[17] = 10
            probabilities[20] = 10
            probabilities[25] = 10
            probabilities[40] = 0
            probabilities[41] = 0
        else
            probabilities[23] = 30
            probabilities[40] = 0
            probabilities[41] = 70
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13707) == false then
        if ai:GetHpRate(TARGET_SELF) < 0.99 then
            if distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[6] = 100
                    probabilities[40] = 0
                    probabilities[41] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    probabilities[40] = 70
                    probabilities[41] = 30
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    probabilities[40] = 70
                    probabilities[41] = 30
                else
                    probabilities[40] = 0
                    probabilities[41] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[6] = 100
                probabilities[40] = 0
                probabilities[41] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[40] = 70
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[40] = 70
                probabilities[41] = 30
            else
                probabilities[40] = 0
                probabilities[41] = 100
            end
        elseif distanceEnemy > 12 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[6] = 0
                probabilities[40] = 100
                probabilities[41] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                probabilities[40] = 70
                probabilities[41] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                probabilities[40] = 70
                probabilities[41] = 30
            else
                probabilities[40] = 0
                probabilities[41] = 100
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[6] = 100
            probabilities[40] = 0
            probabilities[41] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
            probabilities[40] = 70
            probabilities[41] = 30
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
            probabilities[40] = 70
            probabilities[41] = 30
        else
            probabilities[40] = 0
            probabilities[41] = 100
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3003, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3005, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3006, 15, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3007, 20, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3013, 1, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3015, 15, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3031, 15, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3016, 15, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3017, 15, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3018, 15, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3019, 15, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3020, 15, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3021, 15, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3022, 15, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3023, 15, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3025, 15, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3026, 10, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3027, 1, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3028, 1, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3029, 10, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3030, 15, probabilities[21], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3038, 20, probabilities[21], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3031, 15, probabilities[22], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3015, 15, probabilities[22], 1)
    probabilities[23] = SetCoolTime(ai, goal, 3033, 10, probabilities[23], 1)
    probabilities[24] = SetCoolTime(ai, goal, 3034, 15, probabilities[24], 1)
    probabilities[25] = SetCoolTime(ai, goal, 3037, 10, probabilities[25], 1)
    probabilities[26] = SetCoolTime(ai, goal, 3030, 15, probabilities[26], 1)
    probabilities[26] = SetCoolTime(ai, goal, 3038, 20, probabilities[26], 1)
    probabilities[41] = SetCoolTime(ai, goal, 6002, 10, probabilities[41], 1)
    probabilities[41] = SetCoolTime(ai, goal, 6003, 10, probabilities[41], 1)
    acts[1] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act26)
    acts[40] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, TreeGuardVariant325000_Act41)
    local actAfter = REGIST_FUNC(ai, goal, TreeGuardVariant325000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function TreeGuardVariant325000_Act01(ai, goal, paramTbl)
    local f3_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 5
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act02(ai, goal, paramTbl)
    local f4_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 5
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act03(ai, goal, paramTbl)
    local f5_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 5
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act04(ai, goal, paramTbl)
    local f6_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 5
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3006
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act05(ai, goal, paramTbl)
    local f7_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 5
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act06(ai, goal, paramTbl)
    local f8_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 5
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3013
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act07(ai, goal, paramTbl)
    local f9_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act08(ai, goal, paramTbl)
    local f10_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 5
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act09(ai, goal, paramTbl)
    local f11_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act10(ai, goal, paramTbl)
    local f12_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 5
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act11(ai, goal, paramTbl)
    local f13_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 5
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3019
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act12(ai, goal, paramTbl)
    local f14_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 5
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act13(ai, goal, paramTbl)
    local f15_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 5
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3021
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act14(ai, goal, paramTbl)
    local f16_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 5
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3022
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act15(ai, goal, paramTbl)
    local f17_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 5
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3023
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act16(ai, goal, paramTbl)
    local f18_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 5
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3025
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act17(ai, goal, paramTbl)
    local f19_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 5
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act18(ai, goal, paramTbl)
    local f20_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 5
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3027
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act19(ai, goal, paramTbl)
    local f21_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 5
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 3
    local f21_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3028
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act20(ai, goal, paramTbl)
    local f22_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 5
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 3
    local f22_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3029
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act21(ai, goal, paramTbl)
    local f23_local0 = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 5
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 3
    local f23_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3030
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act22(ai, goal, paramTbl)
    local f24_local0 = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 5
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 3
    local f24_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act23(ai, goal, paramTbl)
    local f25_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 5
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 3
    local f25_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act24(ai, goal, paramTbl)
    local stopDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3034
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act25(ai, goal, paramTbl)
    local f27_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 5
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 3
    local f27_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3037
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act26(ai, goal, paramTbl)
    local f28_local0 = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 5
    local f28_local3 = 100
    local f28_local4 = 0
    local f28_local5 = 3
    local f28_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    local animationId = 3038
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act40(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 13707) == true or ai:HasSpecialEffectId(TARGET_SELF, 13708) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13707) == false then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_Act41(ai, goal, paramTbl)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13713)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13714)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13715)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13716)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TreeGuardVariant325000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_TreeGuardVariant325000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f34_local1 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f34_local2 = 0
    local f34_local3 = 0
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
        return true
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5030) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5031) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5032) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5033) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5034) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5035) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5036) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5037) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5038) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13710) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 5) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13711) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13712) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13713) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 25 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13714) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13715) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if random <= 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13716) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_TreeGuardVariant325000_AfterAttackAct, "TreeGuardVariant325000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TreeGuardVariant325000_AfterAttackAct, true)

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

