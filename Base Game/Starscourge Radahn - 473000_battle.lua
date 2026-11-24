RegisterTableGoal(GOAL_RadarnAndLeonard473000_Battle, "RadarnAndLeonard473000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RadarnAndLeonard473000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local eventRequest = ai:GetEventRequest()
    if ai:HasSpecialEffectId(TARGET_SELF, 13902) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 13904) == true then
            if ai:GetHpRate(TARGET_SELF) <= 0.2 then
                if ai:HasSpecialEffectId(TARGET_SELF, 13928) == false then
                    probabilities[13] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13928) == true then
                    if distanceEnemy >= 30 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[1] = 30
                                        probabilities[2] = 0
                                        probabilities[3] = 10
                                        probabilities[4] = 0
                                        probabilities[5] = 0
                                        probabilities[9] = 100
                                        probabilities[11] = 60
                                        probabilities[16] = 200
                                        probabilities[15] = 0
                                        probabilities[17] = 0
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 30
                                    probabilities[2] = 0
                                    probabilities[3] = 10
                                    probabilities[4] = 0
                                    probabilities[5] = 0
                                    probabilities[9] = 100
                                    probabilities[11] = 60
                                    probabilities[15] = 0
                                    probabilities[17] = 0
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[30] = 100
                        end
                    elseif distanceEnemy >= 25 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[1] = 30
                                        probabilities[2] = 0
                                        probabilities[3] = 10
                                        probabilities[4] = 0
                                        probabilities[5] = 0
                                        probabilities[9] = 100
                                        probabilities[11] = 60
                                        probabilities[16] = 200
                                        probabilities[15] = 150
                                        probabilities[17] = 0
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 30
                                    probabilities[2] = 0
                                    probabilities[3] = 10
                                    probabilities[4] = 0
                                    probabilities[5] = 0
                                    probabilities[9] = 100
                                    probabilities[11] = 60
                                    probabilities[15] = 150
                                    probabilities[17] = 0
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[30] = 100
                        end
                    elseif distanceEnemy >= 20 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[1] = 30
                                        probabilities[2] = 0
                                        probabilities[3] = 10
                                        probabilities[4] = 0
                                        probabilities[5] = 0
                                        probabilities[9] = 100
                                        probabilities[11] = 60
                                        probabilities[16] = 200
                                        probabilities[15] = 150
                                        probabilities[17] = 0
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 30
                                    probabilities[2] = 0
                                    probabilities[3] = 10
                                    probabilities[4] = 0
                                    probabilities[5] = 0
                                    probabilities[9] = 100
                                    probabilities[11] = 60
                                    probabilities[15] = 150
                                    probabilities[17] = 0
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[30] = 100
                        end
                    elseif distanceEnemy >= 20 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[1] = 30
                                        probabilities[2] = 0
                                        probabilities[3] = 10
                                        probabilities[4] = 0
                                        probabilities[5] = 0
                                        probabilities[9] = 100
                                        probabilities[11] = 60
                                        probabilities[16] = 200
                                        probabilities[15] = 150
                                        probabilities[17] = 0
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 30
                                    probabilities[2] = 0
                                    probabilities[3] = 10
                                    probabilities[4] = 0
                                    probabilities[5] = 0
                                    probabilities[9] = 100
                                    probabilities[11] = 60
                                    probabilities[15] = 150
                                    probabilities[17] = 0
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[30] = 100
                        end
                    elseif distanceEnemy >= 10 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[1] = 30
                                        probabilities[2] = 10
                                        probabilities[3] = 10
                                        probabilities[4] = 10
                                        probabilities[5] = 10
                                        probabilities[9] = 100
                                        probabilities[11] = 30
                                        probabilities[16] = 200
                                        probabilities[15] = 150
                                        probabilities[17] = 0
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 30
                                    probabilities[2] = 10
                                    probabilities[3] = 10
                                    probabilities[4] = 10
                                    probabilities[5] = 10
                                    probabilities[9] = 100
                                    probabilities[11] = 30
                                    probabilities[15] = 150
                                    probabilities[17] = 0
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[30] = 100
                        end
                    elseif distanceEnemy >= 5 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[1] = 10
                                        probabilities[2] = 20
                                        probabilities[3] = 10
                                        probabilities[4] = 20
                                        probabilities[5] = 20
                                        probabilities[9] = 0
                                        probabilities[11] = 20
                                        probabilities[16] = 200
                                        probabilities[15] = 150
                                        probabilities[17] = 100
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 10
                                    probabilities[2] = 20
                                    probabilities[3] = 10
                                    probabilities[4] = 20
                                    probabilities[5] = 20
                                    probabilities[9] = 0
                                    probabilities[11] = 20
                                    probabilities[15] = 150
                                    probabilities[17] = 100
                                end
                            end
                        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[2] = 30
                                        probabilities[4] = 10
                                        probabilities[5] = 60
                                        probabilities[32] = 100
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[2] = 30
                                    probabilities[4] = 10
                                    probabilities[5] = 60
                                    probabilities[32] = 100
                                end
                            end
                        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[2] = 30
                                        probabilities[4] = 10
                                        probabilities[5] = 50
                                        probabilities[32] = 100
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[2] = 30
                                    probabilities[4] = 10
                                    probabilities[5] = 50
                                    probabilities[32] = 100
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 0
                            probabilities[4] = 0
                            probabilities[5] = 50
                            probabilities[30] = 50
                            probabilities[32] = 100
                        end
                    elseif distanceEnemy >= 2.5 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[1] = 0
                                        probabilities[2] = 10
                                        probabilities[3] = 10
                                        probabilities[4] = 10
                                        probabilities[5] = 10
                                        probabilities[6] = 0
                                        probabilities[7] = 30
                                        probabilities[8] = 30
                                        probabilities[11] = 0
                                        probabilities[16] = 200
                                        probabilities[17] = 100
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 0
                                    probabilities[2] = 10
                                    probabilities[3] = 10
                                    probabilities[4] = 10
                                    probabilities[5] = 10
                                    probabilities[6] = 0
                                    probabilities[7] = 30
                                    probabilities[8] = 30
                                    probabilities[11] = 0
                                    probabilities[17] = 100
                                end
                            end
                        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[2] = 30
                                        probabilities[4] = 10
                                        probabilities[5] = 60
                                        probabilities[6] = 0
                                        probabilities[32] = 100
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[2] = 30
                                    probabilities[4] = 10
                                    probabilities[5] = 60
                                    probabilities[6] = 0
                                    probabilities[32] = 100
                                end
                            end
                        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    probabilities[12] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        probabilities[14] = 100
                                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        probabilities[2] = 30
                                        probabilities[4] = 10
                                        probabilities[5] = 60
                                        probabilities[6] = 0
                                        probabilities[32] = 100
                                    end
                                end
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[2] = 30
                                    probabilities[4] = 10
                                    probabilities[5] = 60
                                    probabilities[6] = 0
                                    probabilities[32] = 100
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 0
                            probabilities[4] = 0
                            probabilities[5] = 50
                            probabilities[8] = 0
                            probabilities[30] = 50
                            probabilities[32] = 100
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                probabilities[12] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[1] = 0
                                    probabilities[2] = 10
                                    probabilities[3] = 0
                                    probabilities[5] = 10
                                    probabilities[6] = 30
                                    probabilities[7] = 20
                                    probabilities[8] = 30
                                    probabilities[11] = 0
                                    probabilities[16] = 200
                                    probabilities[17] = 100
                                    probabilities[32] = 0
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 0
                                probabilities[2] = 10
                                probabilities[3] = 0
                                probabilities[5] = 10
                                probabilities[6] = 30
                                probabilities[7] = 20
                                probabilities[8] = 30
                                probabilities[11] = 0
                                probabilities[17] = 100
                                probabilities[32] = 0
                            end
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                probabilities[12] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[2] = 10
                                    probabilities[5] = 30
                                    probabilities[6] = 30
                                    probabilities[8] = 30
                                    probabilities[32] = 100
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[2] = 10
                                probabilities[5] = 30
                                probabilities[6] = 30
                                probabilities[8] = 30
                                probabilities[32] = 100
                            end
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                probabilities[12] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    probabilities[14] = 100
                                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    probabilities[2] = 10
                                    probabilities[5] = 30
                                    probabilities[6] = 30
                                    probabilities[8] = 30
                                    probabilities[32] = 100
                                end
                            end
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[2] = 10
                                probabilities[5] = 30
                                probabilities[6] = 30
                                probabilities[8] = 30
                                probabilities[32] = 100
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[2] = 0
                        probabilities[5] = 40
                        probabilities[8] = 40
                        probabilities[30] = 20
                        probabilities[32] = 100
                    end
                end
            elseif distanceEnemy >= 30 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 30
                                probabilities[2] = 0
                                probabilities[3] = 10
                                probabilities[4] = 0
                                probabilities[5] = 0
                                probabilities[9] = 100
                                probabilities[11] = 60
                                probabilities[16] = 200
                                probabilities[15] = 0
                                probabilities[17] = 0
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 30
                            probabilities[2] = 0
                            probabilities[3] = 10
                            probabilities[4] = 0
                            probabilities[5] = 0
                            probabilities[9] = 100
                            probabilities[11] = 60
                            probabilities[15] = 0
                            probabilities[17] = 0
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 25 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 30
                                probabilities[2] = 0
                                probabilities[3] = 10
                                probabilities[4] = 0
                                probabilities[5] = 0
                                probabilities[9] = 100
                                probabilities[11] = 60
                                probabilities[16] = 200
                                probabilities[15] = 150
                                probabilities[17] = 0
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 30
                            probabilities[2] = 0
                            probabilities[3] = 10
                            probabilities[4] = 0
                            probabilities[5] = 0
                            probabilities[9] = 100
                            probabilities[11] = 60
                            probabilities[15] = 150
                            probabilities[17] = 0
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 30
                                probabilities[2] = 0
                                probabilities[3] = 10
                                probabilities[4] = 0
                                probabilities[5] = 0
                                probabilities[9] = 100
                                probabilities[11] = 60
                                probabilities[16] = 200
                                probabilities[15] = 150
                                probabilities[17] = 0
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 30
                            probabilities[2] = 0
                            probabilities[3] = 10
                            probabilities[4] = 0
                            probabilities[5] = 0
                            probabilities[9] = 100
                            probabilities[11] = 60
                            probabilities[15] = 150
                            probabilities[17] = 0
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 30
                                probabilities[2] = 0
                                probabilities[3] = 10
                                probabilities[4] = 0
                                probabilities[5] = 0
                                probabilities[9] = 100
                                probabilities[11] = 60
                                probabilities[16] = 200
                                probabilities[15] = 150
                                probabilities[17] = 0
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 30
                            probabilities[2] = 0
                            probabilities[3] = 10
                            probabilities[4] = 0
                            probabilities[5] = 0
                            probabilities[9] = 100
                            probabilities[11] = 60
                            probabilities[15] = 150
                            probabilities[17] = 0
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 30
                                probabilities[2] = 10
                                probabilities[3] = 10
                                probabilities[4] = 10
                                probabilities[5] = 10
                                probabilities[9] = 100
                                probabilities[11] = 30
                                probabilities[16] = 200
                                probabilities[15] = 150
                                probabilities[17] = 0
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 30
                            probabilities[2] = 10
                            probabilities[3] = 10
                            probabilities[4] = 10
                            probabilities[5] = 10
                            probabilities[9] = 100
                            probabilities[11] = 30
                            probabilities[15] = 150
                            probabilities[17] = 0
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 10
                                probabilities[2] = 20
                                probabilities[3] = 10
                                probabilities[4] = 20
                                probabilities[5] = 20
                                probabilities[9] = 0
                                probabilities[11] = 20
                                probabilities[16] = 200
                                probabilities[15] = 150
                                probabilities[17] = 100
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 10
                            probabilities[2] = 20
                            probabilities[3] = 10
                            probabilities[4] = 20
                            probabilities[5] = 20
                            probabilities[9] = 0
                            probabilities[11] = 20
                            probabilities[15] = 150
                            probabilities[17] = 100
                        end
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[2] = 30
                                probabilities[4] = 10
                                probabilities[5] = 60
                                probabilities[32] = 100
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 30
                            probabilities[4] = 10
                            probabilities[5] = 60
                            probabilities[32] = 100
                        end
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[2] = 30
                                probabilities[4] = 10
                                probabilities[5] = 50
                                probabilities[32] = 100
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 30
                            probabilities[4] = 10
                            probabilities[5] = 50
                            probabilities[32] = 100
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[2] = 0
                    probabilities[4] = 0
                    probabilities[5] = 50
                    probabilities[30] = 50
                    probabilities[32] = 100
                end
            elseif distanceEnemy >= 2.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[1] = 0
                                probabilities[2] = 10
                                probabilities[3] = 10
                                probabilities[4] = 10
                                probabilities[5] = 10
                                probabilities[6] = 0
                                probabilities[7] = 30
                                probabilities[8] = 30
                                probabilities[11] = 0
                                probabilities[16] = 200
                                probabilities[17] = 100
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 0
                            probabilities[2] = 10
                            probabilities[3] = 10
                            probabilities[4] = 10
                            probabilities[5] = 10
                            probabilities[6] = 0
                            probabilities[7] = 30
                            probabilities[8] = 30
                            probabilities[11] = 0
                            probabilities[17] = 100
                        end
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[2] = 30
                                probabilities[4] = 10
                                probabilities[5] = 60
                                probabilities[6] = 0
                                probabilities[32] = 100
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 30
                            probabilities[4] = 10
                            probabilities[5] = 60
                            probabilities[6] = 0
                            probabilities[32] = 100
                        end
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            probabilities[12] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                probabilities[14] = 100
                            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                probabilities[2] = 30
                                probabilities[4] = 10
                                probabilities[5] = 60
                                probabilities[6] = 0
                                probabilities[32] = 100
                            end
                        end
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 30
                            probabilities[4] = 10
                            probabilities[5] = 60
                            probabilities[6] = 0
                            probabilities[32] = 100
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[2] = 0
                    probabilities[4] = 0
                    probabilities[5] = 50
                    probabilities[8] = 0
                    probabilities[30] = 50
                    probabilities[32] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                        probabilities[12] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[1] = 0
                            probabilities[2] = 10
                            probabilities[3] = 0
                            probabilities[5] = 10
                            probabilities[6] = 30
                            probabilities[7] = 20
                            probabilities[8] = 30
                            probabilities[11] = 0
                            probabilities[16] = 200
                            probabilities[17] = 100
                            probabilities[32] = 0
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 0
                        probabilities[2] = 10
                        probabilities[3] = 0
                        probabilities[5] = 10
                        probabilities[6] = 30
                        probabilities[7] = 20
                        probabilities[8] = 30
                        probabilities[11] = 0
                        probabilities[17] = 100
                        probabilities[32] = 0
                    end
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                        probabilities[12] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 10
                            probabilities[5] = 30
                            probabilities[6] = 30
                            probabilities[8] = 30
                            probabilities[32] = 100
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[2] = 10
                        probabilities[5] = 30
                        probabilities[6] = 30
                        probabilities[8] = 30
                        probabilities[32] = 100
                    end
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                        probabilities[12] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                        if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            probabilities[14] = 100
                        elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            probabilities[2] = 10
                            probabilities[5] = 30
                            probabilities[6] = 30
                            probabilities[8] = 30
                            probabilities[32] = 100
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[2] = 10
                        probabilities[5] = 30
                        probabilities[6] = 30
                        probabilities[8] = 30
                        probabilities[32] = 100
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                probabilities[14] = 100
            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                probabilities[2] = 0
                probabilities[5] = 40
                probabilities[8] = 40
                probabilities[30] = 20
                probabilities[32] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13903) == true then
            if ai:GetHpRate(TARGET_SELF) <= 0.5 then
                probabilities[13] = 100
            elseif distanceEnemy >= 30 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 30
                        probabilities[2] = 0
                        probabilities[3] = 10
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[9] = 100
                        probabilities[11] = 60
                        probabilities[15] = 0
                        probabilities[17] = 0
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 25 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 30
                        probabilities[2] = 0
                        probabilities[3] = 10
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[9] = 100
                        probabilities[11] = 60
                        probabilities[15] = 150
                        probabilities[17] = 0
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 30
                        probabilities[2] = 0
                        probabilities[3] = 10
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[9] = 100
                        probabilities[11] = 60
                        probabilities[15] = 150
                        probabilities[17] = 0
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 30
                        probabilities[2] = 0
                        probabilities[3] = 10
                        probabilities[4] = 0
                        probabilities[5] = 0
                        probabilities[9] = 100
                        probabilities[11] = 60
                        probabilities[15] = 150
                        probabilities[17] = 0
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 30
                        probabilities[2] = 10
                        probabilities[3] = 10
                        probabilities[4] = 10
                        probabilities[5] = 10
                        probabilities[9] = 100
                        probabilities[11] = 30
                        probabilities[15] = 150
                        probabilities[17] = 0
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[30] = 100
                end
            elseif distanceEnemy >= 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 10
                        probabilities[2] = 20
                        probabilities[3] = 10
                        probabilities[4] = 20
                        probabilities[5] = 20
                        probabilities[9] = 0
                        probabilities[11] = 20
                        probabilities[15] = 150
                        probabilities[17] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[2] = 30
                        probabilities[4] = 10
                        probabilities[5] = 60
                        probabilities[32] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[2] = 30
                        probabilities[4] = 10
                        probabilities[5] = 50
                        probabilities[32] = 100
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[2] = 0
                    probabilities[4] = 0
                    probabilities[5] = 50
                    probabilities[30] = 50
                    probabilities[32] = 100
                end
            elseif distanceEnemy >= 2.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[1] = 0
                        probabilities[2] = 10
                        probabilities[3] = 10
                        probabilities[4] = 10
                        probabilities[5] = 10
                        probabilities[6] = 0
                        probabilities[7] = 30
                        probabilities[8] = 30
                        probabilities[11] = 0
                        probabilities[17] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[2] = 30
                        probabilities[4] = 10
                        probabilities[5] = 60
                        probabilities[6] = 0
                        probabilities[32] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        probabilities[14] = 100
                    elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        probabilities[2] = 30
                        probabilities[4] = 10
                        probabilities[5] = 60
                        probabilities[6] = 0
                        probabilities[32] = 100
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[2] = 0
                    probabilities[4] = 0
                    probabilities[5] = 50
                    probabilities[8] = 0
                    probabilities[30] = 50
                    probabilities[32] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[1] = 0
                    probabilities[2] = 10
                    probabilities[3] = 0
                    probabilities[5] = 10
                    probabilities[6] = 30
                    probabilities[7] = 20
                    probabilities[8] = 30
                    probabilities[11] = 0
                    probabilities[17] = 100
                    probabilities[32] = 0
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[2] = 10
                    probabilities[5] = 30
                    probabilities[6] = 30
                    probabilities[8] = 30
                    probabilities[32] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    probabilities[14] = 100
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    probabilities[2] = 10
                    probabilities[5] = 30
                    probabilities[6] = 30
                    probabilities[8] = 30
                    probabilities[32] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                probabilities[14] = 100
            elseif ai:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                probabilities[2] = 0
                probabilities[5] = 40
                probabilities[8] = 40
                probabilities[30] = 20
                probabilities[32] = 100
            end
        elseif ai:GetHpRate(TARGET_SELF) <= 0.8 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[10] = 100
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy >= 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[30] = 100
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy >= 25 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[1] = 30
                probabilities[2] = 0
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[11] = 60
                probabilities[17] = 0
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy >= 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[1] = 30
                probabilities[2] = 0
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[11] = 60
                probabilities[17] = 0
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy >= 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[1] = 30
                probabilities[2] = 0
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[11] = 60
                probabilities[17] = 0
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy >= 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[1] = 30
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[4] = 10
                probabilities[5] = 10
                probabilities[11] = 30
                probabilities[17] = 0
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy >= 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[1] = 10
                probabilities[2] = 20
                probabilities[3] = 10
                probabilities[4] = 20
                probabilities[5] = 20
                probabilities[11] = 20
                probabilities[17] = 100
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                probabilities[2] = 30
                probabilities[4] = 10
                probabilities[5] = 60
                probabilities[32] = 100
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                probabilities[2] = 30
                probabilities[4] = 10
                probabilities[5] = 50
                probabilities[32] = 100
            else
                probabilities[2] = 0
                probabilities[4] = 0
                probabilities[5] = 50
                probabilities[30] = 50
                probabilities[32] = 100
            end
        elseif distanceEnemy >= 2.5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[1] = 0
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[4] = 10
                probabilities[5] = 10
                probabilities[6] = 0
                probabilities[7] = 30
                probabilities[8] = 30
                probabilities[11] = 0
                probabilities[17] = 100
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                probabilities[2] = 30
                probabilities[4] = 10
                probabilities[5] = 60
                probabilities[6] = 0
                probabilities[32] = 100
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                probabilities[2] = 30
                probabilities[4] = 10
                probabilities[5] = 60
                probabilities[6] = 0
                probabilities[32] = 100
            else
                probabilities[2] = 0
                probabilities[4] = 0
                probabilities[5] = 50
                probabilities[8] = 0
                probabilities[30] = 50
                probabilities[32] = 100
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
            probabilities[1] = 0
            probabilities[2] = 10
            probabilities[3] = 0
            probabilities[5] = 10
            probabilities[6] = 30
            probabilities[7] = 20
            probabilities[8] = 30
            probabilities[11] = 0
            probabilities[17] = 100
            probabilities[32] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
            probabilities[2] = 10
            probabilities[5] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[32] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
            probabilities[2] = 10
            probabilities[5] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[32] = 100
        else
            probabilities[2] = 0
            probabilities[5] = 40
            probabilities[8] = 40
            probabilities[30] = 20
            probabilities[32] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13901) == true then
        if ai:GetHpRate(TARGET_SELF) <= 0.8 then
            probabilities[34] = 100
        elseif distanceEnemy >= 140 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 100
                probabilities[36] = 0
            else
                probabilities[31] = 100
            end
        elseif distanceEnemy >= 120 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[22] = 100
                probabilities[36] = 0
            else
                probabilities[31] = 100
            end
        elseif distanceEnemy >= 100 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    probabilities[20] = 0
                    probabilities[21] = 80
                    probabilities[22] = 20
                    probabilities[36] = 0
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    probabilities[20] = 100
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[36] = 0
                    probabilities[36] = 0
                end
            else
                probabilities[31] = 100
            end
        elseif distanceEnemy >= 80 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    probabilities[20] = 0
                    probabilities[21] = 80
                    probabilities[22] = 20
                    probabilities[36] = 0
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    probabilities[20] = 100
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[36] = 0
                    probabilities[36] = 0
                end
            else
                probabilities[31] = 100
            end
        elseif distanceEnemy >= 60 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    probabilities[20] = 60
                    probabilities[21] = 20
                    probabilities[22] = 20
                    probabilities[36] = 0
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    probabilities[20] = 100
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[36] = 0
                end
            else
                probabilities[31] = 100
            end
        elseif distanceEnemy >= 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if ai:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    probabilities[20] = 60
                    probabilities[21] = 0
                    probabilities[22] = 40
                    probabilities[36] = 0
                elseif ai:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    probabilities[20] = 100
                    probabilities[21] = 0
                    probabilities[22] = 0
                    probabilities[36] = 0
                end
            else
                probabilities[31] = 100
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
            probabilities[34] = 100
        else
            probabilities[30] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 13900) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 900) then
                probabilities[33] = 100
            else
                probabilities[30] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) == true then
            if distanceEnemy >= 40 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 900) then
                    probabilities[35] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 900) then
                probabilities[33] = 100
            else
                probabilities[30] = 100
            end
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 15, probabilities[1], 1)
    probabilities[1] = SetCoolTime(ai, goal, 3005, 5, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3003, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3005, 15, probabilities[3], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3000, 5, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3008, 10, probabilities[4], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3010, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3014, 10, probabilities[5], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3015, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3020, 15, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3021, 20, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3022, 15, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3025, 15, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3029, 1, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3030, 25, probabilities[11], 1)
    probabilities[11] = SetCoolTime(ai, goal, 20015, 10, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3031, 1, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3035, 1, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3039, 30, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 20012, 20, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 20014, 30, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 20015, 25, probabilities[17], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3030, 10, probabilities[17], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3100, 5, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3101, 15, probabilities[21], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3102, 5, probabilities[22], 1)
    probabilities[32] = SetCoolTime(ai, goal, 6002, 10, probabilities[32], 1)
    probabilities[32] = SetCoolTime(ai, goal, 6003, 10, probabilities[32], 1)
    acts[1] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act18)
    acts[20] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act22)
    acts[30] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, RadarnAndLeonard473000_Act36)
    local actAfter = REGIST_FUNC(ai, goal, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function RadarnAndLeonard473000_Act01(ai, goal, paramTbl)
    local stopDist = 27 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act02(ai, goal, paramTbl)
    local stopDist = 12 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3001
    local animationId_2 = 3003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act03(ai, goal, paramTbl)
    local stopDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act04(ai, goal, paramTbl)
    local stopDist = 11 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3008
    local animationId_2 = 3010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act05(ai, goal, paramTbl)
    local stopDist = 13 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3014
    local animationId_2 = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act06(ai, goal, paramTbl)
    local f8_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 5
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act07(ai, goal, paramTbl)
    local f9_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3021
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act08(ai, goal, paramTbl)
    local f10_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3022
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act09(ai, goal, paramTbl)
    local f11_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3025
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act10(ai, goal, paramTbl)
    local f12_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3029
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act11(ai, goal, paramTbl)
    local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3030
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act12(ai, goal, paramTbl)
    local f14_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act13(ai, goal, paramTbl)
    local f15_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 5
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3035
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act14(ai, goal, paramTbl)
    local f16_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3039
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act15(ai, goal, paramTbl)
    local stopDist = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 0
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 20012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act16(ai, goal, paramTbl)
    local stopDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 0
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 20014
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act17(ai, goal, paramTbl)
    local stopDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 0
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 20015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act18(ai, goal, paramTbl)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act20(ai, goal, paramTbl)
    local f21_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 5
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 3
    local f21_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3100
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act21(ai, goal, paramTbl)
    local f22_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 5
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 3
    local f22_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3101
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act22(ai, goal, paramTbl)
    local f23_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 5
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 3
    local f23_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3102
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act30(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act31(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, -1, resultTypeIfGuardSuccess, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act32(ai, goal, paramTbl)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act33(ai, goal, paramTbl)
    local f27_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 5
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 3
    local f27_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act34(ai, goal, paramTbl)
    local f28_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 5
    local f28_local3 = 100
    local f28_local4 = 0
    local f28_local5 = 3
    local f28_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20006
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act35(ai, goal, paramTbl)
    local f29_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = f29_local0 + 0
    local f29_local2 = f29_local0 + 5
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 3
    local f29_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_Act36(ai, goal, paramTbl)
    local f30_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f30_local1 = f30_local0 + 0
    local f30_local2 = f30_local0 + 5
    local f30_local3 = 100
    local f30_local4 = 0
    local f30_local5 = 3
    local f30_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20008
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2.5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RadarnAndLeonard473000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_RadarnAndLeonard473000_AfterAttackAct, 10)
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
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 10) then
            if random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 10) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 10) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 12.5) then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if random <= 25 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 75 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 12.5) then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 10) then
            if random <= 40 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 10) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 10) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 12.5) then
            if random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5030) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
        if random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5031) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 12.5) then
            if random <= 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5032) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
        if random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5033) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 10) then
        if random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5034) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 10) then
        if random <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5035) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 10) then
        if random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5036) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 10) then
        if random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13907) then
        if ai:HasSpecialEffectId(TARGET_SELF, 13904) == true or ai:HasSpecialEffectId(TARGET_SELF, 13903) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 13904) == false and ai:HasSpecialEffectId(TARGET_SELF, 13903) == false then
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13908) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 1.5) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if random <= 80 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13909) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 25) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13910) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13911) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13912) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13913) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20012, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13914) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 30) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13915) and ai:HasSpecialEffectId(TARGET_SELF, 13920) == false and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
        if random <= 35 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13916) and ai:HasSpecialEffectId(TARGET_SELF, 13920) == true and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13917) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13917) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 12.5) then
        if random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20010, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13929) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 12.5) then
        if random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20011, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13936) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 12.5) then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13937) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 12.5) then
            if random <= 30 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(13938) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20013, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_RadarnAndLeonard473000_AfterAttackAct, "RadarnAndLeonard473000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RadarnAndLeonard473000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

