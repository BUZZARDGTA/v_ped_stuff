<?xml version="1.0"?>
<ParserSchema xmlns="http://www.rockstargames.com/RageParserSchema"
 generate="class">

  <enumdef type="ePedConfigFlags" generate="bitset">
    <enumval name="CPED_CONFIG_FLAG_CreatedByFactory"/>
    <enumval name="CPED_CONFIG_FLAG_CanBeShotInVehicle" description="script can stop peds being shot when driving vehicle (including exposed ones like bikes)"/>
    <enumval name="CPED_CONFIG_FLAG_NoCriticalHits" description="ped cannot be killed by a single bullet"/>
    <enumval name="CPED_CONFIG_FLAG_DrownsInWater" description="does this ped drown or swim?"/>
    <enumval name="CPED_CONFIG_FLAG_DrownsInSinkingVehicle" description="does this ped take damage whilst in a sinking vehicle?"/>
    <enumval name="CPED_CONFIG_FLAG_DiesInstantlyWhenSwimming" description="Ped cannot swim and will die as soon as they are required to swim"/>
    <enumval name="CPED_CONFIG_FLAG_HasBulletProofVest" description="is this ped wearing a bullet proof vest"/>
    <enumval name="CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly" description="force ped to play only upper body damage anims from weapons"/>
    <enumval name="CPED_CONFIG_FLAG_NeverFallOffSkis" description="Ped will never fall over on skis"/>
    <enumval name="CPED_CONFIG_FLAG_NeverEverTargetThisPed" description="script control over player targeting"/>
    <enumval name="CPED_CONFIG_FLAG_ThisPedIsATargetPriority" description="script control over player targeting"/>
    <enumval name="CPED_CONFIG_FLAG_TargettableWithNoLos" description="script control over player targeting"/>
    <enumval name="CPED_CONFIG_FLAG_DoesntListenToPlayerGroupCommands" description="script can set this so ped will be in players group but not reacting to commands"/>
    <enumval name="CPED_CONFIG_FLAG_NeverLeavesGroup"/>
    <enumval name="CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead" description="script command"/>
    <enumval name="CPED_CONFIG_FLAG_SetDelayedWeaponAsCurrent" description="when the peds delayed weapon finally loads, set it as the peds current weapon"/>
    <enumval name="CPED_CONFIG_FLAG_KeepTasksAfterCleanUp" description="If true ped will carry on with task even after script ped cleanup"/>
    <enumval name="CPED_CONFIG_FLAG_BlockNonTemporaryEvents" description="! Set to block any events that might interrupt the currently running tasks."/>
    <enumval name="CPED_CONFIG_FLAG_HasAScriptBrain"/>
    <enumval name="CPED_CONFIG_FLAG_WaitingForScriptBrainToLoad"/>
    <enumval name="CPED_CONFIG_FLAG_AllowMedicsToReviveMe" description="never allow this ped to be revived"/>
    <enumval name="CPED_CONFIG_FLAG_MoneyHasBeenGivenByScript" description="script can give specific amount of money to ped (script peds don't drop any money by default)"/>
    <enumval name="CPED_CONFIG_FLAG_NotAllowedToCrouch" description="Is this ped allowed to crouch at all?"/>
    <enumval name="CPED_CONFIG_FLAG_DeathPickupsPersist" description="script command to control what type of pickups are created when ped dies"/>
    <enumval name="CPED_CONFIG_FLAG_IgnoreSeenMelee" description="script command so ped doesn't stop to watch fights"/>
    <enumval name="CPED_CONFIG_FLAG_ForceDieIfInjured" description="script command so missions peds die if injured"/>
    <enumval name="CPED_CONFIG_FLAG_DontDragMeOutCar" description="force this ped can't be carjacked"/>
    <enumval name="CPED_CONFIG_FLAG_StayInCarOnJack" description="script sets this to keep peds in car when the player steals it"/>
    <enumval name="CPED_CONFIG_FLAG_ForceDieInCar" description="don't fall out car if killed"/>
    <enumval name="CPED_CONFIG_FLAG_GetOutUndriveableVehicle" description="script can stop peds automatically getting out of vehicle when it's upside down or undrivable(for races and stuff)"/>
    <enumval name="CPED_CONFIG_FLAG_WillRemainOnBoatAfterMissionEnds" description="script can stop peds automatically leaving boats when they become random chars, after a script quits"/>
    <enumval name="CPED_CONFIG_FLAG_DontStoreAsPersistent" description="Some peds (like mission peds) should not be stored as persistent."/>
    <enumval name="CPED_CONFIG_FLAG_WillFlyThroughWindscreen"/>
    <enumval name="CPED_CONFIG_FLAG_DieWhenRagdoll"/>
    <enumval name="CPED_CONFIG_FLAG_HasHelmet" description="currently has helmet equipped?"/>
    <enumval name="CPED_CONFIG_FLAG_UseHelmet" description="will the ped try to put on their helmet?"/>
    <enumval name="CPED_CONFIG_FLAG_DontTakeOffHelmet" description="the ped will not take off their helmet (if equipped) while this is set"/>
    <enumval name="CPED_CONFIG_FLAG_HideInCutscene"/>
    <enumval name="CPED_CONFIG_FLAG_PedIsEnemyToPlayer"/>
    <enumval name="CPED_CONFIG_FLAG_DisableEvasiveDives"/>
    <enumval name="CPED_CONFIG_FLAG_PedGeneratesDeadBodyEvents" description="Generates shocking events as if dead"/>
    <enumval name="CPED_CONFIG_FLAG_DontAttackPlayerWithoutWantedLevel"/>
    <enumval name="CPED_CONFIG_FLAG_DontInfluenceWantedLevel" description="Can do any crime against this character and the cops turn a blind eye (no crime reported)"/>
    <enumval name="CPED_CONFIG_FLAG_DisablePlayerLockon"/>
    <enumval name="CPED_CONFIG_FLAG_DisableLockonToRandomPeds"/>
    <enumval name="CPED_CONFIG_FLAG_AllowLockonToFriendlyPlayers"/>
    <enumval name="CPED_CONFIG_FLAG_DisableHornAudioWhenDead " description="Disable the horn when a ped dies in the car and has his head against the wheel"/>
    <enumval name="CPED_CONFIG_FLAG_PedBeingDeleted"/>
    <enumval name="CPED_CONFIG_FLAG_BlockWeaponSwitching" description="Disable weapon switching while this is set"/>
    <enumval name="CPED_CONFIG_FLAG_BlockGroupPedAimedAtResponse" description="Disable the behaviour which causes player-group peds to crouch when the player aims at them"/>
    <enumval name="CPED_CONFIG_FLAG_WillFollowLeaderAnyMeans" description="Basically defines whether group peds will use cars etc to follow their leader (default=false)"/>
    <enumval name="CPED_CONFIG_FLAG_BlippedByScript" description="Set to true if the char has ever been blipped, not 100% correct so don't use it on anything sensitive."/>
    <enumval name="CPED_CONFIG_FLAG_DrawRadarVisualField" description="Draw this peds visual field in the stealth radar"/>
    <enumval name="CPED_CONFIG_FLAG_StopWeaponFiringOnImpact" description="Set to true to stop the peds weapon firing on impact when they drop it"/>
    <enumval name="CPED_CONFIG_FLAG_DissableAutoFallOffTests" description="Set to true to stop ped scanning for things to fall off when shot by the player"/>
    <enumval name="CPED_CONFIG_FLAG_SteerAroundDeadBodies" description="Forces peds to steer around dead bodies, the default is false."/>
    <enumval name="CPED_CONFIG_FLAG_ConstrainToNavMesh" description="Ped is constrained to navmesh's surface"/>
    <enumval name="CPED_CONFIG_FLAG_SyncingAnimatedProps" description="Set this to true if the ped should attempt to synchronise the animations of an attached prop to its movement anims"/>
    <enumval name="CPED_CONFIG_FLAG_IsFiring"/>
    <enumval name="CPED_CONFIG_FLAG_WasFiring"/>
    <enumval name="CPED_CONFIG_FLAG_IsStanding" description="is ped standing on something"/>
    <enumval name="CPED_CONFIG_FLAG_WasStanding" description="was the ped standing last frame"/>
    <enumval name="CPED_CONFIG_FLAG_InVehicle" description="is in a vehicle"/>
    <enumval name="CPED_CONFIG_FLAG_OnMount"/>
    <enumval name="CPED_CONFIG_FLAG_AttachedToVehicle" description="is attached to a vehicle"/>
    <enumval name="CPED_CONFIG_FLAG_IsSwimming" description="is ped swimming in water  "/>
    <enumval name="CPED_CONFIG_FLAG_WasSwimming" description="was the ped swimming in water last frame"/>
    <enumval name="CPED_CONFIG_FLAG_IsSkiing" description="is the ped skiing"/>
    <enumval name="CPED_CONFIG_FLAG_IsSitting" description="is the ped sitting"/>
    <enumval name="CPED_CONFIG_FLAG_KilledByStealth" description="Determines if this ped was killed by a stealth action"/>
    <enumval name="CPED_CONFIG_FLAG_KilledByTakedown" description="Determines if this ped was killed by a takedown action"/>
    <enumval name="CPED_CONFIG_FLAG_Knockedout" description="Determines if this ped was finished with a knockout action"/>
    <enumval name="CPED_CONFIG_FLAG_ClearRadarBlipOnDeath" description="so peds automatically given blips will clear them again when they die (mainly used for peds recruited into players group)"/>
    <enumval name="CPED_CONFIG_FLAG_JustGotOffTrain" description="train code uses this when grabbing random peds to get in trains"/>
    <enumval name="CPED_CONFIG_FLAG_JustGotOnTrain" description="train code uses this when grabbing random peds to get in trains"/>
    <enumval name="CPED_CONFIG_FLAG_UsingCoverPoint" description="set to true when a ped is in process of using a cover point"/>
    <enumval name="CPED_CONFIG_FLAG_IsInTheAir" description="is in the air"/>
    <enumval name="CPED_CONFIG_FLAG_KnockedUpIntoAir" description="has ped been knocked up into the air by a car collision"/>
    <enumval name="CPED_CONFIG_FLAG_IsAimingGun" description="is ped aiming gun"/>
    <enumval name="CPED_CONFIG_FLAG_HasJustLeftCar" description="used by navigation to force scan for cars collisions"/>
    <enumval name="CPED_CONFIG_FLAG_TargetWhenInjuredAllowed"/>
    <enumval name="CPED_CONFIG_FLAG_CurrLeftFootCollNM" description="footprints"/>
    <enumval name="CPED_CONFIG_FLAG_PrevLeftFootCollNM" description="footprints"/>
    <enumval name="CPED_CONFIG_FLAG_CurrRightFootCollNM" description="footprints"/>
    <enumval name="CPED_CONFIG_FLAG_PrevRightFootCollNM" description="footprints"/>
    <enumval name="CPED_CONFIG_FLAG_HasBeenBumpedInCar" description="Has this ped been bumped by a car while driving?"/>
    <enumval name="CPED_CONFIG_FLAG_InWaterTaskQuitToClimbLadder" description="The in-water task has just quit in response to a ladder-climb request"/>
    <enumval name="CPED_CONFIG_FLAG_NMTwoHandedWeaponBothHandsConstrained" description="when using physical 2-handed weapons, both hands have been latched to the gun model (used when sending ConfigureCharacter to NM)"/>
    <enumval name="CPED_CONFIG_FLAG_CreatedBloodPoolTimer"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromAnyPedImpact"/>
    <enumval name="CPED_CONFIG_FLAG_GroupPedFailedToEnterCover"/>
    <enumval name="CPED_CONFIG_FLAG_AlreadyChattedOnPhone"/>
    <enumval name="CPED_CONFIG_FLAG_AlreadyReactedToPedOnRoof"/>
    <enumval name="CPED_CONFIG_FLAG_ForcePedLoadCover" description="Set by the script to force a ped to load cover"/>
    <enumval name="CPED_CONFIG_FLAG_BlockCoweringInCover"/>
    <enumval name="CPED_CONFIG_FLAG_BlockPeekingInCover"/>
    <enumval name="CPED_CONFIG_FLAG_JustLeftCarNotCheckedForDoors" description="Set when a ped exits a car.  The first time he he moves he should check for door obstructions."/>
    <enumval name="CPED_CONFIG_FLAG_VaultFromCover"/>
    <enumval name="CPED_CONFIG_FLAG_AutoConversationLookAts"/>
    <enumval name="CPED_CONFIG_FLAG_UsingCrouchedPedCapsule" description="Set to indicate that the ped's bounds are in the crouched configuration"/>
    <enumval name="CPED_CONFIG_FLAG_HasDeadPedBeenReported" description="Whether this ped has been investigated (for dead peds)"/>
    <enumval name="CPED_CONFIG_FLAG_ForcedAim" description="If set, we will always behave like we have the aim trigger pressed"/>
    <enumval name="CPED_CONFIG_FLAG_SteersAroundPeds" description="Enables/disables the low-level steering behaviour around peds and objects"/>
    <enumval name="CPED_CONFIG_FLAG_SteersAroundObjects" description="Enables/disables the low-level steering behaviour around peds and objects"/>
    <enumval name="CPED_CONFIG_FLAG_OpenDoorArmIK" description="Set if the ped should enable open door arm IK"/>
    <enumval name="CPED_CONFIG_FLAG_ForceReload" description="Force a reload of the current weapon" hideFrom="script"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromVehicleImpact" description="Blocks ragdoll activation when hit by a vehicle"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromBulletImpact" description="Blocks ragdoll activation when hit by a bullet"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromExplosions" description="Blocks ragdoll activation when hit by an explosive"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromFire" description="Blocks ragdoll activation when set on fire"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromElectrocution" description="Blocks ragdoll activation when electrocuted"/>
    <enumval name="CPED_CONFIG_FLAG_IsBeingDraggedToSafety" description="Whether this ped is being dragged to safety"/>
    <enumval name="CPED_CONFIG_FLAG_HasBeenDraggedToSafety" description="Whether this ped has been dragged to safety"/>
    <enumval name="CPED_CONFIG_FLAG_KeepWeaponHolsteredUnlessFired" description="Ignores the creation of the weapon object unless the gun is shot."/>
    <enumval name="CPED_CONFIG_FLAG_ForceScriptControlledKnockout" description="Forces a melee knockout state for the victim ped"/>
    <enumval name="CPED_CONFIG_FLAG_FallOutOfVehicleWhenKilled" description="Forces a ped to fall out of a vehicle when killed"/>
    <enumval name="CPED_CONFIG_FLAG_GetOutBurningVehicle" description="If set, a ped will escape a burning vehicle they are inside "/>
    <enumval name="CPED_CONFIG_FLAG_BumpedByPlayer" description="Whether this ped has been bumped by the player."/>
    <enumval name="CPED_CONFIG_FLAG_RunFromFiresAndExplosions" description="If set, a ped will run away from fires or potential explosions "/>
    <enumval name="CPED_CONFIG_FLAG_TreatAsPlayerDuringTargeting" description="If set, the ped will be given the same boost a player gets in the targeting scoring system."/>
    <enumval name="CPED_CONFIG_FLAG_IsHandCuffed" description="indicates if the ped is currently hand cuffed"/>
    <enumval name="CPED_CONFIG_FLAG_IsAnkleCuffed" description="indicates if the ped is currently ankle cuffed"/>
    <enumval name="CPED_CONFIG_FLAG_DisableMelee" description="Disables the melee for a particular ped"/>
    <enumval name="CPED_CONFIG_FLAG_DisableUnarmedDrivebys" description="Disables unarmed driveby taunts for ped"/>
    <enumval name="CPED_CONFIG_FLAG_JustGetsPulledOutWhenElectrocuted" description="MP only, if ped is electrocuted or rubber bulletted, players jacking the ped will just pull them out"/>
    <enumval name="CPED_CONFIG_FLAG_UNUSED_REPLACE_ME"/>
    <enumval name="CPED_CONFIG_FLAG_WillNotHotwireLawEnforcementVehicle" description="True if the ped will skip hotwiring a law enforcement vehicle if it needs to be hotwired"/>
    <enumval name="CPED_CONFIG_FLAG_WillCommandeerRatherThanJack" description="True if the ped will try to commandeer a vehicle rather than jack if possible"/>
    <enumval name="CPED_CONFIG_FLAG_CanBeAgitated" description="True if the ped will respond to agitation events"/>
    <enumval name="CPED_CONFIG_FLAG_ForcePedToFaceLeftInCover" description="If set ped will turn to face left in cover"/>
    <enumval name="CPED_CONFIG_FLAG_ForcePedToFaceRightInCover" description="If set ped will turn to face right in cover"/>
    <enumval name="CPED_CONFIG_FLAG_BlockPedFromTurningInCover" description="If set ped will not turn in cover, unless one of the force flags is set"/>
    <enumval name="CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp" description="Will allow the ped to keep their relationship group after mission cleanup as opposed to going back to default"/>
    <enumval name="CPED_CONFIG_FLAG_ForcePedToBeDragged" description="Forces Ped To Loop Try Locked Door Anim In Order To Be Dragged Along When Vehicle Moves"/>
    <enumval name="CPED_CONFIG_FLAG_PreventPedFromReactingToBeingJacked" description="Ped doesn't react when being jacked"/>
    <enumval name="CPED_CONFIG_FLAG_IsScuba" description="indicates if the ped is currently equipped for scuba"/>
    <enumval name="CPED_CONFIG_FLAG_WillArrestRatherThanJack" description="For cops arresting peds in vehicles"/>
    <enumval name="CPED_CONFIG_FLAG_RemoveDeadExtraFarAway" description="We must be further away before ped polulation remove this ped when it is dead"/>
    <enumval name="CPED_CONFIG_FLAG_RidingTrain" description="True if the ped is riding a train"/>
    <enumval name="CPED_CONFIG_FLAG_ArrestResult" description="True if the arrest task succeeded"/>
    <enumval name="CPED_CONFIG_FLAG_CanAttackFriendly" description="True allows this ped to attack peds theya re friendly with"/>
    <enumval name="CPED_CONFIG_FLAG_WillJackAnyPlayer" description="True if this player ped can jack any other player (MP Only)"/>
    <enumval name="CPED_CONFIG_FLAG_BumpedByPlayerVehicle" description="Whether this ped has been bumped by a player vehicle."/>
    <enumval name="CPED_CONFIG_FLAG_DodgedPlayerVehicle" description="Whether this ped has just dodged a player vehicle."/>
    <enumval name="CPED_CONFIG_FLAG_WillJackWantedPlayersRatherThanStealCar" description="True if this player will jack wanted passengers rather than try to steal a car (cops arresting crims) (MP Only)"/>
    <enumval name="CPED_CONFIG_FLAG_NoCopWantedAggro" description="If this flag is set on a cap, skip some of the code that would normally make them extra aggressive and alert."/>
    <enumval name="CPED_CONFIG_FLAG_DisableLadderClimbing" description="If this flag is set on a ped it will not scan for or climb ladders"/>
    <enumval name="CPED_CONFIG_FLAG_StairsDetected" description="If this flag is set on a ped it has detected stairs"/>
    <enumval name="CPED_CONFIG_FLAG_SlopeDetected" description="If this flag is set on a ped it has detected a slope"/>
    <enumval name="CPED_CONFIG_FLAG_HelmetHasBeenShot" description="If this flag is set on a ped it's helmet has been damaged"/>
    <enumval name="CPED_CONFIG_FLAG_CowerInsteadOfFlee" description="If set, the ped will cower in place rather than flee, used. Used for scenarios in confined spaces."/>
    <enumval name="CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown" description="If set the ped will be allowed to ragdoll when the vehicle they are in gets turned upside down if the seat supports it."/>
    <enumval name="CPED_CONFIG_FLAG_AlwaysRespondToCriesForHelp" description="If set, the ped will respond to CEventInjuredCryForHelp regardless if it is allied with the injured ped."/>
    <enumval name="CPED_CONFIG_FLAG_DisableBloodPoolCreation"/>
    <enumval name="CPED_CONFIG_FLAG_ShouldFixIfNoCollision" description="If set, the ped will be fixed if there is no collision around."/>
    <enumval name="CPED_CONFIG_FLAG_CanPerformArrest" description="If set, the ped can perform arrests on peds that can be arrested"/>
    <enumval name="CPED_CONFIG_FLAG_CanPerformUncuff" description="If set, the ped can uncuff peds that are handcuffed"/>
    <enumval name="CPED_CONFIG_FLAG_CanBeArrested" description="If set, the ped may be arrested"/>
    <enumval name="CPED_CONFIG_FLAG_MoverConstrictedByOpposingCollisions" description="If set, the ped's mover is getting collisions from opposing sides."/>
    <enumval name="CPED_CONFIG_FLAG_PlayerPreferFrontSeatMP" description="When true, Prefer the front seat when getting in a car with buddies."/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromImpactObject"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromMelee"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromWaterJet"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromDrowning"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromFalling"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromRubberBullet"/>
    <enumval name="CPED_CONFIG_FLAG_IsInjured" description="When true, the ped will use injured movement anim sets and getup animations."/>
    <enumval name="CPED_CONFIG_FLAG_DontEnterVehiclesInPlayersGroup" description="When true, will follow the player around if in their group but wont enter vehicles."/>
    <enumval name="CPED_CONFIG_FLAG_SwimmingTasksRunning" description="stronger than IsSwimming, persists so long as the tasks are active"/>
    <enumval name="CPED_CONFIG_FLAG_PreventAllMeleeTaunts" description="Disable all melee taunts for this particular ped"/>
    <enumval name="CPED_CONFIG_FLAG_ForceDirectEntry" description="Will force this ped to use the direct entry point for any vehicle they try to enter, or warp in"/>
    <enumval name="CPED_CONFIG_FLAG_AlwaysSeeApproachingVehicles" description="This ped will always see approaching vehicles (even from behind)."/>
    <enumval name="CPED_CONFIG_FLAG_CanDiveAwayFromApproachingVehicles" description="This ped can dive away from approaching vehicles."/>
    <enumval name="CPED_CONFIG_FLAG_AllowPlayerToInterruptVehicleEntryExit" description="Will allow player to interrupt a peds scripted entry/exit task as if they had triggered it themselves"/>
    <enumval name="CPED_CONFIG_FLAG_OnlyAttackLawIfPlayerIsWanted" description="This ped won't attack cops unless the player is wanted."/>
    <enumval name="CPED_CONFIG_FLAG_PlayerInContactWithKinematicPed" description="Gets set to true if the player ped is colliding against a ped in kinematic mode."/>
    <enumval name="CPED_CONFIG_FLAG_PlayerInContactWithSomethingOtherThanKinematicPed" description="Gets set to true if the player ped is colliding against something which isn't a ped in kinematic mode."/>
    <enumval name="CPED_CONFIG_FLAG_PedsJackingMeDontGetIn" description="If set any ped jacking this ped will not get in as part of the jack."/>
    <enumval name="CPED_CONFIG_FLAG_AdditionalRappellingPed"/>
    <enumval name="CPED_CONFIG_FLAG_PedIgnoresAnimInterruptEvents" description="AI peds only, will not early out of anims"/>
    <enumval name="CPED_CONFIG_FLAG_IsInCustody" description="Signifies a player is in custody"/>
    <enumval name="CPED_CONFIG_FLAG_ForceStandardBumpReactionThresholds" description="By default, armed and friendly peds have increased resistance to being bumped by players and friendly vehicles. Setting this flag will make them use the standard thresholds instead."/>
    <enumval name="CPED_CONFIG_FLAG_LawWillOnlyAttackIfPlayerIsWanted" description="If set, this ped can only be attacked by law if the player is wanted"/>
    <enumval name="CPED_CONFIG_FLAG_IsAgitated" description="If set, this ped is agitated."/>
    <enumval name="CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat" description="MP only, prevents passenger from auto shuffling over to drivers seat if it becomes free."/>
    <enumval name="CPED_CONFIG_FLAG_UseKinematicModeWhenStationary" description="When enabled, the ped will continually set the kinematic mode reset flag when stationary."/>
    <enumval name="CPED_CONFIG_FLAG_EnableWeaponBlocking" description="When enabled, Non-player peds can use WeaponBlocking behaviors"/>
    <enumval name="CPED_CONFIG_FLAG_HasHurtStarted"/>
    <enumval name="CPED_CONFIG_FLAG_DisableHurt" description="Will prevent the peds go into hurt combat mode"/>
    <enumval name="CPED_CONFIG_FLAG_PlayerIsWeird" description="Should this player ped periodically generate shocking events for being weird."/>
    <enumval name="CPED_CONFIG_FLAG_PedHadPhoneConversation" description="Has this ped had a phone conversation before."/>
    <enumval name="CPED_CONFIG_FLAG_BeganCrossingRoad" description="Indicates ped started crossing the road in case of interruption."/>
    <enumval name="CPED_CONFIG_FLAG_WarpIntoLeadersVehicle" description="Warp into leaders vehicle"/>
    <enumval name="CPED_CONFIG_FLAG_DoNothingWhenOnFootByDefault" description="Do nothing when on foot by default"/>
    <enumval name="CPED_CONFIG_FLAG_UsingScenario" description="Set when the ped is using a scenario. Call CPed::UpdateSpatialArrayTypeFlags() if changing."/>
    <enumval name="CPED_CONFIG_FLAG_VisibleOnScreen" description="Set when the ped is visible on screen, as determined by CPedAILodManager."/>
    <enumval name="CPED_CONFIG_FLAG_DontCollideWithKinematic" description="If true, the ped will not collide with other kinematic peds."/>
    <enumval name="CPED_CONFIG_FLAG_ActivateOnSwitchFromLowPhysicsLod" description="If set, activate physics when switching from low to regular physics LOD."/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollOnPedCollisionWhenDead" description="Peds with this flag set won't be allowed to reactivate their ragdoll when hit by another ragdoll."/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollOnVehicleCollisionWhenDead" description="Peds with this flag set won't be allowed to reactivate their ragdoll when hit by a vehicle."/>
    <enumval name="CPED_CONFIG_FLAG_HasBeenInArmedCombat" description="Is set if this ped has ever been in armed combat"/>
    <enumval name="CPED_CONFIG_FLAG_UseDiminishingAmmoRate" description="Set for when we want to diminish the ammo at a slower rate. Used specifically in cases where AI do not have infinite ammo."/>
    <enumval name="CPED_CONFIG_FLAG_Avoidance_Ignore_All" description="This ped won't steer around anyone"/>
    <enumval name="CPED_CONFIG_FLAG_Avoidance_Ignored_by_All" description="Other peds won't steer around this ped"/>
    <enumval name="CPED_CONFIG_FLAG_Avoidance_Ignore_Group1" description="This ped won't steer around peds marked group 1"/>
    <enumval name="CPED_CONFIG_FLAG_Avoidance_Member_of_Group1" description="This ped is marked as a member of avoidance group 1"/>
    <enumval name="CPED_CONFIG_FLAG_ForcedToUseSpecificGroupSeatIndex" description="Ped is forced to use specific seat index set by SET_PED_GROUP_MEMBER_PASSENGER_INDEX"/>
    <enumval name="CPED_CONFIG_FLAG_LowPhysicsLodMayPlaceOnNavMesh" description="If set, peds in low lod physics will be placed so that their feet rest on the navmesh"/>
    <enumval name="CPED_CONFIG_FLAG_DisableExplosionReactions" description="If set, peds will disable all explosion reactions"/>
    <enumval name="CPED_CONFIG_FLAG_DodgedPlayer" description="Whether this ped has just dodged a player."/>
    <enumval name="CPED_CONFIG_FLAG_WaitingForPlayerControlInterrupt" description="Set when player switches to an ai ped and keeps the scripted task of the ai ped"/>
    <enumval name="CPED_CONFIG_FLAG_ForcedToStayInCover" description="Ped won't move out of cover when set (not even to fire)."/>
    <enumval name="CPED_CONFIG_FLAG_GeneratesSoundEvents" description="Does this ped generate sound events?"/>
    <enumval name="CPED_CONFIG_FLAG_ListensToSoundEvents" description="Does this ped have the ability to respond to sound events?"/>
    <enumval name="CPED_CONFIG_FLAG_AllowToBeTargetedInAVehicle" description="Ped can be targeting inside a vehicle"/>
    <enumval name="CPED_CONFIG_FLAG_WaitForDirectEntryPointToBeFreeWhenExiting" description=""/>
    <enumval name="CPED_CONFIG_FLAG_OnlyRequireOnePressToExitVehicle" description=""/>
    <enumval name="CPED_CONFIG_FLAG_ForceExitToSkyDive" description=""/>
    <enumval name="CPED_CONFIG_FLAG_SteersAroundVehicles" description="Enables/disables the low-level steering behaviour around vehicles"/>
    <enumval name="CPED_CONFIG_FLAG_AllowPedInVehiclesOverrideTaskFlags" description="If set, allow the ped to be set in vehicles even if the ped's TaskData would otherwise disallow it."/>
    <enumval name="CPED_CONFIG_FLAG_DontEnterLeadersVehicle" description="If set, the ped will not enter the leader's vehicle."/>
    <enumval name="CPED_CONFIG_FLAG_DisableExitToSkyDive" description=""/>
    <enumval name="CPED_CONFIG_FLAG_ScriptHasDisabledCollision" description="Script disabled collision on this ped via SET_ENTITY_COLLISION, this leaves on collision against explosions and weapons"/>
    <enumval name="CPED_CONFIG_FLAG_UseAmbientModelScaling" description="This ped is drawn randomly scaled from [0.5,1.0]"/>
    <enumval name="CPED_CONFIG_FLAG_DontWatchFirstOnNextHurryAway" description="Hurry away without watching the next time this ped runs CTaskHurryAway."/>
    <enumval name="CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse" description="make EVENT_POTENTIAL_BE_WALKED_INTO not affect this ped."/>
    <enumval name="CPED_CONFIG_FLAG_DisablePedAvoidance" description="This ped will not avoid other peds whilst navigating"/>
    <enumval name="CPED_CONFIG_FLAG_ForceRagdollUponDeath" description="When the ped dies, it will ragdoll instead of potentially choosing an animated death."/>
    <enumval name="CPED_CONFIG_FLAG_CanLosePropsOnDamage" description="When ped receives damage any prop glasses could be knocked off"/>
    <enumval name="CPED_CONFIG_FLAG_DisablePanicInVehicle"/>
    <enumval name="CPED_CONFIG_FLAG_AllowedToDetachTrailer" description="Allow this ped to detach trailers from vehicles"/>
    <enumval name="CPED_CONFIG_FLAG_HasShotBeenReactedToFromFront"/>
    <enumval name="CPED_CONFIG_FLAG_HasShotBeenReactedToFromBack"/>
    <enumval name="CPED_CONFIG_FLAG_HasShotBeenReactedToFromLeft"/>
    <enumval name="CPED_CONFIG_FLAG_HasShotBeenReactedToFromRight"/>
    <enumval name="CPED_CONFIG_FLAG_AllowBlockDeadPedRagdollActivation" description="If set, the ragdoll activation blocking flags can be used to disable activation of dead peds. Otherwise, by default, dead peds can always activate their ragdolls"/>
    <enumval name="CPED_CONFIG_FLAG_IsHoldingProp" description="True if the ped is currently holding a prop."/>
    <enumval name="CPED_CONFIG_FLAG_BlocksPathingWhenDead" description="When this ped dies their body will block all pathfinding modes - not just wandering."/>
    <enumval name="CPED_CONFIG_FLAG_ForcePlayNormalScenarioExitOnNextScriptCommand" description="The next time this ped leaves a scenario to perform some script task they will be forced into their normal scenario exit."/>
    <enumval name="CPED_CONFIG_FLAG_ForcePlayImmediateScenarioExitOnNextScriptCommand" description="The next time this ped leaves a scneario to perform some script task they will be forced into their immediate (blend out) exit."/>
    <enumval name="CPED_CONFIG_FLAG_ForceSkinCharacterCloth" description="Force character cloth to stay skinned immediately after being created. If flag is not set then character cloth is not forced to be skinned when created."/>
    <enumval name="CPED_CONFIG_FLAG_LeaveEngineOnWhenExitingVehicles" description="The player will leave the engine running when leaving vehicles"/>
    <enumval name="CPED_CONFIG_FLAG_PhoneDisableTextingAnimations" description="tells taskmobile phone to not texting animations.  Currently don't play these in MP"/>
    <enumval name="CPED_CONFIG_FLAG_PhoneDisableTalkingAnimations" description="tells taskmobile phone to not talking animations.  Currently don't play these in MP"/>
    <enumval name="CPED_CONFIG_FLAG_PhoneDisableCameraAnimations" description="tells taskmobile phone to not camera animations.  Currently don't play these in SP"/>
    <enumval name="CPED_CONFIG_FLAG_DisableBlindFiringInShotReactions" description="Stops the ped from accidentally blind firing it's weapon when doing an nm shot reaction"/>
    <enumval name="CPED_CONFIG_FLAG_AllowNearbyCoverUsage" description="This makes it so that OTHER peds are allowed to take cover at points that would otherwise be rejected due to proximity"/>
    <enumval name="CPED_CONFIG_FLAG_InStrafeTransition" description="True if in strafe transition."/>
    <enumval name="CPED_CONFIG_FLAG_CanPlayInCarIdles"  description="If false, blocks in-car idle animations from playing."/>
    <enumval name="CPED_CONFIG_FLAG_CanAttackNonWantedPlayerAsLaw" description="If this is a law ped then it will ignore the player wanted level clean check in combat and continue attacking"/>
    <enumval name="CPED_CONFIG_FLAG_WillTakeDamageWhenVehicleCrashes" description="Ped gets damaged when the vehicle they are in crashes"/>
    <enumval name="CPED_CONFIG_FLAG_AICanDrivePlayerAsRearPassenger" description="If this ai ped is driving the vehicle, if the player taps to enter, they will enter as a rear passenger, if they hold, they'll jack the driver"/>
    <enumval name="CPED_CONFIG_FLAG_PlayerCanJackFriendlyPlayers" description="If a friendly player is driving the vehicle, if the player taps to enter, they will enter as a passenger, if they hold, they'll jack the driver"/>
    <enumval name="CPED_CONFIG_FLAG_OnStairs" description="Are we on stairs?"/>
    <enumval name="CPED_CONFIG_FLAG_SimulatingAiming"  description="Simulating the aim button for player until on input detection."/>
    <enumval name="CPED_CONFIG_FLAG_AIDriverAllowFriendlyPassengerSeatEntry" description="If this ai ped is driving the vehicle, allow players to get in passenger seats"/>
    <enumval name="CPED_CONFIG_FLAG_ParentCarIsBeingRemoved" description="Set on the target ped if the car they are in is being removed to avoid an expensive detach check"/>
    <enumval name="CPED_CONFIG_FLAG_AllowMissionPedToUseInjuredMovement" description="Set the target ped to be allowed to use Injured movement clips"/>
    <enumval name="CPED_CONFIG_FLAG_CanLoseHelmetOnDamage" description="When ped receives a head shot then a helmet can be knocked off"/>
    <enumval name="CPED_CONFIG_FLAG_NeverDoScenarioExitProbeChecks" description="When this ped exits a scenario they ignore probe checks against the environment and just pick an exit clip."/>
    <enumval name="CPED_CONFIG_FLAG_SuppressLowLODRagdollSwitchWhenCorpseSettles" description="This will suppress the automatic switch to a lower ragdoll LOD when switching to the ragdoll frame after dying."/>
    <enumval name="CPED_CONFIG_FLAG_PreventUsingLowerPrioritySeats" description="Don't use certain seats (like hanging on the side of a vehicle)"/>
    <enumval name="CPED_CONFIG_FLAG_JustLeftVehicleNeedsReset" description="Set when leaving a vehicle and disabling collision with the vehicle exiting to indicate we need to clear out the disabling"/>
    <enumval name="CPED_CONFIG_FLAG_TeleportIfCantReachPlayer" description="If this ped is following the player and stuck in a place where he can't be reached, teleport when possible."/>
    <enumval name="CPED_CONFIG_FLAG_PedsInVehiclePositionNeedsReset" description="Ped was being jacked/killed but isn't anymore, ensure they're in the seat"/>
    <enumval name="CPED_CONFIG_FLAG_PedsFullyInSeat" description="Ped is fully in the seat (Set after the position needs reset flag)"/>
    <enumval name="CPED_CONFIG_FLAG_AllowPlayerLockOnIfFriendly" description="If this ped is friendly with the player, this will allow the ped to lockon"/>
    <enumval name="CPED_CONFIG_FLAG_UseCameraHeadingForDesiredDirectionLockOnTest" description="Force camera direction for heading test if desired direction is also set"/>
    <enumval name="CPED_CONFIG_FLAG_TeleportToLeaderVehicle" description="If set, teleport if ped is not in the leader's vehicle before TaskEnterVehicle::m_SecondsBeforeWarpToLeader."/>
    <enumval name="CPED_CONFIG_FLAG_Avoidance_Ignore_WeirdPedBuffer" description="Don't give weird peds extra buffer"/>
    <enumval name="CPED_CONFIG_FLAG_OnStairSlope" description="Are we on a stair slope?"/>
    <enumval name="CPED_CONFIG_FLAG_HasPlayedNMGetup" description="This ped has gotten up from NM at least once."/>
    <enumval name="CPED_CONFIG_FLAG_DontBlipCop" description="Wanted system shouldnt consider this ped when creating blips."/>
    <enumval name="CPED_CONFIG_FLAG_SpawnedAtExtendedRangeScenario" description="Set if the ped spawned at a scenario with extended range."/>
    <enumval name="CPED_CONFIG_FLAG_WalkAlongsideLeaderWhenClose" description="This ped will walk alongside group leader if they are the first member of the leader's pedgroup, they are close enough to the leader, and the pedgroup's formation is set up to allow this (such as in the default CPedFormationTypes::FORMATION_LOOSE)."/>
    <enumval name="CPED_CONFIG_FLAG_KillWhenTrapped" description="This will kill a mission ped that becomes trapped (like under a cow carcass) and cannot getup."/>
    <enumval name="CPED_CONFIG_FLAG_EdgeDetected" description="If this flag is set on a ped it has detected an edge"/>
    <enumval name="CPED_CONFIG_FLAG_AlwaysWakeUpPhysicsOfIntersectedPeds" description="This ped will cause physics to activate on any ped this ped's capsule is inside of, even if this ped is being attached."/>
    <enumval name="CPED_CONFIG_FLAG_EquippedAmbientLoadOutWeapon" description="This is set to prevent a ped from holstering a loadout weapon equipped during CPedPopulation::EquipPed as part of the defined CAmbientPedModelVariations' loadout."/>
    <enumval name="CPED_CONFIG_FLAG_AvoidTearGas" description="If set, a ped will avoid tear gas."/>
    <enumval name="CPED_CONFIG_FLAG_StoppedSpeechUponFreezing" description="Marks that we've already dealt with cleaning up speech audio after becoming frozen."/>
    <enumval name="CPED_CONFIG_FLAG_DisableGoToWritheWhenInjured" description="If set, CPed::DAMAGED_GOTOWRITHE will no longer get set.  In particular, tazer hits wil no longer kill this ped in one hit."/>
    <enumval name="CPED_CONFIG_FLAG_OnlyUseForcedSeatWhenEnteringHeliInGroup" description="If set this ped will only use their forced seat index if the vehicle they're entering is a heli as part of a group"/>
    <enumval name="CPED_CONFIG_FLAG_ThrownFromVehicleDueToExhaustion" description="Ped got tired and was thrown from bike. Used to scale ragdoll damage for a few seconds after the dismount."/>
    <enumval name="CPED_CONFIG_FLAG_UpdateEnclosedSearchRegion"  description="This ped will update their enclosed regions"/>
    <enumval name="CPED_CONFIG_FLAG_DisableWeirdPedEvents"/>
    <enumval name="CPED_CONFIG_FLAG_ShouldChargeNow" description="This ped should charge if in combat right away, for use by scripts, cleared once ped charges"/>
    <enumval name="CPED_CONFIG_FLAG_RagdollingOnBoat" description="We don't want ragdolling peds processing buoyancy when in a boat."/>
    <enumval name="CPED_CONFIG_FLAG_HasBrandishedWeapon"/>
    <enumval name="CPED_CONFIG_FLAG_AllowMinorReactionsAsMissionPed" description="If true, this ped will react to events such as being hit by a vehicle as a mission ped"/>
    <enumval name="CPED_CONFIG_FLAG_BlockDeadBodyShockingEventsWhenDead" description="If true, this ped will not generate dead body shocking events when dead."/>
    <enumval name="CPED_CONFIG_FLAG_PedHasBeenSeen" description="True if the ped has be visible to the player"/>
    <enumval name="CPED_CONFIG_FLAG_PedIsInReusePool" description="True if the ped is currently in the ped reuse pool"/>
    <enumval name="CPED_CONFIG_FLAG_PedWasReused" description="True if the ped was in the reuse pool and then was reused"/>
    <enumval name="CPED_CONFIG_FLAG_DisableShockingEvents"/>
    <enumval name="CPED_CONFIG_FLAG_MovedUsingLowLodPhysicsSinceLastActive" description="Set for peds that have moved using low LOD physics"/>
    <enumval name="CPED_CONFIG_FLAG_NeverReactToPedOnRoof" description="If true, this ped will not react to a ped standing on the roof."/>
    <enumval name="CPED_CONFIG_FLAG_ForcePlayFleeScenarioExitOnNextScriptCommand" description="If set this ped will use a flee exit to leave on the next script command."/>
    <enumval name="CPED_CONFIG_FLAG_JustBumpedIntoVehicle" description="Set for peds that just bumped into a vehicle"/>
    <enumval name="CPED_CONFIG_FLAG_DisableShockingDrivingOnPavementEvents"/>
    <enumval name="CPED_CONFIG_FLAG_ShouldThrowSmokeNow" description="This ped should throw a smoke grenade in combat right away, for use by scripts, cleared once ped throws"/>
    <enumval name="CPED_CONFIG_FLAG_DisablePedConstraints" description="Flags the ped to ensure it either does or does not have its control constraints"/>
    <enumval name="CPED_CONFIG_FLAG_ForceInitialPeekInCover" description="If set, ped will peek once before firing in cover. Cleared upon peeking."/>
    <enumval name="CPED_CONFIG_FLAG_CreatedByDispatch" description="this ped was created by one of the dispatch systems, usually law enforcement"/>
    <enumval name="CPED_CONFIG_FLAG_PointGunLeftHandSupporting" description="NM state config flag. Set to true when the characters support hand has broken from the weapon"/>
    <enumval name="CPED_CONFIG_FLAG_DisableJumpingFromVehiclesAfterLeader" description="If true, ped will not bail out of a vehicle after his group leader."/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerPedImpact" description="Blocks ragdoll activation from animated player ped bumps"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromAiRagdollImpact" description="Blocks ragdoll activation from collisions with ai ragdolls"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerRagdollImpact" description="Blocks ragdoll activation from collisions with a ragdolling player"/>
    <enumval name="CPED_CONFIG_FLAG_DisableQuadrupedSpring" description="Use to disable quadruped spring processing when settling from a ragdoll performance"/>
    <enumval name="CPED_CONFIG_FLAG_IsInCluster" description="This ped is currently in a cluster."/>
    <enumval name="CPED_CONFIG_FLAG_ShoutToGroupOnPlayerMelee" description="If set, ped will shout target position when melee attacked by a player"/>
    <enumval name="CPED_CONFIG_FLAG_IgnoredByAutoOpenDoors" description="Set this for a ped to be ignored by the auto opened doors when checking to see if the door should be opened."/>
    <enumval name="CPED_CONFIG_FLAG_PreferInjuredGetup" description="Set this during nm tasks to trigger an injured geup when the ped gets up."/>
    <enumval name="CPED_CONFIG_FLAG_ForceIgnoreMeleeActiveCombatant" description="Purposely ignore the melee active combatant role and push them into a support or inactive combatant role"/>
    <enumval name="CPED_CONFIG_FLAG_CheckLoSForSoundEvents" description="If set, ped will ignore sound events generated by entites it can't see."/>
    <enumval name="CPED_CONFIG_FLAG_JackedAbandonedCar" description="This ped was spawned to steal an ambient car that was left around"/>
    <enumval name="CPED_CONFIG_FLAG_CanSayFollowedByPlayerAudio" description="If set, ped can play FRIEND_FOLLOWED_BY_PLAYER lines."/>
    <enumval name="CPED_CONFIG_FLAG_ActivateRagdollFromMinorPlayerContact" description="If set, the ped will activate the nm ragdoll balance as soon as he's touhed by the player (ignoring velocity thresholds)."/>
    <enumval name="CPED_CONFIG_FLAG_HasPortablePickupAttached" description="If set, the ped is carrying a portable pickuup."/>
    <enumval name="CPED_CONFIG_FLAG_ForcePoseCharacterCloth" description="If set, default cloth pose will be applied if is available in the character cloth when the cloth is created."/>
    <enumval name="CPED_CONFIG_FLAG_HasClothCollisionBounds" description="If set, ped will use cloth collision bounds."/>
    <enumval name="CPED_CONFIG_FLAG_HasHighHeels" description="Set when the ped has high heels"/>
    <enumval name="CPED_CONFIG_FLAG_TreatAsAmbientPedForDriverLockOn" description="If set, this force player ped to treat this ped as an ambient target rather than a mission ped for driver lock on"/>
    <enumval name="CPED_CONFIG_FLAG_DontBehaveLikeLaw" description="Currently used to prevent security peds from behaving like police (they will not report wanted position, can attack without WL, etc)"/>
    <enumval name="CPED_CONFIG_FLAG_SpawnedAtScenario" description="If set, the ped was originally spawned at a scenario point."/>
    <enumval name="CPED_CONFIG_FLAG_DisablePoliceInvestigatingBody" description="If set, police will not perform the CTaskShockingPoliceInvestigate Behavior on the ped"/>
    <enumval name="CPED_CONFIG_FLAG_DisableWritheShootFromGround" description="If set, the ped will no longer shoot while writhing."/>
    <enumval name="CPED_CONFIG_FLAG_LowerPriorityOfWarpSeats"/>
    <enumval name="CPED_CONFIG_FLAG_DisableTalkTo"/>
    <enumval name="CPED_CONFIG_FLAG_DontBlip" description="Stops a ped being blipped by the wanted system"/>
    <enumval name="CPED_CONFIG_FLAG_IsSwitchingWeapon" description="ped is running the swap weapon task"/>
    <enumval name="CPED_CONFIG_FLAG_IgnoreLegIkRestrictions" description="If set, the ped will ignore leg IK request restrictions for non-player peds."/>
    <enumval name="CPED_CONFIG_FLAG_ScriptForceNoTimesliceIntelligenceUpdate" description="If set, the ped will never have their intelligence update time sliced across frames."/>
    <enumval name="CPED_CONFIG_FLAG_JackedOutOfMyVehicle" description="If set, this ped has been jacked out of its vehicle."/>
    <enumval name="CPED_CONFIG_FLAG_WentIntoCombatAfterBeingJacked" description="If set, this ped went into combat because of being jacked."/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollForVehicleGrab" description="Blocks ragdoll activation when grabbing vehicle doors"/>
    <enumval name="CPED_CONFIG_FLAG_ForcePackageCharacterCloth" description="Set the flag for forcing package on character cloth when cloth is created on the ped"/>
    <enumval name="CPED_CONFIG_FLAG_DontRemoveWithValidOrder"/>
    <enumval name="CPED_CONFIG_FLAG_AllowTaskDoNothingTimeslicing" description="If set, this ped will timeslice it's DoNothing Task when computing default task."/>
    <enumval name="CPED_CONFIG_FLAG_ForcedToStayInCoverDueToPlayerSwitch"/>
    <enumval name="CPED_CONFIG_FLAG_ForceProneCharacterCloth" description="Set the flag to place character cloth in prone state when cloth is created on the ped"/>
    <enumval name="CPED_CONFIG_FLAG_NotAllowedToJackAnyPlayers"/>
    <enumval name="CPED_CONFIG_FLAG_InToStrafeTransition"/>
    <enumval name="CPED_CONFIG_FLAG_KilledByStandardMelee" description="Killed by standard melee"/>
    <enumval name="CPED_CONFIG_FLAG_AlwaysLeaveTrainUponArrival" description="Does this ped always (not randomly) leave the train when it arrives at a station"/>
    <enumval name="CPED_CONFIG_FLAG_ForcePlayDirectedNormalScenarioExitOnNextScriptCommand" description="Set flag to determine that a directed normal exit should be use for new tasks on this scenario ped."/>
    <enumval name="CPED_CONFIG_FLAG_OnlyWritheFromWeaponDamage" description="Only allow ped to writhe from weapon damage, not from other stuff, like small vehicle impacts"/>
    <enumval name="CPED_CONFIG_FLAG_UseSloMoBloodVfx" description="Flags the ped to use the slo mo blood vfx instead of the normal ones"/>
    <enumval name="CPED_CONFIG_FLAG_EquipJetpack" description="Equip/put on the jetpack if we have one in our inventory"/>
    <enumval name="CPED_CONFIG_FLAG_PreventDraggedOutOfCarThreatResponse" description="Don't do threat response when dragged out of a car"/>
    <enumval name="CPED_CONFIG_FLAG_ScriptHasCompletelyDisabledCollision" description="Script has completely disabled collision on this ped via SET_ENTITY_COMPLETELY_DISABLE_COLLISION"/>
    <enumval name="CPED_CONFIG_FLAG_NeverDoScenarioNavChecks" description="This ped will not check for navmesh when exiting their scenario."/>
    <enumval name="CPED_CONFIG_FLAG_ForceSynchronousScenarioExitChecking" description="This ped will expensively probe for a scenario exit location in one frame."/>
    <enumval name="CPED_CONFIG_FLAG_ThrowingGrenadeWhileAiming" description="Set true in CTaskAimGunOnFoot::Aiming_OnUpdate, false in CTaskAimAndThrowProjectile::CleanUp."/>
    <enumval name="CPED_CONFIG_FLAG_HeadbobToRadioEnabled" description="Set in."/>
    <enumval name="CPED_CONFIG_FLAG_ForceDeepSurfaceCheck" description="Don't do distance from camera culling of the deep surface check, needed for detecting snow, mud, etc."/>
    <enumval name="CPED_CONFIG_FLAG_DisableDeepSurfaceAnims" description="Disable deep surface anims to prevent them slowing ped down"/>
    <enumval name="CPED_CONFIG_FLAG_DontBlipNotSynced" description="Don't blip this ped, this is not synced over the network to allow script to individually control a peds blippedness on different machines"/>
    <enumval name="CPED_CONFIG_FLAG_IsDuckingInVehicle" description="Ped is ducking inside a vehicle."/>
    <enumval name="CPED_CONFIG_FLAG_PreventAutoShuffleToTurretSeat"/>
    <enumval name="CPED_CONFIG_FLAG_DisableEventInteriorStatusCheck" description="Disables the ignore events based on interior status check which normally has peds inside ignore events from outside"/>
    <enumval name="CPED_CONFIG_FLAG_HasReserveParachute" description="Does ped have a reserve chute that they can deploy"/>
    <enumval name="CPED_CONFIG_FLAG_UseReserveParachute" description="Use reserve parachute settings."/>
    <enumval name="CPED_CONFIG_FLAG_TreatDislikeAsHateWhenInCombat" description="If this ped is in combat then any ped they dislike they will consider the relationship hate instead"/>
    <enumval name="CPED_CONFIG_FLAG_OnlyUpdateTargetWantedIfSeen" description="If the target is a player we will only set the WL or update the radar if they are seen"/>
    <enumval name="CPED_CONFIG_FLAG_AllowAutoShuffleToDriversSeat" description="Allows this ped to auto shuffle to the driver seat of a vehicle if the driver is dead (law and MP peds would do this normally)"/>
    <enumval name="CPED_CONFIG_FLAG_DontActivateRagdollFromSmokeGrenade" description="Blocks ragdoll activation when damaged by smoke grenade"/>
    <enumval name="CPED_CONFIG_FLAG_LinkMBRToOwnerOnChain" description="This ped will attempt to match the speed of the owner while following its current scenario chain."/>
    <enumval name="CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayer" description="The player has walked into our ambient friend."/>
    <enumval name="CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayerVehicle" description="The player has driven into our ambient friend."/>
    <enumval name="CPED_CONFIG_FLAG_InFPSUnholsterTransition" description="Player is playing the unholster transition in FPS mode"/>
    <enumval name="CPED_CONFIG_FLAG_PreventReactingToSilencedCloneBullets" description="Prevents the ped from reacting to silenced bullets fired from network clone peds"/>
    <enumval name="CPED_CONFIG_FLAG_DisableInjuredCryForHelpEvents" description="Blocks ped from creating the injured cry for help events (run over, tazed or melee would usually do this)"/>
    <enumval name="CPED_CONFIG_FLAG_NeverLeaveTrain" description="Prevents peds riding trains from getting off them"/>
    <enumval name="CPED_CONFIG_FLAG_DontDropJetpackOnDeath" description="When dead, don't drop eqquiped jetpack"/>
    <enumval name="CPED_CONFIG_FLAG_UseFPSUnholsterTransitionDuringCombatRoll" description="Player is playing the unholster transition in FPS mode"/>
    <enumval name="CPED_CONFIG_FLAG_ExitingFPSCombatRoll" description="Player is exiting combat roll in FPS mode"/>
    <enumval name="CPED_CONFIG_FLAG_ScriptHasControlOfPlayer" description="True when script is controlling the movement of the player"/>
    <enumval name="CPED_CONFIG_FLAG_PlayFPSIdleFidgetsForProjectile" description="True when we should be playing idle fidgets for projectiles"/>
    <enumval name="CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes" description="Set from interaction menu"/>
    <enumval name="CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInAircraft" description="Set from interaction menu"/>
    <enumval name="CPED_CONFIG_FLAG_WasPlayingFPSGetup" description="Was playing getup animations in FPS mode"/>
    <enumval name="CPED_CONFIG_FLAG_WasPlayingFPSMeleeActionResult" description="Was playing action result animations in FPS mode"/>
    <enumval name="CPED_CONFIG_FLAG_PreferNoPriorityRemoval" description="Unless scenario conditions apply, make this ped go through normal deletion but not priority deletion."/>
    <enumval name="CPED_CONFIG_FLAG_FPSFidgetsAbortedOnFire" description="True when the FPS idle fidgets are aborted because the player fired the gun"/>
    <enumval name="CPED_CONFIG_FLAG_ForceFPSIKWithUpperBodyAnim" description="True when upper body anims are used during various tasks."/>
    <enumval name="CPED_CONFIG_FLAG_SwitchingCharactersInFirstPerson" description="True we switch a character in first person mode (in CGameWorld::ChangePlayerPed)"/>
    <enumval name="CPED_CONFIG_FLAG_IsClimbingLadder" description="True when the ped is climbing a ladder"/>
    <enumval name="CPED_CONFIG_FLAG_HasBareFeet" description="Set when the ped has no shoes"/>
    <enumval name="CPED_CONFIG_FLAG_UNUSED_REPLACE_ME_2"/>
    <enumval name="CPED_CONFIG_FLAG_GoOnWithoutVehicleIfItIsUnableToGetBackToRoad" description="It will force the ped to abandon its vehicle (when using TaskGoToPointAnyMeans) if it is unable to get back to road"/>
    <enumval name="CPED_CONFIG_FLAG_BlockDroppingHealthSnacksOnDeath" description="Set by script to prevent peds from dropping snack health pickups on death (in CPed::CreateDeadPedPickups)."/>
    <enumval name="CPED_CONFIG_FLAG_ResetLastVehicleOnVehicleExit" description="Reset the ped's stored MyVehicle pointer when this ped leaves their vehicle."/>
    <enumval name="CPED_CONFIG_FLAG_ForceThreatResponseToNonFriendToFriendMeleeActions" description="Forces threat response to melee actions from non friend to friend peds."/>
    <enumval name="CPED_CONFIG_FLAG_DontRespondToRandomPedsDamage" description="Do not respond to random peds damage"/>
    <enumval name="CPED_CONFIG_FLAG_AllowContinuousThreatResponseWantedLevelUpdates" description="Shares logic of OnlyUpdateTargetWantedIfSeen but will continue to check even after the initial WL is set"/>
    <enumval name="CPED_CONFIG_FLAG_KeepTargetLossResponseOnCleanup" description="On cleanup the ped will not reset their target loss response"/>
    <enumval name="CPED_CONFIG_FLAG_PlayersDontDragMeOutOfCar" description="Similar to DontDragMeOutCar except it only prevents players from dragging the ped out and allows AI to still do so"/>
    <enumval name="CPED_CONFIG_FLAG_BroadcastRepondedToThreatWhenGoingToPointShooting" description="Whenever the ped starts shooting while going to a point, it trigger a responded to threat broadcast"/>
    <enumval name="CPED_CONFIG_FLAG_IgnorePedTypeForIsFriendlyWith" description="If this is set then IsFriendlyWith will ignore the ped type checks (i.e. two PEDTYPE_COP peds are not automatically friendly)"/>
    <enumval name="CPED_CONFIG_FLAG_TreatNonFriendlyAsHateWhenInCombat" description="Any non friendly ped will be considered as hated instead"/>
    <enumval name="CPED_CONFIG_FLAG_DontLeaveVehicleIfLeaderNotInVehicle" description="Supresses exit vehicle task being created in CEventLeaderExitedCarAsDriver::CreateResponseTask."/>
    <enumval name="CPED_CONFIG_FLAG_ChangeFromPermanentToAmbientPopTypeOnMigration" description="Change ped to ambient pop type on migration."/>
    <enumval name="CPED_CONFIG_FLAG_AllowMeleeReactionIfMeleeProofIsOn" description="Allow melee reaction to come through even if proof is on"/>
    <enumval name="CPED_CONFIG_FLAG_UsingLowriderLeans" description="Ped is playing lowrider lean animations due to vehicle suspension modification."/>
    <enumval name="CPED_CONFIG_FLAG_UsingAlternateLowriderLeans" description="Ped is playing alternate lowrider lean animations (ie arm on window) due to vehicle suspension modification."/>
    <enumval name="CPED_CONFIG_FLAG_UseNormalExplosionDamageWhenBlownUpInVehicle" description="If this is set, the ped won't be instantly killed if vehicle is blown up (from CAutomobile::BlowUpCar -> KillPedsInVehicle). Instead, they will take normal explosive damage and be forced to exit the vehicle if they're still alive."/>
    <enumval name="CPED_CONFIG_FLAG_DisableHomingMissileLockForVehiclePedInside" description="Blocks locking on of the vehicle that the ped is inside."/>
    <enumval name="CPED_CONFIG_FLAG_DisableTakeOffScubaGear" description="Same as CPED_RESET_FLAG_DisableTakeOffScubaGear but on a config flag."/>
    <enumval name="CPED_CONFIG_FLAG_IgnoreMeleeFistWeaponDamageMult" description="Melee fist weapons (ie knuckle duster) won't apply relative health damage scaler (m_MeleeRightFistTargetHealthDamageScaler in weapon info)."/>
    <enumval name="CPED_CONFIG_FLAG_LawPedsCanFleeFromNonWantedPlayer" description="Allows law ped to flee even if ped is not wanted and CWanted::m_AllRandomsFlee is set."/>
    <enumval name="CPED_CONFIG_FLAG_ForceBlipSecurityPedsIfPlayerIsWanted" description="Forces security peds (not cop peds) to be blipped on the minimap if the player is wanted. Set on the local player."/>
    <enumval name="CPED_CONFIG_FLAG_IsHolsteringWeapon" description="Ped is running the swap weapon task and holstering the previous weapon, but has not started drawing the new one."/>
    <enumval name="CPED_CONFIG_FLAG_UseGoToPointForScenarioNavigation" description="Don't use nav mesh for navigating to scenario points. DLC Hack for yachts"/>
    <enumval name="CPED_CONFIG_FLAG_DontClearLocalPassengersWantedLevel" description="Don't clear local ped's wanted level when remote ped in the same car has his wanted level cleared by script."/>
    <enumval name="CPED_CONFIG_FLAG_BlockAutoSwapOnWeaponPickups" description="Block auto weapon swaps for weapon pickups."/>
    <enumval name="CPED_CONFIG_FLAG_ThisPedIsATargetPriorityForAI" description="Increase AI targeting score for peds with this flag."/>
    <enumval name="CPED_CONFIG_FLAG_IsSwitchingHelmetVisor" description="Indicates that ped is playing switch visor up/down anim"/>
    <enumval name="CPED_CONFIG_FLAG_ForceHelmetVisorSwitch" description="Forces ped to do a visor helmet switch if able to."/>
    <enumval name="CPED_CONFIG_FLAG_IsPerformingVehicleMelee" description="Indicates that ped is performing vehicle melee action."/>
    <enumval name="CPED_CONFIG_FLAG_UseOverrideFootstepPtFx" description="The ped should use any override footstep effects that are set up."/>
    <enumval name="CPED_CONFIG_FLAG_DisableVehicleCombat" description="Disables vehicle combat."/>
    <enumval name="CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamage" description="Prevents this ped from being locked on and blocks ability to damage / fire at ped."/>
    <enumval name="CPED_CONFIG_FLAG_AllowBikeAlternateAnimations" description="Allows players on motorcycles to use the alternate animation set when available."/>
    <enumval name="CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamageNonSynced" description="Prevents this ped from being locked on and blocks ability to damage / fire at ped. This flag is not synced, so will only work on machine that set it"/>
    <enumval name="CPED_CONFIG_FLAG_UseLockpickVehicleEntryAnimations" description="When set, will attempt to use lockpick animations designed for Franklin in SP mode when breaking into a car."/>
    <enumval name="CPED_CONFIG_FLAG_IgnoreInteriorCheckForSprinting" description="When set, player will be able to sprint inside interriors even if it is tagged to prevent it."/>
    <enumval name="CPED_CONFIG_FLAG_SwatHeliSpawnWithinLastSpottedLocation" description="When set, swat helicopters will spawn within last spotted location instead of actual ped location (and target is a player)."/>
    <enumval name="CPED_CONFIG_FLAG_DisableStartEngine" description="prevents ped from playing start engine anims (and turning engine on)"/>
    <enumval name="CPED_CONFIG_FLAG_IgnoreBeingOnFire" description="makes ped ignore being on fire (fleeing, reacting to CEventOnFire event)"/>
    <enumval name="CPED_CONFIG_FLAG_DisableTurretOrRearSeatPreference" description="Disables turret seat and activity seat preference for vehicle entry for local player"/>
    <enumval name="CPED_CONFIG_FLAG_DisableWantedHelicopterSpawning" description="Will not spawn wanted helicopters to chase after this target"/>
    <enumval name="CPED_CONFIG_FLAG_UseTargetPerceptionForCreatingAimedAtEvents" description="Will only create aimed at events if player is within normal perception of the target"/>
    <enumval name="CPED_CONFIG_FLAG_DisableHomingMissileLockon" description="Will prevent homing lockon on this ped"/>
    <enumval name="CPED_CONFIG_FLAG_ForceIgnoreMaxMeleeActiveSupportCombatants" description="Ignore max number of active support combatants and let ped join them as such"/>
    <enumval name="CPED_CONFIG_FLAG_StayInDefensiveAreaWhenInVehicle" description="Will try to stay within set defensive area while driving a vehicle"/>
    <enumval name="CPED_CONFIG_FLAG_DontShoutTargetPosition" description="Will prevent the ped from communicating target position to all other friendly peds"/>
    <enumval name="CPED_CONFIG_FLAG_DisableHelmetArmor" description="Will apply full headshot damage, regardless if ped has a helmet (or armored one)"/>
    <enumval name="CPED_CONFIG_FLAG_CreatedByConcealedPlayer" description="Marks a ped that was created by concealed player from marked up scenarios"/>
    <enumval name="CPED_CONFIG_FLAG_PermanentlyDisablePotentialToBeWalkedIntoResponse" description="Synced and permanent version of CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse"/>
    <enumval name="CPED_CONFIG_FLAG_PreventVehExitDueToInvalidWeapon" description="Will prevent ped from automatically being forced out of vehicle due to weapon being invalid (e.g. turret seats after going into water)"/>
    <enumval name="CPED_CONFIG_FLAG_IgnoreNetSessionFriendlyFireCheckForAllowDamage" description="Will ignore the friendly fire setting set by NETWORK_SET_FRIENDLY_FIRE_OPTION when checking if ped can be damaged"/>
    <enumval name="CPED_CONFIG_FLAG_DontLeaveCombatIfTargetPlayerIsAttackedByPolice" description="Will make ped stay in combat even if the player hes targeting starts being attacked by cops"/>
    <enumval name="CPED_CONFIG_FLAG_CheckLockedBeforeWarp" description="Will check when entering a vehicle if it is locked before warping"/>
    <enumval name="CPED_CONFIG_FLAG_DontShuffleInVehicleToMakeRoom" description="Will prevent a player from shuffling across to make room if another player is entering from the same side"/>
    <enumval name="CPED_CONFIG_FLAG_GiveWeaponOnGetup" description="Will give the ped a weapon to use once their weapon is removed for getups"/>
    <enumval name="CPED_CONFIG_FLAG_DontHitVehicleWithProjectiles" description="Ped fired projectiles will ignore the vehicle they are in"/>
    <enumval name="CPED_CONFIG_FLAG_DisableForcedEntryForOpenVehiclesFromTryLockedDoor" description="Will prevent ped from forcing entry into cars that are open from TryLockedDoor state"/>
    <enumval name="CPED_CONFIG_FLAG_FiresDummyRockets" description="This ped will fire rockets that explode when close to its target, and won't affect it"/>
    <enumval name="CPED_CONFIG_FLAG_PedIsArresting" description="Is the ped currently preforming an arrest"/>
    <enumval name="CPED_CONFIG_FLAG_IsDecoyPed" description="Will make this ped a decoy ped that will focus targeting"/>
    <enumval name="CPED_CONFIG_FLAG_HasEstablishedDecoy" description="This ped has created a decoy"/>
    <enumval name="CPED_CONFIG_FLAG_BlockDispatchedHelicoptersFromLanding" description="Will prevent dispatched helicopters from landing and dropping off peds"/>
    <enumval name="CPED_CONFIG_FLAG_DontCryForHelpOnStun" description="Will prevent peds from crying for help when shot with the stun gun"/>
    <enumval name="CPED_CONFIG_FLAG_HitByTranqWeapon" description="Tranq weapons are handled differently in terms of damage. This triggers that logic"/>
    <enumval name="CPED_CONFIG_FLAG_CanBeIncapacitated" description="If set, the ped may be incapacitated"/>
    <enumval name="CPED_CONFIG_FLAG_ForcedAimFromArrest" description="If set, we will always behave like we have the aim trigger pressed"/>
    <enumval name="CPED_CONFIG_FLAG_DontChangeTargetFromMelee" description="If set, we wont set a new target after a melee attack"/>
    <enumval name="CPED_CONFIG_FLAG_DisableHealthRegenerationWhenStunned" description="Used to disable health regeneration when damaged with the stun gun in MP"/>
    <enumval name="CPED_CONFIG_FLAG_RagdollFloatsIndefinitely" description="Prevents a dead ped from sinking"/>
    <enumval name="CPED_CONFIG_FLAG_BlockElectricWeaponDamage" description="Blocks electric weapon damage"/>
  </enumdef>

  <enumdef type="ePedResetFlags" generate="bitset">
    <enumval name="CPED_RESET_FLAG_FallenDown" description="decides whether to ik rotate body to match ground angle"/>
    <enumval name="CPED_RESET_FLAG_DontRenderThisFrame" description="force ped to stop rendering this frame (for example - drive task can stop peds rendering inside buses)"/>
    <enumval name="CPED_RESET_FLAG_IsDrowning"/>
    <enumval name="CPED_RESET_FLAG_PedHitWallLastFrame"/>
    <enumval name="CPED_RESET_FLAG_UsingMobilePhone"/>
    <enumval name="CPED_RESET_FLAG_BlockMovementAnims" description="completely disable processing of on-foot movement anim blending for this frame"/>
    <enumval name="CPED_RESET_FLAG_ZeroDesiredMoveBlendRatios" description="zero out all inputs to movement system this frame, causing ped to stop moving"/>
    <enumval name="CPED_RESET_FLAG_DontChangeMbrInSimpleMoveDoNothing" description="If this is set, then CTaskSimpleMoveDoNothing will not reset desired moveblendratio to zero this frame."/>
    <enumval name="CPED_RESET_FLAG_FollowingRoute" description="whether this ped is following a route of some sort - used to let simplest goto task pull the ped back onto their current route segment"/>
    <enumval name="CPED_RESET_FLAG_TakingRouteSplineCorner" description="whether the ped is cornering via a spline curve, which will take them off their route linesegment"/>
    <enumval name="CPED_RESET_FLAG_Wandering"/>
    <enumval name="CPED_RESET_FLAG_ProcessPhysicsTasks" description="do we need to call process physics for (main) tasks this frame"/>
    <enumval name="CPED_RESET_FLAG_ProcessPreRender2" description="do we need to call ProcessPreRender2 for tasks"/>
    <!-- wants to get reset before CPedIntelligence::ProcessAfterProcCol() -->
    <enumval name="CPED_RESET_FLAG_SetLastMatrixDone"/>
    <!-- wants to get reset at start of CPedIntelligence::ProcessAfterPreRender() -->
    <enumval name="CPED_RESET_FLAG_FiringWeapon" description="set when ped fires any weapon, so script can check the flag"/>
    <!--  gets reset at the start of the peds intelligence update -->
    <enumval name="CPED_RESET_FLAG_SearchingForCover" description="Set if the ped is likely to be searching for cover, used by the navmesh to load coverpoints around interested peds"/>
    <enumval name="CPED_RESET_FLAG_KeepCoverPoint" description="Set if the ped wants to keep their current cover point this frame, otherwise it gets released"/>
    <enumval name="CPED_RESET_FLAG_IsClimbing" description="If the ped is climbing, shimmying or on a ladder.  Stops ProcessProbes() from happening."/>
    <enumval name="CPED_RESET_FLAG_IsJumping" description="is the ped jumping."/>
    <enumval name="CPED_RESET_FLAG_IsLanding" description="is landing after being in the air"/>
    <enumval name="CPED_RESET_FLAG_CullExtraFarAway" description="flag Ai can set to make ped get culled further away (used for roadblock cops, crimials...)"/>
    <!--  wants to get reset at start of ResetPostMovement -->
    <enumval name="CPED_RESET_FLAG_DontActivateRagdollFromAnyPedImpactReset"/>
    <enumval name="CPED_RESET_FLAG_ForceScriptControlledRagdoll"/>
    <enumval name="CPED_RESET_FLAG_TaskUseKinematicPhysics" description="For use by tasks - puts the ped into Kinematic physics mode. In this mode the ped will push other objects our of the way, but not be physically affected by them"/>
    <enumval name="CPED_RESET_FLAG_TemporarilyBlockWeaponSwitching" description="Stop weapon switch processing"/>
    <enumval name="CPED_RESET_FLAG_DoNotClampFootIk" description="Stop clamping the foot IK. Maybe the clamps should be parameters of the IK manager, but apparently that is to be refactored in future"/>
    <!-- *************************************************************************************
       The following bit-flags are set by tasks during their processing, and are picked up
       by CPed::SelectCurrentAnimGroup() to prevent it from having query the task tree.      -->
    <enumval name="CPED_RESET_FLAG_MoveBlend_bFleeTaskRunning" description="TASK_SMART_FLEE, or TASK_COMPLEX_LEAVE_CAR_AND_FLEE"/>
    <enumval name="CPED_RESET_FLAG_IsAiming" description="TASK_GUN or TASK_USE_COVER"/>
    <enumval name="CPED_RESET_FLAG_MoveBlend_bTaskComplexGunRunning" description="TASK_COMPLEX_GUN (only)"/>
    <enumval name="CPED_RESET_FLAG_MoveBlend_bMeleeTaskRunning" description="TASK_COMPLEX_MELEE"/>
    <enumval name="CPED_RESET_FLAG_MoveBlend_bCopSearchTaskRunning" description="TASK_COMPLEX_SEARCH_FOR_PED_ON_FOOT"/>
    <enumval name="CPED_RESET_FLAG_PatrollingInVehicle" description="ped is patrolling in a vehicle, likely meaning they are swat or police"/>
    <enumval name="CPED_RESET_FLAG_RaiseVelocityChangeLimit"/>
    <enumval name="CPED_RESET_FLAG_DimTargetReticule"/>
    <enumval name="CPED_RESET_FLAG_IsWalkingRoundPlayer" description="Whether this ped is walking around another ped (one frame latency)"/>
    <enumval name="CPED_RESET_FLAG_GestureAnimsAllowed"/>
    <enumval name="CPED_RESET_FLAG_VisemeAnimsBlocked" description="Blocks viseme anims from playing"/>
    <enumval name="CPED_RESET_FLAG_AmbientAnimsBlocked" description="Blocks new ambient idles from starting."/>
    <enumval name="CPED_RESET_FLAG_KnockedToTheFloorByPlayer"/>
    <enumval name="CPED_RESET_FLAG_RandomisePointsDuringNavigation"/>
    <enumval name="CPED_RESET_FLAG_Prevent180SkidTurns"/>
    <enumval name="CPED_RESET_FLAG_IsOnAssistedMovementRoute"/>
    <enumval name="CPED_RESET_FLAG_ApplyVelocityDirectly" description="Should we apply the velocity directly to the physics collider or go through the force solver?"/>
    <enumval name="CPED_RESET_FLAG_DisablePlayerLockon"/>
    <enumval name="CPED_RESET_FLAG_ResetMoveGroupAfterRagdoll" description="If true, will reset the temp anim group when not ragdolling"/>
    <enumval name="CPED_RESET_FLAG_DisablePedConstraints" description="Allow the ped to rotate around freely"/>
    <enumval name="CPED_RESET_FLAG_DisablePlayerJumping" description="Disables player jumping if true. Reset in ResetPostPhysics, as it will be set via script"/>
    <enumval name="CPED_RESET_FLAG_DisablePlayerVaulting" description="Disables player vaulting/climbing if true."/>
    <enumval name="CPED_RESET_FLAG_DisableAsleepImpulse" description="Disable the code that pushes peds which fall asleep in the air"/>
    <enumval name="CPED_RESET_FLAG_ForcePostCameraAIUpdate"/>
    <enumval name="CPED_RESET_FLAG_ForcePostCameraAnimUpdate"/>
    <enumval name="CPED_RESET_FLAG_ePostCameraAnimUpdateUseZeroTimestep"/>
    <enumval name="CPED_RESET_FLAG_CollideWithGlassRagdoll"/>
    <enumval name="CPED_RESET_FLAG_CollideWithGlassWeapon"/>
    <enumval name="CPED_RESET_FLAG_SyncDesiredHeadingToCurrentHeading"/>
    <enumval name="CPED_RESET_FLAG_AllowUpdateIfNoCollisionLoaded"/>
    <enumval name="CPED_RESET_FLAG_InternalWalkingRndPlayer"/>
    <enumval name="CPED_RESET_FLAG_PlacingCharge" description="Setting Bomb (firing weapon is set also)"/>
    <enumval name="CPED_RESET_FLAG_ScriptDisableSecondaryAnimationTasks" description="Disable upper body animtion tasks such as shove ped and open door anims"/>
    <enumval name="CPED_RESET_FLAG_SearchingForClimb"/>
    <enumval name="CPED_RESET_FLAG_SearchingForDoors"/>
    <enumval name="CPED_RESET_FLAG_WanderingStoppedForOtherPed"/>
    <enumval name="CPED_RESET_FLAG_SupressGunfireEvents"/>
    <enumval name="CPED_RESET_FLAG_InfiniteStamina" description="Currently just for mounts, but could be expanded to anything with stamina"/>
    <enumval name="CPED_RESET_FLAG_BlockWeaponReactionsUnlessDead" description="Stops ragdoll and nm behaviors triggering from weapon damage unless the ped has died."/>
    <enumval name="CPED_RESET_FLAG_ForcePlayerFiring"/>
    <enumval name="CPED_RESET_FLAG_InCoverFacingLeft" description="set when exiting the cover state saying if we are facing left"/>
    <enumval name="CPED_RESET_FLAG_ForcePeekFromCover" description="if set the ped will go into peeking if they are already in cover"/>
    <enumval name="CPED_RESET_FLAG_NotAllowedToChangeCrouchState" description="if set the ped will not be allowed to change their crouch state"/>
    <enumval name="CPED_RESET_FLAG_ForcePedToStrafe" description="forces a ped to strafe"/>
    <enumval name="CPED_RESET_FLAG_ForceMeleeStrafingAnims" description="forces a ped to use the melee strafing anims when strafing"/>
    <enumval name="CPED_RESET_FLAG_UseKinematicPhysics" description="To be used by scripts - puts the ped into Kinematic physics mode. In this mode the ped will push other objects our of the way, but not be physically affected by them"/>
    <enumval name="CPED_RESET_FLAG_ClearLockonTarget" description="Clears the player's lockon target next frame"/>
    <enumval name="CPED_RESET_FLAG_CanPedSeeHatedPedBeingUsed" description="Activates can ped see hated ped generating events even when blocking of non-temp events is on"/>
    <enumval name="CPED_RESET_FLAG_InstantBlendToAim" description="Makes the ped performa an instant blend to aim if starting a gun task this frame"/>
    <enumval name="CPED_RESET_FLAG_ForceImprovedIdleTurns" description="Forces the ped to use an improved idle turning system that should help him turn to face more quickly"/>
    <enumval name="CPED_RESET_FLAG_HitPedWithWeapon" description="set when damage is inflicted by this ped on another ped"/>
    <enumval name="CPED_RESET_FLAG_ForcePedToUseScripCamHeading" description="forces a ped to the scripted camera heading instead of gameplay"/>
    <enumval name="CPED_RESET_FLAG_ProcessProbesWhenExtractingZ" description="makes the capsule physics push the ped out of the ground even when extracting z"/>
    <enumval name="CPED_RESET_FLAG_KeepDesiredCoverPoint" description="should the ped keep their desired cover point this frame"/>
    <enumval name="CPED_RESET_FLAG_HasProcessedCornering" description="whether the ped has already processed slowing down for this corner"/>
    <enumval name="CPED_RESET_FLAG_StandingOnForkliftForks" description="Set when the ped standing capsule hits the forklift forks."/>
    <enumval name="CPED_RESET_FLAG_AimWeaponReactionRunning" description="ped is running the reaction task this frame"/>
    <enumval name="CPED_RESET_FLAG_InContactWithFoliage" description="ped is in contact with GTA_FOLIAGE_TYPE bounds"/>
    <enumval name="CPED_RESET_FLAG_ForceExplosionCollisions" description="ped will always collide with explosions, even when collision is off"/>
    <enumval name="CPED_RESET_FLAG_IgnoreTargetsCoverForLOS" description="when checking LOS against targets this ped will ignore their cover (if the cover exists)"/>
    <enumval name="CPED_RESET_FLAG_BlockAnimatedWeaponReactions" description="Ped should not play animated damager reactions while this flag is set"/>
    <enumval name="CPED_RESET_FLAG_DisablePedCapsule" description="Removes the ped capsule from the physics simulation"/>
    <enumval name="CPED_RESET_FLAG_DisableCrouchWhileInCover" description="Force the crouch flag to return true while in cover."/>
    <enumval name="CPED_RESET_FLAG_IncreasedAvoidanceRadius" description="Adds extra 2m onto the radius other peds use to avoid this ped during local steering."/>
    <enumval name="CPED_RESET_FLAG_UNUSED_REPLACE_ME"/>
    <enumval name="CPED_RESET_FLAG_ForceRunningSpeedForFragSmashing" description="Can be set by designers to force the ped to smash more easily through frags."/>
    <enumval name="CPED_RESET_FLAG_EnableMoverAnimationWhileAttached" description="While flagged, any mover animation will be applied to the offset of the attachment."/>
    <enumval name="CPED_RESET_FLAG_NoTimeDelayBeforeShot" description="While flagged, The time delay before a player can fire after aiming is 0"/>
    <enumval name="CPED_RESET_FLAG_SearchingForAutoVaultClimb" description="inform climb code we are doing an autovault"/>
    <enumval name="CPED_RESET_FLAG_ExtraLongWeaponRange" description="Extends the range of a peds weapons to 250m"/>
    <enumval name="CPED_RESET_FLAG_ForcePlayerToEnterVehicleThroughDirectDoorOnly" description="Forces the player to only use direct access when entering vehicles"/>
    <enumval name="CPED_RESET_FLAG_TaskCullExtraFarAway" description="Can be set by ai tasks on the main task tree to disable a ped getting cull from a vehicle."/>
    <enumval name="CPED_RESET_FLAG_IsVaulting" description="Set the entire time CTaskVault is running."/>
    <enumval name="CPED_RESET_FLAG_IsParachuting" description="Set the entire time CTaskParachute is running."/>
    <enumval name="CPED_RESET_FLAG_SuppressSlowingForCorners" description="If set this will prevent the ped from slowing down to take corners this frame"/>
    <enumval name="CPED_RESET_FLAG_DisableProcessProbes" description="Disables processing of probes."/>
    <enumval name="CPED_RESET_FLAG_DisablePlayerAutoVaulting"/>
    <enumval name="CPED_RESET_FLAG_DisableGaitReduction"/>
    <enumval name="CPED_RESET_FLAG_ExitVehicleTaskFinishedThisFrame"/>
    <enumval name="CPED_RESET_FLAG_RequiresLegIk"/>
    <enumval name="CPED_RESET_FLAG_JayWalking" description="If set then the ped is jay walking and a vehicle is allowed to run him over."/>
    <enumval name="CPED_RESET_FLAG_UseBulletPenetration" description="Ped will use bullet penetration code."/>
    <enumval name="CPED_RESET_FLAG_ForceAimAtHead" description="Force all attackers to target the head of this ped"/>
    <enumval name="CPED_RESET_FLAG_IsInStationaryScenario" description="In a scenario and not moving"/>
    <enumval name="CPED_RESET_FLAG_TemporarilyBlockWeaponEquipping" description="Stop weapon equipping"/>
    <enumval name="CPED_RESET_FLAG_CoverOutroRunning" description="TASK_AIM_GUN_FROM_COVER_OUTRO"/>
    <enumval name="CPED_RESET_FLAG_DisableSeeThroughChecksWhenTargeting" description="Any targeting LoS checks will fail if any materials with 'see through' materials found."/>
    <enumval name="CPED_RESET_FLAG_PuttingOnHelmet" description="putting on helmet"/>
    <enumval name="CPED_RESET_FLAG_AllowPullingPedOntoRoute" description="allows goto task to apply heading in order to pull a ped back onto their route"/>
    <enumval name="CPED_RESET_FLAG_ApplyAnimatedVelocityWhilstAttached" description="Allows attachment offsets to be updated from animated velocities"/>
    <enumval name="CPED_RESET_FLAG_AICoverEntryRunning" description="TASK_ENTER_COVER : State_PlayAIEntryAnim"/>
    <enumval name="CPED_RESET_FLAG_ResponseAfterScenarioPanic" description="The ped is entering threat response after panic exiting a scenario."/>
    <enumval name="CPED_RESET_FLAG_IsNearDoor" description="Ped is near a non-vehicle door"/>
    <enumval name="CPED_RESET_FLAG_DisableTorsoSolver"/>
    <enumval name="CPED_RESET_FLAG_PanicInVehicle"/>
    <enumval name="CPED_RESET_FLAG_DisableDynamicCapsuleRadius" description="Turn off dynamic adjustments to ped capsules"/>
    <enumval name="CPED_RESET_FLAG_IsRappelling" description="Is currently in a rappel task"/>
    <enumval name="CPED_RESET_FLAG_SkipReactInReactAndFlee" description="When this ped goes to ThreatResponse, play the flee transition but not the reaction clip if fleeing."/>
    <enumval name="CPED_RESET_FLAG_CannotBeTargeted" description="Will prevent this ped from being a part of any other peds target list"/>
    <enumval name="CPED_RESET_FLAG_IsFalling" description="Ped is in pure fall state (i.e. no parachuting, landing etc included"/>
    <enumval name="CPED_RESET_FLAG_ForceInjuryAfterStunned" description="Forces this ped to the injured state after being stunned"/>
    <enumval name="CPED_RESET_FLAG_HurtThisFrame" description="The ped has entered the hurt state this frame"/>
    <enumval name="CPED_RESET_FLAG_BlockWeaponFire" description="Prevent the ped from shooting a weapon"/>
    <enumval name="CPED_RESET_FLAG_ExpandPedCapsuleFromSkeleton" description="Set the ped capsule radius based on skeleton"/>
    <enumval name="CPED_RESET_FLAG_DisableWeaponLaserSight" description="Toggle the weapon laser sight off for this frame"/>
    <enumval name="CPED_RESET_FLAG_PedExitedVehicleThisFrame" description="Set when ped gets set out of vehicle"/>
    <enumval name="CPED_RESET_FLAG_SearchingForDropDown" description="Ped is seatching for drop down"/>
    <enumval name="CPED_RESET_FLAG_UseTighterTurnSettings" description="Ped should use tighter turn settings in human locomotion motion task"/>
    <enumval name="CPED_RESET_FLAG_DisableArmSolver" description="Disable the arm solver this frame"/>
    <enumval name="CPED_RESET_FLAG_DisableHeadSolver"/>
    <enumval name="CPED_RESET_FLAG_DisableLegSolver"/>
    <enumval name="CPED_RESET_FLAG_DisableTorsoReactSolver"/>
    <enumval name="CPED_RESET_FLAG_ForcePreCameraAIUpdate"/>
    <enumval name="CPED_RESET_FLAG_TasksNeedProcessMoveSignalCalls" description="Set when peds require calls to ProcessMoveSignals(), for AI timeslicing to work with Move"/>
    <enumval name="CPED_RESET_FLAG_ShootFromGround"/>
    <enumval name="CPED_RESET_FLAG_NoCollisionMovementMode" description="Set when a ped is moving in an area where collisions with fixed geometry are unlikely.  The ped's physics will not be forced to activate."/>
    <enumval name="CPED_RESET_FLAG_IsNearLaddder" description="Ped is near top of a ladder"/>
    <enumval name="CPED_RESET_FLAG_SkipAimingIdleIntro"/>
    <enumval name="CPED_RESET_FLAG_IgnoredByAutoOpenDoors" description="Set this for a ped to be ignored by the auto opened doors when checking to see if the door should be opened."/>
    <enumval name="CPED_RESET_FLAG_BlockIkWeaponReactions" description="Ped should not play Ik damager reactions while this flag is set"/>
    <enumval name="CPED_RESET_FLAG_FirstPhysicsUpdate" description="Ped was just created this frame"/>
    <enumval name="CPED_RESET_FLAG_SpawnedThisFrameByAmbientPopulation" description="Ped was spawned this frame"/>
    <enumval name="CPED_RESET_FLAG_DisableRootSlopeFixupSolver"/>
    <enumval name="CPED_RESET_FLAG_SuspendInitiatedMeleeActions" description="Temporarily suspend any melee actions this frame (does not include hit reactions). Use PCF_DisableMelee to turn it off completely"/>
    <enumval name="CPED_RESET_FLAG_SuppressInAirEvent" description="Prevents ped from getting the in air event the next frame"/>
    <enumval name="CPED_RESET_FLAG_AllowTasksIncompatibleWithMotion" description="If set, ped will skip CheckTasksAreCompatibleWithMotion"/>
    <enumval name="CPED_RESET_FLAG_IsEnteringOrExitingVehicle" description="TASK_ENTER_VEHICLE or TASK_EXIT_VEHICLE"/>
    <enumval name="CPED_RESET_FLAG_PlayerOnHorse" description="TASK_PLAYER_ON_HORSE"/>
    <enumval name="CPED_RESET_FLAG_HasGunTaskWithAimingState" description="Ped is running TASK_GUN and task's state is State_Aim"/>
    <enumval name="CPED_RESET_FLAG_SuppressLethalMeleeActions" description="This will suppress any melee action that is considered lethal (RA_IS_LETHAL, defined in action_table.meta)"/>
    <enumval name="CPED_RESET_FLAG_InstantBlendToAimFromScript"/>
    <enumval name="CPED_RESET_FLAG_IsStillOnBicycle"/>
    <enumval name="CPED_RESET_FLAG_IsSittingAndCycling"/>
    <enumval name="CPED_RESET_FLAG_IsStandingAndCycling"/>
    <enumval name="CPED_RESET_FLAG_IsDoingCoverAimOutro"/>
    <enumval name="CPED_RESET_FLAG_ApplyCoverWeaponBlockingOffsets"/>
    <enumval name="CPED_RESET_FLAG_IsInLowCover"/>
    <enumval name="CPED_RESET_FLAG_AmbientIdleAndBaseAnimsBlocked" description="Blocks ambient idles and base animations from playing."/>
    <enumval name="CPED_RESET_FLAG_UseAlternativeWhenBlock" description="If set, ped will use alternative aiming/firing anims"/>
    <enumval name="CPED_RESET_FLAG_ForceLowLodWaterCheck" description="If set, the ped will always force probe for being in water when in low LOD mode."/>
    <enumval name="CPED_RESET_FLAG_MakeHeadInvisible" description="If set, scale the head of the ped to 0.001"/>
    <enumval name="CPED_RESET_FLAG_NoAutoRunWhenFiring" description="Don't auto run when NoAutoRunWhenFiring is set."/>
    <enumval name="CPED_RESET_FLAG_PermitEventDuringScenarioExit" description="Ignore certain aspects (FOV checks, etc) of AffectsPedCore() on some events while the ped is playing a scenario exit."/>
    <enumval name="CPED_RESET_FLAG_DisableSteeringAroundVehicles" description="Enables/disables the low-level steering behaviour around vehicles"/>
    <enumval name="CPED_RESET_FLAG_DisableSteeringAroundPeds" description="Enables/disables the low-level steering behaviour around peds"/>
    <enumval name="CPED_RESET_FLAG_DisableSteeringAroundObjects" description="Enables/disables the low-level steering behaviour around objects"/>
    <enumval name="CPED_RESET_FLAG_DisableSteeringAroundNavMeshEdges" description="Enables/disables the low-level steering behaviour around nav mesh edges"/>
    <enumval name="CPED_RESET_FLAG_WantsToEnterVehicleFromCover"/>
    <enumval name="CPED_RESET_FLAG_WantsToEnterCover"/>
    <enumval name="CPED_RESET_FLAG_WantsToEnterVehicleFromAiming"/>
    <enumval name="CPED_RESET_FLAG_CapsuleBeingPushedByVehicle"/>
    <enumval name="CPED_RESET_FLAG_DisableTakeOffParachutePack"/>
    <enumval name="CPED_RESET_FLAG_IsCallingPolice"/>
    <enumval name="CPED_RESET_FLAG_ForceCombatTaunt" description="Forces a combat taunt for peds using the insult special ability."/>
    <enumval name="CPED_RESET_FLAG_IgnoreCombatTaunts"/>
    <enumval name="CPED_RESET_FLAG_SkipAiUpdateProcessControl" description="True if we've already run this ped's AI and can skip it from within ProcessControl"/>
    <enumval name="CPED_RESET_FLAG_OverridePhysics" description="A reset flag that disables collision and gravity on the ped and drives entity positions and rotations directly, rather than going through the physics update."/>
    <enumval name="CPED_RESET_FLAG_WasPhysicsOverridden" description="True if physics was overriden during the last update."/>
    <enumval name="CPED_RESET_FLAG_BlockWeaponHoldingAnims" description="Block any onfoot weapon holding anims."/>
    <enumval name="CPED_RESET_FLAG_DisableMoveTaskHeadingAdjustments" description="True if the ped's movement task should not adjust the heading of the ped."/>
    <enumval name="CPED_RESET_FLAG_DisableBodyLookSolver"/>
    <enumval name="CPED_RESET_FLAG_PreventAllMeleeTakedowns" description="Will temporarily prevent any takedown from being performed on this ped"/>
    <enumval name="CPED_RESET_FLAG_PreventFailedMeleeTakedowns" description="Will temporarily prevent any failed takedowns from being performed on this ped"/>
    <enumval name="CPED_RESET_FLAG_IsPedalling"/>
    <enumval name="CPED_RESET_FLAG_UseTighterAvoidanceSettings" description="Ped should use tighter avoidance settings in navigation task"/>
    <enumval name="CPED_RESET_FLAG_IsHigherPriorityClipControllingPed" description="True if the active task on the main task tree is taking responsibility for the mover track"/>
    <enumval name="CPED_RESET_FLAG_VehicleCrushingRagdoll" description="Set to true if a vehicle is pressing downward on the ragdoll"/>
    <enumval name="CPED_RESET_FLAG_OnActivationUpdate" description="Ped was just activated this frame"/>
    <enumval name="CPED_RESET_FLAG_ForceMotionStateLeaveDesiredMBR" description="Set this to disable setting the desired move blendratio when forcing the motion state. Usefull for forcing a flee start, etc"/>
    <enumval name="CPED_RESET_FLAG_DisableDropDowns" description="Disable drop downs for this ped"/>
    <enumval name="CPED_RESET_FLAG_InContactWithBIGFoliage" description="ped is in contact with GTA_FOLIAGE_TYPE bounds that are large and the player can be hidden"/>
    <enumval name="CPED_RESET_FLAG_DisableTakeOffScubaGear"/>
    <enumval name="CPED_RESET_FLAG_DisableCellphoneAnimations" description="tells taskmobile phone to Blends out move network and prevents it from blending in"/>
    <enumval name="CPED_RESET_FLAG_IsExitingVehicle" description="TASK_EXIT_VEHICLE"/>
    <enumval name="CPED_RESET_FLAG_DisableActionMode" description="Disables combat anims for ped"/>
    <enumval name="CPED_RESET_FLAG_EquippedWeaponChanged" description="Equipped weapon changed this frame"/>
    <enumval name="CPED_RESET_FLAG_TouchingOverhang" description="Some part appears to be contrained downwards"/>
    <enumval name="CPED_RESET_FLAG_TooSteepForPlayer" description="We're standing on something flagged too steep for the player to stand on"/>
    <enumval name="CPED_RESET_FLAG_BlockSecondaryAnim" description="Block any secondary scripted task animations playing on this ped"/>
    <enumval name="CPED_RESET_FLAG_IsInCombat" description="This ped is running the combat task"/>
    <enumval name="CPED_RESET_FLAG_UseHeadOrientationForPerception" description="Will use the ped's head orientation for perception tests"/>
    <enumval name="CPED_RESET_FLAG_IsDoingDriveby" description="This ped is running a driveby gun or projectile task"/>
    <enumval name="CPED_RESET_FLAG_IsEnteringCover" description="This ped is running a cover entry task"/>
    <enumval name="CPED_RESET_FLAG_ForceMovementScannerCheck" description="Set to make CStaticMovementScanner::Scan() check for collisions as if we were moving"/>
    <enumval name="CPED_RESET_FLAG_DisableJumpRagdollOnCollision" description="If true, the player will no longer auto-ragdoll when colliding with objects, peds, etc. while jumping"/>
    <enumval name="CPED_RESET_FLAG_IsBeingMeleeHomedByPlayer" description="Set on the target ped in melee if the player is homing towards them"/>
    <enumval name="CPED_RESET_FLAG_ShouldLaunchBicycleThisFrame" description="This ped should launch the bicycle this frame"/>
    <enumval name="CPED_RESET_FLAG_CanDoBicycleWheelie" description="This ped can do a bicycle wheelie"/>
    <enumval name="CPED_RESET_FLAG_ForceProcessPhysicsUpdateEachSimStep" description="If true, ProcessPhysics() will execute completely for each physics simulation step"/>
    <enumval name="CPED_RESET_FLAG_DisablePedCapsuleMapCollision" description="Disables collision between the ped capsule and the map (usefull in cases where the entity position is being tightly controlled outside of physics, e.g. by an animation)"/>
    <enumval name="CPED_RESET_FLAG_DisableSeatShuffleDueToInjuredDriver" description="If true, motion in vehicle task won't shuffle to the driver seat just because the driver is injured"/>
    <enumval name="CPED_RESET_FLAG_DisableParachuting"/>
    <enumval name="CPED_RESET_FLAG_ProcessPostMovement" description="do we need to call ProcessPostMovement for tasks"/>
    <enumval name="CPED_RESET_FLAG_ProcessPostCamera" description="do we need to call ProcessPostCamera for tasks"/>
    <enumval name="CPED_RESET_FLAG_ProcessPostPreRender" description="do we need to call ProcessPostPreRender for tasks"/>
    <enumval name="CPED_RESET_FLAG_PreventBicycleFromLeaningOver"/>
    <enumval name="CPED_RESET_FLAG_KeepParachutePackOnAfterTeleport"/>
    <enumval name="CPED_RESET_FLAG_DontRaiseFistsWhenLockedOn"/>
    <enumval name="CPED_RESET_FLAG_PreferMeleeBodyIkHitReaction"  description="This will prefer all melee hit reactions to use body ik hit reactions if ragdoll is not selected"/>
    <enumval name="CPED_RESET_FLAG_ProcessPhysicsTasksMotion" description="do we need to call process physics for motion tasks this frame"/>
    <enumval name="CPED_RESET_FLAG_ProcessPhysicsTasksMovement" description="do we need to call process physics for movement tasks this frame"/>
    <enumval name="CPED_RESET_FLAG_DisableFriendlyGunReactAudio" description="If set, disables friendly responses to gunshots/being aimed at."/>
    <enumval name="CPED_RESET_FLAG_DisableAgitationTriggers"/>
    <enumval name="CPED_RESET_FLAG_ForceForwardTransitionInReactAndFlee" description="If set, force CTaskReactAndFlee to use a forward facing flee transition"/>
    <enumval name="CPED_RESET_FLAG_IsEnteringVehicle" description="TASK_ENTER_VEHICLE"/>
    <enumval name="CPED_RESET_FLAG_DoNotSkipNavMeshTrackerUpdate" description="If set we will not allow the NavMeshTracker update to be skipped this frame."/>
    <enumval name="CPED_RESET_FLAG_RagdollOnVehicle" description="Set to true when the ragdoll is lying on top of a vehicle (note- hands, feet, forearms and shins are not included in the test)"/>
    <enumval name="CPED_RESET_FLAG_BlockRagdollActivationInVehicle"/>
    <enumval name="CPED_RESET_FLAG_DisableNMForRiverRapids" description="If set, disable NM reactions to fast moving water"/>
    <enumval name="CPED_RESET_FLAG_IsInWrithe" description="If set, the ped is on the ground writhing and might start shooting from ground"/>
    <enumval name="CPED_RESET_FLAG_PreventGoingIntoStillInVehicleState" description="If set, the ped will not go into the still in vehicle pose"/>
    <enumval name="CPED_RESET_FLAG_UseFastEnterExitVehicleRates" description="If set, the ped will get in and out of vehicles faster"/>
    <enumval name="CPED_RESET_FLAG_DisableGroundAttachment" description="If set, the ped won't attach to a ground physical when his physics disables (useful for cutscenes, etc)"/>
    <enumval name="CPED_RESET_FLAG_DisableAgitation"/>
    <enumval name="CPED_RESET_FLAG_DisableTalk"/>
    <enumval name="CPED_RESET_FLAG_InterruptedToQuickStartEngine"/>
    <enumval name="CPED_RESET_FLAG_PedEnteredFromLeftEntry"/>
    <enumval name="CPED_RESET_FLAG_IsDiving"/>
    <enumval name="CPED_RESET_FLAG_DisableVehicleImpacts"/>
    <enumval name="CPED_RESET_FLAG_DeepVehicleImpacts"/>
    <enumval name="CPED_RESET_FLAG_DisablePedCapsuleControl"/>
    <enumval name="CPED_RESET_FLAG_UseProbeSlopeStairsDetection"/>
    <enumval name="CPED_RESET_FLAG_DisableVehicleDamageReactions"/>
    <enumval name="CPED_RESET_FLAG_DisablePotentialBlastReactions"/>
    <enumval name="CPED_RESET_FLAG_OnlyAllowLeftArmDoorIk"/>
    <enumval name="CPED_RESET_FLAG_OnlyAllowRightArmDoorIk"/>
    <enumval name="CPED_RESET_FLAG_ForceProcessPedStandingUpdateEachSimStep" description="When set, ProcessPedStanding will get called for each physics step."/>
    <enumval name="CPED_RESET_FLAG_DisableFlashLight" description="When set, the flash light on a Ai weapon will be turned off."/>
    <enumval name="CPED_RESET_FLAG_DoingCombatRoll" description="When set, the ped is doing a combat roll"/>
    <enumval name="CPED_RESET_FLAG_DisableBodyRecoilSolver"/>
    <enumval name="CPED_RESET_FLAG_CanAbortExitForInAirEvent" description="When set, the ped can abort the exit vehicle anim to go into fall"/>
    <enumval name="CPED_RESET_FLAG_DisableSprintDamage"/>
    <enumval name="CPED_RESET_FLAG_ForceEnableFlashLightForAI" description="When set, the ai ped will enable their flash light"/>
    <enumval name="CPED_RESET_FLAG_IsDoingCoverAimIntro"/>
    <enumval name="CPED_RESET_FLAG_IsAimingFromCover"/>
    <enumval name="CPED_RESET_FLAG_WaitingForCompletedPathRequest" description="This ped is waiting for a path request which is now complete, so their tasks must be updated this frame"/>
    <enumval name="CPED_RESET_FLAG_DisableCombatAudio"/>
    <enumval name="CPED_RESET_FLAG_DisableCoverAudio"/>
    <enumval name="CPED_RESET_FLAG_PreventBikeFromLeaning"/>
    <enumval name="CPED_RESET_FLAG_InCoverTaskActive"/>
    <enumval name="CPED_RESET_FLAG_EnableSteepSlopePrevention" description="Pushes the ped through the same steep slope tolerances in TaskMotionBase that the player encounters"/>
    <enumval name="CPED_RESET_FLAG_InsideEnclosedSearchRegion"/>
    <enumval name="CPED_RESET_FLAG_JumpingOutOfVehicle"/>
    <enumval name="CPED_RESET_FLAG_IsTuckedOnBicycleThisFrame"/>
    <enumval name="CPED_RESET_FLAG_ProcessPostMovementTimeSliced" description="Parallel flag to ProcessPostMovement, except this is reset in PreTask(), meaning it stays consistent across timeslicing."/>
    <enumval name="CPED_RESET_FLAG_EnablePressAndReleaseDives"/>
    <enumval name="CPED_RESET_FLAG_OnlyExitVehicleOnButtonRelease"/>
    <enumval name="CPED_RESET_FLAG_IsGoingToStandOnExitedVehicle"/>
    <enumval name="CPED_RESET_FLAG_BlockRagdollFromVehicleFallOff"/>
    <enumval name="CPED_RESET_FLAG_DisableTorsoVehicleSolver"/>
    <enumval name="CPED_RESET_FLAG_IsExitingUpsideDownVehicle"/>
    <enumval name="CPED_RESET_FLAG_IsExitingOnsideVehicle"/>
    <enumval name="CPED_RESET_FLAG_IsExactStopping"/>
    <enumval name="CPED_RESET_FLAG_IsExactStopSettling"/>
    <enumval name="CPED_RESET_FLAG_IsTrainCrushingRagdoll"/>
    <enumval name="CPED_RESET_FLAG_OverrideHairScale" description="Scales the ped's hair down to the specified value"/>
    <enumval name="CPED_RESET_FLAG_ConsiderAsPlayerCoverThreatWithoutLOS" description="Considered as a threat as part of player cover search even if they can't see the player"/>
    <enumval name="CPED_RESET_FLAG_BlockCustomAIEntryAnims"/>
    <enumval name="CPED_RESET_FLAG_IgnoreVehicleEntryCollisionTests"/>
    <enumval name="CPED_RESET_FLAG_StreamActionModeAnimsIfDisabled" description="Stream action mode anims even if action mode is disabled"/>
    <enumval name="CPED_RESET_FLAG_ForceUpdateRagdollMatrix" description="Ped requires ragdoll matrix update next frame."/>
    <enumval name="CPED_RESET_FLAG_PreventGoingIntoShuntInVehicleState" description="If set, the ped will not go into the shunt in vehicle pose"/>
    <enumval name="CPED_RESET_FLAG_DisableIndependentMoverFrame"/>
    <enumval name="CPED_RESET_FLAG_DoingDrivebyOutro"/>
    <enumval name="CPED_RESET_FLAG_BeingElectrocuted"/>
    <enumval name="CPED_RESET_FLAG_DisableUnarmedDrivebys"/>
    <enumval name="CPED_RESET_FLAG_TalkingToPlayer"/>
    <enumval name="CPED_RESET_FLAG_DontActivateRagdollFromPlayerPedImpactReset" description="Block ragdoll activations from animated player bumps"/>
    <enumval name="CPED_RESET_FLAG_DontActivateRagdollFromAiRagdollImpactReset" description="Block ragdoll activations from collisions with an ai ragdoll"/>
    <enumval name="CPED_RESET_FLAG_DontActivateRagdollFromPlayerRagdollImpactReset" description="Block ragdoll activations from collisions with a player ragdoll"/>
    <enumval name="CPED_RESET_FLAG_DisableVisemeBodyAdditive" description="If set, prevents visemes from playing any additive body animations"/>
    <enumval name="CPED_RESET_FLAG_CapsuleBeingPushedByPlayerCapsule" description="Set when the player capsule is pushing up against this peds capsule"/>
    <enumval name="CPED_RESET_FLAG_ForceActionMode"/>
    <enumval name="CPED_RESET_FLAG_ForceUnarmedActionMode"/>
    <enumval name="CPED_RESET_FLAG_UsingMoverExtraction" description="Set when the players capsule is getting repositioned each frame relative to an anim and origin"/>
    <enumval name="CPED_RESET_FLAG_BeingJacked"/>
    <enumval name="CPED_RESET_FLAG_EnableVoiceDrivenMouthMovement" description="If set, turn on the voice driven mouth movement"/>
    <enumval name="CPED_RESET_FLAG_IsReloading"/>
    <enumval name="CPED_RESET_FLAG_UseTighterEnterVehicleSettings" description="Ped should use tighter (shorter) settings for entering vehicles"/>
    <enumval name="CPED_RESET_FLAG_InRaceMode" description="Set when the player is in the race mode."/>
    <enumval name="CPED_RESET_FLAG_DisableAmbientMeleeMoves" description="Disable ambient (initial) melee moves"/>
    <enumval name="CPED_RESET_FLAG_ForceBuoyancyProcessingIfAsleep"/>
    <enumval name="CPED_RESET_FLAG_AllowSpecialAbilityInVehicle" description="Allows the player to trigger the special ability while in a vehicle"/>
    <enumval name="CPED_RESET_FLAG_DisableInVehicleActions" description="Prevents ped from doing in vehicle actions such as starting engine, hotwiring, closing door etc."/>
    <enumval name="CPED_RESET_FLAG_ForceInstantSteeringWheelIkBlendIn" description="Forces ped to blend in steering wheel ik instantly rather than over time."/>
    <enumval name="CPED_RESET_FLAG_IgnoreThreatEngagePlayerCoverBonus" description="Ignores the bonus score for selecting cover that the player can engage the enemy at"/>
    <enumval name="CPED_RESET_FLAG_Block180Turns" description="Blocks triggering of 180 turns in human locomotion this frame."/>
    <enumval name="CPED_RESET_FLAG_DontCloseVehicleDoor" description="Prevents the ped from closing the vehicle door of the car they're in"/>
    <enumval name="CPED_RESET_FLAG_SkipExplosionOcclusion" description="Map collision will not block this ped from being hit by explosions"/>
    <enumval name="CPED_RESET_FLAG_ProcessPhysicsTasksTimeSliced" description="Parallel flag to ProcessPhysicsTasks, except this is reset in PreTask(), meaning it stays consistent across timeslicing."/>
    <enumval name="CPED_RESET_FLAG_MeleeStrikeAgainstNonPed" description="Set when the ped has performed a melee strike and hit any non ped material"/>
    <enumval name="CPED_RESET_FLAG_IgnoreNavigationForDoorArmIK" description="We will not attempt to walk around doors when using arm IK"/>
    <enumval name="CPED_RESET_FLAG_DisableAimingWhileParachuting" description="Disable aiming while parachuting"/>
    <enumval name="CPED_RESET_FLAG_DisablePedCollisionWithPedEvent" description="Disable hit reaction due to colliding with a ped"/>
    <enumval name="CPED_RESET_FLAG_IgnoreVelocityWhenClosingVehicleDoor" description="Will ignore the vehicle speed threshold and close the door anyway"/>
    <enumval name="CPED_RESET_FLAG_SkipOnFootIdleIntro"/>
    <enumval name="CPED_RESET_FLAG_DontWalkRoundObjects" description="Don't walk round objects that we collide with whilst moving"/>
    <enumval name="CPED_RESET_FLAG_DisablePedEnteredMyVehicleEvents"/>
    <enumval name="CPED_RESET_FLAG_CancelLeftHandGripIk" description="Call ProcessLeftHandGripIk() to cancel left hand grip IK, at the right time of the frame"/>
    <enumval name="CPED_RESET_FLAG_ResetMovementStaticCounter" description="Will keep reset the static counter when this is set"/>
    <enumval name="CPED_RESET_FLAG_DisableInVehiclePedVariationBlocking" description="Will allow ped variations to be rendered in vehicles, even if marked otherwise"/>
    <enumval name="CPED_RESET_FLAG_ReduceEffectOfVehicleRamControlLoss" description="When on a mission this reset flag will slightly reduce the amount of time the player loses control of their vehicle when hit by an AI ped"/>
    <enumval name="CPED_RESET_FLAG_DisablePlayerMeleeFriendlyAttacks" description="Another flag to disable friendly attack from the player. Set on the opponent you would like it to be disabled on."/>
    <enumval name="CPED_RESET_FLAG_MotionPedDoPostMovementIndependentMover"/>
    <enumval name="CPED_RESET_FLAG_IsMeleeTargetUnreachable" description="Set when the melee target has been deemed unreachable (AI only)"/>
    <enumval name="CPED_RESET_FLAG_DisableAutoForceOutWhenBlowingUpCar"/>
    <enumval name="CPED_RESET_FLAG_ThrowingProjectile"/>
    <enumval name="CPED_RESET_FLAG_OverrideHairScaleLarger" description="Scales the ped's hair up to the specified value"/>
    <enumval name="CPED_RESET_FLAG_DisableDustOffAnims" description="Disable amient dust off animations"/>
    <enumval name="CPED_RESET_FLAG_DisableMeleeHitReactions" description="This ped will refrain from ever performing a melee hit reaction"/>
    <enumval name="CPED_RESET_FLAG_VisemeAnimsAudioBlocked" description="Blocks viseme anims audio from playing"/>
    <enumval name="CPED_RESET_FLAG_AllowHeadPropInVehicle" description="This overrides PV_FLAG_NOT_IN_CAR set on any head prop and stops it from being removed when getting into the vehicle"/>
    <enumval name="CPED_RESET_FLAG_IsInVehicleChase"/>
    <enumval name="CPED_RESET_FLAG_DontQuitMotionAiming"/>
    <enumval name="CPED_RESET_FLAG_SetLastBoundMatricesDone" description="Ensure that the last bound matrices are only updated once per frame"/>
    <enumval name="CPED_RESET_FLAG_PreserveAnimatedAngularVelocity" description="Don't allow the locomotion task to adjust angular velocity coming from animation"/>
    <enumval name="CPED_RESET_FLAG_OpenDoorArmIK" description="Set if the ped should enable open door arm IK"/>
    <enumval name="CPED_RESET_FLAG_UseTighterTurnSettingsForScript" description="Script set flag, to force use of tighter turn settings in locomotion task"/>
    <enumval name="CPED_RESET_FLAG_ForcePreCameraProcessExternallyDrivenDOFs" description="Set if the ped should process externally driven dofs before the pre-camera ai update"/>
    <enumval name="CPED_RESET_FLAG_LadderBlockingMovement" description="Ped is waiting for ladder and blocking movement to prevent falling off"/>
    <enumval name="CPED_RESET_FLAG_DisableVoiceDrivenMouthMovement" description="If set, turn off the voice driven mouth movement (overrides EnableVoiceDrivenMouthMovement)"/>
    <enumval name="CPED_RESET_FLAG_SteerIntoSkids" description="If set, steer into skids while driving"/>
    <enumval name="CPED_RESET_FLAG_AllowOpenDoorIkBeforeFullMovement" description="When set, code will ignore the logic that requires the ped to be in CTaskHumanLocomotion::State_Moving"/>
    <enumval name="CPED_RESET_FLAG_AllowHomingMissileLockOnInVehicle" description="When set, code will bypass rel settings and allow a homing lock on to this ped when they are in a vehicle"/>
    <enumval name="CPED_RESET_FLAG_AllowCloneForcePostCameraAIUpdate"/>
    <enumval name="CPED_RESET_FLAG_DisableHighHeels" description="Force the high heels DOF to be 0"/>
    <enumval name="CPED_RESET_FLAG_BreakTargetLock" description="Force lock on to break for this ped"/>
    <enumval name="CPED_RESET_FLAG_DontUseSprintEnergy" description="Player does not get tired when sprinting"/>
    <enumval name="CPED_RESET_FLAG_DontChangeHorseMbr" description="Similar to CPED_RESET_FLAG_DontChangeMbrInSimpleMoveDoNothing, but for horses."/>
    <enumval name="CPED_RESET_FLAG_DisableMaterialCollisionDamage" description="Don't be damaged by touching dangerous material (e.g. electic generator)"/>
    <enumval name="CPED_RESET_FLAG_DisableMPFriendlyLockon" description="Don't target friendly players in MP"/>
    <enumval name="CPED_RESET_FLAG_DisableMPFriendlyLethalMeleeActions" description="Don't melee kill friendly players in MP"/>
    <enumval name="CPED_RESET_FLAG_IfLeaderStopsSeekCover" description="If our leader stops, try and seek cover if we can"/>
    <enumval name="CPED_RESET_FLAG_ProcessPostPreRenderAfterAttachments" description="do we need to call CPED_RESET_FLAG_ProcessPostPreRenderAfterAttachments for tasks"/>
    <enumval name="CPED_RESET_FLAG_DoDamageCoughFacial"/>
    <enumval name="CPED_RESET_FLAG_IsUsingJetpack" description="Is ped currently using jetpack. e.g. in air"/>
    <enumval name="CPED_RESET_FLAG_UseInteriorCapsuleSettings" description="Use Interior capsule settings"/>
    <enumval name="CPED_RESET_FLAG_IsClosingVehicleDoor" description="Ped is closing a vehicle door"/>
    <enumval name="CPED_RESET_FLAG_DisableIdleExtraHeadingChange" description="Disable lerping the ped towards the desired heading in the locomotion idle"/>
    <enumval name="CPED_RESET_FLAG_OnlySelectVehicleWeapons" description="Only allows vehicle weapons to be selected in CPedWeaponSelector::SelectWeapon"/>
    <enumval name="CPED_RESET_FLAG_IsWarpingIntoVehicleMP" description="Set in CTaskEnterVehicle::SetPedInSeat_OnEnter if ped is warping into a vehicle in multiplayer"/>
    <enumval name="CPED_RESET_FLAG_RemoveHelmet" description="Forces a ped to remove its helmet."/>
    <enumval name="CPED_RESET_FLAG_IsRemovingHelmet" description="Returns true if ped is removing its helmet."/>
    <enumval name="CPED_RESET_FLAG_GestureAnimsBlockedFromScript"/>
    <enumval name="CPED_RESET_FLAG_NeverRagdoll" description="Disable all attempts by this ped to ragdoll."/>
    <enumval name="CPED_RESET_FLAG_DisableWallHitAnimation" description="Disable stuck wall hit animation for the ped this frame."/>
    <enumval name="CPED_RESET_FLAG_PlayAgitatedAnimsInVehicle" description="Play agitated anims in vehicle - overrides normal sit idle"/>
    <enumval name="CPED_RESET_FLAG_IsSeatShuffling" description="Returns true if ped is shuffling seat."/>
    <enumval name="CPED_RESET_FLAG_IsThrowingProjectileWhileAiming" description="True if we are running TASK_AIM_AND_THROW_PROJECTILE as a subtask of TASK_AIM_GUN_ON_FOOT."/>
    <enumval name="CPED_RESET_FLAG_DisableProjectileThrowsWhileAimingGun" description="Set by script command DISABLE_PLAYER_THROW_GRENADE_WHILE_USING_GUN."/>
    <enumval name="CPED_RESET_FLAG_AllowControlRadioInAnySeatInMP" description="Allows ped in any seat to control radio in multiplayer."/>
    <enumval name="CPED_RESET_FLAG_DisableSpycarTransformation" description="Blocks ped from manually transforming spycar to/from car/sub modes."/>
    <enumval name="CPED_RESET_FLAG_BlockQuadLocomotionIdleTurns" description="Prevent CTaskQuadLocomotion from blending in idle turns, regardless of desired/currenting heading differential."/>
    <enumval name="CPED_RESET_FLAG_BlockHeadbobbingToRadio" description="Blocks ped from headbobbing to radio music in vehicles."/>
    <enumval name="CPED_RESET_FLAG_PlayFPSIdleFidgets" description="Allows us to load and play idle fidgets in TaskMotionAiming"/>
    <enumval name="CPED_RESET_FLAG_ForceExtraLongBlendInForPedSkipIdleCoverTransition" description="When putting a ped directly into cover, the ped will blend in the new cover anims slowly to prevent a pose pop"/>
    <enumval name="CPED_RESET_FLAG_BlendingOutFPSIdleFidgets" description="True if FPS idle fidgets are blending out"/>
    <enumval name="CPED_RESET_FLAG_DisableMotionBaseVelocityOverride"/>
    <enumval name="CPED_RESET_FLAG_FPSSwimUseSwimMotionTask" description="Set to true when we are pressing forward on the left stick in FPS mode so we switch from Aiming to Swimmimg/Diving motion tasks"/>
    <enumval name="CPED_RESET_FLAG_FPSSwimUseAimingMotionTask" description="Set to true when we are strafing in water in FPS mode so we use the motion aiming task"/>
    <enumval name="CPED_RESET_FLAG_FiringWeaponWhenReady" description="set when ped has decided to fire weapon when ready, used in FPS mode"/>
    <enumval name="CPED_RESET_FLAG_IsBlindFiring" description="True if the blind fire task is running"/>
    <enumval name="CPED_RESET_FLAG_IsPeekingFromCover" description="True if the ped is peeking in cover"/>
    <enumval name="CPED_RESET_FLAG_TaskSkipProcessPreComputeImpacts" description="True to bail out of ProcessPreComputeImpacts"/>
    <enumval name="CPED_RESET_FLAG_DisableAssistedAimLockon" description="Don't ever try to lock on to this ped with cinematic aim"/>
    <enumval name="CPED_RESET_FLAG_FPSAllowAimIKForThrownProjectile" description="To control enabling of FPS aim IK while using a projectile until it is ready"/>
    <enumval name="CPED_RESET_FLAG_TriggerRoadRageAnim"/>
    <enumval name="CPED_RESET_FLAG_ForcePreCameraAiAnimUpdateIfFirstPerson" description="Force a pre camera ai and animation update if the ped is the first person camera target during the pre camera update"/>
    <enumval name="CPED_RESET_FLAG_NoCollisionDamageFromOtherPeds" description="Any ped this is set on won't register damage from collisions against other peds."/>
    <enumval name="CPED_RESET_FLAG_BlockCameraSwitching" description="Block camera view mode switching."/>
    <enumval name="CPED_RESET_FLAG_NeverDieFromCapsuleRagdollSettings" description="Negate the capsule's preference for ragdoll triggering death on this ped."/>
    <enumval name="CPED_RESET_FLAG_InContactWithDeepSurface" description="ped is in contact with GTA_DEEP_SURFACE_TYPE bounds"/>
    <enumval name="CPED_RESET_FLAG_DontSuppressUseNavMeshToNavigateToVehicleDoorWhenVehicleInWater"/>
    <enumval name="CPED_RESET_FLAG_IncludePedReferenceVelocityWhenFiringProjectiles" description="Add on the ped's velocity to the projectile's initial velocity."/>
    <enumval name="CPED_RESET_FLAG_IsDoingCoverOutroToPeek"/>
    <enumval name="CPED_RESET_FLAG_InstantBlendToAimNoSettle"/>
    <enumval name="CPED_RESET_FLAG_ForcePreCameraAnimUpdate" description="Force a pre camera animation update if the ped is the first person camera target during the pre camera update"/>
    <enumval name="CPED_RESET_FLAG_DisableHelmetCullFPS" description="Disables PV_FLAG_HIDE_IN_FIRST_PERSON from culling the prop in CPedPropsMgr::RenderPropsInternal"/>
    <enumval name="CPED_RESET_FLAG_ShouldIgnoreCoverAutoHeadingCorrection"/>
    <enumval name="CPED_RESET_FLAG_DisableReticuleInCoverThisFrame"/>
    <enumval name="CPED_RESET_FLAG_ForceScriptedCameraLowCoverAngleWhenEnteringCover"/>
    <enumval name="CPED_RESET_FLAG_DisableCameraConstraintFallBackThisFrame"/>
    <enumval name="CPED_RESET_FLAG_DisableFPSArmIK" description="Disables FPS arm IK in CTaskPlayerOnFoot::IsStateValidForFPSIK"/>
    <enumval name="CPED_RESET_FLAG_DisableRightArmIKInCoverOutroFPS" description="Turn off right arm IK during cover outros in FPS mode when set"/>
    <enumval name="CPED_RESET_FLAG_DoFPSSprintBreakOut"/>
    <enumval name="CPED_RESET_FLAG_DoFPSJumpBreakOut"/>
    <enumval name="CPED_RESET_FLAG_IsExitingCover"/>
    <enumval name="CPED_RESET_FLAG_WeaponBlockedInFPSMode" description="True if running CTaskWeaponBlocked in FPS mode"/>
    <enumval name="CPED_RESET_FLAG_PoVCameraConstrained"/>
    <enumval name="CPED_RESET_FLAG_ScriptClearingPedTasks" description="Set in CommandClearPedTasksImmediately in commands_task.cpp"/>
    <enumval name="CPED_RESET_FLAG_WasFPSJumpingWithProjectile" description="ped was jumping on foot with projectile in hand"/>
    <enumval name="CPED_RESET_FLAG_DisableMeleeWeaponSelection"/>
    <enumval name="CPED_RESET_FLAG_WaypointPlaybackSlowMoreForCorners" description="slow for corners more aggressively for waypoint playback"/>
    <enumval name="CPED_RESET_FLAG_FPSPlacingProjectile" description="True while placing a projectile in FPS mode"/>
    <enumval name="CPED_RESET_FLAG_UseBulletPenetrationForGlass" description="Ped will use bullet penetration code when glass material is hit."/>
    <enumval name="CPED_RESET_FLAG_FPSPlantingBombOnFloor" description="Doing a floor plant with a bomb in FPS mode"/>
    <enumval name="CPED_RESET_FLAG_ForceSkipFPSAimIntro" description="don't do FPS Aim intro"/>
    <enumval name="CPED_RESET_FLAG_CanBePinnedByFriendlyBullets" description="If set on a ped then they are allowed to be pinned by bullets from friendly peds"/>
    <enumval name="CPED_RESET_FLAG_DisableLeftArmIKInCoverOutroFPS" description="Turn off left arm IK during cover outros in FPS mode when set"/>
    <enumval name="CPED_RESET_FLAG_DisableSpikeStripRoadBlocks" description="Blocks road blocks with spike strips from spawning"/>
    <enumval name="CPED_RESET_FLAG_SkipFPSUnHolsterTransition" description="skip aim unholster transition"/>
    <enumval name="CPED_RESET_FLAG_PutDownHelmetFX" description="trigger the put down helmet fx"/>
    <enumval name="CPED_RESET_FLAG_IsLowerPriorityMeleeTarget" description="Peds marked with this flag will only be able to be hit by the player if the player explicitly presses the melee button"/>
    <enumval name="CPED_RESET_FLAG_ForceScanForEventsThisFrame" description="disable timeslicing of event scanning"/>
    <enumval name="CPED_RESET_FLAG_StartProjectileTaskWithPrimingDisabled" description="Set this flag to disable priming when the projectile task starts up until the attack trigger is released and pressed again"/>
    <enumval name="CPED_RESET_FLAG_CheckFPSSwitchInCameraUpdate" description="Set if we want to perform a second AI/anim update when switching between first person/third person"/>
    <enumval name="CPED_RESET_FLAG_ForceAutoEquipHelmetsInAicraft" description="Force ped to auto-equip a helmet om entering aircraft. Overrides PCF_DisableAutoEquipHelmetsInAicraft (set in the interaction menu)"/>
    <enumval name="CPED_RESET_FLAG_BlockRemotePlayerRecording" description="Flag used by replay editor to disable recording specified remote players (for url:bugstar:2218297)."/>
    <enumval name="CPED_RESET_FLAG_InflictedDamageThisFrame" description="Inflicted damage this frame"/>
    <enumval name="CPED_RESET_FLAG_UseFirstPersonVehicleAnimsIfFPSCamNotDominant" description="allow FPS vehicle anims even if FPS camera isn't dominant"/>
    <enumval name="CPED_RESET_FLAG_ForceIntoStandPoseOnJetski" description="puts the ped in a standing pose on the jetski"/>
    <enumval name="CPED_RESET_FLAG_InAirDefenceSphere" description="Ped is located inside an air defence sphere."/>
    <enumval name="CPED_RESET_FLAG_SuppressTakedownMeleeActions" description="This will suppress all takedown melee actions (RA_IS_TAKEDOWN or RA_IS_STEALTH_KILL, defined in action_table.meta)"/>
    <enumval name="CPED_RESET_FLAG_InvertLookAroundControls" description="Inverts lookaround controls (right stick / mouse) for this player, for this frame."/>
    <enumval name="CPED_RESET_FLAG_IgnoreCombatManager" description="Allows attacking ped to engage another entity without waiting for its turn (if there's multiple attackers)."/>
    <enumval name="CPED_RESET_FLAG_UseBlendedCamerasOnUpdateFpsCameraRelativeMatrix" description="Check if there is an active camera blending and use the blended camera frame when compute the FPS camera relative matrix."/>
    <enumval name="CPED_RESET_FLAG_ForceMeleeCounter" description="Forces the ped to perform a dodge and a counter move if it's attacked."/>
    <enumval name="CPED_RESET_FLAG_WasHitByVehicleMelee" description="Indicates that ped was hit by vehicle melee attack."/>
    <enumval name="CPED_RESET_FLAG_SuppressNavmeshForEnterVehicleTask" description="Dont allow ped to use navmesh when navigating in TaskEnterVehicle"/>
    <enumval name="CPED_RESET_FLAG_DisableShallowWaterBikeJumpOutThisFrame"/>
    <enumval name="CPED_RESET_FLAG_DisablePlayerCombatRoll" description="Disables player combat rolling."/>
    <enumval name="CPED_RESET_FLAG_IgnoreDetachSafePositionCheck" description="Will ignore safe position check on detaching the ped"/>
    <enumval name="CPED_RESET_FLAG_DisableEasyLadderConditions" description="Prevents the more forgiving MP ladder detection settings from being used, and forces SP settings."/>
    <enumval name="CPED_RESET_FLAG_PlayerIgnoresScenarioSpawnRestrictions" description="Makes local player ignore certain scenario spawn restrictions on scenarios that respect this flag"/>
    <enumval name="CPED_RESET_FLAG_UsingDrone" description="Indicates player is using Drone from Battle DLC"/>
    <enumval name="CPED_RESET_FLAG_ForceWantedLevelWhenKilled" description="Will force the player that killed this ped to get wanted level, even if he wouldnt otherwise"/>
    <enumval name="CPED_RESET_FLAG_UseScriptedWeaponFirePosition" description="Will use scripted firing position on the clones of this ped on other machines"/>
    <enumval name="CPED_RESET_FLAG_EnableCollisionOnNetworkCloneWhenFixed" description="Enable collision on player ped network clones when physics is fixed"/>
    <enumval name="CPED_RESET_FLAG_UseExtendedRagdollCollisionCalculator" description="Use extended logic for determining damage instigator for ragdoll collisions"/>
    <enumval name="CPED_RESET_FLAG_PreventLockonToFriendlyPlayers" description="Prevent the player locking on to friendly players"/>
    <enumval name="CPED_RESET_FLAG_OnlyAbortScriptedAnimOnMovementByInput" description="Modifies AF_ABORT_ON_PED_MOVEMENT to only trigger an abort when movement would be caused by player input"/>
    <enumval name="CPED_RESET_FLAG_PreventAllStealthKills" description="Prevents stealth take downs from being preformed on a ped"/>
    <enumval name="CPED_RESET_FLAG_BlockFallTaskFromExplosionDamage" description="Prevent peds from entering a fall task if affected by explosion damage"/>
    <enumval name="CPED_RESET_FLAG_AllowPedRearEntry" description="Mimics the behaviour like with boss peds by holding the button for entering the rear seats"/>
  </enumdef>
</ParserSchema>
