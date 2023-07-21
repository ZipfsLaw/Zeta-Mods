--DisguiseSystem.Lua
local this={
	modName = "Disguise System",
	modDesc = "Obtain disguises from soldiers out in the field and disguise yourself! Uses outfits created by Sir_galahad.",
	modCategory = { "Gameplay", "Player" },
	modAuthor = { "ZIP", "Sir_galahad" },
	modLoadOrder = 2, --Set above 1 so it has higher order by default
	--Disguise System ( By ZIP )
	isBlendingIn = false, --Whether or not the player can be caught with the disguise on
	disguiseStatus = {
		NONE = 0, --Doesn't have disguise
		OBTAINED = 1, --Has but isn't wearing it
		WORN = 2, --Wearing it
		BLOWN = 3, --Cover blown, remove and find a new one
	},
	disguiseParts = {
		{
			ids = {
				"SOVIET_A",
				"SOVIET_B",
			},
			label = "[Soviet Soldier Disguise]",
			parts = {
				"/Assets/tpp/pack/player/parts/sir_galahad/plparts_sovietsoldier.fpk", 
				"/Assets/tpp/parts/chara/sna/sna0_main0_def_v00.parts", 
				"/Assets/tpp/fova/chara/sna/sna0_plym0_def_v00.fv2"
			},
			eqps = {
				TppEquip.EQP_WP_East_hg_010,
				TppEquip.EQP_WP_East_sm_010,
				TppEquip.EQP_WP_East_sm_020,
				TppEquip.EQP_WP_East_sm_030,
				TppEquip.EQP_WP_East_sm_042,
				TppEquip.EQP_WP_East_sm_043,
				TppEquip.EQP_WP_East_sm_044,
				TppEquip.EQP_WP_East_sm_045,
				TppEquip.EQP_WP_East_mg_010,
				TppEquip.EQP_WP_East_ms_010,
				TppEquip.EQP_WP_East_ms_020,
				TppEquip.EQP_WP_East_sr_011,
				TppEquip.EQP_WP_East_sr_020,
				TppEquip.EQP_WP_East_sr_032,
				TppEquip.EQP_WP_East_sr_033,
				TppEquip.EQP_WP_East_sr_034,
				TppEquip.EQP_WP_East_ar_010,
				TppEquip.EQP_WP_East_ar_010_FL,
				TppEquip.EQP_WP_East_ar_020,
				TppEquip.EQP_WP_East_ar_030,
				TppEquip.EQP_WP_East_ar_030_FL,
				TppEquip.EQP_WP_East_sm_049,
				TppEquip.EQP_WP_East_sm_04a,
				TppEquip.EQP_WP_East_sm_04b,
				TppEquip.EQP_WP_East_sm_047,
			},
		},
		{
			ids = {
				"PF_A",
			},
			label = "[Contract Forces of Africa Disguise]",
			parts = {
				"/Assets/tpp/pack/player/parts/sir_galahad/plparts_afrikaansoldieralt.fpk", 
				"/Assets/tpp/parts/chara/sna/sna3_main1_def_v00.parts", 
				"/Assets/tpp/fova/chara/sna/sna4_plym0_def_v00.fv2"
			},
			eqps = {
				TppEquip.EQP_WP_West_ar_010,
				TppEquip.EQP_WP_West_ar_010_FL,
				TppEquip.EQP_WP_West_ar_055,
				TppEquip.EQP_WP_West_ar_020,
				TppEquip.EQP_WP_West_ar_020_FL,
				TppEquip.EQP_WP_West_ar_030,
				TppEquip.EQP_WP_West_ar_040,
				TppEquip.EQP_WP_West_ar_042,
				TppEquip.EQP_WP_West_ar_050,
				TppEquip.EQP_WP_West_ar_060,
				TppEquip.EQP_WP_West_ar_063,
				TppEquip.EQP_WP_West_ar_070,
				TppEquip.EQP_WP_West_ar_075,
				TppEquip.EQP_WP_West_ar_057,
				TppEquip.EQP_WP_West_ar_077,
				TppEquip.EQP_WP_West_ar_059,
				TppEquip.EQP_WP_West_ar_05a,
				TppEquip.EQP_WP_West_ar_05b,
				TppEquip.EQP_WP_West_ar_079,
				TppEquip.EQP_WP_West_ar_07a,
				TppEquip.EQP_WP_West_ar_07b,
				TppEquip.EQP_WP_West_hg_010,
				TppEquip.EQP_WP_West_hg_010_WG,
				TppEquip.EQP_WP_West_hg_020,
				TppEquip.EQP_WP_West_hg_030,
				TppEquip.EQP_WP_West_hg_030_cmn,
				TppEquip.EQP_WP_West_thg_010,
				TppEquip.EQP_WP_West_thg_020,
				TppEquip.EQP_WP_West_thg_030,
				TppEquip.EQP_WP_West_thg_040,
				TppEquip.EQP_WP_West_thg_050,
				TppEquip.EQP_WP_West_sm_010,
				TppEquip.EQP_WP_West_sm_010_WG,
				TppEquip.EQP_WP_West_sm_014,
				TppEquip.EQP_WP_West_sm_015,
				TppEquip.EQP_WP_West_sm_016,
				TppEquip.EQP_WP_West_sm_017,
				TppEquip.EQP_WP_West_sm_020,
				TppEquip.EQP_WP_West_sm_019,
				TppEquip.EQP_WP_West_sm_01a,
				TppEquip.EQP_WP_West_sm_01b,
				TppEquip.EQP_WP_West_mg_010,
				TppEquip.EQP_WP_West_mg_020,
				TppEquip.EQP_WP_West_mg_023,
				TppEquip.EQP_WP_West_mg_024,
				TppEquip.EQP_WP_West_mg_021,
				TppEquip.EQP_WP_West_mg_030,
				TppEquip.EQP_WP_West_mg_037,
				TppEquip.EQP_WP_West_mg_039,
				TppEquip.EQP_WP_West_mg_03a,
				TppEquip.EQP_WP_West_mg_03b,
				TppEquip.EQP_WP_West_ms_010,
				TppEquip.EQP_WP_West_ms_020,
				TppEquip.EQP_WP_West_ms_029,
				TppEquip.EQP_WP_West_ms_02a,
				TppEquip.EQP_WP_West_ms_02b,
				TppEquip.EQP_WP_West_sr_027,
				TppEquip.EQP_WP_West_sr_047,
				TppEquip.EQP_WP_West_sr_048,
				TppEquip.EQP_WP_West_sr_010,
				TppEquip.EQP_WP_West_sr_011,
				TppEquip.EQP_WP_West_sr_013,
				TppEquip.EQP_WP_West_sr_014,
				TppEquip.EQP_WP_West_sr_020,
				TppEquip.EQP_WP_West_sr_037,
				TppEquip.EQP_WP_West_sr_029,
				TppEquip.EQP_WP_West_sr_02a,
				TppEquip.EQP_WP_West_sr_02b,
				TppEquip.EQP_WP_West_sr_049,
				TppEquip.EQP_WP_West_sr_04a,
				TppEquip.EQP_WP_West_sr_04b,
			},
		},
		{
			ids = {
				"PF_C",
			},
			label = "[Rogue Coyote Disguise]",
			parts = {
				"/Assets/tpp/pack/player/parts/sir_galahad/plparts_afrikaansoldier.fpk", 
				"/Assets/tpp/parts/chara/sna/sna4_main0_def_v00.parts", 
				"/Assets/tpp/fova/chara/sna/sna4_plym0_def_v00.fv2"
			},
			eqps = {
				TppEquip.EQP_WP_West_ar_010,
				TppEquip.EQP_WP_West_ar_010_FL,
				TppEquip.EQP_WP_West_ar_055,
				TppEquip.EQP_WP_West_ar_020,
				TppEquip.EQP_WP_West_ar_020_FL,
				TppEquip.EQP_WP_West_ar_030,
				TppEquip.EQP_WP_West_ar_040,
				TppEquip.EQP_WP_West_ar_042,
				TppEquip.EQP_WP_West_ar_050,
				TppEquip.EQP_WP_West_ar_060,
				TppEquip.EQP_WP_West_ar_063,
				TppEquip.EQP_WP_West_ar_070,
				TppEquip.EQP_WP_West_ar_075,
				TppEquip.EQP_WP_West_ar_057,
				TppEquip.EQP_WP_West_ar_077,
				TppEquip.EQP_WP_West_ar_059,
				TppEquip.EQP_WP_West_ar_05a,
				TppEquip.EQP_WP_West_ar_05b,
				TppEquip.EQP_WP_West_ar_079,
				TppEquip.EQP_WP_West_ar_07a,
				TppEquip.EQP_WP_West_ar_07b,
				TppEquip.EQP_WP_West_hg_010,
				TppEquip.EQP_WP_West_hg_010_WG,
				TppEquip.EQP_WP_West_hg_020,
				TppEquip.EQP_WP_West_hg_030,
				TppEquip.EQP_WP_West_hg_030_cmn,
				TppEquip.EQP_WP_West_thg_010,
				TppEquip.EQP_WP_West_thg_020,
				TppEquip.EQP_WP_West_thg_030,
				TppEquip.EQP_WP_West_thg_040,
				TppEquip.EQP_WP_West_thg_050,
				TppEquip.EQP_WP_West_sm_010,
				TppEquip.EQP_WP_West_sm_010_WG,
				TppEquip.EQP_WP_West_sm_014,
				TppEquip.EQP_WP_West_sm_015,
				TppEquip.EQP_WP_West_sm_016,
				TppEquip.EQP_WP_West_sm_017,
				TppEquip.EQP_WP_West_sm_020,
				TppEquip.EQP_WP_West_sm_019,
				TppEquip.EQP_WP_West_sm_01a,
				TppEquip.EQP_WP_West_sm_01b,
				TppEquip.EQP_WP_West_mg_010,
				TppEquip.EQP_WP_West_mg_020,
				TppEquip.EQP_WP_West_mg_023,
				TppEquip.EQP_WP_West_mg_024,
				TppEquip.EQP_WP_West_mg_021,
				TppEquip.EQP_WP_West_mg_030,
				TppEquip.EQP_WP_West_mg_037,
				TppEquip.EQP_WP_West_mg_039,
				TppEquip.EQP_WP_West_mg_03a,
				TppEquip.EQP_WP_West_mg_03b,
				TppEquip.EQP_WP_West_ms_010,
				TppEquip.EQP_WP_West_ms_020,
				TppEquip.EQP_WP_West_ms_029,
				TppEquip.EQP_WP_West_ms_02a,
				TppEquip.EQP_WP_West_ms_02b,
				TppEquip.EQP_WP_West_sr_027,
				TppEquip.EQP_WP_West_sr_047,
				TppEquip.EQP_WP_West_sr_048,
				TppEquip.EQP_WP_West_sr_010,
				TppEquip.EQP_WP_West_sr_011,
				TppEquip.EQP_WP_West_sr_013,
				TppEquip.EQP_WP_West_sr_014,
				TppEquip.EQP_WP_West_sr_020,
				TppEquip.EQP_WP_West_sr_037,
				TppEquip.EQP_WP_West_sr_029,
				TppEquip.EQP_WP_West_sr_02a,
				TppEquip.EQP_WP_West_sr_02b,
				TppEquip.EQP_WP_West_sr_049,
				TppEquip.EQP_WP_West_sr_04a,
				TppEquip.EQP_WP_West_sr_04b,
			},
		},
	},
}
--UI
function this.ModMenu()
    return{
		{
			name="Disguise Settings",
			desc="Settings for how disguises work and affect enemy soldiers.",
			options={
				{
					var="ZipDisguiseType",
					name="Disguise Type",
					desc="When set to OSP, you must find a soldier to use their disguise. Any other setting will force the disguise for Soviet, CFA, or Rogue Coyotes.",
					list={"OSP", "Soviet", "CFA", "Rogue Coyote"},
					default=0,
				},
				{
					var="ZipDisAcquireCarry",
					name="Carrying soldiers acquires disguises", 
					desc="If true, you can acquire disguises by carrying a soldier's body.",
					default=1,
					func=function()end,
				},
				{
					var="ZipDisFirearms",
					name="Allow DD weapons", 
					desc="If true, will allow you to blend in with DD weapons. If false, you will need to grab the enemy's firearm to complete the disguise!",
					default=1,
					func=function()end,
				},
				{
					var="ZipDisDamageCoverBlown",
					name="Allow CQC", 
					desc="If true, you will be allowed to CQC enemy soldiers. If false, any soldier you hurt might blow your cover.",
					default=0,
					func=function()end,
				},
				{
					var="ZipDisWorksInCautionPhase",
					name="Disguises Work in Caution Phase", 
					desc="If true, your disguises will also work in the Caution phase.",
					default=0,
					func=function()end,
				},
			}
		},	
		{
			name="Disguise Locations",
			desc="Settings for where and when you can change in and out of disguises.",
			options={
				{
					var="ZipDisCBox",
					name="Cardboard Box", 
					desc="If true, toggles disguise when equipping the cardboard box. (Note: Good for disguising on command!)",
					default=0,
					func=function()end,
				},
				{
					var="ZipDisToilet",
					name="Toilets",
					desc="If true, toggles disguise when entering toilets.",
					default=1,
					func=function()end,
				},
				{
					var="ZipDisDumpster",
					name="Dumpsters",
					desc="If true, toggles disguise when entering dumpsters.",
					default=1,
					func=function()end,
				},
				{
					var="ZipDisFulton",
					name="Fultons",
					desc="If true, toggles disguise when fultoning a soldier.",
					default=0,
					func=function()end,
				},
			}
		},
    }
end
function this.LoadPlayerParts()
	if svars == nil then return nil end
	--If disguise type is set to OSP, check if we have a disguise at all. Otherwise, revert back.
	local isSystemActive = this.IsPlayerDisguiseForced()  --Returns true if using a forced disguise.
	if isSystemActive == false then --Are we using OSP mode?
		local isDisguiseActive = ( svars.DisguiseSystemFlag >= this.disguiseStatus.WORN ) --Is the disguise worn?
		if svars.DisguiseSystemType > 0 and isDisguiseActive == true then isSystemActive = true end --Do we have a valid disguise type?
	end
	--Returns true if we have a uniform with OSP mode on, or we've forced a disguise.
	if isSystemActive == true then
		return { 
			{"SNAKE", this.GetCurrentDisguiseParts(), true, true }, --Applies to all outfits Snake has
			{"DD_MALE", this.GetCurrentDisguiseParts(), true, true }, --Applies to all outfits DD male has
			{"AVATAR", this.GetCurrentDisguiseParts(), true, true }, --Applies to all outfits Avatar has
		}
	end
	return nil
end
--Update player parts on mission start and when svars are set 
function this.DeclareSVars()
	return {
		{name="DisguiseSystemFlag",type=TppScriptVars.TYPE_UINT8,value=0,save=true,sync=false,wait=false,category=TppScriptVars.CATEGORY_MISSION},
		{name="DisguiseSystemType",type=TppScriptVars.TYPE_UINT8,value=0,save=true,sync=false,wait=false,category=TppScriptVars.CATEGORY_MISSION},
	}
end
function this.OnMissionCanStart() this.RestoreDisguise() end
function this.OnRestoreSvars() 
	if InfMain.IsContinue() then this.RestoreDisguise() end
end
function this.RestoreDisguise()
	if this.IsPlayerDisguiseForced() == true then return nil end --If the disguise is forced, disable the system!
	this.updateDisguseOnNextFrame = true
	--Has to be cleared!
	this.currentPhase = nil
	this.isBlendingIn = nil
	this.wasInCBOX = nil
	--if svars.DisguiseSystemFlag >= this.disguiseStatus.WORN then this.updateDisguseOnNextFrame = true end
end
--Handles disguise system
function this.Update(currentChecks, currentTime)
	if this.IsPlayerDisguiseForced() == true then return nil end --If the disguise is forced, disable the system!
	if currentChecks.inHeliSpace or not currentChecks.inGame then return end --Make sure we're in-game
	this.currentTime = currentTime --Save current time for use with other functions
	this.DisableActionButton() --Toggle controls when changing into disguise
	--Avoids issues when player interacts with objects
	if this.updateDisguseOnNextFrame == true then this.UpdateDisguise() end		
	if svars.DisguiseSystemFlag == this.disguiseStatus.WORN then
		--If phase changes to anything but sneaking anywhere, your cover is blown!
		if this.currentPhase ~= nil then
			if ZetaEnemy.IsSneakingPhase(this.currentPhase) == false then 
				if this.ZVar("ZipDisWorksInCautionPhase") <= 0 or ZetaEnemy.IsCautionPhase(this.currentPhase) == false then --Can we use disguise in Caution phase?
					this.CoverBlown() 
					return nil --End here, cover's blown.
				end
			end
		end
		--Some actions make you "suspicious", so if enemies see you doing it, your cover is blown.
		local nowBlendingIn = this.IsBlendingIn()
		if nowBlendingIn ~= this.isBlendingIn then 
			this.isBlendingIn = nowBlendingIn
			this.ToggleFriendly( nowBlendingIn ) 	
		end
	end
	if this.ZVar("ZipDisCBox") >= 1 then --Used CBox to toggle disguise?
		local isInCBOX = PlayerInfo.OrCheckStatus{PlayerStatusEx.CBOX} 
		if isInCBOX ~= this.wasInCBOX then 
			if isInCBOX == true then this.SwitchOutfit() end
			this.wasInCBOX = isInCBOX
		end
	end
end
--Decides what lets enemies see through your disguise.
function this.IsBlendingIn()
	local isHolding = (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.HOLD)==PlayerPad.HOLD) --Aiming weapon will make you suspicious
	if isHolding == true and Player.IsNonActiveBySlot( vars.currentInventorySlot, vars.currentSupportWeaponIndex ) == false then return false end 
	if this.ZVar("ZipDisFirearms") <= 0 then --Do we need to use enemy weapons to blend in?
		if this.PlayerHasEnemyWeapon() == false then return false end
	end
	if this.ZVar("ZipDisDamageCoverBlown") <= 0 then --Disallow CQC?
		if PlayerInfo.OrCheckStatus{PlayerStatusEx.CQC_LOCK_ON,PlayerStatusEx.CQC_MANUAL,PlayerStatusEx.CQC_MANUAL_HOLD,PlayerStatusEx.CQC_HOLD,PlayerStatusEx.CQC_CONTINUOUS} then return false end
	end
	return true --We blend in!
end
--Handles status, type, announcements, and refreshing parts.
function this.ToggleDisguise(forceWear)
	--Announce switch
	local msg = ""
	local newStatus = nil
	local curDisLabel = this.GetCurrentDisguiseLabel() 
	if svars.DisguiseSystemFlag == this.disguiseStatus.BLOWN then
		newStatus = this.disguiseStatus.NONE
		msg = "Dropped "..curDisLabel
		this.updateDisguseOnNextFrame = true
		svars.DisguiseSystemType = 0 --Remove type
	else 
		if svars.DisguiseSystemFlag == this.disguiseStatus.NONE then
			if forceWear == true then
				newStatus = this.disguiseStatus.WORN
				msg = curDisLabel.." Equipped"
				this.updateDisguseOnNextFrame = true
			else
				newStatus = this.disguiseStatus.OBTAINED 
				msg = "Obtained "..curDisLabel
			end
		else
			if svars.DisguiseSystemFlag == this.disguiseStatus.OBTAINED then
				newStatus = this.disguiseStatus.WORN
				msg = curDisLabel.." Equipped"
			elseif svars.DisguiseSystemFlag == this.disguiseStatus.WORN then
				newStatus = this.disguiseStatus.OBTAINED
				msg = curDisLabel.." Unequipped"
			end
			this.updateDisguseOnNextFrame = true
		end
	end
	if newStatus ~= svars.DisguiseSystemFlag then
		if msg ~= "" then TppUiCommand.AnnounceLogView(msg,true,true) end
		svars.DisguiseSystemFlag = newStatus
	end
end
--Handles enemy relationships and player parts
function this.UpdateDisguise()
	if svars.DisguiseSystemFlag == this.disguiseStatus.OBTAINED then this.ToggleFriendly(false)
	elseif svars.DisguiseSystemFlag == this.disguiseStatus.WORN then this.ToggleFriendly(true)
	elseif svars.DisguiseSystemFlag == this.disguiseStatus.BLOWN then this.ToggleFriendly(false)
	end
	ZetaPlayerParts.Reload()
	this.updateDisguseOnNextFrame = false
end
--Switch in and out of the outfit if we've obtained it.
function this.SwitchOutfit()
	if this.IsPlayerDisguiseForced() == true then return nil end --If the disguise is forced, disable the system!
	if svars.DisguiseSystemFlag >= this.disguiseStatus.OBTAINED then
		this.DisableActionButton(true) --Disable action button temporarily
		this.ToggleDisguise()
	end
end
--Make all enemies friendly
function this.ToggleFriendly(toggle)
	local commandFriendly={id="SetFriendly",enabled=toggle}
	ZetaEnemy.SendCommandToAllEnemies(commandFriendly)
end
--Notification for obtaining disguise
function this.ObtainedUniform(gameObjectId, forceWear)
	if this.IsPlayerDisguiseForced() == true then return nil end --If the disguise is forced, disable the system!
	if svars.DisguiseSystemFlag == this.disguiseStatus.NONE then 
		if ZetaEnemy.IsGameObjectEnemy(gameObjectId) == true then
			local bodyId = ZetaEnemy.GetEnemySubType(gameObjectId)
			if bodyId ~= "" then
				svars.DisguiseSystemType = this.GetDisguiseType( bodyId )
				if svars.DisguiseSystemType > 0 then this.ToggleDisguise(forceWear) end
			end
		end
	end
end
--Turns friendlies to enemies. Also renders disguises useless
function this.CoverBlown()
	if this.IsPlayerDisguiseForced() == true then return nil end --If the disguise is forced, disable the system!
	if svars.DisguiseSystemFlag == this.disguiseStatus.WORN then
		TppUiCommand.AnnounceLogView(this.GetCurrentDisguiseLabel().." Cover blown!",true,true)
		svars.DisguiseSystemFlag = this.disguiseStatus.BLOWN
		this.ToggleFriendly(false)
	end
end
--Disables action button ( stops players from getting out of toilets, trash boxes too quickly )
function this.DisableActionButton(toggle)
	if this.currentTime == nil then this.currentTime = 0 end
	if toggle == true then
		Player.SetPadMask {		
			settingName = "DisableActionBtnForDisguise",    		
			except = false,                                 		
			buttons = PlayerPad.ACTION      	
		}
		this.padMaskRecoverTimer = this.currentTime + 1
	elseif toggle == false then
		Player.ResetPadMask{
			settingName = "DisableActionBtnForDisguise"
		}
		this.padMaskRecoverTimer = nil
	elseif toggle == nil then --When toggle is nil, check timer!
		if this.padMaskRecoverTimer ~= nil then
			if this.padMaskRecoverTimer <= this.currentTime then
				this.DisableActionButton(false)
			end
		end
	end
end
--Retrieve info on soldier for the right disguise
function this.GetDisguiseType( bodyId )
	if this.disguiseParts ~= nil and next(this.disguiseParts) then
		for x,disguiseType in ipairs(this.disguiseParts)do
			local soldierIds = disguiseType.ids
			if soldierIds ~= nil and next(soldierIds) then
				for y, id in ipairs(soldierIds)do
					if id == bodyId then
						return x
					end
				end
			end
		end
	end
	return 0
end
function this.GetCurrentDisguiseLabel() 
	local typeOf = svars.DisguiseSystemType
	if typeOf > 0 then return this.disguiseParts[typeOf].label end
	return ""
end
function this.GetCurrentDisguiseParts() 
	--If we're not using OSP, force the disguise!
	if this.IsPlayerDisguiseForced() == true then 
		local disguiseType = this.ZVar("ZipDisguiseType")
		return this.disguiseParts[disguiseType].parts 
	end
	--If using OSP, check for what kind of disguise we have!
	local typeOf = svars.DisguiseSystemType
	if typeOf > 0 then return this.disguiseParts[typeOf].parts end
	return nil
end
--To check if we're using enemy weapons.
function this.GetCurrentDisguiseEqps() 
	local typeOf = svars.DisguiseSystemType
	if typeOf > 0 then return this.disguiseParts[typeOf].eqps end
	return nil
end
function this.PlayerHasEnemyWeapon()
	local curEqps = this.GetCurrentDisguiseEqps() 
	for i, eqpId in ipairs(curEqps)do
		if vars.weapons[TppDefine.WEAPONSLOT.PRIMARY_HIP] == eqpId 
		or vars.weapons[TppDefine.WEAPONSLOT.PRIMARY_BACK] == eqpId 
		or vars.weapons[TppDefine.WEAPONSLOT.SECONDARY] == eqpId 
		then return true end
	end
	return false
end
--In case you wish to force an outfit instead of acquire it.
function this.IsPlayerDisguiseForced()
	if this.ZVar("ZipDisguiseType") > 0 then return true end
	return false
end
--Messages, or triggers for the disguise system
function this.OnCarried(gameObjectId, carriedState) --Obtain disguise from picking up soldier
	if this.ZVar("ZipDisAcquireCarry") >= 1 then this.ObtainedUniform(gameObjectId) end 
end 
function this.OnFulton( gameObjectId ) --Fultons obtain and switch to disguise
	if this.ZVar("ZipDisFulton") >= 1 then this.ObtainedUniform(gameObjectId, true) end 
end 
function this.OnPlayerTrashBox() --Taking a dip in the dumpster changes it.
	if this.ZVar("ZipDisDumpster") >= 1 then this.SwitchOutfit() end 
end
function this.OnPlayerToilet() --Entering the stall changes it
	if this.ZVar("ZipDisToilet") >= 1 then this.SwitchOutfit() end 
end
function this.OnChangePhase(cpId, phase) this.currentPhase = phase end --Keep track of the current phase!
return this