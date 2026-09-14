RegisterTableGoal(GOAL_GodFrey472100_Battle, "GodFrey472100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472100_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12290)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12294)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    if ai:GetHpRate(TARGET_SELF) < 0.3 then
        if ai:HasSpecialEffectId(TARGET_SELF, 12290) == false then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[11] = 100
            else
                probabilities[30] = 100
                probabilities[31] = 0
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[10] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[18] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 100
                    probabilities[34] = 0
                else
                    probabilities[30] = 100
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[10] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 150
                    probabilities[17] = 0
                    probabilities[18] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 60
                    probabilities[34] = 40
                else
                    probabilities[30] = 100
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[10] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 150
                    probabilities[17] = 0
                    probabilities[18] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 60
                    probabilities[34] = 40
                else
                    probabilities[30] = 100
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy > 7.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[10] = 200
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 150
                    probabilities[17] = 0
                    probabilities[18] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 60
                    probabilities[34] = 40
                else
                    probabilities[30] = 100
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy > 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 25
                    probabilities[6] = 25
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[10] = 200
                    probabilities[12] = 0
                    probabilities[13] = 100
                    probabilities[14] = 0
                    probabilities[16] = 150
                    probabilities[17] = 0
                    probabilities[18] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 50
                    probabilities[34] = 0
                else
                    probabilities[30] = 100
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy > 2.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 10
                    probabilities[3] = 25
                    probabilities[4] = 10
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 10
                    probabilities[9] = 10
                    probabilities[10] = 200
                    probabilities[12] = 0
                    probabilities[13] = 100
                    probabilities[14] = 10
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[18] = 25
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 70
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 30
                    probabilities[10] = 0
                    probabilities[12] = 0
                    probabilities[13] = 100
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[18] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 20
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 10
                    probabilities[10] = 0
                    probabilities[12] = 0
                    probabilities[13] = 100
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[18] = 50
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[15] = 90
                    probabilities[30] = 10
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 10
                probabilities[2] = 20
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 10
                probabilities[8] = 0
                probabilities[9] = 10
                probabilities[10] = 0
                probabilities[12] = 10
                probabilities[13] = 100
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 20
                probabilities[18] = 20
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[10] = 0
                probabilities[12] = 20
                probabilities[13] = 100
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 60
                probabilities[18] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 10
                probabilities[2] = 30
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 10
                probabilities[10] = 0
                probabilities[12] = 0
                probabilities[13] = 100
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 50
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            else
                probabilities[15] = 90
                probabilities[30] = 10
                probabilities[31] = 0
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            end
        end
    elseif distanceEnemy > 20 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[10] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 100
            probabilities[34] = 0
        else
            probabilities[30] = 100
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        end
    elseif distanceEnemy > 15 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[10] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 60
            probabilities[34] = 40
        else
            probabilities[30] = 100
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        end
    elseif distanceEnemy > 10 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[10] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 60
            probabilities[34] = 40
        else
            probabilities[30] = 100
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        end
    elseif distanceEnemy > 7.5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[10] = 200
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 60
            probabilities[34] = 40
        else
            probabilities[30] = 100
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        end
    elseif distanceEnemy > 5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 25
            probabilities[6] = 25
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 200
            probabilities[12] = 0
            probabilities[13] = 100
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 50
            probabilities[34] = 0
        else
            probabilities[30] = 100
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        end
    elseif distanceEnemy > 2.5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 15
            probabilities[3] = 15
            probabilities[4] = 10
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 10
            probabilities[9] = 10
            probabilities[10] = 200
            probabilities[12] = 0
            probabilities[13] = 100
            probabilities[14] = 15
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 15
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 10
            probabilities[33] = 0
            probabilities[34] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 25
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 10
            probabilities[10] = 0
            probabilities[12] = 25
            probabilities[13] = 100
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 40
            probabilities[18] = 0
            probabilities[30] = 10
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[1] = 20
            probabilities[2] = 20
            probabilities[3] = 0
            probabilities[4] = 20
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 10
            probabilities[10] = 0
            probabilities[12] = 0
            probabilities[13] = 100
            probabilities[14] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 20
            probabilities[30] = 10
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        else
            probabilities[15] = 90
            probabilities[30] = 10
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        probabilities[1] = 10
        probabilities[2] = 20
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 10
        probabilities[8] = 0
        probabilities[9] = 10
        probabilities[10] = 0
        probabilities[12] = 10
        probabilities[13] = 100
        probabilities[14] = 0
        probabilities[16] = 0
        probabilities[17] = 20
        probabilities[18] = 20
        probabilities[30] = 0
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 20
        probabilities[10] = 0
        probabilities[12] = 40
        probabilities[13] = 100
        probabilities[14] = 0
        probabilities[16] = 0
        probabilities[17] = 40
        probabilities[18] = 0
        probabilities[30] = 0
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        probabilities[1] = 30
        probabilities[2] = 30
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 10
        probabilities[10] = 0
        probabilities[12] = 0
        probabilities[13] = 100
        probabilities[14] = 0
        probabilities[16] = 0
        probabilities[17] = 0
        probabilities[18] = 30
        probabilities[30] = 0
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
    else
        probabilities[15] = 90
        probabilities[30] = 10
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3005, 15, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3007, 15, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3012, 15, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3013, 15, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3016, 15, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3017, 15, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3019, 15, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3020, 3, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3033, 20, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 20020, 20, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3017, 15, probabilities[8], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3016, 15, probabilities[8], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3019, 15, probabilities[8], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3020, 3, probabilities[8], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3033, 20, probabilities[8], 1)
    probabilities[8] = SetCoolTime(ai, goal, 20020, 20, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3019, 15, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3017, 15, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3016, 15, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3020, 3, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3033, 20, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 20020, 20, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3020, 10, probabilities[10], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3016, 15, probabilities[10], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3017, 15, probabilities[10], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3019, 15, probabilities[10], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3033, 20, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3022, 10, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3026, 10, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3030, 15, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3031, 15, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3032, 10, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3033, 20, probabilities[16], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3016, 15, probabilities[16], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3017, 15, probabilities[16], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3019, 15, probabilities[16], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3020, 3, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3034, 10, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3035, 10, probabilities[18], 1)
    probabilities[33] = SetCoolTime(ai, goal, 6000, 1, probabilities[33], 1)
    probabilities[33] = SetCoolTime(ai, goal, 6001, 1, probabilities[33], 1)
    probabilities[33] = SetCoolTime(ai, goal, 3030, 5, probabilities[33], 1)
    probabilities[34] = SetCoolTime(ai, goal, 6002, 1, probabilities[34], 1)
    probabilities[34] = SetCoolTime(ai, goal, 6003, 1, probabilities[34], 1)
    acts[1] = REGIST_FUNC(ai, goal, GodFrey472100_Act01)
    acts[2] = REGIST_FUNC(ai, goal, GodFrey472100_Act02)
    acts[3] = REGIST_FUNC(ai, goal, GodFrey472100_Act03)
    acts[4] = REGIST_FUNC(ai, goal, GodFrey472100_Act04)
    acts[5] = REGIST_FUNC(ai, goal, GodFrey472100_Act05)
    acts[6] = REGIST_FUNC(ai, goal, GodFrey472100_Act06)
    acts[7] = REGIST_FUNC(ai, goal, GodFrey472100_Act07)
    acts[8] = REGIST_FUNC(ai, goal, GodFrey472100_Act08)
    acts[9] = REGIST_FUNC(ai, goal, GodFrey472100_Act09)
    acts[10] = REGIST_FUNC(ai, goal, GodFrey472100_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GodFrey472100_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GodFrey472100_Act12)
    acts[13] = REGIST_FUNC(ai, goal, GodFrey472100_Act13)
    acts[14] = REGIST_FUNC(ai, goal, GodFrey472100_Act14)
    acts[15] = REGIST_FUNC(ai, goal, GodFrey472100_Act15)
    acts[16] = REGIST_FUNC(ai, goal, GodFrey472100_Act16)
    acts[17] = REGIST_FUNC(ai, goal, GodFrey472100_Act17)
    acts[18] = REGIST_FUNC(ai, goal, GodFrey472100_Act18)
    acts[30] = REGIST_FUNC(ai, goal, GodFrey472100_Act30)
    acts[31] = REGIST_FUNC(ai, goal, GodFrey472100_Act31)
    acts[32] = REGIST_FUNC(ai, goal, GodFrey472100_Act32)
    acts[33] = REGIST_FUNC(ai, goal, GodFrey472100_Act33)
    acts[34] = REGIST_FUNC(ai, goal, GodFrey472100_Act34)
    local actAfter = REGIST_FUNC(ai, goal, GodFrey472100_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function GodFrey472100_Act01(ai, goal, paramTbl)
    local stopDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act02(ai, goal, paramTbl)
    local stopDist = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act03(ai, goal, paramTbl)
    local stopDist = 6.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act04(ai, goal, paramTbl)
    local stopDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act05(ai, goal, paramTbl)
    local stopDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act06(ai, goal, paramTbl)
    local stopDist = 9 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3013
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act07(ai, goal, paramTbl)
    local stopDist = 5.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act08(ai, goal, paramTbl)
    local stopDist = 10.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act09(ai, goal, paramTbl)
    local stopDist = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3019
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act10(ai, goal, paramTbl)
    local stopDist = 12 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act11(ai, goal, paramTbl)
    local f13_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 5
    local f13_local3 = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3022
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act12(ai, goal, paramTbl)
    local stopDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act13(ai, goal, paramTbl)
    local f15_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 5
    local f15_local3 = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3030
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act14(ai, goal, paramTbl)
    local stopDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act15(ai, goal, paramTbl)
    local f17_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 5
    local f17_local3 = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3032
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act16(ai, goal, paramTbl)
    local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act17(ai, goal, paramTbl)
    local f19_local0 = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 5
    local f19_local3 = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3034
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act18(ai, goal, paramTbl)
    local f20_local0 = 5.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 5
    local f20_local3 = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local animationId = 3035
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act30(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act31(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act32(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act33(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif ai:GetNumber(0) >= 1 then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        ai:SetNumber(0, 0)
        return true
    elseif ai:GetNumber(1) >= 1 then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        ai:SetNumber(1, 0)
        return true
    elseif random <= 50 then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        ai:SetNumber(0, ai:GetNumber(0) + 1)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        ai:SetNumber(1, ai:GetNumber(1) + 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_Act34(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472100_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GodFrey472101_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12.5) then
            if random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3031, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7.5) then
            if random <= 20 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif random <= 80 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12.5) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif random <= 80 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif random <= 80 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif random <= 80 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
        if random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 80 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3.5, 3034, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_FindAttack) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if random <= 30 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3031, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5030) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return tru
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5032) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 6) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5033) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 35 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5034) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 25 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif random <= 75 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5035) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 35 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 10 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5036) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 55 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 85 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5037) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 15) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5038) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12230) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12231) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) and ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12232) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12233) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12234) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 10 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 10 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 35 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 55 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 85 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12235) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 65 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12236) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12237) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12238) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 4.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 15 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 45 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 10) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 22.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 22.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 22.5) then
            if ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12239) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) and (ai:HasSpecialEffectId(TARGET_ENE_0, 51) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_GodFrey472100_AfterAttackAct, "GodFrey472101_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472101_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

