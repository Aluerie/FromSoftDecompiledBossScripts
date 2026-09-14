RegisterTableGoal(GOAL_GodFrey472000_Battle, "GodFrey472000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472000_Battle, true)

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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12290)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12294)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
        if distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 70
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 17 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 70
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 16 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 70
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 11 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 70
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 70
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 7.5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 50
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 50
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 50
                probabilities[24] = 50
            end
        elseif distanceEnemy > 6 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 50
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 50
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 50
                probabilities[24] = 50
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 20
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 40
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 50
                probabilities[24] = 50
            end
        elseif distanceEnemy > 2 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 10
                probabilities[7] = 10
                probabilities[8] = 0
                probabilities[9] = 10
                probabilities[12] = 10
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 40
                probabilities[23] = 0
                probabilities[24] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 60
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 20
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 40
            else
                probabilities[24] = 100
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 30
            probabilities[2] = 10
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 10
            probabilities[7] = 15
            probabilities[8] = 0
            probabilities[9] = 15
            probabilities[12] = 20
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 30
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[12] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 70
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 25
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[12] = 25
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 50
        else
            probabilities[9] = 0
            probabilities[24] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 12295) == false then
        if ai:GetHpRate(TARGET_SELF) < 0.5 then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == false then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[8] = 100
                else
                    probabilities[24] = 100
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
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 100
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 17 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 0
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 100
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 16 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 0
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 100
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 11 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 0
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 100
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 0
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 100
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 7.5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 0
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 100
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 6 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 0
                        probabilities[3] = 0
                        probabilities[4] = 50
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 50
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 50
                        probabilities[3] = 50
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[22] = 0
                        probabilities[23] = 0
                    else
                        probabilities[24] = 100
                    end
                elseif distanceEnemy > 2 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        probabilities[1] = 10
                        probabilities[2] = 30
                        probabilities[3] = 0
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 10
                        probabilities[7] = 10
                        probabilities[8] = 0
                        probabilities[9] = 10
                        probabilities[12] = 30
                        probabilities[20] = 0
                        probabilities[21] = 0
                        probabilities[22] = 0
                        probabilities[23] = 0
                        probabilities[24] = 0
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 20
                        probabilities[3] = 20
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[8] = 0
                        probabilities[9] = 0
                        probabilities[12] = 0
                        probabilities[20] = 0
                        probabilities[21] = 0
                        probabilities[22] = 0
                        probabilities[23] = 0
                        probabilities[24] = 60
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        probabilities[1] = 0
                        probabilities[2] = 20
                        probabilities[3] = 20
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[6] = 0
                        probabilities[7] = 0
                        probabilities[8] = 0
                        probabilities[9] = 0
                        probabilities[12] = 20
                        probabilities[20] = 0
                        probabilities[21] = 0
                        probabilities[22] = 0
                        probabilities[23] = 0
                        probabilities[24] = 40
                    else
                        probabilities[24] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 10
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 10
                    probabilities[7] = 15
                    probabilities[8] = 0
                    probabilities[9] = 15
                    probabilities[12] = 20
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 30
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 70
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 25
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 25
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 50
                else
                    probabilities[9] = 0
                    probabilities[24] = 100
                end
            end
        elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 70
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 30
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 0
                else
                    probabilities[22] = 100
                end
            elseif distanceEnemy > 17 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 70
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 30
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 0
                else
                    probabilities[22] = 100
                end
            elseif distanceEnemy > 16 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 70
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 30
                    probabilities[24] = 0
                else
                    probabilities[22] = 100
                end
            elseif distanceEnemy > 11 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 70
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 30
                    probabilities[24] = 0
                else
                    probabilities[22] = 100
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 70
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 30
                    probabilities[24] = 0
                else
                    probabilities[22] = 100
                end
            elseif distanceEnemy > 7.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 40
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 20
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 40
                    probabilities[24] = 0
                else
                    probabilities[22] = 50
                    probabilities[24] = 50
                end
            elseif distanceEnemy > 6 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 40
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 20
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 40
                    probabilities[24] = 0
                else
                    probabilities[22] = 50
                    probabilities[24] = 50
                end
            elseif distanceEnemy > 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 20
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 20
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 40
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 0
                else
                    probabilities[22] = 50
                    probabilities[24] = 50
                end
            elseif distanceEnemy > 2 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 10
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 20
                    probabilities[7] = 10
                    probabilities[8] = 0
                    probabilities[9] = 10
                    probabilities[12] = 20
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 10
                    probabilities[23] = 0
                    probabilities[24] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 20
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 0
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 20
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[8] = 0
                    probabilities[9] = 0
                    probabilities[12] = 20
                    probabilities[20] = 0
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[23] = 0
                    probabilities[24] = 40
                else
                    probabilities[24] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 10
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 10
                probabilities[7] = 15
                probabilities[8] = 0
                probabilities[9] = 15
                probabilities[12] = 20
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 30
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 70
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 25
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 25
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 50
            else
                probabilities[9] = 0
                probabilities[24] = 100
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 70
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 17 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 70
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 16 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 70
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 11 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 70
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 70
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 30
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 100
            end
        elseif distanceEnemy > 7.5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 50
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 50
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 50
                probabilities[24] = 50
            end
        elseif distanceEnemy > 6 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 50
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 50
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 50
                probabilities[24] = 50
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 20
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 40
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 0
            else
                probabilities[22] = 50
                probabilities[24] = 50
            end
        elseif distanceEnemy > 2 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 10
                probabilities[7] = 10
                probabilities[8] = 0
                probabilities[9] = 10
                probabilities[12] = 10
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 40
                probabilities[23] = 0
                probabilities[24] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 0
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 60
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 20
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[12] = 20
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 0
                probabilities[23] = 0
                probabilities[24] = 40
            else
                probabilities[24] = 100
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 30
            probabilities[2] = 10
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 10
            probabilities[7] = 15
            probabilities[8] = 0
            probabilities[9] = 15
            probabilities[12] = 20
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 30
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[12] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 70
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 25
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[12] = 25
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 50
        else
            probabilities[9] = 0
            probabilities[24] = 100
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3009, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3015, 15, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3016, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3017, 10, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3018, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3019, 1, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3031, 15, probabilities[9], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3034, 10, probabilities[12], 1)
    probabilities[23] = SetCoolTime(ai, goal, 6000, 10, probabilities[23], 1)
    probabilities[23] = SetCoolTime(ai, goal, 3009, 10, probabilities[23], 1)
    probabilities[24] = SetCoolTime(ai, goal, 6002, 10, probabilities[24], 1)
    probabilities[24] = SetCoolTime(ai, goal, 6003, 10, probabilities[24], 1)
    probabilities[24] = SetCoolTime(ai, goal, 3009, 10, probabilities[24], 1)
    probabilities[24] = SetCoolTime(ai, goal, 3034, 10, probabilities[24], 1)
    acts[1] = REGIST_FUNC(ai, goal, GodFrey472000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, GodFrey472000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, GodFrey472000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, GodFrey472000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, GodFrey472000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, GodFrey472000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, GodFrey472000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, GodFrey472000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, GodFrey472000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, GodFrey472000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GodFrey472000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GodFrey472000_Act12)
    acts[20] = REGIST_FUNC(ai, goal, GodFrey472000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, GodFrey472000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, GodFrey472000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, GodFrey472000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, GodFrey472000_Act24)
    local actAfter = REGIST_FUNC(ai, goal, GodFrey472000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function GodFrey472000_Act01(ai, goal, paramTbl)
    local f3_local0 = 2 - ai:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 5
    local f3_local3 = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act02(ai, goal, paramTbl)
    local stopDist = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act03(ai, goal, paramTbl)
    local stopDist = 7.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3009
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act04(ai, goal, paramTbl)
    local stopDist = 11 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act05(ai, goal, paramTbl)
    local stopDist = 17 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 50
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act06(ai, goal, paramTbl)
    local stopDist = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act07(ai, goal, paramTbl)
    local stopDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act08(ai, goal, paramTbl)
    local f10_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3019
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act09(ai, goal, paramTbl)
    local stopDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act12(ai, goal, paramTbl)
    local stopDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local animationId = 3034
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act20(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTargetAllDirection, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act21(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act22(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_Act23(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
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

function GodFrey472000_Act24(ai, goal, paramTbl)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodFrey472000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GodFrey472000_AfterAttackAct, 10)
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
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false and ai:GetHpRate(TARGET_SELF) < 0.8 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 6) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12.5) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            if random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, lineWidth, 0) >= 2 then
                if random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
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
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, lineWidth, 0) >= 2 then
                if random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
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
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, lineWidth, 0) >= 2 then
                if random <= 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
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
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 40) then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, lineWidth, 0) >= 2 then
                if random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
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
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3034, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3017, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3034, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            else
                return true
            end
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
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
            if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
            if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 6) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 12.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                return true
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5030) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5031) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5032) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5033) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5034) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
            if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5035) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5036) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 4) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 15) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) then
            if random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5037) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5038) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12200) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 4) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 15) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 90 then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) then
            if random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12201) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12202) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12203) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12204) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 30 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 25 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 75 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif random <= 80 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    if random <= 25 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif random <= 75 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    if random <= 30 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12205) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if random <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12206) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
            if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12207) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12208) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12209) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12210) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12211) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if random <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12212) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12213) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if random <= 70 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12214) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12215) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if ai:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:GetHpRate(TARGET_SELF) < 0.8 then
                if ai:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(12216) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_GodFrey472000_AfterAttackAct, "GOAL_GodFrey472000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

