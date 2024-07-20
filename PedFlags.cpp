

#include "Peds/Ped.h"
#include "Peds/PedCapsule.h"
#include "Peds/PedIntelligence.h"
#include "Peds/PedFlags.h"
#include "Physics/gtaInst.h"
#include "Task/Movement/TaskGotoPoint.h"

#include "Peds/PedFlagsMeta.h"

AI_OPTIMISATIONS();

CompileTimeAssert(CPED_RESET_FLAG_DisablePlayerJumping == 46);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ScriptDisableSecondaryAnimationTasks == 58);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SupressGunfireEvents == 62);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_InfiniteStamina == 63);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_BlockWeaponReactionsUnlessDead == 64);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForcePlayerFiring == 65);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForcePeekFromCover == 67);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForcePedToStrafe == 69);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseKinematicPhysics==71);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ClearLockonTarget == 72);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForcePedToUseScripCamHeading == 77);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableCrouchWhileInCover == 88);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceRunningSpeedForFragSmashing == 91);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ExtraLongWeaponRange == 95);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForcePlayerToEnterVehicleThroughDirectDoorOnly == 96);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_TaskCullExtraFarAway == 97);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisablePlayerAutoVaulting == 102);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableGaitReduction == 103);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseBulletPenetration == 107);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceAimAtHead == 108);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableSeeThroughChecksWhenTargeting == 112);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PanicInVehicle == 120);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_CannotBeTargeted == 124);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceInjuryAfterStunned == 126);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_BlockWeaponFire == 128);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableWeaponLaserSight == 130);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableArmSolver == 134);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableBodyLookSolver == 186);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableHeadSolver == 135);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableLegSolver ==136);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableTorsoSolver == 119);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableTorsoReactSolver == 137);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableRootSlopeFixupSolver == 148);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SuspendInitiatedMeleeActions == 149);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SuppressInAirEvent == 150);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SuppressLethalMeleeActions == 155);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_InstantBlendToAimFromScript == 156);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_MakeHeadInvisible == 166);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_NoAutoRunWhenFiring == 167);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableTakeOffParachutePack == 177);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceCombatTaunt == 179);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IgnoreCombatTaunts == 180);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PreventAllMeleeTakedowns == 187);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PreventFailedMeleeTakedowns == 188);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseTighterAvoidanceSettings == 190);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableDropDowns == 195);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableTakeOffScubaGear == 197);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableCellphoneAnimations == 198);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableActionMode == 200);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseHeadOrientationForPerception == 206);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableJumpRagdollOnCollision == 210);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableParachuting == 217);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_KeepParachutePackOnAfterTeleport == 222);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DontRaiseFistsWhenLockedOn == 223);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PreferMeleeBodyIkHitReaction == 224);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableFriendlyGunReactAudio == 227);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableAgitationTriggers == 228);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableNMForRiverRapids == 234);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PreventGoingIntoStillInVehicleState == 236);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseFastEnterExitVehicleRates == 237);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableAgitation == 239);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableTalk == 240);							// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseProbeSlopeStairsDetection == 247);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableVehicleDamageReactions == 248);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisablePotentialBlastReactions == 249);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_OnlyAllowLeftArmDoorIk == 250);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_OnlyAllowRightArmDoorIk == 251);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableBodyRecoilSolver == 255);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceEnableFlashLightForAI == 258);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableCombatAudio == 262);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableCoverAudio == 263);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_InsideEnclosedSearchRegion == 267);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_EnablePressAndReleaseDives == 271);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_OnlyExitVehicleOnButtonRelease == 272);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableTorsoVehicleSolver == 275);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ConsiderAsPlayerCoverThreatWithoutLOS == 282);// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_BlockCustomAIEntryAnims == 283);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IgnoreVehicleEntryCollisionTests == 284);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PreventGoingIntoShuntInVehicleState == 287);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_EnableVoiceDrivenMouthMovement == 302);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseTighterEnterVehicleSettings == 304);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_InRaceMode == 305);							// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableAmbientMeleeMoves == 306);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_AllowSpecialAbilityInVehicle == 308);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableInVehicleActions == 309);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceInstantSteeringWheelIkBlendIn == 310);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IgnoreThreatEngagePlayerCoverBonus == 311);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DontCloseVehicleDoor == 313);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SkipExplosionOcclusion == 314);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_MeleeStrikeAgainstNonPed == 316);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IgnoreNavigationForDoorArmIK == 317);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableAimingWhileParachuting == 318);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisablePedCollisionWithPedEvent == 319);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IgnoreVelocityWhenClosingVehicleDoor == 320);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SkipOnFootIdleIntro == 321);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DontWalkRoundObjects == 322);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisablePedEnteredMyVehicleEvents == 323);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableInVehiclePedVariationBlocking == 326);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ReduceEffectOfVehicleRamControlLoss == 327);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisablePlayerMeleeFriendlyAttacks == 328);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IsMeleeTargetUnreachable == 330);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableAutoForceOutWhenBlowingUpCar == 331);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableDustOffAnims == 334);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableMeleeHitReactions == 335);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_AllowHeadPropInVehicle == 337); 				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DontQuitMotionAiming == 339); 				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_OpenDoorArmIK == 342);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseTighterTurnSettingsForScript == 343); 		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableVoiceDrivenMouthMovement == 346);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SteerIntoSkids == 347);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_AllowOpenDoorIkBeforeFullMovement == 348);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_AllowHomingMissileLockOnInVehicle == 349);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_AllowCloneForcePostCameraAIUpdate == 350);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableHighHeels == 351);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableMaterialCollisionDamage == 355);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableMPFriendlyLockon == 356);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableMPFriendlyLethalMeleeActions == 357);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IfLeaderStopsSeekCover == 358);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseInteriorCapsuleSettings == 362);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IsClosingVehicleDoor == 363);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PlayAgitatedAnimsInVehicle == 372);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IsSeatShuffling == 373);						// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_AllowControlRadioInAnySeatInMP == 376);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableSpycarTransformation == 377);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceExtraLongBlendInForPedSkipIdleCoverTransition == 381);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableAssistedAimLockon == 390);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_NoCollisionDamageFromOtherPeds == 394);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DontSuppressUseNavMeshToNavigateToVehicleDoorWhenVehicleInWater == 398);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_InstantBlendToAimNoSettle == 401);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceScriptedCameraLowCoverAngleWhenEnteringCover == 406);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableMeleeWeaponSelection == 417);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseBulletPenetrationForGlass == 420);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_CanBePinnedByFriendlyBullets == 423);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableSpikeStripRoadBlocks == 425);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IsLowerPriorityMeleeTarget == 428);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceScanForEventsThisFrame == 429);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceAutoEquipHelmetsInAicraft == 432);		// "Reset out of sync with commands_ped.sch
CompileTimeAssert(CPED_RESET_FLAG_UseFirstPersonVehicleAnimsIfFPSCamNotDominant == 435);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceIntoStandPoseOnJetski == 436);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SuppressTakedownMeleeActions == 438);			// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_InvertLookAroundControls == 439);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IgnoreCombatManager == 440);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseBlendedCamerasOnUpdateFpsCameraRelativeMatrix == 441);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_ForceMeleeCounter == 442);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_WasHitByVehicleMelee == 443);					// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_SuppressNavmeshForEnterVehicleTask == 444);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableShallowWaterBikeJumpOutThisFrame == 445);	// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisablePlayerCombatRoll == 446);				// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_IgnoreDetachSafePositionCheck == 447);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_DisableEasyLadderConditions == 448);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PlayerIgnoresScenarioSpawnRestrictions == 449);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UsingDrone == 450);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseScriptedWeaponFirePosition == 452);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_UseExtendedRagdollCollisionCalculator == 454);// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PreventLockonToFriendlyPlayers == 455);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_PreventAllStealthKills == 457);			    // "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_BlockFallTaskFromExplosionDamage == 458);		// "Reset flags out of sync with commands_ped.sch"
CompileTimeAssert(CPED_RESET_FLAG_AllowPedRearEntry == 459);					// "Reset flags out of sync with commands_ped.sch"


CompileTimeAssert(CPED_CONFIG_FLAG_AllowMedicsToReviveMe == 20);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_GetOutUndriveableVehicle == 29);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_WillFlyThroughWindscreen == 32);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontInfluenceWantedLevel == 42);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableLockonToRandomPeds == 44);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AllowLockonToFriendlyPlayers == 45);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableHornAudioWhenDead == 46);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsAimingGun == 78);							// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcedAim == 101);							// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_KeepWeaponHolsteredUnlessFired == 113);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceScriptControlledKnockout == 114);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_FallOutOfVehicleWhenKilled == 115);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_GetOutBurningVehicle == 116);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_RunFromFiresAndExplosions == 118);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_TreatAsPlayerDuringTargeting == 119);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsHandCuffed == 120);						// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsAnkleCuffed == 121);						// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableMelee == 122);						// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableUnarmedDrivebys == 123);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_JustGetsPulledOutWhenElectrocuted == 124);	// "Config out of sync with commands_ped.sch"
#if ENABLE_DRUNK
CompileTimeAssert(CPED_CONFIG_FLAG_IsDrunk == 125);								// "Config out of sync with commands_ped.sch"
#endif // ENABLE_DRUNK
CompileTimeAssert(CPED_CONFIG_FLAG_WillNotHotwireLawEnforcementVehicle == 126); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_WillCommandeerRatherThanJack == 127);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcePedToFaceLeftInCover == 129);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcePedToFaceRightInCover == 130);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_BlockPedFromTurningInCover == 131);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp == 132);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcePedToBeDragged == 133);					// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PreventPedFromReactingToBeingJacked == 134);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsScuba == 135);								// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_RemoveDeadExtraFarAway == 137);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ArrestResult == 139);						// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanAttackFriendly == 140);					// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_WillJackAnyPlayer == 141);					// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_WillJackWantedPlayersRatherThanStealCar == 144);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableLadderClimbing == 146);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown == 151);// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AlwaysRespondToCriesForHelp == 152);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableBloodPoolCreation == 153);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ShouldFixIfNoCollision == 154);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanPerformArrest == 155);					// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanPerformUncuff == 156);					// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanBeArrested == 157);						// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PlayerPreferFrontSeatMP == 159);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontEnterVehiclesInPlayersGroup == 167);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceDirectEntry == 170);					// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AlwaysSeeApproachingVehicles == 171);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanDiveAwayFromApproachingVehicles == 172);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AllowPlayerToInterruptVehicleEntryExit == 173); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_OnlyAttackLawIfPlayerIsWanted == 174);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PedsJackingMeDontGetIn == 177);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PedIgnoresAnimInterruptEvents == 179);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsInCustody == 180);							// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceStandardBumpReactionThresholds == 181);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_LawWillOnlyAttackIfPlayerIsWanted == 182);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat == 184);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_UseKinematicModeWhenStationary == 185);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PlayerIsWeird == 189);						// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DoNothingWhenOnFootByDefault == 193);		// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontActivateRagdollOnPedCollisionWhenDead == 198); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontActivateRagdollOnVehicleCollisionWhenDead == 199); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_HasBeenInArmedCombat == 200); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_Avoidance_Ignore_All == 202); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_Avoidance_Ignored_by_All == 203); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_Avoidance_Ignore_Group1 == 204); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_Avoidance_Member_of_Group1 == 205); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcedToUseSpecificGroupSeatIndex == 206); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableExplosionReactions == 208); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcedToStayInCover == 211); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_WaitForDirectEntryPointToBeFreeWhenExiting == 215); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_OnlyRequireOnePressToExitVehicle == 216); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceExitToSkyDive == 217); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableExitToSkyDive == 221); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceRagdollUponDeath == 227); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisablePanicInVehicle == 229); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceSkinCharacterCloth == 240); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_LeaveEngineOnWhenExitingVehicles == 241); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableBlindFiringInShotReactions == 245); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AllowNearbyCoverUsage == 246); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanAttackNonWantedPlayerAsLaw == 249); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_WillTakeDamageWhenVehicleCrashes == 250); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AICanDrivePlayerAsRearPassenger == 251); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PlayerCanJackFriendlyPlayers == 252); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PreventUsingLowerPrioritySeats == 261); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_TeleportToLeaderVehicle == 268); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_Avoidance_Ignore_WeirdPedBuffer == 269); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontBlipCop == 272); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_KillWhenTrapped == 275); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AvoidTearGas == 279); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableGoToWritheWhenInjured == 281); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_OnlyUseForcedSeatWhenEnteringHeliInGroup == 282); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableWeirdPedEvents == 285); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ShouldChargeNow == 286); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableShockingEvents == 294); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableShockingDrivingOnPavementEvents == 299); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ShouldThrowSmokeNow == 300); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceInitialPeekInCover == 302); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ShoutToGroupOnPlayerMelee == 311); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceIgnoreMeleeActiveCombatant == 314); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ActivateRagdollFromMinorPlayerContact == 318); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcePoseCharacterCloth == 320); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_HasClothCollisionBounds == 321); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableWritheShootFromGround == 327); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_LowerPriorityOfWarpSeats == 328); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableTalkTo == 329); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IgnoreLegIkRestrictions == 332); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ScriptForceNoTimesliceIntelligenceUpdate == 333); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AllowTaskDoNothingTimeslicing == 339); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_NotAllowedToJackAnyPlayers == 342); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AlwaysLeaveTrainUponArrival == 345); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_OnlyWritheFromWeaponDamage == 347); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_UseSloMoBloodVfx == 348); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PreventDraggedOutOfCarThreatResponse == 350);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PreventAutoShuffleToTurretSeat == 360); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceDeepSurfaceCheck == 356);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableDeepSurfaceAnims == 357);				// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontBlipNotSynced == 358);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsDuckingInVehicle == 359);	// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_TreatDislikeAsHateWhenInCombat == 364); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_OnlyUpdateTargetWantedIfSeen == 365); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AllowAutoShuffleToDriversSeat == 366); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PreventReactingToSilencedCloneBullets == 372); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableInjuredCryForHelpEvents == 373); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_NeverLeaveTrain == 374); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontDropJetpackOnDeath == 375); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes == 380); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInAircraft == 381); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_GoOnWithoutVehicleIfItIsUnableToGetBackToRoad == 391);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_BlockDroppingHealthSnacksOnDeath == 392);			// "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceThreatResponseToNonFriendToFriendMeleeActions == 394); // Forces threat response to melee actions from non friend to friend peds.
CompileTimeAssert(CPED_CONFIG_FLAG_DontRespondToRandomPedsDamage == 395); // Do not respond to random peds damage.
CompileTimeAssert(CPED_CONFIG_FLAG_AllowContinuousThreatResponseWantedLevelUpdates == 396); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_KeepTargetLossResponseOnCleanup == 397); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PlayersDontDragMeOutOfCar == 398); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_BroadcastRepondedToThreatWhenGoingToPointShooting == 399); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IgnorePedTypeForIsFriendlyWith == 400); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_TreatNonFriendlyAsHateWhenInCombat == 401); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontLeaveVehicleIfLeaderNotInVehicle == 402); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AllowMeleeReactionIfMeleeProofIsOn == 404); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_UseNormalExplosionDamageWhenBlownUpInVehicle == 407); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableHomingMissileLockForVehiclePedInside == 408); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableTakeOffScubaGear == 409); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IgnoreMeleeFistWeaponDamageMult == 410);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_LawPedsCanFleeFromNonWantedPlayer == 411);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceBlipSecurityPedsIfPlayerIsWanted == 412);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_UseGoToPointForScenarioNavigation == 414);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontClearLocalPassengersWantedLevel == 415);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_BlockAutoSwapOnWeaponPickups == 416);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ThisPedIsATargetPriorityForAI == 417);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsSwitchingHelmetVisor == 418);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceHelmetVisorSwitch == 419);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsPerformingVehicleMelee == 420);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_UseOverrideFootstepPtFx == 421);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableVehicleCombat == 422);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_AllowBikeAlternateAnimations == 424);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_UseLockpickVehicleEntryAnimations == 426);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_SwatHeliSpawnWithinLastSpottedLocation == 428);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableStartEngine == 429);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IgnoreBeingOnFire == 430);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableTurretOrRearSeatPreference == 431);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableWantedHelicopterSpawning == 432);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_UseTargetPerceptionForCreatingAimedAtEvents == 433);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableHomingMissileLockon == 434);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForceIgnoreMaxMeleeActiveSupportCombatants == 435);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_StayInDefensiveAreaWhenInVehicle == 436);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontShoutTargetPosition == 437);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableHelmetArmor == 438);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PreventVehExitDueToInvalidWeapon == 441);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IgnoreNetSessionFriendlyFireCheckForAllowDamage == 442);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CheckLockedBeforeWarp == 444);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontShuffleInVehicleToMakeRoom == 445);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontHitVehicleWithProjectiles == 447);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableForcedEntryForOpenVehiclesFromTryLockedDoor == 448);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_FiresDummyRockets == 449);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_PedIsArresting == 450);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_IsDecoyPed == 451);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_HasEstablishedDecoy == 452);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_BlockDispatchedHelicoptersFromLanding == 453);  // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontCryForHelpOnStun == 454); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_CanBeIncapacitated == 456); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_ForcedAimFromArrest == 457); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DontChangeTargetFromMelee == 458); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_DisableHealthRegenerationWhenStunned == 459); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_RagdollFloatsIndefinitely == 460); // "Config out of sync with commands_ped.sch"
CompileTimeAssert(CPED_CONFIG_FLAG_BlockElectricWeaponDamage == 461); // "Config out of sync with commands_ped.sch"


// Statics
ePedResetFlagsBitSet		CPedResetFlags::sm_ResetFlagMask;
ePedResetFlagsBitSet		CPedResetFlags::sm_PreAIPostInventoryResetFlagMask;
ePedResetFlagsBitSet		CPedResetFlags::sm_PreTaskResetFlagMask;
ePedResetFlagsBitSet		CPedResetFlags::sm_PrePhysicsFlagMask;
ePedResetFlagsBitSet		CPedResetFlags::sm_PostPhysicsFlagMask;
ePedResetFlagsBitSet		CPedResetFlags::sm_PostMovementFlagMask;
ePedResetFlagsBitSet		CPedResetFlags::sm_PostCameraFlagMask;
ePedResetFlagsBitSet		CPedResetFlags::sm_PostPreRenderFlagMask;

void CPedConfigFlags::Init(CPed* pPed)
{
    m_Flags.BitSet().Reset();

    // script control over taking damage
    SetFlag( CPED_CONFIG_FLAG_CanBeShotInVehicle,  true );			// script can stop peds being shot when driving vehicle (including exposed ones like bikes)
    SetFlag( CPED_CONFIG_FLAG_DrownsInWater,  true );				// does this ped drown or swim?
    SetFlag( CPED_CONFIG_FLAG_DrownsInSinkingVehicle,  true );
    SetFlag( CPED_CONFIG_FLAG_AllowMedicsToReviveMe,  true );		// never allow this ped to be revived
    SetFlag( CPED_CONFIG_FLAG_GetOutUndriveableVehicle,  true );
    SetFlag( CPED_CONFIG_FLAG_GetOutBurningVehicle,  true );
    SetFlag( CPED_CONFIG_FLAG_RunFromFiresAndExplosions,  true );
    SetFlag( CPED_CONFIG_FLAG_AvoidTearGas,  true );
    SetFlag( CPED_CONFIG_FLAG_WillFlyThroughWindscreen,  true );
    SetFlag( CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown, true );
    SetFlag( CPED_CONFIG_FLAG_UseHelmet,  true );
    SetFlag( CPED_CONFIG_FLAG_HideInCutscene,  true );				// all (mission) peds are hidden in cutscene as default

    SetFlag( CPED_CONFIG_FLAG_SteersAroundPeds,  true );
    SetFlag( CPED_CONFIG_FLAG_SteersAroundObjects,  true );
    SetFlag( CPED_CONFIG_FLAG_SteersAroundVehicles,  true );

    SetFlag( CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp, true );

    SetFlag( CPED_CONFIG_FLAG_CanLosePropsOnDamage, true );
    SetFlag( CPED_CONFIG_FLAG_CanLoseHelmetOnDamage, true );

    SetFlag( CPED_CONFIG_FLAG_CanPlayInCarIdles, true ); // By default, allow in-car idles

    // non single bit variables
    nCantBeKnockedOffVehicle  = KNOCKOFFVEHICLE_DEFAULT;		// 0=Default(harder for mission peds) 1=Never 2=Always normal(also for mission peds)

    nPedGestureMode = GESTURE_MODE_DEFAULT;

    SetPassengerIndexToUseInAGroup( -1 );

    SetPedLegIkMode( CIkManager::GetDefaultLegIkMode(pPed) );

    //bReactionAnimsAllowed = true;
    SetClimbRateOverride( 1.0f );

    //bCanPedScanForDeadPeds = false;
    if( pPed->GetCapsuleInfo() )
    {
        // Set the Active ragdoll on NM reaction flag depending on the capsule info
        pPed->SetPedConfigFlag( CPED_CONFIG_FLAG_DontActivateRagdollFromAnyPedImpact, !pPed->GetCapsuleInfo()->GetUsesRagdollReactionIfShoved() );
    }

    // wanted peds will update their enclosed region
    pPed->SetPedConfigFlag(CPED_CONFIG_FLAG_UpdateEnclosedSearchRegion, pPed->IsPlayer());

}
void CPedConfigFlags::Reset(CPed* pPed)
{
    Init(pPed);
}

//
// Function:	CPedResetFlags::StaticInit
// Use:			Sets up bit masks of the flags to clear in various sections of the
void CPedResetFlags::StaticInit()
{
    // reset these flag every frame in the Reset function
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FallenDown );			// decides whether to ik rotate body to match ground angle
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DontRenderThisFrame );	// force ped to stop rendering this frame (for example - drive task can stop peds rendering inside buses)
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SetLastMatrixDone );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SetLastBoundMatricesDone );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PedHitWallLastFrame );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_UsingMobilePhone );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockMovementAnims );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ZeroDesiredMoveBlendRatios );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DontChangeMbrInSimpleMoveDoNothing );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FollowingRoute );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowPullingPedOntoRoute );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_TakingRouteSplineCorner );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_HasProcessedCornering );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_WanderingStoppedForOtherPed );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPhysicsTasks );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPostMovement );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPostCamera );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPostPreRender );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DontChangeHorseMbr );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsLanding );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_CullExtraFarAway );		// flag Ai can set to make ped get culled further away (used for roadblock cops, crimials...)

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DontActivateRagdollFromAnyPedImpactReset );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceScriptControlledRagdoll );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_MoveBlend_bFleeTaskRunning );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsAiming );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_MoveBlend_bTaskComplexGunRunning );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_MoveBlend_bMeleeTaskRunning );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_MoveBlend_bCopSearchTaskRunning );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsEnteringOrExitingVehicle );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PlayerOnHorse );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_HasGunTaskWithAimingState );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsGoingToStandOnExitedVehicle );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DimTargetReticule );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InternalWalkingRndPlayer );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_RandomisePointsDuringNavigation );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_Prevent180SkidTurns );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsOnAssistedMovementRoute );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ApplyVelocityDirectly );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePlayerLockon );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DoNotClampFootIk );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ResetMoveGroupAfterRagdoll );// reset function messes with this, but ok to clear first
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_KnockedToTheFloorByPlayer );// reset function messes with this, but ok to clear first
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsWalkingRoundPlayer );// reset function messes with this, but ok to clear first
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SyncDesiredHeadingToCurrentHeading );// set to true in the reset function (but ok to clear first)
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SupressGunfireEvents );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockWeaponReactionsUnlessDead );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InCoverFacingLeft );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_NotAllowedToChangeCrouchState );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InstantBlendToAim );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceImprovedIdleTurns );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessProbesWhenExtractingZ );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceExplosionCollisions );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IncreasedAvoidanceRadius );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_EnableMoverAnimationWhileAttached );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_NoTimeDelayBeforeShot );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsVaulting );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsParachuting );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableProcessProbes );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SuppressSlowingForCorners );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceAimAtHead );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PuttingOnHelmet );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ResponseAfterScenarioPanic );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SkipReactInReactAndFlee );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceForwardTransitionInReactAndFlee );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_UseTighterTurnSettings );

    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_VisemeAnimsBlocked );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableArmSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableBodyLookSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableBodyRecoilSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableHeadSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableTorsoSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableTorsoReactSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableTorsoVehicleSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableRootSlopeFixupSolver );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ShootFromGround );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_NoAutoRunWhenFiring );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSteeringAroundVehicles );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSteeringAroundPeds );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSteeringAroundObjects );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSteeringAroundNavMeshEdges );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsHigherPriorityClipControllingPed );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceMotionStateLeaveDesiredMBR );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockSecondaryAnim );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPhysicsTasksMotion );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPhysicsTasksMovement );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableNMForRiverRapids );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableFlashLight );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_TalkingToPlayer );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsReloading );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_WantsToEnterCover );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_MotionPedDoPostMovementIndependentMover );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ThrowingProjectile );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_VisemeAnimsAudioBlocked );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPostPreRenderAfterAttachments );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsWarpingIntoVehicleMP );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableWallHitAnimation );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsThrowingProjectileWhileAiming );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableProjectileThrowsWhileAimingGun );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowControlRadioInAnySeatInMP );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PlayFPSIdleFidgets );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlendingOutFPSIdleFidgets );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableMotionBaseVelocityOverride );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FPSSwimUseSwimMotionTask );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FPSSwimUseAimingMotionTask );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FiringWeaponWhenReady );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FPSAllowAimIKForThrownProjectile );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InstantBlendToAimNoSettle );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableHelmetCullFPS );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableFPSArmIK );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableRightArmIKInCoverOutroFPS );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_WeaponBlockedInFPSMode );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ScriptClearingPedTasks );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_WasFPSJumpingWithProjectile );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_WaypointPlaybackSlowMoreForCorners );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FPSPlacingProjectile );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_FPSPlantingBombOnFloor );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableLeftArmIKInCoverOutroFPS );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_StartProjectileTaskWithPrimingDisabled );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_CheckFPSSwitchInCameraUpdate );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InflictedDamageThisFrame );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InAirDefenceSphere );
    sm_ResetFlagMask.BitSet().Set( CPED_RESET_FLAG_UseBlendedCamerasOnUpdateFpsCameraRelativeMatrix );

    // these are the flags we will reset in CPed::ProcessControl() between the weapons and accessories
    sm_PreAIPostInventoryResetFlagMask.BitSet().Set( CPED_RESET_FLAG_TemporarilyBlockWeaponSwitching );
    sm_PreAIPostInventoryResetFlagMask.BitSet().Set( CPED_RESET_FLAG_TemporarilyBlockWeaponEquipping );
    sm_PreAIPostInventoryResetFlagMask.BitSet().Set( CPED_RESET_FLAG_OnlySelectVehicleWeapons );

    // these are the flags we will reset before we perform the task update
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPreRender2 );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsJumping );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_TaskUseKinematicPhysics );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PatrollingInVehicle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceMeleeStrafingAnims );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_CanPedSeeHatedPedBeingUsed );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_AimWeaponReactionRunning );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreTargetsCoverForLOS );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockAnimatedWeaponReactions );
#if ENABLE_DRUNK
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockDrunkBehaviour );
#endif // ENABLE_DRUNK
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_TaskCullExtraFarAway );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePedCapsule );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ExitVehicleTaskFinishedThisFrame );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_RequiresLegIk );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_JayWalking );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsInStationaryScenario );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSeeThroughChecksWhenTargeting );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsRappelling );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsFalling );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PedExitedVehicleThisFrame );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableLegSolver );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_NoCollisionMovementMode );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SkipAimingIdleIntro );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockIkWeaponReactions );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsStandingAndCycling );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsSittingAndCycling );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsStillOnBicycle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsDoingCoverAimOutro );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ApplyCoverWeaponBlockingOffsets );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsInLowCover );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_KeepCoverPoint );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SearchingForCover );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_UseAlternativeWhenBlock );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PermitEventDuringScenarioExit );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_WantsToEnterVehicleFromCover );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_WantsToEnterVehicleFromAiming );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsCallingPolice );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockWeaponHoldingAnims );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsPedalling );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsExitingVehicle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsInCombat );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableActionMode );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_StreamActionModeAnimsIfDisabled );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceLowLodWaterCheck );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsDoingDriveby );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsEnteringCover );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceMovementScannerCheck );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ShouldLaunchBicycleThisFrame );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_CanDoBicycleWheelie );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceProcessPhysicsUpdateEachSimStep );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSeatShuffleDueToInjuredDriver );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventBicycleFromLeaningOver );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsEnteringVehicle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DoNotSkipNavMeshTrackerUpdate );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockRagdollActivationInVehicle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsInWrithe );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InterruptedToQuickStartEngine );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PedEnteredFromLeftEntry );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsDiving );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePedCapsuleControl );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_KeepDesiredCoverPoint );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceProcessPedStandingUpdateEachSimStep );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DoingCombatRoll );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_CanAbortExitForInAirEvent );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSprintDamage );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsDoingCoverAimIntro );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsAimingFromCover );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsDoingCoverAimOutro );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventBikeFromLeaning );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_InCoverTaskActive );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_EnableSteepSlopePrevention );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsClimbing );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_JumpingOutOfVehicle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsTuckedOnBicycleThisFrame );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPostMovementTimeSliced );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockRagdollFromVehicleFallOff );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsExitingUpsideDownVehicle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsExitingOnsideVehicle );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_OverrideHairScale );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceUpdateRagdollMatrix );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableIndependentMoverFrame );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DoingDrivebyOutro );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_Wandering );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BeingElectrocuted );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableUnarmedDrivebys );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableVisemeBodyAdditive );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceActionMode );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceUnarmedActionMode );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BeingJacked );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceBuoyancyProcessingIfAsleep );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_Block180Turns );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ProcessPhysicsTasksTimeSliced );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ResetMovementStaticCounter );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsMeleeTargetUnreachable );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_OverrideHairScaleLarger );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsInVehicleChase );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_LadderBlockingMovement );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BreakTargetLock );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsUsingJetpack );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsClosingVehicleDoor );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableIdleExtraHeadingChange );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_RemoveHelmet );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsRemovingHelmet );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsSeatShuffling );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_NeverRagdoll );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockQuadLocomotionIdleTurns );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsBlindFiring );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePedConstraints );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableAsleepImpulse );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_TaskSkipProcessPreComputeImpacts );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_NeverDieFromCapsuleRagdollSettings );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IncludePedReferenceVelocityWhenFiringProjectiles );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsDoingCoverOutroToPeek );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ShouldIgnoreCoverAutoHeadingCorrection );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableReticuleInCoverThisFrame );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsPeekingFromCover );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_CoverOutroRunning );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableCameraConstraintFallBackThisFrame );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_IsExitingCover );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceSkipFPSAimIntro );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_SkipFPSUnHolsterTransition );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_PutDownHelmetFX );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceWantedLevelWhenKilled );
    sm_PreTaskResetFlagMask.BitSet().Set( CPED_RESET_FLAG_EnableCollisionOnNetworkCloneWhenFixed );

    // these are the flags we will reset in the ResetPrePhysics function
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IsDrowning );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AmbientAnimsBlocked );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoredByAutoOpenDoors );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AmbientIdleAndBaseAnimsBlocked );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_WasPhysicsOverridden );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_VehicleCrushingRagdoll );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_RagdollOnVehicle );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DeepVehicleImpacts );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IsTrainCrushingRagdoll );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_StandingOnForkliftForks );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowUpdateIfNoCollisionLoaded );
    sm_PrePhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DoDamageCoughFacial );

    // these are the flags we will reset in the ResetPostPhysics function
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePlayerJumping );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePlayerVaulting );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePlayerAutoVaulting );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableGaitReduction );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_CollideWithGlassRagdoll );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_CollideWithGlassWeapon );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ScriptDisableSecondaryAnimationTasks );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_InfiniteStamina );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePlayerFiring );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePeekFromCover );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePedToStrafe );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePedToUseScripCamHeading );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseKinematicPhysics );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ClearLockonTarget );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableCrouchWhileInCover );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceRunningSpeedForFragSmashing );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ExtraLongWeaponRange );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePlayerToEnterVehicleThroughDirectDoorOnly );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseBulletPenetration );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ApplyAnimatedVelocityWhilstAttached );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AICoverEntryRunning );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PanicInVehicle );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableDynamicCapsuleRadius );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_CannotBeTargeted );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceInjuryAfterStunned );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_HurtThisFrame );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockWeaponFire );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ExpandPedCapsuleFromSkeleton );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableWeaponLaserSight );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IsNearLaddder );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SuspendInitiatedMeleeActions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SuppressInAirEvent );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SuppressLethalMeleeActions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_InstantBlendToAimFromScript );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_MakeHeadInvisible );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_CapsuleBeingPushedByVehicle );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_CapsuleBeingPushedByPlayerCapsule );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableTakeOffParachutePack );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_OverridePhysics );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceCombatTaunt );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreCombatTaunts );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventAllMeleeTakedowns );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventFailedMeleeTakedowns );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseTighterAvoidanceSettings );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_OnActivationUpdate );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableDropDowns );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableTakeOffScubaGear );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_EquippedWeaponChanged );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseHeadOrientationForPerception );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableJumpRagdollOnCollision );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePedCapsuleMapCollision );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableParachuting );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_KeepParachutePackOnAfterTeleport );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontRaiseFistsWhenLockedOn );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreferMeleeBodyIkHitReaction );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableAgitationTriggers );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventGoingIntoStillInVehicleState );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventGoingIntoShuntInVehicleState );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseFastEnterExitVehicleRates );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableGroundAttachment );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableAgitation );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableTalk );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableVehicleImpacts );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseProbeSlopeStairsDetection );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableVehicleDamageReactions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePotentialBlastReactions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_OnlyAllowLeftArmDoorIk );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_OnlyAllowRightArmDoorIk );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableCombatAudio );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableCoverAudio );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_WaitingForCompletedPathRequest );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceEnableFlashLightForAI );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_EnablePressAndReleaseDives );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_OnlyExitVehicleOnButtonRelease );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ConsiderAsPlayerCoverThreatWithoutLOS );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockCustomAIEntryAnims );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreVehicleEntryCollisionTests );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontActivateRagdollFromPlayerPedImpactReset );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontActivateRagdollFromPlayerRagdollImpactReset );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontActivateRagdollFromAiRagdollImpactReset );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UsingMoverExtraction );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_EnableVoiceDrivenMouthMovement );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseTighterEnterVehicleSettings );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_InRaceMode );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableAmbientMeleeMoves );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowSpecialAbilityInVehicle );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableInVehicleActions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceInstantSteeringWheelIkBlendIn );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreThreatEngagePlayerCoverBonus );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontCloseVehicleDoor );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SkipExplosionOcclusion );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreNavigationForDoorArmIK );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableAimingWhileParachuting );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePedCollisionWithPedEvent );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreVelocityWhenClosingVehicleDoor );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SkipOnFootIdleIntro );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontWalkRoundObjects );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePedEnteredMyVehicleEvents );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableInVehiclePedVariationBlocking );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ReduceEffectOfVehicleRamControlLoss );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePlayerMeleeFriendlyAttacks );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableAutoForceOutWhenBlowingUpCar );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableDustOffAnims );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableMeleeHitReactions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowHeadPropInVehicle );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontQuitMotionAiming );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreserveAnimatedAngularVelocity );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableVoiceDrivenMouthMovement );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_OpenDoorArmIK );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseTighterTurnSettingsForScript );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SteerIntoSkids );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowTasksIncompatibleWithMotion );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowOpenDoorIkBeforeFullMovement );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowHomingMissileLockOnInVehicle );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontUseSprintEnergy );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableMaterialCollisionDamage );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableMPFriendlyLockon );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableMPFriendlyLethalMeleeActions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IfLeaderStopsSeekCover );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseInteriorCapsuleSettings );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSpycarTransformation );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseBulletPenetrationForGlass );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_CanBePinnedByFriendlyBullets );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PlayAgitatedAnimsInVehicle );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockHeadbobbingToRadio );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceExtraLongBlendInForPedSkipIdleCoverTransition );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableAssistedAimLockon );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_NoCollisionDamageFromOtherPeds );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DontSuppressUseNavMeshToNavigateToVehicleDoorWhenVehicleInWater );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceScriptedCameraLowCoverAngleWhenEnteringCover );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PoVCameraConstrained );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableMeleeWeaponSelection );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableSpikeStripRoadBlocks );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IsLowerPriorityMeleeTarget );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceScanForEventsThisFrame );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceAutoEquipHelmetsInAicraft );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseFirstPersonVehicleAnimsIfFPSCamNotDominant );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceIntoStandPoseOnJetski );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SuppressTakedownMeleeActions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreCombatManager );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_ForceMeleeCounter );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_WasHitByVehicleMelee );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_SuppressNavmeshForEnterVehicleTask );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableShallowWaterBikeJumpOutThisFrame );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisablePlayerCombatRoll );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableFriendlyGunReactAudio );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_IgnoreDetachSafePositionCheck );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableEasyLadderConditions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PlayerIgnoresScenarioSpawnRestrictions );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UsingDrone );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseScriptedWeaponFirePosition );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_UseExtendedRagdollCollisionCalculator );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventLockonToFriendlyPlayers );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_OnlyAbortScriptedAnimOnMovementByInput );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_PreventAllStealthKills );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockFallTaskFromExplosionDamage );
    sm_PostPhysicsFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowPedRearEntry );

    // these are the flags we will reset in the ResetPostMovement function
    sm_PostMovementFlagMask.BitSet().Set( CPED_RESET_FLAG_FiringWeapon );
    sm_PostMovementFlagMask.BitSet().Set( CPED_RESET_FLAG_PlacingCharge );
    sm_PostMovementFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableMoveTaskHeadingAdjustments );
    sm_PostMovementFlagMask.BitSet().Set( CPED_RESET_FLAG_MeleeStrikeAgainstNonPed );

    // these are the flags we will reset in the ResetPostCamera function
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePreCameraAIUpdate );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePreCameraAnimUpdate );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePostCameraAIUpdate );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePostCameraAnimUpdate );
    //sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_ePostCameraAnimUpdateUseZeroTimestep );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_SkipAiUpdateProcessControl );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePreCameraProcessExternallyDrivenDOFs );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_AllowCloneForcePostCameraAIUpdate );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_ForcePreCameraAiAnimUpdateIfFirstPerson );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_BlockCameraSwitching );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_DoFPSSprintBreakOut );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_DoFPSJumpBreakOut );
    sm_PostCameraFlagMask.BitSet().Set( CPED_RESET_FLAG_InvertLookAroundControls );

    // these are the flags we will reset in the ResetPostPreRender function
    sm_PostPreRenderFlagMask.BitSet().Set( CPED_RESET_FLAG_ePostCameraAnimUpdateUseZeroTimestep );
    sm_PostPreRenderFlagMask.BitSet().Set( CPED_RESET_FLAG_DisableHighHeels );

#if __DEV
    // verify we got all the flags...
    ePedResetFlagsBitSet allResetFlags;
    allResetFlags.BitSet() = sm_ResetFlagMask.BitSet();
    allResetFlags.BitSet().Union(sm_PreAIPostInventoryResetFlagMask.BitSet());
    allResetFlags.BitSet().Union(sm_PreTaskResetFlagMask.BitSet());
    allResetFlags.BitSet().Union(sm_PrePhysicsFlagMask.BitSet());
    allResetFlags.BitSet().Union(sm_PostPhysicsFlagMask.BitSet());
    allResetFlags.BitSet().Union(sm_PostMovementFlagMask.BitSet());
    allResetFlags.BitSet().Union(sm_PostCameraFlagMask.BitSet());
    allResetFlags.BitSet().Union(sm_PostPreRenderFlagMask.BitSet());

    // a few flags are ok to not be getting reset?
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_RaiseVelocityChangeLimit );	// is reset in the middle of CPed::ProcessPhysics, can we do it earlier?
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_SearchingForClimb );			// is reset in CClimbDetector::Process
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_SearchingForAutoVaultClimb );	// is reset in CClimbDetector::Process
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_SearchingForDoors );			// is reset in CPedIntelligence::Process_NearbyEntityLists
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_HitPedWithWeapon );			// is reset in ResetPostPreRender
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_IsNearDoor );					// Is reset in CPed::ProcessControl_Intelligence
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_SearchingForDropDown );		// is reset in CDropDetector::Process
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_TasksNeedProcessMoveSignalCalls );	// is reset in CPedIntelligence::Process_Tasks
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_FirstPhysicsUpdate );                // is reset in CPed::ProcessProbes
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_SpawnedThisFrameByAmbientPopulation );	// is reset in CPedIntelligence::Process_Tasks
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_InContactWithFoliage );// Its reset direct in prephysics
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_InContactWithBIGFoliage );// Its reset direct in prephysics
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_TouchingOverhang );			//Reset in CPed::ProcessPreComputeImpactsForMover
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_TooSteepForPlayer );		//Reset in CPed::ProcessPreComputeImpactsForMover
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_DisableCellphoneAnimations ); // it is reset in task mobile phone
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_IsBeingMeleeHomedByPlayer ); // it is reset in CTaskCombat
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_InsideEnclosedSearchRegion ); // reset in pedintelligence
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_IsExactStopping );				// Reset in CTaskMoveGoToPointAndStandStill
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_IsExactStopSettling );			// Reset in CTaskMoveGoToPointAndStandStill
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_GestureAnimsAllowed );			// Reset in CPed::ProcessAnimDataEmbeddedInAudioAssets
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_GestureAnimsBlockedFromScript );			// Reset in CPed::ProcessAnimDataEmbeddedInAudioAssets
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_CancelLeftHandGripIk );			// Reset in CPed::PreRender()
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_TriggerRoadRageAnim );			// after task update.
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_InContactWithDeepSurface );// Its reset direct in prephysics
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_BlockRemotePlayerRecording );
    allResetFlags.BitSet().Set( CPED_RESET_FLAG_UNUSED_REPLACE_ME );		// Unused but don't want it asserting...

    for(int i=0;i<ePedResetFlags_NUM_ENUMS;i++)
    {
        if (allResetFlags.BitSet().IsClear(i))
        {
            aiAssertf(0, "CPedResetFlags::StaticInit : Flag %d missing from the reset flags", i);
        }
    }
#endif
}

void CPedResetFlags::Init(CPed* UNUSED_PARAM(pPed))
{
    m_Flags.BitSet().Reset();

    SetAnimRotationModifier( 1.0f );
    SetRootCorrectionModifer( 1.0f );

    SetMoveAnimRate( 1.0f );
    SetScriptedScaleBetweenSeatsDefaultDistance( 0.0f );

    SetEntityZFromGround( 0 );
    SetKnockedByDoor( 0 );

    // also have flags that count down to avoid issues with ordering of reseting and setting
    // so these flags should be set to 2 and then reset should count down to zero
    m_nDontAcceptIKLookAts = 0;
    m_nDontAcceptCodeIKLookAts = 0;
    m_nHasJustLeftVehicle = 0;
    m_nIsInCover = 0;

    m_fEntityZFromGroundZHeight=0.0f;
    m_fEntityZFromGroundZThreshold=0.0f;

#if __DEV
    iForceUpdateCalledLastFrame = 0;
#endif //__DEV

    SetFlag( CPED_RESET_FLAG_SyncDesiredHeadingToCurrentHeading,  true );
}

void CPedResetFlags::Reset(CPed* pPed)
{
    // Do this before we clear out the flags
    fragInstNMGta *pRagDollInst = pPed->GetRagdollInst();
    if(pRagDollInst)
    {
        if(GetFlag( CPED_RESET_FLAG_DontActivateRagdollFromAnyPedImpactReset ) || pPed->GetPedConfigFlag(CPED_CONFIG_FLAG_DontActivateRagdollFromAnyPedImpact) )
        {
            if(!pRagDollInst->GetInstFlag(phInstGta::FLAG_NM_NO_PLAYER_PED_ACTIVATE))
                pRagDollInst->SetInstFlag(phInstGta::FLAG_NM_NO_PLAYER_PED_ACTIVATE, true);
        }
        else
        {
            if(pRagDollInst->GetInstFlag(phInstGta::FLAG_NM_NO_PLAYER_PED_ACTIVATE))
                pRagDollInst->SetInstFlag(phInstGta::FLAG_NM_NO_PLAYER_PED_ACTIVATE, false);
        }
    }

    const bool bInternalWalkingRndPlayer = GetFlag( CPED_RESET_FLAG_InternalWalkingRndPlayer );

    // This is reset as soon as the player is blending back from ragdoll.
    bool bResetMoveGroupAfterRagdoll = GetFlag( CPED_RESET_FLAG_ResetMoveGroupAfterRagdoll );
    bool bKnockedToTheFloorByPlayer  = GetFlag( CPED_RESET_FLAG_KnockedToTheFloorByPlayer );
    if(!pPed->GetUsingRagdoll())
    {
        // Reset the temp override group.
        if(bResetMoveGroupAfterRagdoll)
        {
            bResetMoveGroupAfterRagdoll = false;
        }
        // Unset the knocked to floor flag.
        bKnockedToTheFloorByPlayer = false;
    }

    //
    // Do the 'heavy lifting' of the flag reset
    //
    m_Flags.BitSet().IntersectNegate(sm_ResetFlagMask.BitSet());

    // also have flags that count down to avoid issues with ordering of reseting and setting
    // so these flags should be set to 2 and then reset should count down to zero
    if(m_nDontAcceptIKLookAts > 0)
        m_nDontAcceptIKLookAts--;

    if(m_nDontAcceptCodeIKLookAts > 0)
        m_nDontAcceptCodeIKLookAts--;

    if(m_nHasJustLeftVehicle > 0)
        m_nHasJustLeftVehicle--;

    if(m_nIsInCover > 0)
        m_nIsInCover--;

    if(m_nSetEntityZFromGround > 0)
    {
        m_nSetEntityZFromGround--;
    }

    if(m_nSetEntityZFromGround == 0)
    {
        m_fEntityZFromGroundZHeight=0.0f;
        m_fEntityZFromGroundZThreshold=0.0f;
    }

    if(m_nKnockedByDoor > 0)
        m_nKnockedByDoor--;

    m_fAnimRotationModifier = 1.0f;

    m_fMoveAnimRate = 1.0f;
    SetScriptedScaleBetweenSeatsDefaultDistance( 0.0f );

    // set the special cased flags
    SetFlag( CPED_RESET_FLAG_ResetMoveGroupAfterRagdoll, bResetMoveGroupAfterRagdoll );
    SetFlag( CPED_RESET_FLAG_KnockedToTheFloorByPlayer, bKnockedToTheFloorByPlayer );
    SetFlag( CPED_RESET_FLAG_IsWalkingRoundPlayer, bInternalWalkingRndPlayer );
    SetFlag( CPED_RESET_FLAG_SyncDesiredHeadingToCurrentHeading, true );
}

void CPedResetFlags::ResetPreAIPostInventory()
{
    m_Flags.BitSet().IntersectNegate(sm_PreAIPostInventoryResetFlagMask.BitSet());
}

void CPedResetFlags::ResetPreTask()
{
    m_Flags.BitSet().IntersectNegate(sm_PreTaskResetFlagMask.BitSet());
}

void CPedResetFlags::ResetPrePhysics(CPed* UNUSED_PARAM(pPed))
{
    m_Flags.BitSet().IntersectNegate(sm_PrePhysicsFlagMask.BitSet());
}

void CPedResetFlags::ResetPostPhysics(CPed* pPed)
{
    m_Flags.BitSet().IntersectNegate(sm_PostPhysicsFlagMask.BitSet());

    if (pPed->IsLocalPlayer())
    {
        pPed->GetPedIntelligence()->GetCombatBehaviour().SetFlag(CCombatData::BF_CanDoDrivebys);
    }

    if (!pPed->IsNetworkClone())
    {
        SetFlag( CPED_RESET_FLAG_BlockRemotePlayerRecording, false );
    }
}

// wants to get reset at end CPedIntelligence::ProcessAfterProcCol()
void CPedResetFlags::ResetPostMovement(CPed* UNUSED_PARAM(pPed))
{
    m_Flags.BitSet().IntersectNegate(sm_PostMovementFlagMask.BitSet());
}

// wants to get reset at start of CPedIntelligence::ProcessAfterPreRender()
void CPedResetFlags::ResetPostPreRender(CPed* pPed)
{
    m_Flags.BitSet().IntersectNegate(sm_PostPreRenderFlagMask.BitSet());

    if (pPed)
    {
        if(pPed->IsLocalPlayer())
        {
            pPed->SetPedResetFlag(CPED_RESET_FLAG_HitPedWithWeapon, false);
        }
        else if(pPed->IsNetworkClone())
        {
            SetFlag( CPED_RESET_FLAG_BlockRemotePlayerRecording, false );
        }
    }
    SetFlag(CPED_RESET_FLAG_SpawnedThisFrameByAmbientPopulation, false);
}

// wants to get reset at start of CPedIntelligence::ProcessAfterPreRender()
void CPedResetFlags::ResetPostCamera(CPed* UNUSED_PARAM(pPed))
{
    m_Flags.BitSet().IntersectNegate(sm_PostCameraFlagMask.BitSet());
#if __DEV
    if(iForceUpdateCalledLastFrame > 0)
        --iForceUpdateCalledLastFrame;
#endif
}


