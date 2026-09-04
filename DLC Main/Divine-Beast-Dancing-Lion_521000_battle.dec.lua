RegisterTableGoal(GOAL_LionDanceBeast521000_Battle, "LionDanceBeast521000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LionDanceBeast521000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011200)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011201)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011202)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011203)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011204)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011205)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011206)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011207)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011210)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011211)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011212)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011213)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011214)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011240)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011241)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011242)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011243)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011244)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011245)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011200)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011201)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011202)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011205)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011206)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011207)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011210)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011211)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011213)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011214)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011240)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011241)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011242)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011243)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011244)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20011245)
    local distanceEnemy = ai:GetOriginDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) < 0.7 or ai:HasSpecialEffectId(TARGET_SELF, 20011245) then
        if not ai:HasSpecialEffectId(TARGET_SELF, 20011245) then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011248) then
                probabilities[24] = 10000
            else
                probabilities[20] = 10000
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011216) == false and ai:HasSpecialEffectId(TARGET_SELF, 20011208) == false then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011248) and not ai:HasSpecialEffectId(TARGET_SELF, 20011219) then
                probabilities[24] = 10000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011210) then
                probabilities[20] = 0
                probabilities[21] = 10000
                probabilities[22] = 10000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011211) then
                probabilities[20] = 10000
                probabilities[21] = 0
                probabilities[22] = 10000
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011212) then
                probabilities[20] = 10000
                probabilities[21] = 10000
                probabilities[22] = 0
            else
                probabilities[20] = 10000
                probabilities[21] = 10000
                probabilities[22] = 10000
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011215) then
            probabilities[20] = 10000
            probabilities[21] = 10000
            probabilities[22] = 10000
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011210) then
            if distanceEnemy > 24 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[3] = 600
                    probabilities[4] = 700
                    probabilities[9] = 400
                    probabilities[15] = 100
                    probabilities[30] = 300
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 200
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[4] = 300
                    probabilities[15] = 500
                    probabilities[30] = 500
                    probabilities[34] = 100
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[4] = 500
                    probabilities[9] = 100
                    probabilities[15] = 500
                    probabilities[30] = 250
                    probabilities[35] = 100
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 800
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[4] = 100
                    probabilities[15] = 300
                    probabilities[30] = 100
                    probabilities[35] = 200
                end
            elseif distanceEnemy > 9 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[2] = 200
                    probabilities[3] = 800
                    probabilities[9] = 300
                    probabilities[10] = 300
                    probabilities[26] = 50
                    probabilities[28] = 50
                    probabilities[13] = 300
                    probabilities[15] = 500
                    probabilities[30] = 100
                    probabilities[35] = 150
                    probabilities[36] = 150
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 800
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[15] = 300
                    probabilities[30] = 100
                    probabilities[35] = 400
                end
            elseif distanceEnemy > 6 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[2] = 100
                    probabilities[3] = 200
                    probabilities[9] = 100
                    probabilities[10] = 300
                    probabilities[12] = 250
                    probabilities[13] = 200
                    probabilities[26] = 50
                    probabilities[28] = 50
                    probabilities[15] = 300
                    probabilities[35] = 20
                    probabilities[36] = 20
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 400
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[30] = 20
                    probabilities[35] = 50
                end
            elseif distanceEnemy > 4 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 300
                    probabilities[2] = 300
                    probabilities[3] = 500
                    probabilities[10] = 100
                    probabilities[11] = 200
                    probabilities[12] = 400
                    probabilities[13] = 300
                    probabilities[15] = 800
                    probabilities[26] = 200
                    probabilities[28] = 300
                    probabilities[35] = 100
                    probabilities[36] = 200
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 300
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[35] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[3] = 70
                probabilities[10] = 10
                probabilities[11] = 20
                probabilities[13] = 40
                probabilities[14] = 50
                probabilities[15] = 130
                probabilities[26] = 20
                probabilities[27] = 30
                probabilities[28] = 50
                probabilities[31] = 1
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 40, 180, 100) then
                probabilities[6] = 700
                probabilities[13] = 300
                probabilities[26] = 200
                probabilities[27] = 200
                probabilities[28] = 400
                probabilities[31] = 1
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 40, 180, 100) then
                probabilities[5] = 700
                probabilities[13] = 300
                probabilities[27] = 200
                probabilities[28] = 400
                probabilities[31] = 1
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 90, 180, 100) then
                probabilities[8] = 700
                probabilities[13] = 300
                probabilities[33] = 300
                probabilities[31] = 1
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 90, 180, 100) then
                probabilities[7] = 700
                probabilities[13] = 300
                probabilities[33] = 300
                probabilities[31] = 1
            else
                probabilities[7] = 100
                probabilities[8] = 100
                probabilities[31] = 1
                probabilities[33] = 300
                probabilities[36] = 1
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011211) == true then
            if distanceEnemy > 24 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[3] = 100
                    probabilities[4] = 500
                    probabilities[9] = 200
                    probabilities[30] = 300
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 200
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[4] = 300
                    probabilities[30] = 500
                    probabilities[35] = 100
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[4] = 500
                    probabilities[9] = 100
                    probabilities[30] = 250
                    probabilities[35] = 100
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 1000
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[4] = 500
                    probabilities[30] = 100
                    probabilities[35] = 100
                end
            elseif distanceEnemy > 9 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 150
                    probabilities[2] = 550
                    probabilities[3] = 250
                    probabilities[9] = 250
                    probabilities[10] = 200
                    probabilities[26] = 200
                    probabilities[28] = 200
                    probabilities[17] = 1000
                    probabilities[30] = 50
                    probabilities[35] = 150
                    probabilities[36] = 150
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 500
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[17] = 500
                    probabilities[30] = 50
                    probabilities[35] = 150
                end
            elseif distanceEnemy > 6 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 100
                    probabilities[2] = 350
                    probabilities[3] = 150
                    probabilities[9] = 50
                    probabilities[10] = 50
                    probabilities[11] = 0
                    probabilities[12] = 250
                    probabilities[13] = 200
                    probabilities[26] = 75
                    probabilities[28] = 50
                    probabilities[17] = 500
                    probabilities[31] = 1
                    probabilities[35] = 150
                    probabilities[36] = 150
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 1500
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[17] = 150
                    probabilities[35] = 50
                end
            elseif distanceEnemy > 4 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 200
                    probabilities[2] = 200
                    probabilities[3] = 100
                    probabilities[10] = 50
                    probabilities[11] = 50
                    probabilities[12] = 250
                    probabilities[13] = 200
                    probabilities[26] = 100
                    probabilities[27] = 250
                    probabilities[28] = 150
                    probabilities[17] = 500
                    probabilities[35] = 50
                    probabilities[36] = 200
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 500
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[17] = 200
                    probabilities[35] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 250
                probabilities[3] = 100
                probabilities[10] = 50
                probabilities[11] = 50
                probabilities[13] = 200
                probabilities[14] = 200
                probabilities[26] = 100
                probabilities[27] = 250
                probabilities[28] = 100
                probabilities[17] = 500
                probabilities[35] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 40, 180, 100) then
                probabilities[6] = 700
                probabilities[13] = 300
                probabilities[17] = 600
                probabilities[26] = 200
                probabilities[27] = 200
                probabilities[28] = 400
                probabilities[35] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 40, 180, 100) then
                probabilities[5] = 700
                probabilities[13] = 300
                probabilities[17] = 600
                probabilities[27] = 200
                probabilities[28] = 400
                probabilities[35] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 90, 180, 100) then
                probabilities[8] = 700
                probabilities[13] = 300
                probabilities[17] = 300
                probabilities[33] = 300
                probabilities[35] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 90, 180, 100) then
                probabilities[7] = 700
                probabilities[13] = 300
                probabilities[17] = 300
                probabilities[33] = 300
                probabilities[35] = 10
            else
                probabilities[7] = 100
                probabilities[8] = 100
                probabilities[33] = 300
                probabilities[35] = 10
                probabilities[36] = 1
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 20011212) == true then
            if distanceEnemy > 24 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011204) then
                        probabilities[19] = 10000
                    end
                    probabilities[3] = 600
                    probabilities[4] = 700
                    probabilities[14] = 700
                    probabilities[30] = 300
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 2000
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[4] = 400
                    probabilities[30] = 600
                    probabilities[34] = 100
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011204) then
                        probabilities[19] = 10000
                    end
                    probabilities[3] = 350
                    probabilities[4] = 500
                    probabilities[14] = 350
                    probabilities[30] = 250
                    probabilities[35] = 50
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 100
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[4] = 250
                    probabilities[30] = 100
                    probabilities[35] = 10
                end
            elseif distanceEnemy > 9 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011204) then
                        probabilities[19] = 10000
                    end
                    probabilities[1] = 50
                    probabilities[2] = 400
                    probabilities[3] = 400
                    probabilities[4] = 400
                    probabilities[14] = 900
                    probabilities[28] = 50
                    probabilities[30] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 2000
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[14] = 500
                    probabilities[30] = 50
                    probabilities[35] = 200
                end
            elseif distanceEnemy > 6 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011204) then
                        probabilities[19] = 10000
                    end
                    probabilities[1] = 100
                    probabilities[2] = 100
                    probabilities[3] = 150
                    probabilities[12] = 250
                    probabilities[13] = 200
                    probabilities[14] = 450
                    probabilities[26] = 100
                    probabilities[28] = 100
                    probabilities[35] = 250
                    probabilities[36] = 250
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 1000
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[33] = 300
                    probabilities[35] = 100
                    probabilities[36] = 100
                end
            elseif distanceEnemy > 4 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 150
                    probabilities[2] = 150
                    probabilities[3] = 150
                    probabilities[11] = 100
                    probabilities[12] = 350
                    probabilities[13] = 200
                    probabilities[14] = 450
                    probabilities[26] = 150
                    probabilities[28] = 150
                    probabilities[35] = 100
                    probabilities[36] = 200
                    if not ai:HasSpecialEffectId(TARGET_SELF, 20011237) then
                        if ai:HasSpecialEffectId(TARGET_SELF, 5020) then
                            probabilities[23] = 1000
                        elseif not ai:HasSpecialEffectId(TARGET_SELF, 20011209) then
                            probabilities[23] = 100000
                        end
                    end
                else
                    probabilities[33] = 150
                    probabilities[36] = 100
                    probabilities[35] = 50
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 200
                probabilities[3] = 150
                probabilities[11] = 200
                probabilities[13] = 200
                probabilities[14] = 350
                probabilities[26] = 200
                probabilities[27] = 200
                probabilities[28] = 200
                probabilities[35] = 50
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 40, 180, 100) then
                probabilities[6] = 700
                probabilities[13] = 300
                probabilities[26] = 200
                probabilities[27] = 200
                probabilities[28] = 400
                probabilities[35] = 50
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 40, 180, 100) then
                probabilities[5] = 700
                probabilities[13] = 300
                probabilities[27] = 200
                probabilities[28] = 400
                probabilities[35] = 50
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 90, 180, 100) then
                probabilities[8] = 700
                probabilities[13] = 300
                probabilities[33] = 300
                probabilities[35] = 50
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 90, 180, 100) then
                probabilities[7] = 700
                probabilities[13] = 300
                probabilities[33] = 300
                probabilities[35] = 50
            else
                probabilities[7] = 100
                probabilities[8] = 100
                probabilities[33] = 300
                probabilities[35] = 50
                probabilities[36] = 1
            end
        elseif distanceEnemy > 24 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                if ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                    probabilities[9] = 200
                    probabilities[30] = 50
                    probabilities[35] = 100
                else
                    probabilities[3] = 300
                    probabilities[4] = 350
                    probabilities[9] = 200
                    probabilities[30] = 150
                    probabilities[35] = 10
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                probabilities[9] = 200
                probabilities[30] = 50
                probabilities[34] = 100
                probabilities[35] = 100
            else
                probabilities[4] = 250
                probabilities[30] = 200
                probabilities[34] = 100
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                if ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                    probabilities[9] = 100
                    probabilities[30] = 100
                    probabilities[35] = 150
                else
                    probabilities[3] = 350
                    probabilities[4] = 500
                    probabilities[9] = 100
                    probabilities[30] = 150
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                probabilities[9] = 200
                probabilities[30] = 50
                probabilities[34] = 100
                probabilities[35] = 150
            else
                probabilities[4] = 150
                probabilities[30] = 100
                probabilities[34] = 50
                probabilities[35] = 50
            end
        elseif distanceEnemy > 9 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                if ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                    probabilities[9] = 200
                    probabilities[10] = 300
                    probabilities[12] = 100
                    probabilities[13] = 500
                    probabilities[30] = 10
                    probabilities[35] = 150
                    probabilities[36] = 200
                else
                    probabilities[1] = 50
                    probabilities[2] = 500
                    probabilities[3] = 500
                    probabilities[4] = 300
                    probabilities[9] = 200
                    probabilities[10] = 300
                    probabilities[11] = 100
                    probabilities[12] = 100
                    probabilities[13] = 500
                    probabilities[28] = 200
                    probabilities[30] = 50
                    probabilities[35] = 100
                    probabilities[36] = 150
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                probabilities[30] = 10
                probabilities[34] = 100
                probabilities[35] = 150
                probabilities[36] = 100
            else
                probabilities[30] = 50
                probabilities[34] = 0
                probabilities[35] = 10
                probabilities[36] = 10
            end
        elseif distanceEnemy > 6 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                if ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                    probabilities[2] = 50
                    probabilities[3] = 30
                    probabilities[9] = 10
                    probabilities[10] = 30
                    probabilities[12] = 100
                    probabilities[13] = 50
                    probabilities[30] = 10
                    probabilities[35] = 10
                    probabilities[36] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 250
                    probabilities[3] = 150
                    probabilities[9] = 50
                    probabilities[10] = 150
                    probabilities[11] = 100
                    probabilities[12] = 300
                    probabilities[13] = 250
                    probabilities[26] = 50
                    probabilities[28] = 250
                    probabilities[30] = 100
                    probabilities[35] = 50
                    probabilities[36] = 150
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011238) then
                probabilities[30] = 10
                probabilities[33] = 150
                probabilities[35] = 50
                probabilities[36] = 50
            else
                probabilities[30] = 150
                probabilities[33] = 100
                probabilities[35] = 50
                probabilities[36] = 50
            end
        elseif distanceEnemy > 4 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 150
                probabilities[3] = 200
                probabilities[10] = 250
                probabilities[11] = 100
                probabilities[12] = 200
                probabilities[13] = 200
                probabilities[14] = 50
                probabilities[26] = 200
                probabilities[27] = 100
                probabilities[28] = 250
                probabilities[35] = 100
                probabilities[36] = 250
            else
                probabilities[30] = 10
                probabilities[31] = 1
                probabilities[33] = 30
                probabilities[36] = 10
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 200
            probabilities[3] = 200
            probabilities[10] = 200
            probabilities[11] = 150
            probabilities[13] = 0
            probabilities[14] = 300
            probabilities[27] = 200
            probabilities[35] = 100
            probabilities[36] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 40, 180, 100) then
            probabilities[6] = 350
            probabilities[10] = 200
            probabilities[11] = 150
            probabilities[14] = 100
            probabilities[26] = 100
            probabilities[27] = 100
            probabilities[32] = 50
            probabilities[33] = 50
            probabilities[35] = 100
            probabilities[36] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 40, 180, 100) then
            probabilities[5] = 400
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 250
            probabilities[11] = 200
            probabilities[13] = 0
            probabilities[14] = 150
            probabilities[26] = 150
            probabilities[27] = 150
            probabilities[32] = 50
            probabilities[33] = 50
            probabilities[35] = 100
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 90, 180, 100) then
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 400
            probabilities[10] = 250
            probabilities[11] = 0
            probabilities[13] = 0
            probabilities[14] = 150
            probabilities[32] = 50
            probabilities[33] = 50
            probabilities[35] = 100
            probabilities[36] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 90, 180, 100) then
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 400
            probabilities[8] = 0
            probabilities[10] = 250
            probabilities[11] = 0
            probabilities[14] = 150
            probabilities[32] = 50
            probabilities[33] = 50
            probabilities[35] = 100
            probabilities[36] = 0
        else
            probabilities[7] = 100
            probabilities[8] = 100
            probabilities[33] = 50
            probabilities[36] = 1
        end
    elseif distanceEnemy > 24 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[3] = 600
            probabilities[4] = 700
            probabilities[9] = 400
            probabilities[30] = 300
        else
            probabilities[4] = 400
            probabilities[30] = 600
            probabilities[34] = 100
        end
    elseif distanceEnemy > 15 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[3] = 700
            probabilities[4] = 1000
            probabilities[9] = 200
            probabilities[30] = 500
        else
            probabilities[4] = 100
            probabilities[30] = 200
            probabilities[34] = 100
            probabilities[35] = 100
        end
    elseif distanceEnemy > 9 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 50
            probabilities[2] = 500
            probabilities[3] = 500
            probabilities[4] = 300
            probabilities[9] = 300
            probabilities[10] = 100
            probabilities[11] = 100
            probabilities[12] = 100
            probabilities[13] = 500
            probabilities[28] = 200
            probabilities[30] = 100
            probabilities[35] = 200
            probabilities[36] = 500
        else
            probabilities[30] = 100
            probabilities[34] = 0
            probabilities[35] = 100
            probabilities[36] = 100
        end
    elseif distanceEnemy > 6 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 100
            probabilities[2] = 500
            probabilities[3] = 300
            probabilities[9] = 100
            probabilities[10] = 300
            probabilities[11] = 200
            probabilities[12] = 500
            probabilities[13] = 300
            probabilities[26] = 100
            probabilities[28] = 500
            probabilities[30] = 100
            probabilities[35] = 1
            probabilities[36] = 500
        else
            probabilities[30] = 100
            probabilities[33] = 300
            probabilities[35] = 10
            probabilities[36] = 100
        end
    elseif distanceEnemy > 4 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 300
            probabilities[3] = 300
            probabilities[10] = 300
            probabilities[11] = 200
            probabilities[12] = 500
            probabilities[13] = 300
            probabilities[14] = 100
            probabilities[26] = 300
            probabilities[27] = 300
            probabilities[28] = 300
            probabilities[35] = 100
            probabilities[36] = 500
        else
            probabilities[30] = 10
            probabilities[35] = 1
            probabilities[33] = 300
            probabilities[36] = 100
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
        probabilities[1] = 300
        probabilities[3] = 300
        probabilities[10] = 300
        probabilities[11] = 200
        probabilities[13] = 400
        probabilities[14] = 500
        probabilities[27] = 300
        probabilities[35] = 1
        probabilities[36] = 100
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 40, 180, 100) then
        probabilities[6] = 700
        probabilities[10] = 200
        probabilities[11] = 300
        probabilities[13] = 300
        probabilities[14] = 0
        probabilities[26] = 200
        probabilities[27] = 200
        probabilities[32] = 50
        probabilities[33] = 100
        probabilities[35] = 1
        probabilities[36] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 40, 180, 100) then
        probabilities[5] = 700
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 200
        probabilities[11] = 300
        probabilities[13] = 300
        probabilities[14] = 0
        probabilities[26] = 200
        probabilities[27] = 200
        probabilities[32] = 50
        probabilities[33] = 100
        probabilities[35] = 1
        probabilities[36] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 90, 180, 100) then
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 700
        probabilities[11] = 0
        probabilities[13] = 300
        probabilities[14] = 0
        probabilities[32] = 5
        probabilities[33] = 300
        probabilities[35] = 1
        probabilities[36] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 90, 180, 100) then
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 700
        probabilities[8] = 0
        probabilities[11] = 0
        probabilities[13] = 300
        probabilities[14] = 0
        probabilities[32] = 50
        probabilities[33] = 300
        probabilities[35] = 1
        probabilities[36] = 0
    else
        probabilities[7] = 100
        probabilities[8] = 100
        probabilities[35] = 1
        probabilities[33] = 30
        probabilities[36] = 1
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20011201) == true then
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
        probabilities[36] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 6, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3005, 12, probabilities[2], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3006, 12, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3010, 9, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3011, 9, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3014, 6, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3015, 6, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3016, 5, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3017, 5, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3020, 12, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3021, 12, probabilities[9], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3029, 12, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3021, 20, probabilities[10], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3029, 20, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3022, 10, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3025, 30, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3028, 20, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3027, 8, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3035, 10, probabilities[15], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3036, 10, probabilities[15], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3033, 8, probabilities[17], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3031, 25, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 20002, 110, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 20004, 110, probabilities[21], 1)
    probabilities[22] = SetCoolTime(ai, goal, 20006, 110, probabilities[22], 1)
    probabilities[23] = SetCoolTime(ai, goal, 3037, 60, probabilities[23], 1)
    probabilities[26] = SetCoolTime(ai, goal, 3012, 8, probabilities[26], 1)
    probabilities[27] = SetCoolTime(ai, goal, 3005, 15, probabilities[27], 1)
    probabilities[27] = SetCoolTime(ai, goal, 3006, 15, probabilities[27], 1)
    probabilities[28] = SetCoolTime(ai, goal, 3007, 10, probabilities[28], 1)
    probabilities[32] = SetCoolTime(ai, goal, 6001, 15, probabilities[32], 0)
    probabilities[33] = SetCoolTime(ai, goal, 20000, 15, probabilities[33], 1)
    probabilities[33] = SetCoolTime(ai, goal, 20001, 15, probabilities[33], 1)
    probabilities[36] = SetCoolTime(ai, goal, 6002, 15, probabilities[36], 1)
    probabilities[36] = SetCoolTime(ai, goal, 6003, 15, probabilities[36], 1)
    acts[1] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act15)
    acts[17] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act17)
    acts[19] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act28)
    acts[30] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, LionDanceBeast521000_Act36)
    local actAfter = REGIST_FUNC(ai, goal, LionDanceBeast521000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function LionDanceBeast521000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.8 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 15
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3002
    local animationId_4 = 3003
    local animationId_5 = 3004
    local target = TARGET_ENE_0
    local successDist = 30
    local successDist_2 = 20
    local successDist_3 = 20
    local successDist_4 = 20
    local successDist_5 = 20
    local f3_local20 = 0
    local f3_local21 = 0
    local f3_local22 = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    if random < 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_3, target, successDist_3, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_4, target, successDist_4, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_5, target, successDist_5, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 9 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3005
    local animationId_2 = 3004
    local target = TARGET_ENE_0
    local successDist = 20
    local successDist_2 = 20
    local f4_local14 = 0
    local f4_local15 = 0
    local f4_local16 = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    if random < 60 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 12 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3010
    local target = TARGET_ENE_0
    local successDist = 20
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDist = 20
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act05(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3014
    local target = TARGET_ENE_0
    local successDist = 20
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act06(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3015
    local target = TARGET_ENE_0
    local successDist = 100
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act07(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3016
    local target = TARGET_ENE_0
    local successDist = 20
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act08(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3017
    local target = TARGET_ENE_0
    local successDist = 20
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act09(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3020
    local target = TARGET_ENE_0
    local successDist = 20
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act10(ai, goal, paramTbl)
    local goalLife = 20
    local animationId = 3021
    local target = TARGET_ENE_0
    local successDist = 20
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act11(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 15
    local animationId = 3022
    local animationId_2 = 3023
    local target = TARGET_ENE_0
    local successDist = 30
    local successDist_2 = 20
    local f13_local14 = 0
    local f13_local15 = 0
    local f13_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 9 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3025
    local target = TARGET_ENE_0
    local successDist = 20
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act13(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3028
    local animationId_2 = 3029
    local target = TARGET_ENE_0
    local successDist = 100
    local successDist_2 = 20
    local f15_local6 = 0
    local f15_local7 = 0
    local f15_local8 = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 20011212) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act14(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3027
    local target = TARGET_ENE_0
    local successDist = 20
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act15(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = ai:GetRandam_Int(3035, 3036)
    local target = TARGET_ENE_0
    local successDist = 20
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    if animationId == 3035 then
        animeID2 = 3036
    elseif animationId == 3036 then
        animeID2 = 3035
    end
    local random = ai:GetRandam_Int(1, 100)
    if random < 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animeID2, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act17(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3033
    local target = TARGET_ENE_0
    local successDist = 20
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act19(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3031
    local target = TARGET_ENE_0
    local successDist = 20
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act20(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20002
    local target = TARGET_ENE_0
    local successDist = 20
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 3 then
        local animationId_2 = 6001
        local successDist_2 = 999
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act21(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20004
    local target = TARGET_ENE_0
    local successDist = 20
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 3 then
        local animationId_2 = 6001
        local successDist_2 = 999
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act22(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20006
    local target = TARGET_ENE_0
    local successDist = 20
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 3 then
        local animationId_2 = 6001
        local successDist_2 = 999
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act23(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3037
    local target = TARGET_ENE_0
    local successDist = 20
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 5 then
        local animationId_2 = 6001
        local successDist_2 = 999
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act24(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20003
    local target = TARGET_ENE_0
    local successDist = 20
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 3 then
        local animationId_2 = 6001
        local successDist_2 = 999
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act25(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.8 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 100
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 15
    local animationId = 3000
    local animationId_2 = 3001
    local animationId_3 = 3002
    local target = TARGET_ENE_0
    local successDist = 30
    local successDist_2 = 20
    local successDist_3 = 20
    local f25_local16 = 0
    local f25_local17 = 0
    local f25_local18 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_3, target, successDist_3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act26(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.8 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 30
    local animationId = 3012
    local animationId_2 = 3013
    local animationId_3 = 3001
    local animationId_4 = 3002
    local animationId_5 = 3003
    local animationId_6 = 3004
    local target = TARGET_ENE_0
    local successDist = 30
    local successDist_2 = 30
    local successDist_3 = 30
    local successDist_4 = 20
    local successDist_5 = 20
    local successDist_6 = 20
    local f26_local22 = 0
    local f26_local23 = 0
    local f26_local24 = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_3, target, successDist_3, 0, 0, 0)
    local random_2 = ai:GetRandam_Int(1, 100)
    if random_2 < 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_4, target, successDist_4, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_5, target, successDist_5, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_6, target, successDist_6, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act27(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2.8 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 15
    local animationId = 3006
    local animationId_2 = 3004
    local target = TARGET_ENE_0
    local successDist = 30
    local successDist_2 = 20
    local f27_local14 = 0
    local f27_local15 = 0
    local f27_local16 = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    if random < 60 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act28(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 15
    local animationId = 3007
    local target = TARGET_ENE_0
    local successDist = 30
    local f28_local12 = 20
    local f28_local13 = 20
    local f28_local14 = 0
    local f28_local15 = 0
    local f28_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act30(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(1, 3) * 0.5
    local distTarget = TARGET_ENE_0
    local stopDist = 2
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distance = ai:GetOriginDist(distTarget)
    if distance >= 15 then
        walk = false
    end
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, distTarget, stopDist, turnTarget, walk, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act31(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(2, 4) * 0.5
    local moveTarget = TARGET_ENE_0
    local right = ai:GetRandam_Int(0, 1)
    local angleThreshold = ai:GetRandam_Int(2, 4) * 15
    local isWalk = true
    local successOnEnd = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, successOnEnd, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act32(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 6001
    local target = TARGET_ENE_0
    local dirSpaceCheck = AI_DIR_TYPE_B
    local distSpaceCheck = 7
    local turnTime = -1
    goal:AddSubGoal(GOAL_COMMON_SpinStep, goalLife, animationId, target, turnTime, dirSpaceCheck, distSpaceCheck)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act33(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = ai:GetRandam_Int(20000, 20001)
    local target = TARGET_ENE_0
    local successDist = 20
    local f32_local4 = 0
    local f32_local5 = 0
    local f32_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act34(ai, goal, paramTbl)
    local goalLife = 1
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 45
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardActionId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act35(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Int(2, 4) * 0.5
    local leftPriority = 1
    local rightPriority = ai:GetRandam_Int(1, 2)
    local moveTarget = TARGET_ENE_0
    local distSpaceCheck = 1
    local angleThreshold = ai:GetRandam_Int(2, 4) * 15
    local guardOdds = 0
    local minDist = 0
    local maxDist = 50
    goal:AddSubGoal(GOAL_COMMON_FlexibleSideWayMove, goalLife, leftPriority, rightPriority, moveTarget, distSpaceCheck, angleThreshold, guardOdds, minDist, maxDist)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_Act36(ai, goal, paramTbl)
    local goalLife = 2
    local target = TARGET_ENE_0
    local distSpaceCheck = 5
    local turnTime = -1
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, -1, -1, 1, 1, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LionDanceBeast521000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_LionDanceBeast521000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f39_local0 = 1
        if ai:HasSpecialEffectId(TARGET_SELF, 20011200) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011200)
            goal:ClearSubGoal()
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20011203) then
                random = 1
            end
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 170, 180, 100) then
                if random <= 60 then
                    local goalLife = 5
                    local animationId = ai:GetRandam_Int(20000, 20001)
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f39_local7 = 0
                    local f39_local8 = 0
                    local f39_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                else
                    f39_local0 = 2
                end
            else
                f39_local0 = 2
            end
        else
            f39_local0 = 2
        end
        if f39_local0 == 2 then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011202) and ai:HasSpecialEffectId(TARGET_SELF, 20011210) == false then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011202)
                goal:ClearSubGoal()
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                if distanceEnemy < 5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        if random <= 30 then
                            local random_2 = ai:GetRandam_Int(1, 100)
                            local goalLife = 5
                            local animationId = 3007
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local8 = 0
                            local f39_local9 = 0
                            local f39_local10 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 30, 180, 100) then
                        if random <= 40 then
                            local goalLife = 5
                            local animationId = 3015
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local7 = 0
                            local f39_local8 = 0
                            local f39_local9 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 30, 180, 100) then
                        local random_2 = ai:GetRandam_Int(1, 100)
                        if random_2 <= 40 then
                            local goalLife = 5
                            local animationId = 3014
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local8 = 0
                            local f39_local9 = 0
                            local f39_local10 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 100) then
                        if random <= 40 then
                            local goalLife = 5
                            local animationId = 3017
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local7 = 0
                            local f39_local8 = 0
                            local f39_local9 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif random <= 40 then
                        local goalLife = 5
                        local animationId = 3016
                        local target = TARGET_ENE_0
                        local successDist = 20
                        local f39_local7 = 0
                        local f39_local8 = 0
                        local f39_local9 = 0
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                    else
                        f39_local0 = 3
                    end
                else
                    f39_local0 = 3
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011202) and ai:HasSpecialEffectId(TARGET_SELF, 20011210) == true then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011202)
                goal:ClearSubGoal()
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                if distanceEnemy < 5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        if random <= 30 then
                            local random_2 = ai:GetRandam_Int(1, 100)
                            local goalLife = 5
                            local animationId = 3002
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local8 = 0
                            local f39_local9 = 0
                            local f39_local10 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 30, 180, 100) then
                        if random <= 40 then
                            local goalLife = 5
                            local animationId = 3015
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local7 = 0
                            local f39_local8 = 0
                            local f39_local9 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 30, 180, 100) then
                        local random_2 = ai:GetRandam_Int(1, 100)
                        if random_2 <= 40 then
                            local goalLife = 5
                            local animationId = 3014
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local8 = 0
                            local f39_local9 = 0
                            local f39_local10 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 100) then
                        if random <= 40 then
                            local goalLife = 5
                            local animationId = 3017
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local7 = 0
                            local f39_local8 = 0
                            local f39_local9 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 3
                        end
                    elseif random <= 40 then
                        local goalLife = 5
                        local animationId = 3016
                        local target = TARGET_ENE_0
                        local successDist = 20
                        local f39_local7 = 0
                        local f39_local8 = 0
                        local f39_local9 = 0
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                    else
                        f39_local0 = 3
                    end
                else
                    f39_local0 = 3
                end
            else
                f39_local0 = 3
            end
        end
        if f39_local0 == 3 then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011206) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011206)
                goal:ClearSubGoal()
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                if distanceEnemy > 6.5 and distanceEnemy < 12 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        if random <= 40 then
                            local goalLife = 5
                            local animationId = 3020
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f39_local7 = 0
                            local f39_local8 = 0
                            local f39_local9 = 0
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        else
                            f39_local0 = 4
                        end
                    else
                        f39_local0 = 4
                    end
                else
                    f39_local0 = 4
                end
            else
                f39_local0 = 4
            end
        end
        if f39_local0 == 4 then
            if ai:HasSpecialEffectId(TARGET_SELF, 20011207) and ai:HasSpecialEffectId(TARGET_SELF, 20011212) == false then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011207)
                goal:ClearSubGoal()
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                if distanceEnemy < 1 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) and random <= 50 then
                    local goalLife = 5
                    local animationId = 3027
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f39_local7 = 0
                    local f39_local8 = 0
                    local f39_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 20011207) and ai:HasSpecialEffectId(TARGET_SELF, 20011212) == true then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011207)
                goal:ClearSubGoal()
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                if distanceEnemy < 1 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) and random <= 50 then
                    local goalLife = 5
                    local animationId = 3027
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f39_local7 = 0
                    local f39_local8 = 0
                    local f39_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20011205) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, 180, 100) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011205)
                goal:ClearSubGoal()
            end
            if distanceEnemy < 5 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20011205)
                goal:ClearSubGoal()
            end
        end
    end
    
end

RegisterTableGoal(GOAL_LionDanceBeast521000_AfterAttackAct, "LionDanceBeast521000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LionDanceBeast521000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


