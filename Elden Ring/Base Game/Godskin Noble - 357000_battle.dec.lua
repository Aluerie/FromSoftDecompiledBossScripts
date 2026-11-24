RegisterTableGoal(GOAL_GodSkinFatherFat357000_Battle, "GodSkinFatherFat357000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodSkinFatherFat357000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3005)
    ai:EnableUnfavorableAttackCheck(0, 3006)
    ai:EnableUnfavorableAttackCheck(0, 3007)
    ai:EnableUnfavorableAttackCheck(0, 3008)
    ai:EnableUnfavorableAttackCheck(0, 3009)
    ai:EnableUnfavorableAttackCheck(0, 3010)
    ai:EnableUnfavorableAttackCheck(0, 3011)
    ai:EnableUnfavorableAttackCheck(0, 3012)
    ai:EnableUnfavorableAttackCheck(0, 3013)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3015)
    ai:EnableUnfavorableAttackCheck(0, 3016)
    ai:EnableUnfavorableAttackCheck(0, 3017)
    ai:EnableUnfavorableAttackCheck(0, 3018)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3023)
    ai:EnableUnfavorableAttackCheck(0, 3024)
    ai:EnableUnfavorableAttackCheck(0, 3025)
    ai:EnableUnfavorableAttackCheck(0, 3028)
    ai:EnableUnfavorableAttackCheck(0, 3030)
    ai:EnableUnfavorableAttackCheck(0, 3031)
    ai:EnableUnfavorableAttackCheck(0, 3032)
    ai:EnableUnfavorableAttackCheck(0, 3033)
    ai:EnableUnfavorableAttackCheck(0, 3034)
    ai:EnableUnfavorableAttackCheck(0, 3035)
    ai:EnableUnfavorableAttackCheck(0, 3036)
    ai:EnableUnfavorableAttackCheck(0, 3037)
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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15500)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15501)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15517)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15518)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 10010001)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    ai:AddObserveSpecialEffectAttribute(TARGET_LOCALPLAYER, 90)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 15517) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 15518) == true then
            probabilities[23] = 100
        else
            probabilities[24] = 100
        end
    else
        if ai:HasSpecialEffectId(TARGET_SELF, 15504) == true then
            probabilities[20] = 100
        end
        if ai:HasSpecialEffectId(TARGET_FRI_0, 5110) == true then
            probabilities[21] = 100
        end
        if distanceFriend <= 7 then
            if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                probabilities[31] = 100
                probabilities[32] = 0
            else
                probabilities[31] = 0
                probabilities[32] = 100
            end
        end
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if distanceEnemy >= 15 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 10
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 60
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 35
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 45
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 7.5 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 40
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 40
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 4 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 50
                    probabilities[31] = 30
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 2.5 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 25
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 20
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 55
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 0
                probabilities[13] = 40
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[30] = 0
                probabilities[31] = 60
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            else
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 100
                probabilities[33] = 0
                probabilities[34] = 0
            end
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if distanceEnemy >= 15 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 10
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 60
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 35
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 45
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 7.5 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 40
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 40
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 4 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 20
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 50
                    probabilities[31] = 30
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 80
                    probabilities[33] = 20
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 2.5 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 25
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 20
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 55
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 0
                probabilities[13] = 40
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[30] = 0
                probabilities[31] = 60
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            else
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 100
                probabilities[33] = 0
                probabilities[34] = 0
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if distanceEnemy >= 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 50
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[22] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 20
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 50
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 20
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 7.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 100
                    probabilities[13] = 0
                    probabilities[14] = 50
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 20
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 4 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 50
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 150
                    probabilities[11] = 0
                    probabilities[12] = 100
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 20
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 30
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 2.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 15
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 15
                    probabilities[5] = 15
                    probabilities[6] = 15
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 100
                    probabilities[12] = 100
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[22] = 0
                    probabilities[30] = 20
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 50
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 100
                    probabilities[12] = 100
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[22] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 30
                    probabilities[33] = 0
                    probabilities[34] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[1] = 50
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 100
                    probabilities[12] = 100
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[22] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 30
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 70
                    probabilities[9] = 0
                    probabilities[10] = 0
                    probabilities[11] = 0
                    probabilities[12] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[22] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 30
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 35
                probabilities[10] = 0
                probabilities[11] = 100
                probabilities[12] = 100
                probabilities[13] = 35
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 10
                probabilities[19] = 0
                probabilities[22] = 150
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 20
                probabilities[10] = 0
                probabilities[11] = 100
                probabilities[12] = 100
                probabilities[13] = 20
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[22] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 40
                probabilities[33] = 0
                probabilities[34] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 20
                probabilities[10] = 0
                probabilities[11] = 100
                probabilities[12] = 100
                probabilities[13] = 20
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[22] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 40
                probabilities[33] = 0
                probabilities[34] = 0
            else
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 70
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[22] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 30
                probabilities[33] = 0
                probabilities[34] = 0
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15507) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[12] = 100
            else
                probabilities[32] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:GetHpRate(TARGET_SELF) < 0.6 then
                probabilities[15] = 100
            elseif distanceEnemy >= 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 50
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 20
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 50
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 20
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 7.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 30
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 50
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 20
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 4 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 50
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 20
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 30
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 100
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif distanceEnemy >= 2.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[1] = 15
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 15
                    probabilities[5] = 15
                    probabilities[6] = 15
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[30] = 20
                    probabilities[31] = 0
                    probabilities[32] = 0
                    probabilities[33] = 0
                    probabilities[34] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 50
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 30
                    probabilities[33] = 0
                    probabilities[34] = 0
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[1] = 50
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 0
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 10
                    probabilities[17] = 10
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 30
                    probabilities[33] = 0
                    probabilities[34] = 0
                else
                    probabilities[1] = 0
                    probabilities[2] = 0
                    probabilities[3] = 0
                    probabilities[4] = 0
                    probabilities[5] = 0
                    probabilities[6] = 0
                    probabilities[7] = 70
                    probabilities[9] = 0
                    probabilities[13] = 0
                    probabilities[14] = 0
                    probabilities[16] = 0
                    probabilities[17] = 0
                    probabilities[30] = 0
                    probabilities[31] = 0
                    probabilities[32] = 30
                    probabilities[33] = 0
                    probabilities[34] = 0
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 30
                probabilities[13] = 30
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 10
                probabilities[19] = 10
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 0
                probabilities[33] = 0
                probabilities[34] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 20
                probabilities[13] = 20
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 40
                probabilities[33] = 0
                probabilities[34] = 0
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[9] = 20
                probabilities[13] = 20
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 40
                probabilities[33] = 0
                probabilities[34] = 0
            else
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 0
                probabilities[4] = 0
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 70
                probabilities[9] = 0
                probabilities[13] = 0
                probabilities[14] = 0
                probabilities[16] = 0
                probabilities[17] = 0
                probabilities[18] = 0
                probabilities[19] = 0
                probabilities[30] = 0
                probabilities[31] = 0
                probabilities[32] = 30
                probabilities[33] = 0
                probabilities[34] = 0
            end
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3033, 10, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3034, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3005, 10, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3007, 10, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3008, 10, probabilities[7], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3012, 10, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3015, 25, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3016, 55, probabilities[11], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3020, 10, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3020, 55, probabilities[12], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3016, 10, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3026, 30, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3027, 3.5, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3029, 999, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3031, 30, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3032, 30, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3035, 10, probabilities[18], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3037, 10, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3037, 10, probabilities[19], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3035, 10, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3038, 5, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3039, 5, probabilities[21], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3028, 15, probabilities[22], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3037, 10, probabilities[22], 1)
    probabilities[31] = SetCoolTime(ai, goal, 6001, 5, probabilities[31], 1)
    probabilities[32] = SetCoolTime(ai, goal, 6002, 5, probabilities[32], 1)
    probabilities[32] = SetCoolTime(ai, goal, 6003, 5, probabilities[32], 1)
    acts[1] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act1)
    acts[2] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act2)
    acts[3] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act3)
    acts[4] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act4)
    acts[5] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act5)
    acts[6] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act6)
    acts[7] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act7)
    acts[9] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act9)
    acts[10] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act24)
    acts[30] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_Act35)
    local actAfter = REGIST_FUNC(ai, goal, GodSkinFatherFat357000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function GodSkinFatherFat357000_Act1(ai, goal, paramTbl)
    local f3_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 25
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act2(ai, goal, paramTbl)
    local stopDist = 9 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
        runProbability = 100
    end
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act3(ai, goal, paramTbl)
    local f5_local0 = 1 - ai:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 25
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 7
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act4(ai, goal, paramTbl)
    local f6_local0 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 25
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act5(ai, goal, paramTbl)
    local f7_local0 = 8 - ai:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 25
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3034
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act6(ai, goal, paramTbl)
    local f8_local0 = 6.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 25
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 4
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act7(ai, goal, paramTbl)
    local f9_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 25
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    local animationId = 3007
    local animationId_2 = 3008
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

function GodSkinFatherFat357000_Act9(ai, goal, paramTbl)
    local f10_local0 = 3 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 25
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act10(ai, goal, paramTbl)
    local f11_local0 = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 25
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    local animationId = 3015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act11(ai, goal, paramTbl)
    local f12_local0 = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 25
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act12(ai, goal, paramTbl)
    local f13_local0 = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 25
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act13(ai, goal, paramTbl)
    local f14_local0 = 4 - ai:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 25
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3026
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act14(ai, goal, paramTbl)
    local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local animationId = 3027
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BL, 90, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BR, 90, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act15(ai, goal, paramTbl)
    local f16_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 25
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3029
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act16(ai, goal, paramTbl)
    local f17_local0 = 5.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 25
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    local animationId = 3031
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act17(ai, goal, paramTbl)
    local f18_local0 = 11 - ai:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 25
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 2
    local f18_local6 = 2
    local animationId = 3032
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act18(ai, goal, paramTbl)
    local f19_local0 = 3 - ai:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 25
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 2
    local animationId = 3035
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act19(ai, goal, paramTbl)
    local f20_local0 = 3 - ai:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 25
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 2
    local animationId = 3037
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act20(ai, goal, paramTbl)
    local f21_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 25
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 2
    local f21_local6 = 2
    local animationId = 3038
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act21(ai, goal, paramTbl)
    local f22_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 25
    local f22_local3 = 0
    local f22_local4 = 0
    local f22_local5 = 2
    local f22_local6 = 2
    local animationId = 3039
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act22(ai, goal, paramTbl)
    local f23_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 25
    local f23_local3 = 0
    local f23_local4 = 0
    local f23_local5 = 2
    local f23_local6 = 2
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3028
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act23(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3021
    local target = TARGET_LOCALPLAYER
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act24(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3022
    local target = TARGET_LOCALPLAYER
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, goalLife, animationId, target, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act30(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 4, lineWidth, 0) >= 3 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 4, lineWidth, 0) >= 3 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 4, lineWidth, 0) >= 3 then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act31(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act32(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act33(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:GetHpRate(TARGET_SELF) > 0.99 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        elseif distanceEnemy >= 10 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:GetHpRate(TARGET_SELF) > 0.99 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        elseif distanceEnemy >= 10 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
        if distanceEnemy >= 7.5 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, false, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
        if ai:GetHpRate(TARGET_SELF) > 0.99 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        elseif distanceEnemy >= 7.5 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, false, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act34(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 90, -1, resultTypeIfGuardSuccess, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_Act35(ai, goal, paramTbl)
    local f31_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f31_local1 = f31_local0 + 0
    local f31_local2 = f31_local0 + 5
    local f31_local3 = 0
    local f31_local4 = 0
    local f31_local5 = 2
    local f31_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        f31_local3 = 80
    end
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GodSkinFatherFat357000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_GodSkinFatherFat357000_AfterAttackAct, 10)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 15513)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 30 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 20 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                if random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 40 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 20 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                if random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.8, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, false, -1)
                    return true
                elseif random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, false, -1)
                    return true
                elseif random <= 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2) then
                if random <= 60 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3012, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3035, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2) then
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3012, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 60 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3035, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            elseif random <= 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3037, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
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
            if random <= 40 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 1.5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 65 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 65 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5030) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5031) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5034) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3016, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
                if random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3016, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
                if random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5035) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 3.5) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3020, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5036) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
                if random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
                if random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5037) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 15 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 30 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 45 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 65 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 85 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if random <= 20 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5038) then
        if ai:HasSpecialEffectId(TARGET_SELF, 15501) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if random <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif random <= 40 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 60 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 15500) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 80 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                if random <= 70 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(15513) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) and ai:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_LOCALPLAYER, 90) and ai:HasSpecialEffectId(TARGET_SELF, 15517) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 150, 180, 5) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3022, TARGET_LOCALPLAYER, 999, 0, 0)
        return true
    end
    return false1
end

RegisterTableGoal(GOAL_GodSkinFatherFat357000_AfterAttackAct, "GodSkinFatherFat357000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodSkinFatherFat357000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

