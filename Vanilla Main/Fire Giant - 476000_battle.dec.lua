RegisterTableGoal(GOAL_Giant476000_Battle, "Giant476000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Giant476000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
end

Goal.Activate = function (self, ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local distanceXZEnemy = ai:GetDistXZ(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local f2_local8 = 1
    local f2_local9 = 1
    local f2_local10 = 1
    local f2_local11 = 1
    local f2_local12 = 1
    local f2_local13 = 1
    local f2_local14 = 1
    local f2_local15 = 1
    if distanceYEnemy >= 10 and distanceXZEnemy <= 15 then
        f2_local8 = 1000
        f2_local9 = 1000
        f2_local10 = 1000
        f2_local11 = 1000
        f2_local12 = 10000
        f2_local13 = 1000
        f2_local14 = 10000
        f2_local15 = 1000
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5400) == true and ai:HasSpecialEffectId(TARGET_SELF, 12705) == false then
        if distanceEnemy >= 40 then
            if hpRatioSelf <= 0.6 or ai:HasSpecialEffectId(TARGET_SELF, 12752) == true then
                probabilities[9] = 100
            elseif InsideRange(ai, goal, 180, 150, -6, 99) then
                probabilities[40] = 100
            else
                probabilities[2] = 5
                probabilities[4] = 60 * f2_local8
                probabilities[10] = 35
            end
        elseif distanceEnemy >= 20 then
            if hpRatioSelf <= 0.6 or ai:HasSpecialEffectId(TARGET_SELF, 12752) == true then
                probabilities[9] = 100
            elseif InsideRange(ai, goal, 180, 150, -6, 99) then
                probabilities[40] = 100
            else
                probabilities[1] = 15
                probabilities[2] = 15
                probabilities[3] = 5
                probabilities[4] = 40 * f2_local8
                probabilities[6] = 25 * f2_local9
            end
        elseif distanceEnemy >= 5 then
            if hpRatioSelf <= 0.6 or ai:HasSpecialEffectId(TARGET_SELF, 12752) == true then
                probabilities[9] = 100
            elseif InsideRange(ai, goal, 0, 120, -11, 99) then
                probabilities[1] = 15
                probabilities[2] = 5
                probabilities[3] = 40
                probabilities[4] = 10 * f2_local8
                probabilities[6] = 10 * f2_local9
                probabilities[14] = 7 * f2_local11
                probabilities[16] = 7 * f2_local12
            elseif InsideRange(ai, goal, 270, 110, -6, 99) then
                probabilities[2] = 40
                probabilities[6] = 10 * f2_local9
                probabilities[12] = 10
                probabilities[14] = 5 * f2_local11
                probabilities[15] = 25
            elseif InsideRange(ai, goal, 90, 110, -6, 99) then
                probabilities[2] = 40
                probabilities[6] = 10 * f2_local9
                probabilities[12] = 10
                probabilities[14] = 5 * f2_local11
                probabilities[16] = 15 * f2_local12
            else
                probabilities[12] = 20
                probabilities[40] = 80
            end
        elseif hpRatioSelf <= 0.6 or ai:HasSpecialEffectId(TARGET_SELF, 12752) == true then
            probabilities[9] = 100
        elseif InsideRange(ai, goal, 0, 120, -11, 99) then
            probabilities[5] = 10
            probabilities[11] = 30
            probabilities[14] = 10 * f2_local11
            probabilities[16] = 5 * f2_local12
            probabilities[17] = 10
            probabilities[18] = 30
        elseif InsideRange(ai, goal, 270, 110, -6, 99) then
            probabilities[5] = 20
            probabilities[11] = 5
            probabilities[12] = 5
            probabilities[14] = 7 * f2_local11
            probabilities[15] = 30
            probabilities[18] = 30
        elseif InsideRange(ai, goal, 90, 110, -6, 99) then
            probabilities[5] = 10
            probabilities[11] = 5
            probabilities[12] = 5
            probabilities[14] = 7 * f2_local11
            probabilities[16] = 20 * f2_local12
            probabilities[17] = 15
            probabilities[18] = 25
        else
            probabilities[5] = 15
            probabilities[12] = 30
            probabilities[14] = 16 * f2_local11
            probabilities[16] = 7 * f2_local12
            probabilities[18] = 25
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) == true and ai:HasSpecialEffectId(TARGET_SELF, 12705) == true then
        if distanceEnemy >= 40 then
            if InsideRange(ai, goal, 180, 150, -6, 99) then
                probabilities[40] = 100
            elseif InsideRange(ai, goal, 0, 120, -11, 99) then
                probabilities[2] = 5
                probabilities[4] = 5 * f2_local8
                probabilities[7] = 35
                probabilities[8] = 35 * f2_local10
                probabilities[10] = 20
            else
                probabilities[2] = 10
                probabilities[7] = 20
                probabilities[8] = 30 * f2_local10
                probabilities[10] = 40
            end
        elseif distanceEnemy >= 20 then
            if InsideRange(ai, goal, 180, 150, -6, 99) then
                probabilities[40] = 100
            elseif InsideRange(ai, goal, 0, 120, -11, 99) then
                probabilities[1] = 5
                probabilities[2] = 10
                probabilities[3] = 5
                probabilities[4] = 5 * f2_local8
                probabilities[6] = 10 * f2_local9
                probabilities[7] = 40
                probabilities[8] = 25 * f2_local10
            else
                probabilities[2] = 20
                probabilities[6] = 20 * f2_local9
                probabilities[8] = 60 * f2_local10
            end
        elseif distanceEnemy >= 5 then
            if InsideRange(ai, goal, 0, 120, -11, 99) then
                probabilities[1] = 5
                probabilities[2] = 5
                probabilities[3] = 20
                probabilities[4] = 10 * f2_local8
                probabilities[6] = 5 * f2_local9
                probabilities[8] = 30 * f2_local10
                probabilities[14] = 10 * f2_local11
                probabilities[16] = 7 * f2_local12
            elseif InsideRange(ai, goal, 270, 110, -6, 99) then
                probabilities[2] = 10
                probabilities[6] = 10 * f2_local9
                probabilities[8] = 40 * f2_local10
                probabilities[12] = 10
                probabilities[14] = 5 * f2_local11
                probabilities[15] = 25
            elseif InsideRange(ai, goal, 90, 110, -6, 99) then
                probabilities[2] = 10
                probabilities[6] = 10 * f2_local9
                probabilities[8] = 40 * f2_local10
                probabilities[12] = 10
                probabilities[14] = 5 * f2_local11
                probabilities[16] = 16 * f2_local12
            else
                probabilities[8] = 50 * f2_local10
                probabilities[12] = 20
                probabilities[40] = 30
            end
        elseif InsideRange(ai, goal, 0, 120, -11, 99) then
            probabilities[5] = 10
            probabilities[8] = 15 * f2_local10
            probabilities[11] = 20
            probabilities[13] = 20
            probabilities[14] = 5 * f2_local11
            probabilities[16] = 5 * f2_local12
            probabilities[17] = 10
            probabilities[18] = 15
        elseif InsideRange(ai, goal, 270, 110, -6, 99) then
            probabilities[5] = 10
            probabilities[8] = 15 * f2_local10
            probabilities[11] = 5
            probabilities[12] = 5
            probabilities[13] = 20
            probabilities[14] = 7 * f2_local11
            probabilities[15] = 25
            probabilities[18] = 10
        elseif InsideRange(ai, goal, 90, 110, -6, 99) then
            probabilities[5] = 5
            probabilities[8] = 15 * f2_local10
            probabilities[11] = 5
            probabilities[12] = 5
            probabilities[13] = 20
            probabilities[14] = 5 * f2_local11
            probabilities[16] = 17 * f2_local12
            probabilities[17] = 10
            probabilities[18] = 10
        else
            probabilities[5] = 15
            probabilities[8] = 10 * f2_local10
            probabilities[12] = 25
            probabilities[13] = 20
            probabilities[14] = 7 * f2_local11
            probabilities[16] = 5 * f2_local12
            probabilities[18] = 15
        end
    elseif distanceEnemy >= 50 then
        if hpRatioSelf <= 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            probabilities[28] = 100
        elseif InsideRange(ai, goal, 180, 150, -6, 99) then
            probabilities[40] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true and ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            probabilities[20] = 0
            probabilities[25] = 0
            probabilities[26] = 80
            probabilities[27] = 0 * f2_local13
            probabilities[33] = 20
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            probabilities[20] = 0
            probabilities[25] = 0
            probabilities[26] = 15
            probabilities[27] = 80 * f2_local13
            probabilities[33] = 5
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            probabilities[20] = 20
            probabilities[25] = 60
            probabilities[26] = 10
            probabilities[27] = 0 * f2_local13
            probabilities[33] = 10
        else
            probabilities[20] = 20
            probabilities[25] = 60
            probabilities[26] = 5
            probabilities[27] = 10 * f2_local13
            probabilities[33] = 5
        end
    elseif distanceEnemy >= 25 then
        if hpRatioSelf <= 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            probabilities[28] = 100
        elseif InsideRange(ai, goal, 180, 150, -6, 99) then
            probabilities[40] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true and ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            probabilities[20] = 0
            probabilities[25] = 0
            probabilities[26] = 60
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 0
            probabilities[33] = 40
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            probabilities[20] = 0
            probabilities[25] = 0
            probabilities[26] = 10
            probabilities[27] = 80 * f2_local13
            probabilities[28] = 0
            probabilities[33] = 10
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            probabilities[20] = 30
            probabilities[25] = 30
            probabilities[26] = 5
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 30
            probabilities[33] = 5
        else
            probabilities[20] = 25
            probabilities[25] = 30
            probabilities[26] = 5
            probabilities[27] = 10 * f2_local13
            probabilities[28] = 25
            probabilities[33] = 5
        end
    elseif distanceEnemy >= 15 then
        if hpRatioSelf <= 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            probabilities[28] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true and ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(ai, goal, 0, 120, -6, 99) then
                probabilities[20] = 0
                probabilities[23] = 0
                probabilities[26] = 40
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 5 * f2_local14
                probabilities[33] = 50
                probabilities[34] = 5 * f2_local15
            elseif InsideRange(ai, goal, 0, 260, -6, 99) then
                probabilities[20] = 0
                probabilities[23] = 0
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 14 * f2_local14
                probabilities[33] = 60
                probabilities[34] = 14 * f2_local15
            else
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 30 * f2_local14
                probabilities[40] = 20
                probabilities[34] = 30 * f2_local15
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            if InsideRange(ai, goal, 0, 120, -6, 99) then
                probabilities[20] = 0
                probabilities[23] = 20
                probabilities[26] = 10
                probabilities[27] = 30 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 5 * f2_local14
                probabilities[33] = 30
                probabilities[34] = 5 * f2_local15
            elseif InsideRange(ai, goal, 0, 260, -6, 99) then
                probabilities[20] = 0
                probabilities[23] = 10
                probabilities[27] = 60 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 5 * f2_local14
                probabilities[33] = 20
                probabilities[34] = 5 * f2_local15
            else
                probabilities[27] = 50 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 15 * f2_local14
                probabilities[40] = 10
                probabilities[34] = 15 * f2_local15
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(ai, goal, 0, 120, -6, 99) then
                probabilities[20] = 40
                probabilities[23] = 0
                probabilities[26] = 10
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 20
                probabilities[30] = 5 * f2_local14
                probabilities[33] = 20
                probabilities[34] = 5 * f2_local15
            elseif InsideRange(ai, goal, 0, 260, -6, 99) then
                probabilities[20] = 50
                probabilities[23] = 0
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 30
                probabilities[30] = 5 * f2_local14
                probabilities[33] = 10
                probabilities[34] = 5 * f2_local15
            else
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 60
                probabilities[30] = 10 * f2_local14
                probabilities[40] = 10
                probabilities[34] = 10 * f2_local15
            end
        elseif InsideRange(ai, goal, 0, 120, -6, 99) then
            probabilities[20] = 30
            probabilities[23] = 10
            probabilities[26] = 10
            probabilities[27] = 10 * f2_local13
            probabilities[28] = 10
            probabilities[30] = 5 * f2_local14
            probabilities[33] = 20
            probabilities[34] = 5 * f2_local15
        elseif InsideRange(ai, goal, 0, 260, -6, 99) then
            probabilities[20] = 30
            probabilities[23] = 10
            probabilities[27] = 30 * f2_local13
            probabilities[28] = 10
            probabilities[30] = 5 * f2_local14
            probabilities[33] = 10
            probabilities[34] = 5 * f2_local15
        else
            probabilities[27] = 30 * f2_local13
            probabilities[28] = 30
            probabilities[30] = 10 * f2_local14
            probabilities[40] = 10
            probabilities[34] = 10 * f2_local15
        end
    elseif distanceEnemy >= 6 then
        if hpRatioSelf <= 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            probabilities[28] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true and ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(ai, goal, 0, 120, -6, 99) then
                probabilities[20] = 0
                probabilities[22] = 40
                probabilities[23] = 0
                probabilities[24] = 0
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 10 * f2_local14
                probabilities[31] = 15
                probabilities[32] = 15
                probabilities[34] = 10 * f2_local15
            elseif InsideRange(ai, goal, 0, 260, -6, 99) then
                probabilities[22] = 30
                probabilities[23] = 0
                probabilities[24] = 0
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 16 * f2_local14
                probabilities[31] = 10
                probabilities[32] = 10
                probabilities[34] = 16 * f2_local15
            else
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 0
                probabilities[29] = 0
                probabilities[30] = 25 * f2_local14
                probabilities[40] = 30
                probabilities[34] = 25 * f2_local15
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            if InsideRange(ai, goal, 0, 120, -6, 99) then
                probabilities[20] = 0
                probabilities[22] = 15
                probabilities[23] = 30
                probabilities[24] = 20
                probabilities[27] = 20 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 2 * f2_local14
                probabilities[31] = 5
                probabilities[32] = 5
                probabilities[34] = 3 * f2_local15
            elseif InsideRange(ai, goal, 0, 260, -6, 99) then
                probabilities[22] = 10
                probabilities[23] = 0
                probabilities[24] = 20
                probabilities[27] = 40 * f2_local13
                probabilities[28] = 0
                probabilities[30] = 7 * f2_local14
                probabilities[31] = 5
                probabilities[32] = 5
                probabilities[34] = 7 * f2_local15
            else
                probabilities[27] = 30 * f2_local13
                probabilities[28] = 0
                probabilities[29] = 0
                probabilities[30] = 20 * f2_local14
                probabilities[40] = 20
                probabilities[34] = 20 * f2_local15
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(ai, goal, 0, 120, -6, 99) then
                probabilities[20] = 30
                probabilities[21] = 10
                probabilities[22] = 10
                probabilities[23] = 0
                probabilities[24] = 0
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 30
                probabilities[30] = 5 * f2_local14
                probabilities[31] = 5
                probabilities[32] = 5
                probabilities[34] = 5 * f2_local15
            elseif InsideRange(ai, goal, 0, 260, -6, 99) then
                probabilities[20] = 20
                probabilities[21] = 20
                probabilities[22] = 10
                probabilities[23] = 0
                probabilities[24] = 0
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 40
                probabilities[30] = 5 * f2_local14
                probabilities[31] = 5
                probabilities[32] = 5
                probabilities[34] = 5 * f2_local15
            else
                probabilities[27] = 0 * f2_local13
                probabilities[28] = 30
                probabilities[29] = 50
                probabilities[30] = 7 * f2_local14
                probabilities[40] = 10
                probabilities[34] = 7 * f2_local15
            end
        elseif InsideRange(ai, goal, 0, 120, -6, 99) then
            probabilities[20] = 10
            probabilities[21] = 5
            probabilities[22] = 25
            probabilities[23] = 5
            probabilities[24] = 5
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[27] = 10 * f2_local13
            probabilities[28] = 10
            probabilities[29] = 0
            probabilities[30] = 5 * f2_local14
            probabilities[31] = 10
            probabilities[32] = 10
            probabilities[34] = 5 * f2_local15
        elseif InsideRange(ai, goal, 0, 260, -6, 99) then
            probabilities[20] = 0
            probabilities[21] = 10
            probabilities[22] = 25
            probabilities[23] = 5
            probabilities[24] = 10
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[27] = 20 * f2_local13
            probabilities[28] = 10
            probabilities[29] = 0
            probabilities[30] = 5 * f2_local14
            probabilities[31] = 5
            probabilities[32] = 5
            probabilities[34] = 5 * f2_local15
        else
            probabilities[27] = 20 * f2_local13
            probabilities[28] = 20
            probabilities[29] = 20
            probabilities[30] = 10 * f2_local14
            probabilities[40] = 10
            probabilities[34] = 10 * f2_local15
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true and ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
        if InsideRange(ai, goal, 0, 120, -6, 99) then
            probabilities[21] = 0
            probabilities[24] = 0
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 0
            probabilities[29] = 0
            probabilities[30] = 18 * f2_local14
            probabilities[32] = 50
            probabilities[34] = 18 * f2_local15
        elseif InsideRange(ai, goal, 0, 260, -6, 99) then
            probabilities[21] = 0
            probabilities[24] = 0
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 0
            probabilities[29] = 0
            probabilities[30] = 23 * f2_local14
            probabilities[32] = 40
            probabilities[34] = 23 * f2_local15
        else
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 0
            probabilities[29] = 0
            probabilities[30] = 35 * f2_local14
            probabilities[34] = 35 * f2_local15
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 12760) == true then
        if InsideRange(ai, goal, 0, 120, -6, 99) then
            probabilities[21] = 0
            probabilities[24] = 40
            probabilities[27] = 20 * f2_local13
            probabilities[28] = 0
            probabilities[29] = 0
            probabilities[30] = 7 * f2_local14
            probabilities[32] = 20
            probabilities[34] = 7 * f2_local15
        elseif InsideRange(ai, goal, 0, 260, -6, 99) then
            probabilities[21] = 0
            probabilities[24] = 20
            probabilities[27] = 40 * f2_local13
            probabilities[28] = 0
            probabilities[29] = 0
            probabilities[30] = 15 * f2_local14
            probabilities[32] = 10
            probabilities[34] = 15 * f2_local15
        else
            probabilities[27] = 50 * f2_local13
            probabilities[28] = 0
            probabilities[29] = 0
            probabilities[30] = 20 * f2_local14
            probabilities[34] = 20 * f2_local15
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 12761) == true then
        if InsideRange(ai, goal, 0, 120, -6, 99) then
            probabilities[21] = 50
            probabilities[24] = 0
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 20
            probabilities[29] = 20
            probabilities[30] = 2 * f2_local14
            probabilities[32] = 5
            probabilities[34] = 3 * f2_local15
        elseif InsideRange(ai, goal, 0, 260, -6, 99) then
            probabilities[21] = 20
            probabilities[24] = 0
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 20
            probabilities[29] = 40
            probabilities[30] = 7 * f2_local14
            probabilities[32] = 0
            probabilities[34] = 7 * f2_local15
        else
            probabilities[27] = 0 * f2_local13
            probabilities[28] = 40
            probabilities[29] = 40
            probabilities[30] = 7 * f2_local14
            probabilities[34] = 7 * f2_local15
        end
    elseif InsideRange(ai, goal, 0, 120, -6, 99) then
        probabilities[21] = 30
        probabilities[24] = 20
        probabilities[27] = 10 * f2_local13
        probabilities[28] = 10
        probabilities[29] = 10
        probabilities[30] = 5 * f2_local14
        probabilities[32] = 10
        probabilities[34] = 5 * f2_local15
    elseif InsideRange(ai, goal, 0, 260, -6, 99) then
        probabilities[21] = 30
        probabilities[24] = 10
        probabilities[27] = 10 * f2_local13
        probabilities[28] = 20
        probabilities[29] = 20
        probabilities[30] = 5 * f2_local14
        probabilities[32] = 0
        probabilities[34] = 5 * f2_local15
    else
        probabilities[27] = 20 * f2_local13
        probabilities[28] = 20
        probabilities[29] = 40
        probabilities[30] = 7 * f2_local14
        probabilities[34] = 7 * f2_local15
    end
    probabilities[4] = SetCoolTime(ai, goal, 3005, 45, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3006, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3007, 30, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3008, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3009, 30, probabilities[8], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3010, 10, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3011, 30, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3012, 30, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3013, 20, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3014, 90, probabilities[14], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3017, 45, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3016, 30, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3017, 90, probabilities[16], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3014, 45, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3018, 10, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3019, 20, probabilities[18], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3000, 30, probabilities[20], 1)
    probabilities[21] = SetCoolTime(ai, goal, 3001, 30, probabilities[21], 1)
    probabilities[22] = SetCoolTime(ai, goal, 3002, 15, probabilities[22], 1)
    probabilities[24] = SetCoolTime(ai, goal, 3005, 80, probabilities[24], 1)
    probabilities[25] = SetCoolTime(ai, goal, 3006, 20, probabilities[25], 1)
    probabilities[26] = SetCoolTime(ai, goal, 3007, 10, probabilities[26], 1)
    probabilities[27] = SetCoolTime(ai, goal, 3008, 50, probabilities[27], 1)
    probabilities[28] = SetCoolTime(ai, goal, 3009, 90, probabilities[28], 1)
    probabilities[29] = SetCoolTime(ai, goal, 3010, 20, probabilities[29], 1)
    probabilities[30] = SetCoolTime(ai, goal, 3011, 10, probabilities[30], 1)
    probabilities[30] = SetCoolTime(ai, goal, 3017, 10, probabilities[30], 1)
    probabilities[31] = SetCoolTime(ai, goal, 3012, 10, probabilities[31], 1)
    probabilities[32] = SetCoolTime(ai, goal, 3013, 10, probabilities[32], 1)
    probabilities[33] = SetCoolTime(ai, goal, 3015, 10, probabilities[33], 1)
    probabilities[34] = SetCoolTime(ai, goal, 3017, 10, probabilities[34], 1)
    probabilities[34] = SetCoolTime(ai, goal, 3011, 10, probabilities[34], 1)
    acts[1] = REGIST_FUNC(ai, goal, Giant476000_Act1)
    acts[2] = REGIST_FUNC(ai, goal, Giant476000_Act2)
    acts[3] = REGIST_FUNC(ai, goal, Giant476000_Act3)
    acts[4] = REGIST_FUNC(ai, goal, Giant476000_Act4)
    acts[5] = REGIST_FUNC(ai, goal, Giant476000_Act5)
    acts[6] = REGIST_FUNC(ai, goal, Giant476000_Act6)
    acts[7] = REGIST_FUNC(ai, goal, Giant476000_Act7)
    acts[8] = REGIST_FUNC(ai, goal, Giant476000_Act8)
    acts[9] = REGIST_FUNC(ai, goal, Giant476000_Act9)
    acts[10] = REGIST_FUNC(ai, goal, Giant476000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Giant476000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Giant476000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Giant476000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Giant476000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Giant476000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Giant476000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Giant476000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, Giant476000_Act18)
    acts[20] = REGIST_FUNC(ai, goal, Giant476000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Giant476000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Giant476000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, Giant476000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Giant476000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Giant476000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, Giant476000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, Giant476000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, Giant476000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, Giant476000_Act29)
    acts[30] = REGIST_FUNC(ai, goal, Giant476000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, Giant476000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, Giant476000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, Giant476000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, Giant476000_Act34)
    acts[40] = REGIST_FUNC(ai, goal, Giant476000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Giant476000_Act41)
    local actAfter = REGIST_FUNC(ai, goal, Giant476000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Giant476000_Act1(ai, goal, paramTbl)
    local stopDist = 16 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act2(ai, goal, paramTbl)
    local stopDist = 26 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3001
    local f4_local8 = 3002
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act3(ai, goal, paramTbl)
    local stopDist = 16 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3003
    local f5_local8 = 3004
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act4(ai, goal, paramTbl)
    local stopDist = 70 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3005
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act5(ai, goal, paramTbl)
    local stopDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3006
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act6(ai, goal, paramTbl)
    local stopDist = 35 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act7(ai, goal, paramTbl)
    local stopDist = 75 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3008
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act8(ai, goal, paramTbl)
    local stopDist = 75 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3009
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act9(ai, goal, paramTbl)
    local animationId = 3020
    local animationId_2 = 3014
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy <= 20 then
        goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act10(ai, goal, paramTbl)
    local stopDist = 60 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3010
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act11(ai, goal, paramTbl)
    local animationId = 3011
    local f13_local1 = 3015
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act12(ai, goal, paramTbl)
    local animationId = 3012
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act13(ai, goal, paramTbl)
    local animationId = 3013
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act14(ai, goal, paramTbl)
    local animationId = 3014
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 8, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act15(ai, goal, paramTbl)
    local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 50
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3016
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 8, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act16(ai, goal, paramTbl)
    local animationId = 3017
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 8, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act17(ai, goal, paramTbl)
    local stopDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3018
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act18(ai, goal, paramTbl)
    local animationId = 3019
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act20(ai, goal, paramTbl)
    local stopDist = 75 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act21(ai, goal, paramTbl)
    local stopDist = 75 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3001
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act22(ai, goal, paramTbl)
    local stopDist = 17 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local f23_local8 = 3003
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f23_local10 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act23(ai, goal, paramTbl)
    local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3004
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act24(ai, goal, paramTbl)
    local stopDist = 19.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 1
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3005
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act25(ai, goal, paramTbl)
    local stopDist = 55 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3006
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act26(ai, goal, paramTbl)
    local stopDist = 75 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act27(ai, goal, paramTbl)
    local stopDist = 75 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3008
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act28(ai, goal, paramTbl)
    local animationId = 3009
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act29(ai, goal, paramTbl)
    local animationId = 3010
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act30(ai, goal, paramTbl)
    local animationId = 3011
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act31(ai, goal, paramTbl)
    local stopDist = 15.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 50
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 1
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3012
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act32(ai, goal, paramTbl)
    local stopDist = 11.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 50
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 1
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3013
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act33(ai, goal, paramTbl)
    local stopDist = 30.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 200
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 4
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3015
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act34(ai, goal, paramTbl)
    local animationId = 3017
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act40(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 5, TARGET_ENE_0, 0, -1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_Act41(ai, goal, paramTbl)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 0, ai:GetRandam_Int(90, 120), true, true, -1):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 1, ai:GetRandam_Int(90, 120), true, true, -1):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Giant476000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Giant476000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f41_local1 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5032) then
        goal:ClearSubGoal()
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) and distanceEnemy >= 3 and distanceEnemy <= 23 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) and distanceEnemy >= 4 and distanceEnemy <= 23 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) and distanceEnemy >= 6 and distanceEnemy <= 30 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) and distanceEnemy >= -2 and distanceEnemy <= 10 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) and distanceEnemy >= -10 and distanceEnemy <= 2 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5030) and distanceEnemy >= 2 and distanceEnemy <= 18 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5031) and distanceEnemy >= 2 and distanceEnemy <= 99 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 99) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_Giant476000_AfterAttackAct, "Giant476000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Giant476000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

