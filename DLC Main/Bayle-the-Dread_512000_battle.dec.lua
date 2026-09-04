RegisterTableGoal(GOAL_Bayle512000_Battle, "Bayle512000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bayle512000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local number4 = ai:GetNumber(4)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010800)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010803)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010804)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010811)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010812)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010814)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010815)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010816)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010818)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010826)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010830)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010831)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) > 0.8 then
        if distanceEnemy > 50 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[30] = 50
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy > 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 0
                probabilities[3] = 30
                probabilities[4] = 30
                probabilities[8] = 30
                probabilities[29] = 0
                probabilities[30] = 40
                probabilities[31] = 0
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy > 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 15
                probabilities[3] = 15
                probabilities[4] = 30
                probabilities[8] = 90
                probabilities[25] = 0
                probabilities[29] = 90
                probabilities[30] = 15
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 60
                probabilities[3] = 60
                probabilities[4] = 20
                probabilities[8] = 90
                probabilities[11] = 0
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[29] = 90
                probabilities[30] = 20
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 30
                probabilities[3] = 30
                probabilities[4] = 20
                probabilities[6] = 0
                probabilities[11] = 80
                probabilities[12] = 0
                probabilities[13] = 10
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[29] = 0
                probabilities[30] = 10
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[15] = 70
                probabilities[30] = 30
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[8] = 0
                probabilities[11] = 60
                probabilities[12] = 30
                probabilities[13] = 30
                probabilities[14] = 10
                probabilities[24] = 0
                probabilities[25] = 40
                probabilities[26] = 40
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[11] = 0
                probabilities[12] = 20
                probabilities[13] = 10
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 80
                probabilities[24] = 0
                probabilities[25] = 40
                probabilities[26] = 30
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[8] = 0
                probabilities[11] = 0
                probabilities[12] = 20
                probabilities[13] = 10
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 0
                probabilities[25] = 40
                probabilities[26] = 30
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[1] = 0
                probabilities[15] = 90
                probabilities[30] = 0
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 0 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, 180, 100) then
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 0
                probabilities[11] = 0
                probabilities[12] = 30
                probabilities[13] = 20
                probabilities[14] = 30
                probabilities[24] = 15
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 70, 180, 100) then
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 0
                probabilities[11] = 0
                probabilities[12] = 30
                probabilities[13] = 20
                probabilities[14] = 30
                probabilities[16] = 0
                probabilities[17] = 40
                probabilities[24] = 15
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[11] = 0
                probabilities[12] = 30
                probabilities[13] = 20
                probabilities[14] = 30
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 15
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 60
                probabilities[24] = 20
                probabilities[25] = 0
                probabilities[26] = 30
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 80
                probabilities[17] = 0
                probabilities[24] = 20
                probabilities[25] = 0
                probabilities[26] = 30
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[15] = 100
                probabilities[30] = 0
                probabilities[31] = 0
            else
                probabilities[30] = 100
            end
        elseif distanceEnemy > -5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, 180, 100) then
                probabilities[1] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 20
                probabilities[12] = 20
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 70, 180, 100) then
                probabilities[1] = 0
                probabilities[5] = 0
                probabilities[6] = 20
                probabilities[12] = 20
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                probabilities[1] = 0
                probabilities[6] = 20
                probabilities[12] = 20
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[6] = 20
                probabilities[12] = 20
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[6] = 20
                probabilities[12] = 20
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 80
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[1] = 0
                probabilities[6] = 20
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[15] = 20
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[30] = 0
                probabilities[31] = 1
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 50
            probabilities[6] = 10
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 20
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[1] = 40
            probabilities[6] = 10
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 20
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[1] = 40
            probabilities[6] = 10
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 20
            probabilities[16] = 50
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[1] = 30
            probabilities[6] = 20
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 20
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[30] = 20
            probabilities[31] = 1
        else
            probabilities[1] = 30
            probabilities[6] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 20
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[24] = 70
            probabilities[30] = 0
            probabilities[31] = 0
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 20010826) == false then
        if distanceEnemy > 50 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[30] = 100
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 30
                probabilities[3] = 30
                probabilities[4] = 30
                probabilities[6] = 0
                probabilities[8] = 30
                probabilities[9] = 0
                probabilities[11] = 0
                probabilities[25] = 0
                probabilities[29] = 40
                probabilities[30] = 40
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 15
                probabilities[3] = 15
                probabilities[4] = 30
                probabilities[6] = 0
                probabilities[8] = 90
                probabilities[9] = 10
                probabilities[11] = 0
                probabilities[25] = 0
                probabilities[29] = 90
                probabilities[30] = 15
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 30
                probabilities[3] = 30
                probabilities[4] = 20
                probabilities[6] = 0
                probabilities[8] = 90
                probabilities[9] = 30
                probabilities[11] = 25
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[25] = 0
                probabilities[29] = 90
                probabilities[30] = 20
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 30
                probabilities[3] = 30
                probabilities[4] = 20
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 30
                probabilities[11] = 80
                probabilities[12] = 0
                probabilities[13] = 10
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[29] = 0
                probabilities[30] = 10
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[1] = 50
                probabilities[6] = 0
                probabilities[9] = 0
                probabilities[15] = 70
                probabilities[24] = 0
                probabilities[30] = 30
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 20
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 60
                probabilities[12] = 30
                probabilities[13] = 30
                probabilities[14] = 10
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[26] = 20
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 20
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 20
                probabilities[13] = 10
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 80
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[26] = 20
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 20
                probabilities[13] = 10
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[26] = 20
                probabilities[29] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[15] = 90
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 0
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            else
                probabilities[30] = 100
                probabilities[31] = 0
            end
        elseif distanceEnemy > 0 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 30
                probabilities[11] = 0
                probabilities[12] = 30
                probabilities[13] = 20
                probabilities[14] = 30
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 70, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 30
                probabilities[11] = 0
                probabilities[12] = 30
                probabilities[13] = 20
                probabilities[14] = 30
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 30
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 30
                probabilities[11] = 0
                probabilities[12] = 30
                probabilities[13] = 20
                probabilities[14] = 30
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 30
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 30
                probabilities[24] = 0
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 30
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 80
                probabilities[17] = 0
                probabilities[24] = 20
                probabilities[25] = 20
                probabilities[26] = 30
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[6] = 20
                probabilities[8] = 0
                probabilities[9] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 20
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            else
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 10
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 20
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[30] = 0
                probabilities[31] = 0
            end
        elseif distanceEnemy > -5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 70, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[6] = 10
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 10
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[6] = 20
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 20
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 60
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 10
                probabilities[4] = 0
                probabilities[6] = 20
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[11] = 0
                probabilities[12] = 20
                probabilities[13] = 0
                probabilities[14] = 20
                probabilities[15] = 0
                probabilities[16] = 80
                probabilities[17] = 0
                probabilities[24] = 10
                probabilities[25] = 10
                probabilities[26] = 10
                probabilities[30] = 0
                probabilities[31] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
                probabilities[6] = 20
                probabilities[8] = 0
                probabilities[9] = 20
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[15] = 30
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[24] = 20
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[30] = 0
                probabilities[31] = 1
            else
                probabilities[6] = 20
                probabilities[30] = 80
                probabilities[31] = 0
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 50
            probabilities[4] = 1
            probabilities[6] = 10
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[1] = 40
            probabilities[4] = 1
            probabilities[6] = 10
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[1] = 40
            probabilities[4] = 1
            probabilities[6] = 10
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 50
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[6] = 30
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 30
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[24] = 60
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[30] = 20
            probabilities[31] = 1
        else
            probabilities[1] = 30
            probabilities[6] = 0
            probabilities[9] = 20
            probabilities[24] = 30
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[29] = 0
            probabilities[30] = 20
            probabilities[31] = 0
        end
    elseif distanceEnemy > 50 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[30] = 50
        else
            probabilities[30] = 100
        end
    elseif distanceEnemy > 40 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[2] = 30
            probabilities[3] = 30
            probabilities[4] = 10
            probabilities[18] = 0
            probabilities[19] = 20
            probabilities[21] = 30
            probabilities[29] = 90
            probabilities[30] = 40
        else
            probabilities[30] = 100
        end
    elseif distanceEnemy > 30 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[2] = 15
            probabilities[3] = 15
            probabilities[4] = 10
            probabilities[9] = 10
            probabilities[18] = 0
            probabilities[19] = 40
            probabilities[21] = 40
            probabilities[29] = 90
            probabilities[30] = 15
        else
            probabilities[30] = 100
        end
    elseif distanceEnemy > 20 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[2] = 40
            probabilities[3] = 40
            probabilities[9] = 15
            probabilities[11] = 40
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[18] = 0
            probabilities[19] = 80
            probabilities[21] = 40
            probabilities[25] = 0
            probabilities[29] = 120
            probabilities[30] = 20
        else
            probabilities[30] = 100
        end
    elseif distanceEnemy > 10 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[4] = 5
            probabilities[9] = 5
            probabilities[11] = 90
            probabilities[12] = 0
            probabilities[13] = 80
            probabilities[14] = 50
            probabilities[18] = 90
            probabilities[19] = 90
            probabilities[21] = 20
            probabilities[25] = 50
            probabilities[26] = 0
            probabilities[29] = 0
            probabilities[30] = 10
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[15] = 70
            probabilities[30] = 30
        else
            probabilities[30] = 100
        end
    elseif distanceEnemy > 5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[5] = 0
            probabilities[7] = 10
            probabilities[9] = 10
            probabilities[11] = 90
            probabilities[12] = 20
            probabilities[13] = 60
            probabilities[14] = 40
            probabilities[18] = 100
            probabilities[19] = 100
            probabilities[20] = 100
            probabilities[21] = 20
            probabilities[25] = 70
            probabilities[26] = 10
            probabilities[29] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[5] = 0
            probabilities[7] = 5
            probabilities[9] = 15
            probabilities[12] = 15
            probabilities[13] = 40
            probabilities[17] = 200
            probabilities[20] = 50
            probabilities[21] = 10
            probabilities[25] = 40
            probabilities[26] = 20
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[5] = 0
            probabilities[7] = 5
            probabilities[9] = 15
            probabilities[12] = 10
            probabilities[13] = 60
            probabilities[20] = 50
            probabilities[21] = 10
            probabilities[25] = 30
            probabilities[26] = 20
            probabilities[29] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[15] = 90
            probabilities[30] = 0
            probabilities[31] = 0
        else
            probabilities[30] = 30
            probabilities[31] = 0
        end
    elseif distanceEnemy > 0 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, 180, 100) then
            probabilities[5] = 10
            probabilities[7] = 5
            probabilities[9] = 20
            probabilities[12] = 20
            probabilities[13] = 70
            probabilities[14] = 70
            probabilities[18] = 150
            probabilities[19] = 150
            probabilities[20] = 120
            probabilities[21] = 20
            probabilities[25] = 70
            probabilities[26] = 30
            probabilities[29] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 70, 180, 100) then
            probabilities[5] = 10
            probabilities[7] = 10
            probabilities[9] = 20
            probabilities[12] = 10
            probabilities[13] = 50
            probabilities[14] = 50
            probabilities[17] = 200
            probabilities[18] = 40
            probabilities[19] = 40
            probabilities[20] = 70
            probabilities[21] = 10
            probabilities[25] = 40
            probabilities[26] = 30
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
            probabilities[5] = 10
            probabilities[7] = 5
            probabilities[9] = 20
            probabilities[12] = 20
            probabilities[13] = 80
            probabilities[14] = 80
            probabilities[18] = 40
            probabilities[19] = 40
            probabilities[20] = 70
            probabilities[21] = 10
            probabilities[25] = 40
            probabilities[26] = 30
            probabilities[29] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[5] = 10
            probabilities[7] = 5
            probabilities[9] = 20
            probabilities[12] = 10
            probabilities[13] = 80
            probabilities[14] = 80
            probabilities[17] = 20
            probabilities[18] = 60
            probabilities[19] = 60
            probabilities[20] = 70
            probabilities[25] = 60
            probabilities[26] = 10
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[5] = 10
            probabilities[7] = 5
            probabilities[9] = 20
            probabilities[12] = 10
            probabilities[13] = 30
            probabilities[14] = 30
            probabilities[16] = 200
            probabilities[18] = 60
            probabilities[19] = 60
            probabilities[20] = 70
            probabilities[24] = 20
            probabilities[25] = 20
            probabilities[26] = 10
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[6] = 20
            probabilities[24] = 80
            probabilities[30] = 0
            probabilities[31] = 0
        else
            probabilities[6] = 10
            probabilities[24] = 20
            probabilities[30] = 0
            probabilities[31] = 0
        end
    elseif distanceEnemy > -5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, 180, 100) then
            probabilities[7] = 10
            probabilities[9] = 20
            probabilities[12] = 10
            probabilities[14] = 60
            probabilities[18] = 100
            probabilities[19] = 100
            probabilities[21] = 20
            probabilities[24] = 60
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 70, 180, 100) then
            probabilities[3] = 10
            probabilities[7] = 20
            probabilities[9] = 20
            probabilities[12] = 10
            probabilities[14] = 60
            probabilities[18] = 80
            probabilities[19] = 80
            probabilities[20] = 0
            probabilities[21] = 20
            probabilities[24] = 60
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
            probabilities[3] = 10
            probabilities[7] = 20
            probabilities[9] = 10
            probabilities[12] = 10
            probabilities[14] = 40
            probabilities[18] = 90
            probabilities[19] = 90
            probabilities[21] = 10
            probabilities[24] = 60
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[7] = 20
            probabilities[9] = 20
            probabilities[12] = 10
            probabilities[14] = 50
            probabilities[18] = 90
            probabilities[19] = 90
            probabilities[21] = 20
            probabilities[24] = 60
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[7] = 20
            probabilities[9] = 20
            probabilities[12] = 10
            probabilities[13] = 0
            probabilities[14] = 40
            probabilities[16] = 80
            probabilities[18] = 90
            probabilities[19] = 90
            probabilities[20] = 0
            probabilities[21] = 20
            probabilities[24] = 10
            probabilities[30] = 0
            probabilities[31] = 0
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
            probabilities[6] = 30
            probabilities[9] = 20
            probabilities[15] = 30
            probabilities[25] = 30
            probabilities[30] = 0
            probabilities[31] = 1
        else
            probabilities[6] = 20
            probabilities[30] = 20
            probabilities[31] = 0
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        probabilities[1] = 50
        probabilities[7] = 20
        probabilities[9] = 20
        probabilities[18] = 80
        probabilities[19] = 80
        probabilities[20] = 0
        probabilities[21] = 30
        probabilities[24] = 60
        probabilities[30] = 0
        probabilities[31] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        probabilities[1] = 40
        probabilities[7] = 20
        probabilities[9] = 20
        probabilities[18] = 80
        probabilities[19] = 80
        probabilities[20] = 0
        probabilities[21] = 30
        probabilities[24] = 60
        probabilities[30] = 0
        probabilities[31] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        probabilities[1] = 40
        probabilities[7] = 20
        probabilities[9] = 20
        probabilities[16] = 50
        probabilities[18] = 80
        probabilities[19] = 80
        probabilities[20] = 0
        probabilities[21] = 30
        probabilities[24] = 60
        probabilities[30] = 0
        probabilities[31] = 0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 100) then
        probabilities[1] = 30
        probabilities[6] = 30
        probabilities[9] = 20
        probabilities[15] = 30
        probabilities[18] = 60
        probabilities[24] = 60
        probabilities[30] = 20
        probabilities[31] = 1
    else
        probabilities[1] = 30
        probabilities[30] = 20
        probabilities[31] = 0
    end
    if ai:GetHpRate(TARGET_SELF) < 0.65 and ai:HasSpecialEffectId(TARGET_SELF, 20010826) == false then
        probabilities[22] = 1000000
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010805) == true then
        probabilities[2] = 0
        probabilities[3] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010806) == true then
        probabilities[8] = 0
        probabilities[21] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010807) == true then
        probabilities[18] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010808) == true then
        probabilities[18] = 0
        probabilities[19] = 0
    end
    if ai:GetNumber(2) == 0 then
        probabilities[18] = 0
    else
        probabilities[19] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010809) == true then
        probabilities[14] = 0
        probabilities[20] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010817) == true then
        probabilities[11] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010813) == true then
        probabilities[4] = 0
        probabilities[6] = 0
        probabilities[24] = 0
        probabilities[29] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010813) == false then
        ai:SetNumber(4, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010820) == true then
        probabilities[5] = 0
        probabilities[26] = 0
    end
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 15, lineWidth, 0) < 15 then
        probabilities[24] = 0
    end
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 15, lineWidth, 0) < 15 then
        probabilities[6] = 0
    end
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 20, lineWidth, 0) < 20 then
        probabilities[19] = 0
    end
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) and ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 10, lineWidth, 0) < 10 then
        probabilities[6] = 100
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010831) == true and ai:GetNumber(1) <= 0 then
        if distanceEnemy > 8 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[11] = 100
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[24] = 0
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[29] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        else
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 100
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[24] = 0
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[29] = 0
            probabilities[30] = 0
            probabilities[31] = 0
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20010830) == true then
        if ai:GetNumber(1) == 0 then
            probabilities[1] = 0
            probabilities[2] = 60
            probabilities[3] = 60
            probabilities[4] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 30
            probabilities[9] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[24] = 0
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[29] = 30
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 180
        elseif ai:GetNumber(1) == 1 then
            if distanceEnemy > 20 then
                probabilities[1] = 0
                probabilities[2] = 60
                probabilities[3] = 60
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 30
                probabilities[9] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[15] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[20] = 0
                probabilities[21] = 0
                probabilities[24] = 0
                probabilities[25] = 0
                probabilities[26] = 0
                probabilities[29] = 30
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 0
            else
                ai:SetNumber(1, 2)
                ai:Replaning()
            end
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 6, probabilities[1], 0)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 12, probabilities[2], 0)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 12, probabilities[3], 0)
    probabilities[4] = SetCoolTime(ai, goal, 3003, 45, probabilities[4], 0)
    probabilities[5] = SetCoolTime(ai, goal, 3038, 10, probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 6001, 25, probabilities[6], 0)
    probabilities[7] = SetCoolTime(ai, goal, 3006, 50, probabilities[7], 0)
    probabilities[8] = SetCoolTime(ai, goal, 3007, 40, probabilities[8], 0)
    probabilities[9] = SetCoolTime(ai, goal, 3008, 20, probabilities[9], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3010, 30, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3011, 8, probabilities[12], 0)
    probabilities[13] = SetCoolTime(ai, goal, 3013, 8, probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3023, 5, probabilities[14], 0)
    probabilities[15] = SetCoolTime(ai, goal, 3018, 5, probabilities[15], 0)
    probabilities[16] = SetCoolTime(ai, goal, 3019, 5, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3020, 5, probabilities[17], 0)
    probabilities[18] = SetCoolTime(ai, goal, 3025, 0, probabilities[18], 0)
    probabilities[19] = SetCoolTime(ai, goal, 3026, 50, probabilities[19], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3027, 30, probabilities[20], 0)
    probabilities[21] = SetCoolTime(ai, goal, 3028, 30, probabilities[21], 0)
    probabilities[22] = SetCoolTime(ai, goal, 3029, 0, probabilities[22], 0)
    probabilities[24] = SetCoolTime(ai, goal, 3030, 20, probabilities[24], 0)
    probabilities[25] = SetCoolTime(ai, goal, 3031, 20, probabilities[25], 0)
    probabilities[26] = SetCoolTime(ai, goal, 3035, 10, probabilities[26], 0)
    acts[1] = REGIST_FUNC(ai, goal, Bayle512000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Bayle512000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Bayle512000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Bayle512000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Bayle512000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Bayle512000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Bayle512000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Bayle512000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Bayle512000_Act09)
    acts[11] = REGIST_FUNC(ai, goal, Bayle512000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Bayle512000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Bayle512000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Bayle512000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Bayle512000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Bayle512000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Bayle512000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, Bayle512000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, Bayle512000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, Bayle512000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Bayle512000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Bayle512000_Act22)
    acts[24] = REGIST_FUNC(ai, goal, Bayle512000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Bayle512000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, Bayle512000_Act26)
    acts[29] = REGIST_FUNC(ai, goal, Bayle512000_Act29)
    acts[30] = REGIST_FUNC(ai, goal, Bayle512000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, Bayle512000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, Bayle512000_Act32)
    local actAfter = REGIST_FUNC(ai, goal, Bayle512000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
    
end

function Bayle512000_Act01(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local target = TARGET_ENE_0
    local successDist = 30
    local f3_local4 = 20
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act02(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3001
    local target = TARGET_ENE_0
    local successDist = 20
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act03(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3002
    local target = TARGET_ENE_0
    local successDist = 20
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act04(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3003
    local target = TARGET_ENE_0
    local successDist = 20
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010803)
    local f6_local7 = ai:GetNumber(4) + 1
    ai:SetNumber(4, f6_local7)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act05(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3038
    local target = TARGET_ENE_0
    local successDist = 20
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010818)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act06(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 6001
    local target = TARGET_ENE_0
    local successDist = 100
    local f8_local4 = 10
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010812)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 10, proxi_size, 0) < 10 then
        ai:SetNumber(3, 1)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act07(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3006
    local target = TARGET_ENE_0
    local successDist = 20
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act08(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3007
    local target = TARGET_ENE_0
    local successDist = 20
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act09(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3008
    local target = TARGET_ENE_0
    local successDist = 20
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act11(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3010
    local target = TARGET_ENE_0
    local successDist = 20
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 12
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 100
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local random = ai:GetRandam_Int(1, 100)
    if random < 50 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010800)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
    end
    local goalLife = 5
    local animationId = 3011
    local animationId_2 = 3012
    local target = TARGET_ENE_0
    local successDist = 14
    local successDist_2 = 20
    local f13_local15 = 0
    local f13_local16 = 0
    local f13_local17 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 10, 0)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy_2 > 0.7 then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 100
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010800)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
    local goalLife = 8
    local animationId = 3013
    local animationId_2 = 3014
    local target = TARGET_ENE_0
    local successDist = 20
    local successDist_2 = 20
    local f14_local14 = 0
    local f14_local15 = 0
    local f14_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 10, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act14(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 15
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 100
    local walkLife = 0
    local runLife = 1.5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3023
    local target = TARGET_ENE_0
    local successDist = 20
    local f15_local12 = 0
    local f15_local13 = 0
    local f15_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010804)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
    if ai:HasSpecialEffectId(TARGET_SELF, 20010826) == true then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010816)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act15(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDist = 20
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010814)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act16(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3019
    local animationId_2 = 3015
    local target = TARGET_ENE_0
    local successDist = 20
    local successDist_2 = 20
    local f17_local6 = 0
    local f17_local7 = 0
    local f17_local8 = 0
    local random = ai:GetRandam_Int(1, 100)
    if random <= 100 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010800)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act17(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3020
    local animationId_2 = 3014
    local target = TARGET_ENE_0
    local successDist = 20
    local successDist_2 = 20
    local f18_local6 = 0
    local f18_local7 = 0
    local f18_local8 = 0
    local random = ai:GetRandam_Int(1, 100)
    if random <= 100 then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010800)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    
end

function Bayle512000_Act18(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3025
    local target = TARGET_HOSTPLAYER
    local successDist = 20
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    ai:SetNumber(2, 0)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 15, lineWidth, 0) < 15 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 15, lineWidth, 0) < 15 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 15, lineWidth, 0) < 15 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 15, lineWidth, 0) < 15 then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act19(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3026
    local target = TARGET_ENE_0
    local successDist = 20
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    ai:SetNumber(2, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act20(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3027
    local target = TARGET_ENE_0
    local successDist = 20
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act21(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3028
    local target = TARGET_ENE_0
    local successDist = 20
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act22(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3029
    local target = TARGET_HOSTPLAYER
    local successDist = 999
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 15, lineWidth, 0) < 15 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 6001, target, successDist, 0, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
        return
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act24(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3030
    local target = TARGET_ENE_0
    local successDist = 20
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    local hitRadius = ai:GetMapHitRadius(TARGET_SELF)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010811)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010814)
    local f24_local8 = ai:GetNumber(4) + 1
    ai:SetNumber(4, f24_local8)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act25(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3031
    local target = TARGET_ENE_0
    local successDist = 999
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010804)
    if ai:HasSpecialEffectId(TARGET_SELF, 20010826) == true then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010816)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, goalLife, animationId, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act26(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3035
    local animationId_2 = 3036
    local target = TARGET_ENE_0
    local successDist = 20
    local f26_local5 = 0
    local f26_local6 = 0
    local f26_local7 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act29(ai, goal, paramTbl)
    local goalLife = 8
    local animationId = 3037
    local target = TARGET_ENE_0
    local successDist = 20
    local f27_local4 = 0
    local f27_local5 = 0
    local f27_local6 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010815)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act30(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act31(ai, goal, paramTbl)
    local goalLife = 1
    local turnTarget = TARGET_ENE_0
    local stopAngleWidth = 45
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Continue
    local guardSuccessOnEnd = true
    local f29_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= f29_local5 then
        guardStateId = 9910
    end
    goal:AddSubGoal(GOAL_COMMON_Turn, goalLife, turnTarget, stopAngleWidth, guardStateId, onGuardResult, guardSuccessOnEnd)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_Act32(ai, goal, paramTbl)
    local goalLife = ai:GetRandam_Float(2, 4)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    if ai:GetNumber(1) <= 0 then
        ai:SetNumber(1, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bayle512000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Bayle512000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 20010816) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010816)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy < 8 and distanceEnemy >= -1 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) and random <= 100 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3022
                local target = TARGET_ENE_0
                local f34_local5 = 20
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010804)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist2, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010814) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010814)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if random > 60 then
                local random_2 = ai:GetRandam_Int(1, 100)
                if random_2 > 60 and ai:HasSpecialEffectId(TARGET_SELF, 20010805) == false then
                    if distanceEnemy > 5 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        goal:ClearSubGoal()
                        local goalLife = 5
                        local animationId = 3021
                        local target = TARGET_ENE_0
                        local f34_local6 = 20
                        local f34_local7 = 0
                        local f34_local8 = 0
                        local f34_local9 = 0
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist2, 0, 0, 0)
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 20010817) == false then
                    goal:ClearSubGoal()
                    local goalLife = 8
                    local animationId = 3010
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f34_local7 = 0
                    local f34_local8 = 0
                    local f34_local9 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010815) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010815)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if random > 50 and distanceEnemy > 8 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010800)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
                local goalLife = 8
                local animationId = 3014
                local target = TARGET_ENE_0
                local successDist = 20
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010818) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010818)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if random < 100 and distanceEnemy < 8 and distanceEnemy >= -1 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                goal:ClearSubGoal()
                local goalLife = 8
                local animationId = 3036
                local target = TARGET_ENE_0
                local successDist = 20
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010800) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010800)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            local f34_local2 = false
            if distanceEnemy <= -4 then
                random = random - 100
            end
            if distanceEnemy <= -2 then
                if random <= 60 then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3017
                    local target = TARGET_ENE_0
                    local f34_local6 = 20
                    local f34_local7 = 0
                    local f34_local8 = 0
                    local f34_local9 = 0
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist2, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
                    local goalLife = 5
                    local animationId = 3015
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f34_local7 = 0
                    local f34_local8 = 0
                    local f34_local9 = 0
                    local f34_local10 = true
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            else
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010801)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                if distanceEnemy_2 <= -5 then
                    random_2 = random_2 - 100
                end
                if distanceEnemy_2 <= 3 then
                    if random_2 <= 60 and ai:HasSpecialEffectId(TARGET_SELF, 20010809) == false then
                        goal:ClearSubGoal()
                        local goalLife = 8
                        local animationId = 3015
                        local animationId_2 = 3022
                        local target = TARGET_ENE_0
                        local successDist = 20
                        local successDist_2 = 20
                        local f34_local11 = 0
                        local f34_local12 = 0
                        local f34_local13 = 0
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010804)
                        if ai:HasSpecialEffectId(TARGET_SELF, 20010826) == true then
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010816)
                        end
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
                    elseif random_2 <= 35 and ai:HasSpecialEffectId(TARGET_SELF, 20010805) == false then
                        goal:ClearSubGoal()
                        local goalLife = 8
                        local animationId = 3015
                        local animationId_2 = 3016
                        local target = TARGET_ENE_0
                        local successDist = 20
                        local successDist_2 = 20
                        local f34_local11 = 0
                        local f34_local12 = 0
                        local f34_local13 = 0
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, BAYLE_TO_NECKATTACK_COMBO)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
                    end
                elseif random_2 <= 60 and ai:HasSpecialEffectId(TARGET_SELF, 20010805) == false then
                    goal:ClearSubGoal()
                    local goalLife = 8
                    local animationId = 3015
                    local animationId_2 = 3016
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local successDist_2 = 20
                    local f34_local11 = 0
                    local f34_local12 = 0
                    local f34_local13 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, BAYLE_TO_NECKATTACK_COMBO)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId_2, target, successDist_2, 0, 0, 0)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010803) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010803)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 0 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3018
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f34_local6 = 0
                    local f34_local7 = 0
                    local f34_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010814)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            elseif ai:GetNumber(4) < 3 then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3030
                local target = TARGET_ENE_0
                local successDist = 20
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                local f34_local9 = ai:GetNumber(4) + 1
                ai:SetNumber(4, f34_local9)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010811)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010814)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010811) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010811)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:GetNumber(4) < 3 then
                if distanceEnemy >= 15 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        if random <= 50 then
                            goal:ClearSubGoal()
                            local goalLife = 5
                            local animationId = 3037
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f34_local6 = 0
                            local f34_local7 = 0
                            local f34_local8 = 0
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010815)
                            local f34_local9 = ai:GetNumber(4) + 1
                            ai:SetNumber(4, f34_local9)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        elseif random <= 60 then
                            goal:ClearSubGoal()
                            local goalLife = 5
                            local animationId = 3003
                            local target = TARGET_ENE_0
                            local successDist = 20
                            local f34_local6 = 0
                            local f34_local7 = 0
                            local f34_local8 = 0
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010803)
                            local f34_local9 = ai:GetNumber(4) + 1
                            ai:SetNumber(4, f34_local9)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                        end
                    end
                elseif distanceEnemy >= 7 and random <= 40 then
                    goal:ClearSubGoal()
                    local goalLife = 5
                    local animationId = 3003
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f34_local6 = 0
                    local f34_local7 = 0
                    local f34_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010803)
                    local f34_local9 = ai:GetNumber(4) + 1
                    ai:SetNumber(4, f34_local9)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010812) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010812)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy >= 35 then
                if ai:HasSpecialEffectId(TARGET_SELF, 20010805) == false then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010811)
                    local goalLife = 8
                    local animationId = 3002
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f34_local6 = 0
                    local f34_local7 = 0
                    local f34_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            elseif distanceEnemy >= 20 then
                if ai:HasSpecialEffectId(TARGET_SELF, 20010805) == true then
                    random = 0
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 20010806) == true or GetNumber(3) == 0 then
                    random = ai:GetRandam_Int(40, 100)
                end
                if random < 40 then
                    if ai:HasSpecialEffectId(TARGET_SELF, 20010826) == true then
                        goal:ClearSubGoal()
                        local goalLife = 10
                        local animationId = 3028
                        local target = TARGET_ENE_0
                        local successDist = 20
                        local f34_local6 = 0
                        local f34_local7 = 0
                        local f34_local8 = 0
                        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
                    else
                        goal:ClearSubGoal()
                        local goalLife = 10
                        local animationId = 3007
                        local target = TARGET_ENE_0
                        local successDist = 20
                        local f34_local6 = 0
                        local f34_local7 = 0
                        local f34_local8 = 0
                        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
                    end
                elseif random < 70 then
                    goal:ClearSubGoal()
                    local goalLife = 8
                    local animationId = 3001
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f34_local6 = 0
                    local f34_local7 = 0
                    local f34_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
                else
                    goal:ClearSubGoal()
                    local goalLife = 8
                    local animationId = 3002
                    local target = TARGET_ENE_0
                    local successDist = 20
                    local f34_local6 = 0
                    local f34_local7 = 0
                    local f34_local8 = 0
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            elseif distanceEnemy >= 10 and random < 40 and ai:HasSpecialEffectId(TARGET_SELF, 20010817) == false then
                goal:ClearSubGoal()
                local goalLife = 8
                local animationId = 3010
                local target = TARGET_ENE_0
                local successDist = 20
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            ai:SetNumber(3, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010804) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010804)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
            local random = ai:GetRandam_Int(1, 100)
            if ai:GetNumber(4) < 3 and ai:HasSpecialEffectId(TARGET_SELF, 20010813) == false and ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 20, lineWidth, 0) >= 20 then
                if distanceEnemy < -2 then
                    random = 1
                end
                if random <= 40 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010811)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
                    local goalLife = 8
                    local animationId = 3032
                    local target = TARGET_ENE_0
                    local successDist = 999
                    local f34_local7 = 0
                    local f34_local8 = 0
                    local f34_local9 = 0
                    local f34_local10 = ai:GetNumber(4) + 1
                    ai:SetNumber(4, f34_local10)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
                end
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010810) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 20010810)
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy < 5 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) and distanceEnemy > -2 and random <= 100 and ai:HasSpecialEffectId(TARGET_SELF, 20010820) == false then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20010818)
                local goalLife = 8
                local animationId = 3038
                local target = TARGET_ENE_0
                local successDist = 20
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20010831) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            if distanceEnemy < 10 then
                goal:ClearSubGoal()
                local goalLife = 8
                local animationId = 3023
                local target = TARGET_ENE_0
                local successDist = 20
                local f34_local5 = 0
                local f34_local6 = 0
                local f34_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
            else
                goal:ClearSubGoal()
                local goalLife = 8
                local animationId = 3010
                local target = TARGET_ENE_0
                local successDist = 20
                local f34_local5 = 0
                local f34_local6 = 0
                local f34_local7 = 0
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, target, successDist, 0, 0, 0)
            end
            return true
        end
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_Bayle512000_AfterAttackAct, "Bayle512000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bayle512000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


