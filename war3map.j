globals
//globals from YDTriggerSaveLoadSystem:
constant boolean LIBRARY_YDTriggerSaveLoadSystem=true
hashtable YDHT
//endglobals from YDTriggerSaveLoadSystem
//globals from YDWEBase:
constant boolean LIBRARY_YDWEBase=true
//ȫ�ֹ�ϣ�� 
string bj_AllString=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
//全局系统变量
unit bj_lastAbilityCastingUnit=null
unit bj_lastAbilityTargetUnit=null
unit bj_lastPoolAbstractedUnit=null
unitpool bj_lastCreatedUnitPool=null
item bj_lastPoolAbstractedItem=null
itempool bj_lastCreatedItemPool=null
attacktype bj_lastSetAttackType= ATTACK_TYPE_NORMAL
damagetype bj_lastSetDamageType= DAMAGE_TYPE_NORMAL
weapontype bj_lastSetWeaponType= WEAPON_TYPE_WHOKNOWS
real yd_MapMaxX= 0
real yd_MapMinX= 0
real yd_MapMaxY= 0
real yd_MapMinY= 0
string array YDWEBase___yd_PlayerColor
trigger array YDWEBase___AbilityCastingOverEventQueue
integer array YDWEBase___AbilityCastingOverEventType
integer YDWEBase___AbilityCastingOverEventNumber= 0
//endglobals from YDWEBase
//globals from YDWEGetForceOfPlayerNull:
constant boolean LIBRARY_YDWEGetForceOfPlayerNull=true
force yd_NullTempForce
//endglobals from YDWEGetForceOfPlayerNull
//globals from YDWEGetPlayersByMapControlNull:
constant boolean LIBRARY_YDWEGetPlayersByMapControlNull=true
//endglobals from YDWEGetPlayersByMapControlNull
//globals from YDWEGetUnitsInRangeOfLocMatchingNull:
constant boolean LIBRARY_YDWEGetUnitsInRangeOfLocMatchingNull=true
//endglobals from YDWEGetUnitsInRangeOfLocMatchingNull
//globals from YDWEGetUnitsInRectMatchingNull:
constant boolean LIBRARY_YDWEGetUnitsInRectMatchingNull=true
group yd_NullTempGroup
//endglobals from YDWEGetUnitsInRectMatchingNull
//globals from YDWEGetUnitsOfPlayerMatchingNull:
constant boolean LIBRARY_YDWEGetUnitsOfPlayerMatchingNull=true
//endglobals from YDWEGetUnitsOfPlayerMatchingNull
//globals from YDWEMultiboardSetItemColorBJNull:
constant boolean LIBRARY_YDWEMultiboardSetItemColorBJNull=true
//endglobals from YDWEMultiboardSetItemColorBJNull
//globals from YDWEMultiboardSetItemValueBJNull:
constant boolean LIBRARY_YDWEMultiboardSetItemValueBJNull=true
//endglobals from YDWEMultiboardSetItemValueBJNull
//globals from YDWEMultiboardSetItemWidthBJNull:
constant boolean LIBRARY_YDWEMultiboardSetItemWidthBJNull=true
//endglobals from YDWEMultiboardSetItemWidthBJNull
//globals from YDWEPauseAllUnitsBJNull:
constant boolean LIBRARY_YDWEPauseAllUnitsBJNull=true
//endglobals from YDWEPauseAllUnitsBJNull
//globals from YDWEPlaySoundNull:
constant boolean LIBRARY_YDWEPlaySoundNull=true
//endglobals from YDWEPlaySoundNull
//globals from YDWEReplaceUnitBJNull:
constant boolean LIBRARY_YDWEReplaceUnitBJNull=true
//endglobals from YDWEReplaceUnitBJNull
//globals from YDWESetUnitFacingToFaceLocTimedNull:
constant boolean LIBRARY_YDWESetUnitFacingToFaceLocTimedNull=true
//endglobals from YDWESetUnitFacingToFaceLocTimedNull
//globals from MemoryLeakHelper:
constant boolean LIBRARY_MemoryLeakHelper=true
constant real MemoryLeakHelper___HASH_DECAY_TIME= 500.
constant integer MemoryLeakHelper___CLEAR_HASH_COUNT= 8190
integer MemoryLeakHelper___HashNumber= 0
integer array MemoryLeakHelper___HashData
integer array MemoryLeakHelper___HashHash
integer array MemoryLeakHelper___HashPlace
real array MemoryLeakHelper___CreationTime
        
integer MemoryLeakHelper___TempHashNumber= 0
integer array MemoryLeakHelper___TempHashHash
integer array MemoryLeakHelper___TempHashPlace
integer array MemoryLeakHelper___TempHashData
real array MemoryLeakHelper___TempCreationTime
        
integer MemoryLeakHelper___LastHashedValue= 0
integer MemoryLeakHelper___LastIndex= 0
real MemoryLeakHelper___GameTime= 0.
timer MemoryLeakHelper___GameTimeTimer= CreateTimer()
constant real MemoryLeakHelper___GAMETIME_TIMER_INTERVAL= 30.
constant integer MemoryLeakHelper___key= 0
        
constant integer MemoryLeakHelper___MAX_INSTANCES=8100

        // The system fires when you do something that creates a leak.
        // The data that cause leak are saved in a variable then.
        // And every CLEAN_UP_INTERVAL seconds those data are destroyed.
        // This shouldn't be too high, or too low.
constant real MemoryLeakHelper___CLEAN_UP_INTERVAL= 10
        // If this is set to true, the system will work more slowly (but you wont notice)
        // and count, how much memory this system was able to save.
        // This value is display by the function DisplayLeaks() then.
        // WARNING: This sucks a lot of performance. I would ONLY use it when you want
        // to test, if this is useful for your map. Later set it to false.
constant boolean MemoryLeakHelper___DISPLAY_SAVED_MEMORY= true
        // The Data are only cleaned up, when that many handles were caught
constant integer MemoryLeakHelper___MIN_LEAK_NUMBER= 1750
        // How often are data passed to the destroyer?
        // Leaks stay for a random time between CLEAN_UP_INTERVAL and CLEAN_UP_INTERVAL+PASS_INTERVAL
        // in the game
constant real MemoryLeakHelper___PASS_INTERVAL= 2.5
        // Memory leaks occur pretty frequently. When a leak is caught it is saved in
        // an array. But the array can't have more than MAX_LEAK_INSTANCES instances, so
        // if more than MAX_LEAK_INSTANCES memory leaks occur during a destroy interval,
        // the system fails.
constant integer MemoryLeakHelper___MAX_LEAK_INSTANCES= 60000
integer MemoryLeakHelper___IndexData
integer MemoryLeakHelper___IsSaved
        
integer MemoryLeakHelper___CaughtLocationLeaks= 0
// processed:         location array MemoryLeakHelper___LocationLeakData[MemoryLeakHelper___MAX_LEAK_INSTANCES]
integer MemoryLeakHelper___LocationDestroyCount= 0
// processed:         location array MemoryLeakHelper___LocationDestroyData[MemoryLeakHelper___MAX_LEAK_INSTANCES]
		
integer MemoryLeakHelper___CaughtEffectLeaks= 0
// processed:         effect array MemoryLeakHelper___EffectLeakData[MemoryLeakHelper___MAX_LEAK_INSTANCES]
integer MemoryLeakHelper___EffectDestroyCount= 0
// processed:         effect array MemoryLeakHelper___EffectDestroyData[MemoryLeakHelper___MAX_LEAK_INSTANCES]
		
integer MemoryLeakHelper___CaughtGroupLeaks= 0
// processed:         group array MemoryLeakHelper___GroupLeakData[MemoryLeakHelper___MAX_LEAK_INSTANCES]
integer MemoryLeakHelper___GroupDestroyCount= 0
// processed:         group array MemoryLeakHelper___GroupDestroyData[MemoryLeakHelper___MAX_LEAK_INSTANCES]
        
        
integer MemoryLeakHelper___DestroyedLeaks= 0
integer MemoryLeakHelper___CaughtLeaks= 0
integer MemoryLeakHelper___DestroyedLeaksUser= 0
handle MemoryLeakHelper___LastCaught
timer MemoryLeakHelper___PassTimer= CreateTimer()
timer MemoryLeakHelper___CleanTimer= CreateTimer()
timer MemoryLeakHelper___DelayTimer= CreateTimer()
boolean MemoryLeakHelper___IsDestroying= false
real MemoryLeakHelper___SavedMemory= 0.
real MemoryLeakHelper___LastCheckedGroupMemoryUsage= 0.
boolean MemoryLeakHelper___DestroyThreadRunning= false
boolean MemoryLeakHelper___Disabled= false
        
        // These values were found out in a big leak test by gekko.
constant real MemoryLeakHelper___LOCATION_MEMORY_USAGE= 0.361
constant real MemoryLeakHelper___GROUP_MEMORY_USAGE= 0.62
constant real MemoryLeakHelper___GROUP_UNIT_MEMORY_USAGE= 0.040
constant real MemoryLeakHelper___EFFECT_MEMORY_USAGE= 11.631
constant real MemoryLeakHelper___REMOVED_EFFECT_MEMORY_USAGE= 0.066
        // 用于判断是否开启内存排泄帮助
boolean MemoryLeakHelper___IsOpenMemoryLeakHelper= false
boolean MemoryLeakHelper___IsDisplayMemoryLeakHelper= false
//endglobals from MemoryLeakHelper
//globals from YDWEAroundSystem:
constant boolean LIBRARY_YDWEAroundSystem=true
constant timer YDWEAroundSystem___AROUND_TIM= CreateTimer()
constant real YDWEAroundSystem___AROUND_INTER= 0.01
//endglobals from YDWEAroundSystem
//globals from YDWEGetUnitsInRangeOfLocAllNull:
constant boolean LIBRARY_YDWEGetUnitsInRangeOfLocAllNull=true
//endglobals from YDWEGetUnitsInRangeOfLocAllNull
//globals from YDWEJumpTimer:
constant boolean LIBRARY_YDWEJumpTimer=true
//��Ծϵͳ���ȼ�
integer MoveMoreLevel_JumpTimer=3
//endglobals from YDWEJumpTimer
//globals from YDWELocalVariable:
constant boolean LIBRARY_YDWELocalVariable=true
//endglobals from YDWELocalVariable
//globals from YDWETimerPattern:
constant boolean LIBRARY_YDWETimerPattern=true
boolexpr YDWETimerPattern___Bexpr= null
rect YDWETimerPattern___Area= null
integer YDWETimerPattern___tmp_data
location YDWETimerPattern___yd_loc= Location(0.0, 0.0)
//endglobals from YDWETimerPattern
//globals from YDWETimerSystem:
constant boolean LIBRARY_YDWETimerSystem=true
integer YDWETimerSystem___CurrentTime
integer YDWETimerSystem___CurrentIndex
integer YDWETimerSystem___TaskListHead
integer YDWETimerSystem___TaskListIdleHead
integer YDWETimerSystem___TaskListIdleMax
integer array YDWETimerSystem___TaskListIdle
integer array YDWETimerSystem___TaskListNext
integer array YDWETimerSystem___TaskListTime
trigger array YDWETimerSystem___TaskListProc
trigger YDWETimerSystem___fnRemoveUnit
trigger YDWETimerSystem___fnDestroyTimer
trigger YDWETimerSystem___fnRemoveItem
trigger YDWETimerSystem___fnDestroyEffect
trigger YDWETimerSystem___fnDestroyLightning
trigger YDWETimerSystem___fnRunTrigger
timer YDWETimerSystem___Timer
integer YDWETimerSystem___TimerHandle
integer YDWETimerSystem___TimerSystem_RunIndex= 0
//endglobals from YDWETimerSystem
    // User-defined
force array udg_Play
integer array udg_INT
boolean udg_T= false
multiboard udg_DMB= null
unit udg_DW= null
player udg_Wj= null
player udg_WJ= null
player udg_WJkiller= null
player udg_Wjkiller= null
integer udg_PAI= 0
integer udg_time= 0
integer array udg_kill
integer array udg_kill2
integer array udg_NdeadDMB
integer array udg_NkillDMB
integer array udg_playertime
integer array udg_Nkillteam
string array udg_Stringcolor
integer udg_number= 0
timer udg_JSQwin= null
dialog udg_DHK= null
button array udg_DHKbutton
integer udg_round= 0
real udg_roundtime= 0
timer udg_JSQround= null
timerdialog udg_JSQCK= null
timer udg_JSQzhunbei= null
timerdialog udg_JSQCK2= null
integer udg_teamnb= 0
force array udg_team
timer udg_JSQguai= null
integer array udg_GuaiA1
integer array udg_GuaiA2
integer array udg_GuaiB1
integer array udg_GuaiB2
integer udg_iDMB= 0
real udg_fX1= 0
real udg_fX2= 0
real udg_fY1= 0
real udg_fY2= 0
real udg_fZ2= 0
real udg_fZ1= 0
integer array udg_A
    // Generated
rect gg_rct_CS_A= null
rect gg_rct_CS_B= null
rect gg_rct_CS_C= null
rect gg_rct_CS_D= null
rect gg_rct_GA0= null
rect gg_rct_GA1= null
rect gg_rct_GA2= null
rect gg_rct_GB0= null
rect gg_rct_GB1= null
rect gg_rct_GB2= null
rect gg_rct_GC0= null
rect gg_rct_GC1= null
rect gg_rct_GC2= null
rect gg_rct_GD0= null
rect gg_rct_GD1= null
rect gg_rct_GD2= null
rect gg_rct_GE0= null
rect gg_rct_GE1= null
rect gg_rct_GE2= null
rect gg_rct_GF0= null
rect gg_rct_GF1= null
rect gg_rct_GF2= null
rect gg_rct______________001________5= null
rect gg_rct______________012= null
rect gg_rct______________012_______u= null
rect gg_rct______________012________2= null
rect gg_rct______________012________3= null
rect gg_rct______________012________4= null
rect gg_rct______________012________5= null
rect gg_rct______________012________6= null
rect gg_rct______________012________7= null
rect gg_rct_GG1= null
rect gg_rct_GG2= null
rect gg_rct_GG3= null
rect gg_rct_GH0= null
rect gg_rct_GH1= null
rect gg_rct_GH2= null
sound gg_snd_dominating= null
sound gg_snd_double_kill= null
sound gg_snd_firstblood= null
sound gg_snd_godlike= null
sound gg_snd_holyshit= null
sound gg_snd_killing_spree= null
sound gg_snd_megakill= null
sound gg_snd_monsterkill= null
sound gg_snd_ownage= null
sound gg_snd_rampage= null
sound gg_snd_SacrificeUnit= null
sound gg_snd_spectral_dagger= null
sound gg_snd_StampedeCaster1= null
sound gg_snd_triple_kill= null
sound gg_snd_ultrakill= null
sound gg_snd_unstoppable= null
sound gg_snd_whickedsick= null
sound gg_snd_MagicLariatLoop1= null
trigger gg_trg_____________u= null
trigger gg_trg_1______u= null
trigger gg_trg_begin= null
trigger gg_trg_team= null
trigger gg_trg_roundtime_0= null
trigger gg_trg_roundtime_2= null
trigger gg_trg____________________001= null
trigger gg_trg_dialog= null
trigger gg_trg_GA= null
trigger gg_trg_elf= null
trigger gg_trg_DMB1= null
trigger gg_trg_DMB0= null
trigger gg_trg_DMB2= null
trigger gg_trg_Hsharen1= null
trigger gg_trg_Hsharen2= null
trigger gg_trg_Hjifen2= null
trigger gg_trg_Hjifen1= null
trigger gg_trg_e_orbit= null
trigger gg_trg_e_panduan= null
trigger gg_trg_e_panduan2= null
trigger gg_trg_A_FFF= null
trigger gg_trg_A_SLJ= null
trigger gg_trg_A_III= null
trigger gg_trg_A_SSI= null
trigger gg_trg_A_PIF= null
trigger gg_trg_A_PIF_2= null
trigger gg_trg_C_fire_light_1= null
trigger gg_trg_C_light_1= null
trigger gg_trg_C_ice_light_1= null
trigger gg_trg_C_poison_light_1= null
trigger gg_trg_A_stone= null
trigger gg_trg_A_Jet_ice= null
trigger gg_trg_A_Jet_fire= null
trigger gg_trg_A_Jet_poison= null
trigger gg_trg_A_control= null
trigger gg_trg_A_lightning= null
trigger gg_trg_A_soul= null
trigger gg_trg_B_soul_fire= null
trigger gg_trg_B_terror= null
trigger gg_trg_B_explosion= null
trigger gg_trg_B_shake= null
trigger gg_trg_B_impale= null
trigger gg_trg_B_shadow= null
trigger gg_trg_B_light= null
trigger gg_trg_B_deathcoil= null
trigger gg_trg_B_ghost= null
trigger gg_trg_B_flower= null
trigger gg_trg_B_water_2= null
trigger gg_trg_C_blackhole= null
trigger gg_trg_C_hook= null
trigger gg_trg_C_phoenix= null
trigger gg_trg_C_destroy= null
trigger gg_trg_C_archane= null
trigger gg_trg_C_vacuum= null
trigger gg_trg_C_change= null
trigger gg_trg_C_energy_field= null
trigger gg_trg_C_time_field= null
trigger gg_trg_lieYanPoJi= null
trigger gg_trg_Diabolic_Edict_a= null
trigger gg_trg_Diabolic_Edict_b= null
trigger gg_trg_Plasma_Field_a= null
trigger gg_trg_Plasma_Field_b= null
trigger gg_trg_Vacuum_a= null
trigger gg_trg_Vacuum_b= null
trigger gg_trg_anYingJuDu= null

trigger l__library_init

//JASSHelper struct globals:
constant integer si__MemoryLeakHelper___Index=1
integer si__MemoryLeakHelper___Index_F=0
integer si__MemoryLeakHelper___Index_I=0
integer array si__MemoryLeakHelper___Index_V
constant integer si__MemoryLeakHelper___GTable=2
integer si__MemoryLeakHelper___GTable_F=0
integer si__MemoryLeakHelper___GTable_I=0
integer array si__MemoryLeakHelper___GTable_V
constant integer si__MemoryLeakHelper___HandleTable=3
constant integer si__YDWEAroundSystem___Data=4
integer si__YDWEAroundSystem___Data_F=0
integer si__YDWEAroundSystem___Data_I=0
integer array si__YDWEAroundSystem___Data_V
integer array s__YDWEAroundSystem___Data_Structs
integer s__YDWEAroundSystem___Data_Total= 0
unit array s__YDWEAroundSystem___Data_caster
unit array s__YDWEAroundSystem___Data_obj
real array s__YDWEAroundSystem___Data_dur
real array s__YDWEAroundSystem___Data_inter
real array s__YDWEAroundSystem___Data_each
real array s__YDWEAroundSystem___Data_rate
real array s__YDWEAroundSystem___Data_dis
real array s__YDWEAroundSystem___Data_rise
real array s__YDWEAroundSystem___Data_angle
real array s__YDWEAroundSystem___Data_radius
real array s__YDWEAroundSystem___Data_height
constant integer si__YDWETimerPattern___YDVector3=5
integer si__YDWETimerPattern___YDVector3_F=0
integer si__YDWETimerPattern___YDVector3_I=0
integer array si__YDWETimerPattern___YDVector3_V
real array s__YDWETimerPattern___YDVector3_x
real array s__YDWETimerPattern___YDVector3_y
real array s__YDWETimerPattern___YDVector3_z
constant integer si__YDWETimerPattern___Thread=6
integer si__YDWETimerPattern___Thread_F=0
integer si__YDWETimerPattern___Thread_I=0
integer array si__YDWETimerPattern___Thread_V
integer array s__YDWETimerPattern___Thread_des
integer array s__YDWETimerPattern___Thread_pos
integer array s__YDWETimerPattern___Thread_vel
unit array s__YDWETimerPattern___Thread_caster
unit array s__YDWETimerPattern___Thread_source
unit array s__YDWETimerPattern___Thread_target
unit array s__YDWETimerPattern___Thread_obj
real array s__YDWETimerPattern___Thread_ac
real array s__YDWETimerPattern___Thread_bc
real array s__YDWETimerPattern___Thread_dist
real array s__YDWETimerPattern___Thread_step
real array s__YDWETimerPattern___Thread_amount
integer array s__YDWETimerPattern___Thread_switch
integer array s__YDWETimerPattern___Thread_follow
integer array s__YDWETimerPattern___Thread_unitid
integer array s__YDWETimerPattern___Thread_skills
integer array s__YDWETimerPattern___Thread_order
integer array s__YDWETimerPattern___Thread_level
string array s__YDWETimerPattern___Thread_dsfx
string array s__YDWETimerPattern___Thread_gsfx
string array s__YDWETimerPattern___Thread_wsfx
string array s__YDWETimerPattern___Thread_part
boolean array s__YDWETimerPattern___Thread_recycle
boolean array s__YDWETimerPattern___Thread_killdest
boolean array s__YDWETimerPattern___Thread_volume
group array s__YDWETimerPattern___Thread_g
timer array s__YDWETimerPattern___Thread_t
constant integer si__YDWETimerPattern___Parabola=7
constant integer si__YDWETimerPattern___Linear=8
constant integer si__YDWETimerPattern___Deceleration=9
location array s__MemoryLeakHelper___LocationLeakData
location array s__2MemoryLeakHelper___LocationLeakData
location array s__3MemoryLeakHelper___LocationLeakData
location array s__4MemoryLeakHelper___LocationLeakData
location array s__5MemoryLeakHelper___LocationLeakData
location array s__6MemoryLeakHelper___LocationLeakData
location array s__7MemoryLeakHelper___LocationLeakData
location array s__8MemoryLeakHelper___LocationLeakData
location array s__MemoryLeakHelper___LocationDestroyData
location array s__2MemoryLeakHelper___LocationDestroyData
location array s__3MemoryLeakHelper___LocationDestroyData
location array s__4MemoryLeakHelper___LocationDestroyData
location array s__5MemoryLeakHelper___LocationDestroyData
location array s__6MemoryLeakHelper___LocationDestroyData
location array s__7MemoryLeakHelper___LocationDestroyData
location array s__8MemoryLeakHelper___LocationDestroyData
effect array s__MemoryLeakHelper___EffectLeakData
effect array s__2MemoryLeakHelper___EffectLeakData
effect array s__3MemoryLeakHelper___EffectLeakData
effect array s__4MemoryLeakHelper___EffectLeakData
effect array s__5MemoryLeakHelper___EffectLeakData
effect array s__6MemoryLeakHelper___EffectLeakData
effect array s__7MemoryLeakHelper___EffectLeakData
effect array s__8MemoryLeakHelper___EffectLeakData
effect array s__MemoryLeakHelper___EffectDestroyData
effect array s__2MemoryLeakHelper___EffectDestroyData
effect array s__3MemoryLeakHelper___EffectDestroyData
effect array s__4MemoryLeakHelper___EffectDestroyData
effect array s__5MemoryLeakHelper___EffectDestroyData
effect array s__6MemoryLeakHelper___EffectDestroyData
effect array s__7MemoryLeakHelper___EffectDestroyData
effect array s__8MemoryLeakHelper___EffectDestroyData
group array s__MemoryLeakHelper___GroupLeakData
group array s__2MemoryLeakHelper___GroupLeakData
group array s__3MemoryLeakHelper___GroupLeakData
group array s__4MemoryLeakHelper___GroupLeakData
group array s__5MemoryLeakHelper___GroupLeakData
group array s__6MemoryLeakHelper___GroupLeakData
group array s__7MemoryLeakHelper___GroupLeakData
group array s__8MemoryLeakHelper___GroupLeakData
group array s__MemoryLeakHelper___GroupDestroyData
group array s__2MemoryLeakHelper___GroupDestroyData
group array s__3MemoryLeakHelper___GroupDestroyData
group array s__4MemoryLeakHelper___GroupDestroyData
group array s__5MemoryLeakHelper___GroupDestroyData
group array s__6MemoryLeakHelper___GroupDestroyData
group array s__7MemoryLeakHelper___GroupDestroyData
group array s__8MemoryLeakHelper___GroupDestroyData
integer array si__MemoryLeakHelper___GTable_type
trigger array st__MemoryLeakHelper___GTable_onDestroy
integer array si__YDWETimerPattern___Thread_type
trigger array st__YDWETimerPattern___Thread_onDestroy
trigger array st___prototype168
trigger array st___prototype169
real f__result_real
trigger array st___prototype173
trigger array st___prototype174
trigger array st___prototype175
trigger array st___prototype176
trigger array st___prototype177
trigger array st___prototype178
trigger array st___prototype179
trigger array st___prototype180
trigger array st___prototype181
trigger array st___prototype182
trigger array st___prototype183
trigger array st___prototype184
unit f__arg_unit1
location f__arg_location1
location f__arg_location2
real f__arg_real1
real f__arg_real2
group f__arg_group1
effect f__arg_effect1
integer f__arg_integer1
integer f__arg_integer2
player f__arg_player1
string f__arg_string1
string f__arg_string2
boolexpr f__arg_boolexpr1
code f__arg_code1
widget f__arg_widget1
integer f__arg_this

endglobals


function sg__MemoryLeakHelper___LocationLeakData_get takes integer i returns location
    if(i<8191) then
        return s__MemoryLeakHelper___LocationLeakData[i]
    elseif(i<32764) then
        if(i<16382) then
            return s__2MemoryLeakHelper___LocationLeakData[i-8191]
        elseif(i<24573) then
            return s__3MemoryLeakHelper___LocationLeakData[i-16382]
        else
            return s__4MemoryLeakHelper___LocationLeakData[i-24573]
        endif
    elseif(i<40955) then
        return s__5MemoryLeakHelper___LocationLeakData[i-32764]
    elseif(i<49146) then
            return s__6MemoryLeakHelper___LocationLeakData[i-40955]
    elseif(i<57337) then
        return s__7MemoryLeakHelper___LocationLeakData[i-49146]
    else
        return s__8MemoryLeakHelper___LocationLeakData[i-57337]
    endif
endfunction

function sg__MemoryLeakHelper___LocationLeakData_set takes integer i,location v returns nothing
    if(i<8191) then
        set s__MemoryLeakHelper___LocationLeakData[i]=v
    elseif(i<32764) then
        if(i<16382) then
            set s__2MemoryLeakHelper___LocationLeakData[i-8191]=v
        elseif(i<24573) then
            set s__3MemoryLeakHelper___LocationLeakData[i-16382]=v
        else
            set s__4MemoryLeakHelper___LocationLeakData[i-24573]=v
        endif
    elseif(i<40955) then
        set s__5MemoryLeakHelper___LocationLeakData[i-32764]=v
    elseif(i<49146) then
            set s__6MemoryLeakHelper___LocationLeakData[i-40955]=v
    elseif(i<57337) then
        set s__7MemoryLeakHelper___LocationLeakData[i-49146]=v
    else
        set s__8MemoryLeakHelper___LocationLeakData[i-57337]=v
    endif
endfunction

function sg__MemoryLeakHelper___LocationDestroyData_get takes integer i returns location
    if(i<8191) then
        return s__MemoryLeakHelper___LocationDestroyData[i]
    elseif(i<32764) then
        if(i<16382) then
            return s__2MemoryLeakHelper___LocationDestroyData[i-8191]
        elseif(i<24573) then
            return s__3MemoryLeakHelper___LocationDestroyData[i-16382]
        else
            return s__4MemoryLeakHelper___LocationDestroyData[i-24573]
        endif
    elseif(i<40955) then
        return s__5MemoryLeakHelper___LocationDestroyData[i-32764]
    elseif(i<49146) then
            return s__6MemoryLeakHelper___LocationDestroyData[i-40955]
    elseif(i<57337) then
        return s__7MemoryLeakHelper___LocationDestroyData[i-49146]
    else
        return s__8MemoryLeakHelper___LocationDestroyData[i-57337]
    endif
endfunction

function sg__MemoryLeakHelper___LocationDestroyData_set takes integer i,location v returns nothing
    if(i<8191) then
        set s__MemoryLeakHelper___LocationDestroyData[i]=v
    elseif(i<32764) then
        if(i<16382) then
            set s__2MemoryLeakHelper___LocationDestroyData[i-8191]=v
        elseif(i<24573) then
            set s__3MemoryLeakHelper___LocationDestroyData[i-16382]=v
        else
            set s__4MemoryLeakHelper___LocationDestroyData[i-24573]=v
        endif
    elseif(i<40955) then
        set s__5MemoryLeakHelper___LocationDestroyData[i-32764]=v
    elseif(i<49146) then
            set s__6MemoryLeakHelper___LocationDestroyData[i-40955]=v
    elseif(i<57337) then
        set s__7MemoryLeakHelper___LocationDestroyData[i-49146]=v
    else
        set s__8MemoryLeakHelper___LocationDestroyData[i-57337]=v
    endif
endfunction

function sg__MemoryLeakHelper___EffectLeakData_get takes integer i returns effect
    if(i<8191) then
        return s__MemoryLeakHelper___EffectLeakData[i]
    elseif(i<32764) then
        if(i<16382) then
            return s__2MemoryLeakHelper___EffectLeakData[i-8191]
        elseif(i<24573) then
            return s__3MemoryLeakHelper___EffectLeakData[i-16382]
        else
            return s__4MemoryLeakHelper___EffectLeakData[i-24573]
        endif
    elseif(i<40955) then
        return s__5MemoryLeakHelper___EffectLeakData[i-32764]
    elseif(i<49146) then
            return s__6MemoryLeakHelper___EffectLeakData[i-40955]
    elseif(i<57337) then
        return s__7MemoryLeakHelper___EffectLeakData[i-49146]
    else
        return s__8MemoryLeakHelper___EffectLeakData[i-57337]
    endif
endfunction

function sg__MemoryLeakHelper___EffectLeakData_set takes integer i,effect v returns nothing
    if(i<8191) then
        set s__MemoryLeakHelper___EffectLeakData[i]=v
    elseif(i<32764) then
        if(i<16382) then
            set s__2MemoryLeakHelper___EffectLeakData[i-8191]=v
        elseif(i<24573) then
            set s__3MemoryLeakHelper___EffectLeakData[i-16382]=v
        else
            set s__4MemoryLeakHelper___EffectLeakData[i-24573]=v
        endif
    elseif(i<40955) then
        set s__5MemoryLeakHelper___EffectLeakData[i-32764]=v
    elseif(i<49146) then
            set s__6MemoryLeakHelper___EffectLeakData[i-40955]=v
    elseif(i<57337) then
        set s__7MemoryLeakHelper___EffectLeakData[i-49146]=v
    else
        set s__8MemoryLeakHelper___EffectLeakData[i-57337]=v
    endif
endfunction

function sg__MemoryLeakHelper___EffectDestroyData_get takes integer i returns effect
    if(i<8191) then
        return s__MemoryLeakHelper___EffectDestroyData[i]
    elseif(i<32764) then
        if(i<16382) then
            return s__2MemoryLeakHelper___EffectDestroyData[i-8191]
        elseif(i<24573) then
            return s__3MemoryLeakHelper___EffectDestroyData[i-16382]
        else
            return s__4MemoryLeakHelper___EffectDestroyData[i-24573]
        endif
    elseif(i<40955) then
        return s__5MemoryLeakHelper___EffectDestroyData[i-32764]
    elseif(i<49146) then
            return s__6MemoryLeakHelper___EffectDestroyData[i-40955]
    elseif(i<57337) then
        return s__7MemoryLeakHelper___EffectDestroyData[i-49146]
    else
        return s__8MemoryLeakHelper___EffectDestroyData[i-57337]
    endif
endfunction

function sg__MemoryLeakHelper___EffectDestroyData_set takes integer i,effect v returns nothing
    if(i<8191) then
        set s__MemoryLeakHelper___EffectDestroyData[i]=v
    elseif(i<32764) then
        if(i<16382) then
            set s__2MemoryLeakHelper___EffectDestroyData[i-8191]=v
        elseif(i<24573) then
            set s__3MemoryLeakHelper___EffectDestroyData[i-16382]=v
        else
            set s__4MemoryLeakHelper___EffectDestroyData[i-24573]=v
        endif
    elseif(i<40955) then
        set s__5MemoryLeakHelper___EffectDestroyData[i-32764]=v
    elseif(i<49146) then
            set s__6MemoryLeakHelper___EffectDestroyData[i-40955]=v
    elseif(i<57337) then
        set s__7MemoryLeakHelper___EffectDestroyData[i-49146]=v
    else
        set s__8MemoryLeakHelper___EffectDestroyData[i-57337]=v
    endif
endfunction

function sg__MemoryLeakHelper___GroupLeakData_get takes integer i returns group
    if(i<8191) then
        return s__MemoryLeakHelper___GroupLeakData[i]
    elseif(i<32764) then
        if(i<16382) then
            return s__2MemoryLeakHelper___GroupLeakData[i-8191]
        elseif(i<24573) then
            return s__3MemoryLeakHelper___GroupLeakData[i-16382]
        else
            return s__4MemoryLeakHelper___GroupLeakData[i-24573]
        endif
    elseif(i<40955) then
        return s__5MemoryLeakHelper___GroupLeakData[i-32764]
    elseif(i<49146) then
            return s__6MemoryLeakHelper___GroupLeakData[i-40955]
    elseif(i<57337) then
        return s__7MemoryLeakHelper___GroupLeakData[i-49146]
    else
        return s__8MemoryLeakHelper___GroupLeakData[i-57337]
    endif
endfunction

function sg__MemoryLeakHelper___GroupLeakData_set takes integer i,group v returns nothing
    if(i<8191) then
        set s__MemoryLeakHelper___GroupLeakData[i]=v
    elseif(i<32764) then
        if(i<16382) then
            set s__2MemoryLeakHelper___GroupLeakData[i-8191]=v
        elseif(i<24573) then
            set s__3MemoryLeakHelper___GroupLeakData[i-16382]=v
        else
            set s__4MemoryLeakHelper___GroupLeakData[i-24573]=v
        endif
    elseif(i<40955) then
        set s__5MemoryLeakHelper___GroupLeakData[i-32764]=v
    elseif(i<49146) then
            set s__6MemoryLeakHelper___GroupLeakData[i-40955]=v
    elseif(i<57337) then
        set s__7MemoryLeakHelper___GroupLeakData[i-49146]=v
    else
        set s__8MemoryLeakHelper___GroupLeakData[i-57337]=v
    endif
endfunction

function sg__MemoryLeakHelper___GroupDestroyData_get takes integer i returns group
    if(i<8191) then
        return s__MemoryLeakHelper___GroupDestroyData[i]
    elseif(i<32764) then
        if(i<16382) then
            return s__2MemoryLeakHelper___GroupDestroyData[i-8191]
        elseif(i<24573) then
            return s__3MemoryLeakHelper___GroupDestroyData[i-16382]
        else
            return s__4MemoryLeakHelper___GroupDestroyData[i-24573]
        endif
    elseif(i<40955) then
        return s__5MemoryLeakHelper___GroupDestroyData[i-32764]
    elseif(i<49146) then
            return s__6MemoryLeakHelper___GroupDestroyData[i-40955]
    elseif(i<57337) then
        return s__7MemoryLeakHelper___GroupDestroyData[i-49146]
    else
        return s__8MemoryLeakHelper___GroupDestroyData[i-57337]
    endif
endfunction

function sg__MemoryLeakHelper___GroupDestroyData_set takes integer i,group v returns nothing
    if(i<8191) then
        set s__MemoryLeakHelper___GroupDestroyData[i]=v
    elseif(i<32764) then
        if(i<16382) then
            set s__2MemoryLeakHelper___GroupDestroyData[i-8191]=v
        elseif(i<24573) then
            set s__3MemoryLeakHelper___GroupDestroyData[i-16382]=v
        else
            set s__4MemoryLeakHelper___GroupDestroyData[i-24573]=v
        endif
    elseif(i<40955) then
        set s__5MemoryLeakHelper___GroupDestroyData[i-32764]=v
    elseif(i<49146) then
            set s__6MemoryLeakHelper___GroupDestroyData[i-40955]=v
    elseif(i<57337) then
        set s__7MemoryLeakHelper___GroupDestroyData[i-49146]=v
    else
        set s__8MemoryLeakHelper___GroupDestroyData[i-57337]=v
    endif
endfunction

//Generated allocator of MemoryLeakHelper___Index
function s__MemoryLeakHelper___Index__allocate takes nothing returns integer
 local integer this=si__MemoryLeakHelper___Index_F
    if (this!=0) then
        set si__MemoryLeakHelper___Index_F=si__MemoryLeakHelper___Index_V[this]
    else
        set si__MemoryLeakHelper___Index_I=si__MemoryLeakHelper___Index_I+1
        set this=si__MemoryLeakHelper___Index_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__MemoryLeakHelper___Index_V[this]=-1
 return this
endfunction

//Generated destructor of MemoryLeakHelper___Index
function s__MemoryLeakHelper___Index_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__MemoryLeakHelper___Index_V[this]!=-1) then
        return
    endif
    set si__MemoryLeakHelper___Index_V[this]=si__MemoryLeakHelper___Index_F
    set si__MemoryLeakHelper___Index_F=this
endfunction

//Generated method caller for MemoryLeakHelper___GTable.onDestroy
function sc__MemoryLeakHelper___GTable_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__MemoryLeakHelper___GTable_onDestroy[2])
endfunction

//Generated allocator of MemoryLeakHelper___GTable
function s__MemoryLeakHelper___GTable__allocate takes nothing returns integer
 local integer this=si__MemoryLeakHelper___GTable_F
    if (this!=0) then
        set si__MemoryLeakHelper___GTable_F=si__MemoryLeakHelper___GTable_V[this]
    else
        set si__MemoryLeakHelper___GTable_I=si__MemoryLeakHelper___GTable_I+1
        set this=si__MemoryLeakHelper___GTable_I
    endif
    if (this>8100) then
        return 0
    endif

    set si__MemoryLeakHelper___GTable_type[this]=2
    set si__MemoryLeakHelper___GTable_V[this]=-1
 return this
endfunction

//Generated destructor of MemoryLeakHelper___GTable
function sc__MemoryLeakHelper___GTable_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__MemoryLeakHelper___GTable_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__MemoryLeakHelper___GTable_onDestroy[si__MemoryLeakHelper___GTable_type[this]])
    set si__MemoryLeakHelper___GTable_V[this]=si__MemoryLeakHelper___GTable_F
    set si__MemoryLeakHelper___GTable_F=this
endfunction

//Generated allocator of MemoryLeakHelper___HandleTable
function s__MemoryLeakHelper___HandleTable__allocate takes nothing returns integer
 local integer this=s__MemoryLeakHelper___GTable__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__MemoryLeakHelper___GTable_type[this]=3
    set kthis=this

 return this
endfunction


//Generated allocator of YDWEAroundSystem___Data
function s__YDWEAroundSystem___Data__allocate takes nothing returns integer
 local integer this=si__YDWEAroundSystem___Data_F
    if (this!=0) then
        set si__YDWEAroundSystem___Data_F=si__YDWEAroundSystem___Data_V[this]
    else
        set si__YDWEAroundSystem___Data_I=si__YDWEAroundSystem___Data_I+1
        set this=si__YDWEAroundSystem___Data_I
    endif
    if (this>8190) then
        return 0
    endif

   set s__YDWEAroundSystem___Data_caster[this]= null
   set s__YDWEAroundSystem___Data_obj[this]= null
   set s__YDWEAroundSystem___Data_dur[this]= 0.
   set s__YDWEAroundSystem___Data_inter[this]= 0.
   set s__YDWEAroundSystem___Data_each[this]= 0.
   set s__YDWEAroundSystem___Data_rate[this]= 0.
   set s__YDWEAroundSystem___Data_dis[this]= 0.
   set s__YDWEAroundSystem___Data_rise[this]= 0.
   set s__YDWEAroundSystem___Data_angle[this]= 0.
   set s__YDWEAroundSystem___Data_radius[this]= 0.
   set s__YDWEAroundSystem___Data_height[this]= 0
    set si__YDWEAroundSystem___Data_V[this]=-1
 return this
endfunction

//Generated destructor of YDWEAroundSystem___Data
function s__YDWEAroundSystem___Data_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__YDWEAroundSystem___Data_V[this]!=-1) then
        return
    endif
    set si__YDWEAroundSystem___Data_V[this]=si__YDWEAroundSystem___Data_F
    set si__YDWEAroundSystem___Data_F=this
endfunction

//Generated method caller for YDWETimerPattern___Thread.onDestroy
function sc__YDWETimerPattern___Thread_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__YDWETimerPattern___Thread_onDestroy[6])
endfunction

//Generated allocator of YDWETimerPattern___Thread
function s__YDWETimerPattern___Thread__allocate takes nothing returns integer
 local integer this=si__YDWETimerPattern___Thread_F
    if (this!=0) then
        set si__YDWETimerPattern___Thread_F=si__YDWETimerPattern___Thread_V[this]
    else
        set si__YDWETimerPattern___Thread_I=si__YDWETimerPattern___Thread_I+1
        set this=si__YDWETimerPattern___Thread_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__YDWETimerPattern___Thread_type[this]=6
    set si__YDWETimerPattern___Thread_V[this]=-1
 return this
endfunction

//Generated destructor of YDWETimerPattern___Thread
function sc__YDWETimerPattern___Thread_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__YDWETimerPattern___Thread_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__YDWETimerPattern___Thread_onDestroy[si__YDWETimerPattern___Thread_type[this]])
    set si__YDWETimerPattern___Thread_V[this]=si__YDWETimerPattern___Thread_F
    set si__YDWETimerPattern___Thread_F=this
endfunction

//Generated allocator of YDWETimerPattern___YDVector3
function s__YDWETimerPattern___YDVector3__allocate takes nothing returns integer
 local integer this=si__YDWETimerPattern___YDVector3_F
    if (this!=0) then
        set si__YDWETimerPattern___YDVector3_F=si__YDWETimerPattern___YDVector3_V[this]
    else
        set si__YDWETimerPattern___YDVector3_I=si__YDWETimerPattern___YDVector3_I+1
        set this=si__YDWETimerPattern___YDVector3_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__YDWETimerPattern___YDVector3_V[this]=-1
 return this
endfunction

//Generated destructor of YDWETimerPattern___YDVector3
function s__YDWETimerPattern___YDVector3_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__YDWETimerPattern___YDVector3_V[this]!=-1) then
        return
    endif
    set si__YDWETimerPattern___YDVector3_V[this]=si__YDWETimerPattern___YDVector3_F
    set si__YDWETimerPattern___YDVector3_F=this
endfunction

//Generated allocator of YDWETimerPattern___Deceleration
function s__YDWETimerPattern___Deceleration__allocate takes nothing returns integer
 local integer this=s__YDWETimerPattern___Thread__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__YDWETimerPattern___Thread_type[this]=9
    set kthis=this

 return this
endfunction


//Generated allocator of YDWETimerPattern___Parabola
function s__YDWETimerPattern___Parabola__allocate takes nothing returns integer
 local integer this=s__YDWETimerPattern___Thread__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__YDWETimerPattern___Thread_type[this]=7
    set kthis=this

 return this
endfunction


//Generated allocator of YDWETimerPattern___Linear
function s__YDWETimerPattern___Linear__allocate takes nothing returns integer
 local integer this=s__YDWETimerPattern___Thread__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__YDWETimerPattern___Thread_type[this]=8
    set kthis=this

 return this
endfunction

function sc___prototype168_execute takes integer i,unit a1,location a2,real a3 returns nothing
    set f__arg_unit1=a1
    set f__arg_location1=a2
    set f__arg_real1=a3

    call TriggerExecute(st___prototype168[i])
endfunction
function sc___prototype168_evaluate takes integer i,unit a1,location a2,real a3 returns nothing
    set f__arg_unit1=a1
    set f__arg_location1=a2
    set f__arg_real1=a3

    call TriggerEvaluate(st___prototype168[i])

endfunction
function sc___prototype169_execute takes integer i returns nothing

    call TriggerExecute(st___prototype169[i])
endfunction
function sc___prototype169_evaluate takes integer i returns real

    call TriggerEvaluate(st___prototype169[i])
 return f__result_real
endfunction
function sc___prototype173_execute takes integer i,location a1 returns nothing
    set f__arg_location1=a1

    call TriggerExecute(st___prototype173[i])
endfunction
function sc___prototype173_evaluate takes integer i,location a1 returns nothing
    set f__arg_location1=a1

    call TriggerEvaluate(st___prototype173[i])

endfunction
function sc___prototype174_execute takes integer i,group a1 returns nothing
    set f__arg_group1=a1

    call TriggerExecute(st___prototype174[i])
endfunction
function sc___prototype174_evaluate takes integer i,group a1 returns nothing
    set f__arg_group1=a1

    call TriggerEvaluate(st___prototype174[i])

endfunction
function sc___prototype175_execute takes integer i,effect a1 returns nothing
    set f__arg_effect1=a1

    call TriggerExecute(st___prototype175[i])
endfunction
function sc___prototype175_evaluate takes integer i,effect a1 returns nothing
    set f__arg_effect1=a1

    call TriggerEvaluate(st___prototype175[i])

endfunction
function sc___prototype176_execute takes integer i,location a1,real a2,real a3 returns nothing
    set f__arg_location1=a1
    set f__arg_real1=a2
    set f__arg_real2=a3

    call TriggerExecute(st___prototype176[i])
endfunction
function sc___prototype176_evaluate takes integer i,location a1,real a2,real a3 returns nothing
    set f__arg_location1=a1
    set f__arg_real1=a2
    set f__arg_real2=a3

    call TriggerEvaluate(st___prototype176[i])

endfunction
function sc___prototype177_execute takes integer i,integer a1,integer a2,player a3,location a4,real a5 returns nothing
    set f__arg_integer1=a1
    set f__arg_integer2=a2
    set f__arg_player1=a3
    set f__arg_location1=a4
    set f__arg_real1=a5

    call TriggerExecute(st___prototype177[i])
endfunction
function sc___prototype177_evaluate takes integer i,integer a1,integer a2,player a3,location a4,real a5 returns nothing
    set f__arg_integer1=a1
    set f__arg_integer2=a2
    set f__arg_player1=a3
    set f__arg_location1=a4
    set f__arg_real1=a5

    call TriggerEvaluate(st___prototype177[i])

endfunction
function sc___prototype178_execute takes integer i,unit a1,string a2,location a3 returns nothing
    set f__arg_unit1=a1
    set f__arg_string1=a2
    set f__arg_location1=a3

    call TriggerExecute(st___prototype178[i])
endfunction
function sc___prototype178_evaluate takes integer i,unit a1,string a2,location a3 returns nothing
    set f__arg_unit1=a1
    set f__arg_string1=a2
    set f__arg_location1=a3

    call TriggerEvaluate(st___prototype178[i])

endfunction
function sc___prototype179_execute takes integer i,unit a1,location a2 returns nothing
    set f__arg_unit1=a1
    set f__arg_location1=a2

    call TriggerExecute(st___prototype179[i])
endfunction
function sc___prototype179_evaluate takes integer i,unit a1,location a2 returns nothing
    set f__arg_unit1=a1
    set f__arg_location1=a2

    call TriggerEvaluate(st___prototype179[i])

endfunction
function sc___prototype180_execute takes integer i,real a1,location a2,boolexpr a3 returns nothing
    set f__arg_real1=a1
    set f__arg_location1=a2
    set f__arg_boolexpr1=a3

    call TriggerExecute(st___prototype180[i])
endfunction
function sc___prototype180_evaluate takes integer i,real a1,location a2,boolexpr a3 returns nothing
    set f__arg_real1=a1
    set f__arg_location1=a2
    set f__arg_boolexpr1=a3

    call TriggerEvaluate(st___prototype180[i])

endfunction
function sc___prototype181_execute takes integer i,integer a1,integer a2,player a3,location a4,location a5 returns nothing
    set f__arg_integer1=a1
    set f__arg_integer2=a2
    set f__arg_player1=a3
    set f__arg_location1=a4
    set f__arg_location2=a5

    call TriggerExecute(st___prototype181[i])
endfunction
function sc___prototype181_evaluate takes integer i,integer a1,integer a2,player a3,location a4,location a5 returns nothing
    set f__arg_integer1=a1
    set f__arg_integer2=a2
    set f__arg_player1=a3
    set f__arg_location1=a4
    set f__arg_location2=a5

    call TriggerEvaluate(st___prototype181[i])

endfunction
function sc___prototype182_execute takes integer i,group a1,code a2 returns nothing
    set f__arg_group1=a1
    set f__arg_code1=a2

    call TriggerExecute(st___prototype182[i])
endfunction
function sc___prototype182_evaluate takes integer i,group a1,code a2 returns nothing
    set f__arg_group1=a1
    set f__arg_code1=a2

    call TriggerEvaluate(st___prototype182[i])

endfunction
function sc___prototype183_execute takes integer i,string a1,widget a2,string a3 returns nothing
    set f__arg_string1=a1
    set f__arg_widget1=a2
    set f__arg_string2=a3

    call TriggerExecute(st___prototype183[i])
endfunction
function sc___prototype183_evaluate takes integer i,string a1,widget a2,string a3 returns nothing
    set f__arg_string1=a1
    set f__arg_widget1=a2
    set f__arg_string2=a3

    call TriggerEvaluate(st___prototype183[i])

endfunction
function sc___prototype184_execute takes integer i,location a1,string a2 returns nothing
    set f__arg_location1=a1
    set f__arg_string1=a2

    call TriggerExecute(st___prototype184[i])
endfunction
function sc___prototype184_evaluate takes integer i,location a1,string a2 returns nothing
    set f__arg_location1=a1
    set f__arg_string1=a2

    call TriggerEvaluate(st___prototype184[i])

endfunction
function h__PolarProjectionBJ takes location a0, real a1, real a2 returns location
    //hook: MemoryLeakHelper___PP
    call sc___prototype176_evaluate(1,a0,a1,a2)
return PolarProjectionBJ(a0,a1,a2)
endfunction
function h__CreateNUnitsAtLoc takes integer a0, integer a1, player a2, location a3, real a4 returns group
    //hook: MemoryLeakHelper___CU
    call sc___prototype177_evaluate(1,a0,a1,a2,a3,a4)
return CreateNUnitsAtLoc(a0,a1,a2,a3,a4)
endfunction
function h__CreateNUnitsAtLocFacingLocBJ takes integer a0, integer a1, player a2, location a3, location a4 returns group
    //hook: MemoryLeakHelper___CUF
    call sc___prototype181_evaluate(1,a0,a1,a2,a3,a4)
return CreateNUnitsAtLocFacingLocBJ(a0,a1,a2,a3,a4)
endfunction
function h__IssuePointOrderLocBJ takes unit a0, string a1, location a2 returns boolean
    //hook: MemoryLeakHelper___IPO
    call sc___prototype178_evaluate(1,a0,a1,a2)
return IssuePointOrderLocBJ(a0,a1,a2)
endfunction
function h__SetUnitPositionLoc takes unit a0, location a1 returns nothing
    //hook: MemoryLeakHelper___SUP
    call sc___prototype179_evaluate(1,a0,a1)
call SetUnitPositionLoc(a0,a1)
endfunction
function h__SetUnitFacingToFaceLocTimed takes unit a0, location a1, real a2 returns nothing
    //hook: MemoryLeakHelper___SUF
    call sc___prototype168_evaluate(1,a0,a1,a2)
call SetUnitFacingToFaceLocTimed(a0,a1,a2)
endfunction
function h__GetUnitsInRangeOfLocMatching takes real a0, location a1, boolexpr a2 returns group
    //hook: MemoryLeakHelper___GUR
    call sc___prototype180_evaluate(1,a0,a1,a2)
return GetUnitsInRangeOfLocMatching(a0,a1,a2)
endfunction
function h__RemoveLocation takes location a0 returns nothing
    //hook: MemoryLeakHelper___ReleaseLocation
    call sc___prototype173_evaluate(1,a0)
call RemoveLocation(a0)
endfunction
function h__ForGroupBJ takes group a0, code a1 returns nothing
    //hook: MemoryLeakHelper___FG
    call sc___prototype182_evaluate(1,a0,a1)
call ForGroupBJ(a0,a1)
endfunction
function h__GroupPickRandomUnit takes group a0 returns unit
    //hook: MemoryLeakHelper___CatchGroup
    call sc___prototype174_evaluate(1,a0)
return GroupPickRandomUnit(a0)
endfunction
function h__CountUnitsInGroup takes group a0 returns integer
    //hook: MemoryLeakHelper___CatchGroup
    call sc___prototype174_evaluate(1,a0)
return CountUnitsInGroup(a0)
endfunction
function h__DestroyGroup takes group a0 returns nothing
    //hook: MemoryLeakHelper___ReleaseGroup
    call sc___prototype174_evaluate(2,a0)
call DestroyGroup(a0)
endfunction
function h__AddSpecialEffectLocBJ takes location a0, string a1 returns effect
    //hook: MemoryLeakHelper___ASE
    call sc___prototype184_evaluate(1,a0,a1)
return AddSpecialEffectLocBJ(a0,a1)
endfunction
function h__AddSpecialEffectTargetUnitBJ takes string a0, widget a1, string a2 returns effect
    //hook: MemoryLeakHelper___ASETU
    call sc___prototype183_evaluate(1,a0,a1,a2)
return AddSpecialEffectTargetUnitBJ(a0,a1,a2)
endfunction
function h__DestroyEffect takes effect a0 returns nothing
    //hook: MemoryLeakHelper___ReleaseEffect
    call sc___prototype175_evaluate(1,a0)
call DestroyEffect(a0)
endfunction
function h__DestroyEffectBJ takes effect a0 returns nothing
    //hook: MemoryLeakHelper___ReleaseEffect
    call sc___prototype175_evaluate(1,a0)
call DestroyEffectBJ(a0)
endfunction

//library YDTriggerSaveLoadSystem:
 function YDTriggerSaveLoadSystem__Init takes nothing returns nothing
		set YDHT=InitHashtable()
	endfunction

//library YDTriggerSaveLoadSystem ends
//library YDWEBase:
//===========================================================================
//HashTable
//===========================================================================
//===========================================================================
//Return bug
//===========================================================================
function YDWEH2I takes handle h returns integer
    return GetHandleId(h)
endfunction
//���
function YDWEFlushAllData takes nothing returns nothing
    call FlushParentHashtable(YDHT)
endfunction
function YDWEFlushMissionByInteger takes integer i returns nothing
    call FlushChildHashtable(YDHT, i)
endfunction
function YDWEFlushMissionByString takes string s returns nothing
    call FlushChildHashtable(YDHT, StringHash(s))
endfunction
function YDWEFlushStoredIntegerByInteger takes integer i,integer j returns nothing
    call RemoveSavedInteger(YDHT, i, j)
endfunction
function YDWEFlushStoredIntegerByString takes string s1,string s2 returns nothing
    call RemoveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction
function YDWEHaveSavedIntegerByInteger takes integer i,integer j returns boolean
    return HaveSavedInteger(YDHT, i, j)
endfunction
function YDWEHaveSavedIntegerByString takes string s1,string s2 returns boolean
    return HaveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction
//store and get integer
function YDWESaveIntegerByInteger takes integer pTable,integer pKey,integer i returns nothing
    call SaveInteger(YDHT, pTable, pKey, i)
endfunction
function YDWESaveIntegerByString takes string pTable,string pKey,integer i returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), i)
endfunction
function YDWEGetIntegerByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetIntegerByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//store and get real
function YDWESaveRealByInteger takes integer pTable,integer pKey,real r returns nothing
    call SaveReal(YDHT, pTable, pKey, r)
endfunction
function YDWESaveRealByString takes string pTable,string pKey,real r returns nothing
    call SaveReal(YDHT, StringHash(pTable), StringHash(pKey), r)
endfunction
function YDWEGetRealByInteger takes integer pTable,integer pKey returns real
    return LoadReal(YDHT, pTable, pKey)
endfunction
function YDWEGetRealByString takes string pTable,string pKey returns real
    return LoadReal(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//store and get string
function YDWESaveStringByInteger takes integer pTable,integer pKey,string s returns nothing
    call SaveStr(YDHT, pTable, pKey, s)
endfunction
function YDWESaveStringByString takes string pTable,string pKey,string s returns nothing
    call SaveStr(YDHT, StringHash(pTable), StringHash(pKey), s)
endfunction
function YDWEGetStringByInteger takes integer pTable,integer pKey returns string
    return LoadStr(YDHT, pTable, pKey)
endfunction
function YDWEGetStringByString takes string pTable,string pKey returns string
    return LoadStr(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//store and get boolean
function YDWESaveBooleanByInteger takes integer pTable,integer pKey,boolean b returns nothing
    call SaveBoolean(YDHT, pTable, pKey, b)
endfunction
function YDWESaveBooleanByString takes string pTable,string pKey,boolean b returns nothing
    call SaveBoolean(YDHT, StringHash(pTable), StringHash(pKey), b)
endfunction
function YDWEGetBooleanByInteger takes integer pTable,integer pKey returns boolean
    return LoadBoolean(YDHT, pTable, pKey)
endfunction
function YDWEGetBooleanByString takes string pTable,string pKey returns boolean
    return LoadBoolean(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Unit
function YDWESaveUnitByInteger takes integer pTable,integer pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, pTable, pKey, u)
endfunction
function YDWESaveUnitByString takes string pTable,string pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, StringHash(pTable), StringHash(pKey), u)
endfunction
function YDWEGetUnitByInteger takes integer pTable,integer pKey returns unit
    return LoadUnitHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetUnitByString takes string pTable,string pKey returns unit
    return LoadUnitHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert UnitID
function YDWESaveUnitIDByInteger takes integer pTable,integer pKey,integer uid returns nothing
    call SaveInteger(YDHT, pTable, pKey, uid)
endfunction
function YDWESaveUnitIDByString takes string pTable,string pKey,integer uid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), uid)
endfunction
function YDWEGetUnitIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetUnitIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert AbilityID
function YDWESaveAbilityIDByInteger takes integer pTable,integer pKey,integer abid returns nothing
    call SaveInteger(YDHT, pTable, pKey, abid)
endfunction
function YDWESaveAbilityIDByString takes string pTable,string pKey,integer abid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), abid)
endfunction
function YDWEGetAbilityIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetAbilityIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Player
function YDWESavePlayerByInteger takes integer pTable,integer pKey,player p returns nothing
    call SavePlayerHandle(YDHT, pTable, pKey, p)
endfunction
function YDWESavePlayerByString takes string pTable,string pKey,player p returns nothing
    call SavePlayerHandle(YDHT, StringHash(pTable), StringHash(pKey), p)
endfunction
function YDWEGetPlayerByInteger takes integer pTable,integer pKey returns player
    return LoadPlayerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetPlayerByString takes string pTable,string pKey returns player
    return LoadPlayerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Item
function YDWESaveItemByInteger takes integer pTable,integer pKey,item it returns nothing
    call SaveItemHandle(YDHT, pTable, pKey, it)
endfunction
function YDWESaveItemByString takes string pTable,string pKey,item it returns nothing
    call SaveItemHandle(YDHT, StringHash(pTable), StringHash(pKey), it)
endfunction
function YDWEGetItemByInteger takes integer pTable,integer pKey returns item
    return LoadItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetItemByString takes string pTable,string pKey returns item
    return LoadItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert ItemID
function YDWESaveItemIDByInteger takes integer pTable,integer pKey,integer itid returns nothing
    call SaveInteger(YDHT, pTable, pKey, itid)
endfunction
function YDWESaveItemIDByString takes string pTable,string pKey,integer itid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), itid)
endfunction
function YDWEGetItemIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetItemIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Timer
function YDWESaveTimerByInteger takes integer pTable,integer pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, pTable, pKey, t)
endfunction
function YDWESaveTimerByString takes string pTable,string pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, StringHash(pTable), StringHash(pKey), t)
endfunction
function YDWEGetTimerByInteger takes integer pTable,integer pKey returns timer
    return LoadTimerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTimerByString takes string pTable,string pKey returns timer
    return LoadTimerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Trigger
function YDWESaveTriggerByInteger takes integer pTable,integer pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, pTable, pKey, trg)
endfunction
function YDWESaveTriggerByString takes string pTable,string pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey), trg)
endfunction
function YDWEGetTriggerByInteger takes integer pTable,integer pKey returns trigger
    return LoadTriggerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerByString takes string pTable,string pKey returns trigger
    return LoadTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Location
function YDWESaveLocationByInteger takes integer pTable,integer pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, pTable, pKey, pt)
endfunction
function YDWESaveLocationByString takes string pTable,string pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, StringHash(pTable), StringHash(pKey), pt)
endfunction
function YDWEGetLocationByInteger takes integer pTable,integer pKey returns location
    return LoadLocationHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLocationByString takes string pTable,string pKey returns location
    return LoadLocationHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Group
function YDWESaveGroupByInteger takes integer pTable,integer pKey,group g returns nothing
    call SaveGroupHandle(YDHT, pTable, pKey, g)
endfunction
function YDWESaveGroupByString takes string pTable,string pKey,group g returns nothing
    call SaveGroupHandle(YDHT, StringHash(pTable), StringHash(pKey), g)
endfunction
function YDWEGetGroupByInteger takes integer pTable,integer pKey returns group
    return LoadGroupHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetGroupByString takes string pTable,string pKey returns group
    return LoadGroupHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Multiboard
function YDWESaveMultiboardByInteger takes integer pTable,integer pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, pTable, pKey, m)
endfunction
function YDWESaveMultiboardByString takes string pTable,string pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey), m)
endfunction
function YDWEGetMultiboardByInteger takes integer pTable,integer pKey returns multiboard
    return LoadMultiboardHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetMultiboardByString takes string pTable,string pKey returns multiboard
    return LoadMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert MultiboardItem
function YDWESaveMultiboardItemByInteger takes integer pTable,integer pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, pTable, pKey, mt)
endfunction
function YDWESaveMultiboardItemByString takes string pTable,string pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey), mt)
endfunction
function YDWEGetMultiboardItemByInteger takes integer pTable,integer pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetMultiboardItemByString takes string pTable,string pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert TextTag
function YDWESaveTextTagByInteger takes integer pTable,integer pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, pTable, pKey, tt)
endfunction
function YDWESaveTextTagByString takes string pTable,string pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey), tt)
endfunction
function YDWEGetTextTagByInteger takes integer pTable,integer pKey returns texttag
    return LoadTextTagHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTextTagByString takes string pTable,string pKey returns texttag
    return LoadTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Lightning
function YDWESaveLightningByInteger takes integer pTable,integer pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, pTable, pKey, ln)
endfunction
function YDWESaveLightningByString takes string pTable,string pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, StringHash(pTable), StringHash(pKey), ln)
endfunction
function YDWEGetLightningByInteger takes integer pTable,integer pKey returns lightning
    return LoadLightningHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLightningByString takes string pTable,string pKey returns lightning
    return LoadLightningHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Region
function YDWESaveRegionByInteger takes integer pTable,integer pKey,region rn returns nothing
    call SaveRegionHandle(YDHT, pTable, pKey, rn)
endfunction
function YDWESaveRegionByString takes string pTable,string pKey,region rt returns nothing
    call SaveRegionHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction
function YDWEGetRegionByInteger takes integer pTable,integer pKey returns region
    return LoadRegionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetRegionByString takes string pTable,string pKey returns region
    return LoadRegionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Rect
function YDWESaveRectByInteger takes integer pTable,integer pKey,rect rn returns nothing
    call SaveRectHandle(YDHT, pTable, pKey, rn)
endfunction
function YDWESaveRectByString takes string pTable,string pKey,rect rt returns nothing
    call SaveRectHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction
function YDWEGetRectByInteger takes integer pTable,integer pKey returns rect
    return LoadRectHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetRectByString takes string pTable,string pKey returns rect
    return LoadRectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Leaderboard
function YDWESaveLeaderboardByInteger takes integer pTable,integer pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, pTable, pKey, lb)
endfunction
function YDWESaveLeaderboardByString takes string pTable,string pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey), lb)
endfunction
function YDWEGetLeaderboardByInteger takes integer pTable,integer pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLeaderboardByString takes string pTable,string pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Effect
function YDWESaveEffectByInteger takes integer pTable,integer pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, pTable, pKey, e)
endfunction
function YDWESaveEffectByString takes string pTable,string pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, StringHash(pTable), StringHash(pKey), e)
endfunction
function YDWEGetEffectByInteger takes integer pTable,integer pKey returns effect
    return LoadEffectHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetEffectByString takes string pTable,string pKey returns effect
    return LoadEffectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Destructable
function YDWESaveDestructableByInteger takes integer pTable,integer pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, pTable, pKey, da)
endfunction
function YDWESaveDestructableByString takes string pTable,string pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey), da)
endfunction
function YDWEGetDestructableByInteger takes integer pTable,integer pKey returns destructable
    return LoadDestructableHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetDestructableByString takes string pTable,string pKey returns destructable
    return LoadDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert triggercondition
function YDWESaveTriggerConditionByInteger takes integer pTable,integer pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, pTable, pKey, tc)
endfunction
function YDWESaveTriggerConditionByString takes string pTable,string pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey), tc)
endfunction
function YDWEGetTriggerConditionByInteger takes integer pTable,integer pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerConditionByString takes string pTable,string pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert triggeraction
function YDWESaveTriggerActionByInteger takes integer pTable,integer pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, pTable, pKey, ta)
endfunction
function YDWESaveTriggerActionByString takes string pTable,string pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction
function YDWEGetTriggerActionByInteger takes integer pTable,integer pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerActionByString takes string pTable,string pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert event
function YDWESaveTriggerEventByInteger takes integer pTable,integer pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, pTable, pKey, et)
endfunction
function YDWESaveTriggerEventByString takes string pTable,string pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey), et)
endfunction
function YDWEGetTriggerEventByInteger takes integer pTable,integer pKey returns event
    return LoadTriggerEventHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerEventByString takes string pTable,string pKey returns event
    return LoadTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert force
function YDWESaveForceByInteger takes integer pTable,integer pKey,force fc returns nothing
    call SaveForceHandle(YDHT, pTable, pKey, fc)
endfunction
function YDWESaveForceByString takes string pTable,string pKey,force fc returns nothing
    call SaveForceHandle(YDHT, StringHash(pTable), StringHash(pKey), fc)
endfunction
function YDWEGetForceByInteger takes integer pTable,integer pKey returns force
    return LoadForceHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetForceByString takes string pTable,string pKey returns force
    return LoadForceHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert boolexpr
function YDWESaveBoolexprByInteger takes integer pTable,integer pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, pTable, pKey, be)
endfunction
function YDWESaveBoolexprByString takes string pTable,string pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey), be)
endfunction
function YDWEGetBoolexprByInteger takes integer pTable,integer pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetBoolexprByString takes string pTable,string pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert sound
function YDWESaveSoundByInteger takes integer pTable,integer pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, pTable, pKey, sd)
endfunction
function YDWESaveSoundByString takes string pTable,string pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, StringHash(pTable), StringHash(pKey), sd)
endfunction
function YDWEGetSoundByInteger takes integer pTable,integer pKey returns sound
    return LoadSoundHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetSoundByString takes string pTable,string pKey returns sound
    return LoadSoundHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert timerdialog
function YDWESaveTimerDialogByInteger takes integer pTable,integer pKey,timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, pTable, pKey, td)
endfunction
function YDWESaveTimerDialogByString takes string pTable,string pKey,timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), td)
endfunction
function YDWEGetTimerDialogByInteger takes integer pTable,integer pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTimerDialogByString takes string pTable,string pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert trackable
function YDWESaveTrackableByInteger takes integer pTable,integer pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, pTable, pKey, ta)
endfunction
function YDWESaveTrackableByString takes string pTable,string pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction
function YDWEGetTrackableByInteger takes integer pTable,integer pKey returns trackable
    return LoadTrackableHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTrackableByString takes string pTable,string pKey returns trackable
    return LoadTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert dialog
function YDWESaveDialogByInteger takes integer pTable,integer pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, pTable, pKey, d)
endfunction
function YDWESaveDialogByString takes string pTable,string pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), d)
endfunction
function YDWEGetDialogByInteger takes integer pTable,integer pKey returns dialog
    return LoadDialogHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetDialogByString takes string pTable,string pKey returns dialog
    return LoadDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert button
function YDWESaveButtonByInteger takes integer pTable,integer pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, pTable, pKey, bt)
endfunction
function YDWESaveButtonByString takes string pTable,string pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, StringHash(pTable), StringHash(pKey), bt)
endfunction
function YDWEGetButtonByInteger takes integer pTable,integer pKey returns button
    return LoadButtonHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetButtonByString takes string pTable,string pKey returns button
    return LoadButtonHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert quest
function YDWESaveQuestByInteger takes integer pTable,integer pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, pTable, pKey, qt)
endfunction
function YDWESaveQuestByString takes string pTable,string pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, StringHash(pTable), StringHash(pKey), qt)
endfunction
function YDWEGetQuestByInteger takes integer pTable,integer pKey returns quest
    return LoadQuestHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetQuestByString takes string pTable,string pKey returns quest
    return LoadQuestHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert questitem
function YDWESaveQuestItemByInteger takes integer pTable,integer pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, pTable, pKey, qi)
endfunction
function YDWESaveQuestItemByString takes string pTable,string pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey), qi)
endfunction
function YDWEGetQuestItemByInteger takes integer pTable,integer pKey returns questitem
    return LoadQuestItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetQuestItemByString takes string pTable,string pKey returns questitem
    return LoadQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWES2I takes string s returns integer
    return StringHash(s)
endfunction
function YDWESaveAbilityHandleBJ takes integer AbilityID,integer key,integer missionKey,hashtable table returns nothing
    call SaveInteger(table, missionKey, key, AbilityID)
endfunction
function YDWESaveAbilityHandle takes hashtable table,integer parentKey,integer childKey,integer AbilityID returns nothing
    call SaveInteger(table, parentKey, childKey, AbilityID)
endfunction
function YDWELoadAbilityHandleBJ takes integer key,integer missionKey,hashtable table returns integer
    return LoadInteger(table, missionKey, key)
endfunction
function YDWELoadAbilityHandle takes hashtable table,integer parentKey,integer childKey returns integer
    return LoadInteger(table, parentKey, childKey)
endfunction
//===========================================================================
//返回参数
//===========================================================================
//地图边界判断
function YDWECoordinateX takes real x returns real
    return RMinBJ(RMaxBJ(x, yd_MapMinX), yd_MapMaxX)
endfunction
function YDWECoordinateY takes real y returns real
    return RMinBJ(RMaxBJ(y, yd_MapMinY), yd_MapMaxY)
endfunction
//两个单位之间的距离
function YDWEDistanceBetweenUnits takes unit a,unit b returns real
    return SquareRoot(( GetUnitX(a) - GetUnitX(b) ) * ( GetUnitX(a) - GetUnitX(b) ) + ( GetUnitY(a) - GetUnitY(b) ) * ( GetUnitY(a) - GetUnitY(b) ))
endfunction
//两个单位之间的角度
function YDWEAngleBetweenUnits takes unit fromUnit,unit toUnit returns real
    return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
endfunction
//生成区域
function YDWEGetRect takes real x,real y,real width,real height returns rect
    return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
endfunction
//===========================================================================
//设置单位可以飞行
//===========================================================================
function YDWEFlyEnable takes unit u returns nothing
    call UnitAddAbility(u, 'Amrf')
    call UnitRemoveAbility(u, 'Amrf')
endfunction
//===========================================================================
//字符窜与ID转换
//===========================================================================
function YDWEId2S takes integer value returns string
    local string charMap=bj_AllString
    local string result= ""
    local integer remainingValue= value
    local integer charValue
    local integer byteno
    set byteno=0
    loop
        set charValue=ModuloInteger(remainingValue, 256)
        set remainingValue=remainingValue / 256
        set result=SubString(charMap, charValue, charValue + 1) + result
        set byteno=byteno + 1
        exitwhen byteno == 4
    endloop
    return result
endfunction
function YDWES2Id takes string targetstr returns integer
    local string originstr=bj_AllString
    local integer strlength=StringLength(targetstr)
    local integer a=0
local integer b=0
local integer numx=1
local integer result=0
    loop
    exitwhen b > strlength - 1
        set numx=R2I(Pow(256, strlength - 1 - b))
        set a=1
        loop
            exitwhen a > 255
            if SubString(targetstr, b, b + 1) == SubString(originstr, a, a + 1) then
                set result=result + a * numx
                set a=256
            endif
            set a=a + 1
        endloop
        set b=b + 1
    endloop
    return result
endfunction
function YDWES2UnitId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction
function YDWES2ItemId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction
function GetLastAbilityCastingUnit takes nothing returns unit
    return bj_lastAbilityCastingUnit
endfunction
function GetLastAbilityTargetUnit takes nothing returns unit
    return bj_lastAbilityTargetUnit
endfunction
function YDWESetMapLimitCoordinate takes real MinX,real MaxX,real MinY,real MaxY returns nothing
    set yd_MapMaxX=MaxX
    set yd_MapMinX=MinX
    set yd_MapMaxY=MaxY
    set yd_MapMinY=MinY
endfunction
//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================
//YDWE特殊技能结束事件 
function YDWESyStemAbilityCastingOverTriggerAction takes unit hero,integer index returns nothing
 local integer i= 0
    loop
        exitwhen i >= YDWEBase___AbilityCastingOverEventNumber
        if YDWEBase___AbilityCastingOverEventType[i] == index then
            set bj_lastAbilityCastingUnit=hero
			if YDWEBase___AbilityCastingOverEventQueue[i] != null and TriggerEvaluate(YDWEBase___AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(YDWEBase___AbilityCastingOverEventQueue[i]) then
				call TriggerExecute(YDWEBase___AbilityCastingOverEventQueue[i])
			endif
		endif
        set i=i + 1
    endloop
endfunction
//===========================================================================  
//YDWE技能捕捉事件 
//===========================================================================  
function YDWESyStemAbilityCastingOverRegistTrigger takes trigger trg,integer index returns nothing
	set YDWEBase___AbilityCastingOverEventQueue[YDWEBase___AbilityCastingOverEventNumber]=trg
	set YDWEBase___AbilityCastingOverEventType[YDWEBase___AbilityCastingOverEventNumber]=index
	set YDWEBase___AbilityCastingOverEventNumber=YDWEBase___AbilityCastingOverEventNumber + 1
endfunction 
//===========================================================================
//系统函数完善
//===========================================================================
function YDWECreateUnitPool takes nothing returns nothing
    set bj_lastCreatedUnitPool=CreateUnitPool()
endfunction
function YDWEPlaceRandomUnit takes unitpool up,player p,real x,real y,real face returns nothing
set bj_lastPoolAbstractedUnit=PlaceRandomUnit(up, p, x, y, face)
endfunction
function YDWEGetLastUnitPool takes nothing returns unitpool
    return bj_lastCreatedUnitPool
endfunction
function YDWEGetLastPoolAbstractedUnit takes nothing returns unit
    return bj_lastPoolAbstractedUnit
endfunction
function YDWECreateItemPool takes nothing returns nothing
    set bj_lastCreatedItemPool=CreateItemPool()
endfunction
function YDWEPlaceRandomItem takes itempool ip,real x,real y returns nothing
set bj_lastPoolAbstractedItem=PlaceRandomItem(ip, x, y)
endfunction
function YDWEGetLastItemPool takes nothing returns itempool
    return bj_lastCreatedItemPool
endfunction
function YDWEGetLastPoolAbstractedItem takes nothing returns item
    return bj_lastPoolAbstractedItem
endfunction
function YDWESetAttackDamageWeaponType takes attacktype at,damagetype dt,weapontype wt returns nothing
    set bj_lastSetAttackType=at
    set bj_lastSetDamageType=dt
    set bj_lastSetWeaponType=wt
endfunction
//unitpool bj_lastCreatedPool=null
//unit bj_lastPoolAbstractedUnit=null
function YDWEGetPlayerColorString takes player p,string s returns string
    return YDWEBase___yd_PlayerColor[GetHandleId(GetPlayerColor(p))] + s + "|r"
endfunction
//===========================================================================
//===========================================================================
//系统函数补充
//===========================================================================
//===========================================================================
function YDWEGetUnitItemSoftId takes unit hero,item it returns integer
    local integer i= 0
    loop
         exitwhen i > 5
         if UnitItemInSlot(hero, i) == it then
            return i + 1
         endif
         set i=i + 1
    endloop
    return 0
endfunction
//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================
//===========================================================================
//显示版本
function YDWEVersion_Display takes nothing returns boolean
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.29.3.1243")
    return false
endfunction
function YDWEVersion_Init takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 0
    loop
        exitwhen i == 12
        call TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
        set i=i + 1
    endloop
    call TriggerAddCondition(t, Condition(function YDWEVersion_Display))
    set t=null
endfunction
function InitializeYD takes nothing returns nothing
	//=================设置变量=====================
	set yd_MapMinX=GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
	set yd_MapMinY=GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
	set yd_MapMaxX=GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
	set yd_MapMaxY=GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)
	
    set YDWEBase___yd_PlayerColor[0]="|cFFFF0303"
    set YDWEBase___yd_PlayerColor[1]="|cFF0042FF"
    set YDWEBase___yd_PlayerColor[2]="|cFF1CE6B9"
    set YDWEBase___yd_PlayerColor[3]="|cFF540081"
    set YDWEBase___yd_PlayerColor[4]="|cFFFFFC01"
    set YDWEBase___yd_PlayerColor[5]="|cFFFE8A0E"
    set YDWEBase___yd_PlayerColor[6]="|cFF20C000"
    set YDWEBase___yd_PlayerColor[7]="|cFFE55BB0"
    set YDWEBase___yd_PlayerColor[8]="|cFF959697"
    set YDWEBase___yd_PlayerColor[9]="|cFF7EBFF1"
    set YDWEBase___yd_PlayerColor[10]="|cFF106246"
    set YDWEBase___yd_PlayerColor[11]="|cFF4E2A04"
    set YDWEBase___yd_PlayerColor[12]="|cFF282828"
    set YDWEBase___yd_PlayerColor[13]="|cFF282828"
    set YDWEBase___yd_PlayerColor[14]="|cFF282828"
    set YDWEBase___yd_PlayerColor[15]="|cFF282828"
    //=================显示版本=====================
    call YDWEVersion_Init()
endfunction

//library YDWEBase ends
//library YDWEGetForceOfPlayerNull:
function YDWEGetForceOfPlayerNull takes player whichPlayer returns force
    local force f= CreateForce()
    call ForceAddPlayer(f, whichPlayer)
    set yd_NullTempForce=f
    set f=null
    return yd_NullTempForce
endfunction

//library YDWEGetForceOfPlayerNull ends
//library YDWEGetPlayersByMapControlNull:
function YDWEGetPlayersByMapControlNull takes mapcontrol whichControl returns force
    local force f= CreateForce()
    local integer playerIndex
    local player indexPlayer
    set playerIndex=0
    loop
        set indexPlayer=Player(playerIndex)
        if GetPlayerController(indexPlayer) == whichControl then
            call ForceAddPlayer(f, indexPlayer)
        endif
        set playerIndex=playerIndex + 1
        exitwhen playerIndex == bj_MAX_PLAYER_SLOTS
    endloop
    set indexPlayer=null
    set yd_NullTempForce=f
    set f=null
    return yd_NullTempForce
endfunction

//library YDWEGetPlayersByMapControlNull ends
//library YDWEGetUnitsInRangeOfLocMatchingNull:
function YDWEGetUnitsInRangeOfLocMatchingNull takes real radius,location whichLocation,boolexpr filter returns group
    local group g= CreateGroup()
    call GroupEnumUnitsInRangeOfLoc(g, whichLocation, radius, filter)
    call DestroyBoolExpr(filter)
    set yd_NullTempGroup=g
    set g=null
    return yd_NullTempGroup
endfunction

//library YDWEGetUnitsInRangeOfLocMatchingNull ends
//library YDWEGetUnitsInRectMatchingNull:
function YDWEGetUnitsInRectMatchingNull takes rect r,boolexpr filter returns group
    local group g= CreateGroup()
    call GroupEnumUnitsInRect(g, r, filter)
    call DestroyBoolExpr(filter)
    set yd_NullTempGroup=g
    set g=null
    return yd_NullTempGroup
endfunction

//library YDWEGetUnitsInRectMatchingNull ends
//library YDWEGetUnitsOfPlayerMatchingNull:
function YDWEGetUnitsOfPlayerMatchingNull takes player whichPlayer,boolexpr filter returns group
    local group g= CreateGroup()
    call GroupEnumUnitsOfPlayer(g, whichPlayer, filter)
    call DestroyBoolExpr(filter)
    set yd_NullTempGroup=g
    set g=null
    return yd_NullTempGroup
endfunction

//library YDWEGetUnitsOfPlayerMatchingNull ends
//library YDWEMultiboardSetItemColorBJNull:
function YDWEMultiboardSetItemColorBJNull takes multiboard mb,integer col,integer row,real red,real green,real blue,real transparency returns nothing
    local integer curRow= 0
    local integer curCol= 0
    local integer numRows= MultiboardGetRowCount(mb)
    local integer numCols= MultiboardGetColumnCount(mb)
    local multiboarditem mbitem= null
    // Loop over rows, using 1-based index
    loop
        set curRow=curRow + 1
        exitwhen curRow > numRows
        // Apply setting to the requested row, or all rows (if row is 0)
        if ( row == 0 or row == curRow ) then
            // Loop over columns, using 1-based index
            set curCol=0
            loop
                set curCol=curCol + 1
                exitwhen curCol > numCols
                // Apply setting to the requested column, or all columns (if col is 0)
                if ( col == 0 or col == curCol ) then
                    set mbitem=MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    call MultiboardSetItemValueColor(mbitem, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
                    call MultiboardReleaseItem(mbitem)
                endif
            endloop
        endif
    endloop
    set mbitem=null
endfunction

//library YDWEMultiboardSetItemColorBJNull ends
//library YDWEMultiboardSetItemValueBJNull:
function YDWEMultiboardSetItemValueBJNull takes multiboard mb,integer col,integer row,string val returns nothing
    local integer curRow= 0
    local integer curCol= 0
    local integer numRows= MultiboardGetRowCount(mb)
    local integer numCols= MultiboardGetColumnCount(mb)
    local multiboarditem mbitem= null
    // Loop over rows, using 1-based index
    loop
        set curRow=curRow + 1
        exitwhen curRow > numRows
        // Apply setting to the requested row, or all rows (if row is 0)
        if ( row == 0 or row == curRow ) then
            // Loop over columns, using 1-based index
            set curCol=0
            loop
                set curCol=curCol + 1
                exitwhen curCol > numCols
                // Apply setting to the requested column, or all columns (if col is 0)
                if ( col == 0 or col == curCol ) then
                    set mbitem=MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    call MultiboardSetItemValue(mbitem, val)
                    call MultiboardReleaseItem(mbitem)
                endif
            endloop
        endif
    endloop
    set mbitem=null
endfunction

//library YDWEMultiboardSetItemValueBJNull ends
//library YDWEMultiboardSetItemWidthBJNull:
function YDWEMultiboardSetItemWidthBJNull takes multiboard mb,integer col,integer row,real width returns nothing
    local integer curRow= 0
    local integer curCol= 0
    local integer numRows= MultiboardGetRowCount(mb)
    local integer numCols= MultiboardGetColumnCount(mb)
    local multiboarditem mbitem= null
    // Loop over rows, using 1-based index
    loop
        set curRow=curRow + 1
        exitwhen curRow > numRows
        // Apply setting to the requested row, or all rows (if row is 0)
        if ( row == 0 or row == curRow ) then
            // Loop over columns, using 1-based index
            set curCol=0
            loop
                set curCol=curCol + 1
                exitwhen curCol > numCols
                // Apply setting to the requested column, or all columns (if col is 0)
                if ( col == 0 or col == curCol ) then
                    set mbitem=MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    call MultiboardSetItemWidth(mbitem, width / 100.0)
                    call MultiboardReleaseItem(mbitem)
                endif
            endloop
        endif
    endloop
    set mbitem=null
endfunction

//library YDWEMultiboardSetItemWidthBJNull ends
//library YDWEPauseAllUnitsBJNull:
function YDWEPauseAllUnitsBJNull takes boolean pause returns nothing
    local integer index
    local player indexPlayer
    local group g
    set bj_pauseAllUnitsFlag=pause
    set g=CreateGroup()
    set index=0
    loop
        set indexPlayer=Player(index)
        // If this is a computer slot, pause/resume the AI.
        if ( GetPlayerController(indexPlayer) == MAP_CONTROL_COMPUTER ) then
            call PauseCompAI(indexPlayer, pause)
        endif
        // Enumerate and unpause every unit owned by the player.
        call GroupEnumUnitsOfPlayer(g, indexPlayer, null)
        call ForGroup(g, function PauseAllUnitsBJEnum)
        call GroupClear(g)
        set index=index + 1
        exitwhen index == bj_MAX_PLAYER_SLOTS
    endloop
    call h__DestroyGroup(g)
    set g=null
endfunction

//library YDWEPauseAllUnitsBJNull ends
//library YDWEPlaySoundNull:
function YDWEPlaySoundNull takes string soundName returns nothing
    local sound soundHandle= CreateSound(soundName, false, false, true, 12700, 12700, "")
    call StartSound(soundHandle)
    call KillSoundWhenDone(soundHandle)
    set soundHandle=null
endfunction

//library YDWEPlaySoundNull ends
//library YDWEReplaceUnitBJNull:
function YDWEReplaceUnitBJNull takes unit whichUnit,integer newUnitId,integer unitStateMethod returns unit
    local unit oldUnit= whichUnit
    local unit newUnit
    local boolean wasHidden
    local integer index
    local item indexItem
    local real oldRatio
    // If we have bogus data, don't attempt the replace.
    if ( whichUnit == null ) then
        set bj_lastReplacedUnit=whichUnit
        return bj_lastReplacedUnit
    endif
    // Hide the original unit.
    set wasHidden=IsUnitHidden(oldUnit)
    call ShowUnit(oldUnit, false)
    // Create the replacement unit.
    if ( newUnitId == 'ugol' ) then
        set newUnit=CreateBlightedGoldmine(GetOwningPlayer(oldUnit), GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
    else
        set newUnit=CreateUnit(GetOwningPlayer(oldUnit), newUnitId, GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
    endif
    // Set the unit's life and mana according to the requested method.
    if ( unitStateMethod == bj_UNIT_STATE_METHOD_RELATIVE ) then
        // Set the replacement's current/max life ratio to that of the old unit.
        // If both units have mana, do the same for mana.
        if ( GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE) > 0 ) then
            set oldRatio=GetUnitState(oldUnit, UNIT_STATE_LIFE) / GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE)
            call SetUnitState(newUnit, UNIT_STATE_LIFE, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
        endif
        if ( GetUnitState(oldUnit, UNIT_STATE_MAX_MANA) > 0 ) and ( GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0 ) then
            set oldRatio=GetUnitState(oldUnit, UNIT_STATE_MANA) / GetUnitState(oldUnit, UNIT_STATE_MAX_MANA)
            call SetUnitState(newUnit, UNIT_STATE_MANA, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
        endif
    elseif ( unitStateMethod == bj_UNIT_STATE_METHOD_ABSOLUTE ) then
        // Set the replacement's current life to that of the old unit.
        // If the new unit has mana, do the same for mana.
        call SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(oldUnit, UNIT_STATE_LIFE))
        if ( GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0 ) then
            call SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(oldUnit, UNIT_STATE_MANA))
        endif
    elseif ( unitStateMethod == bj_UNIT_STATE_METHOD_DEFAULTS ) then
        // The newly created unit should already have default life and mana.
    elseif ( unitStateMethod == bj_UNIT_STATE_METHOD_MAXIMUM ) then
        // Use max life and mana.
        call SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
        call SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
    else
        // Unrecognized unit state method - ignore the request.
    endif
    // Mirror properties of the old unit onto the new unit.
    //call PauseUnit(newUnit, IsUnitPaused(oldUnit))
    call SetResourceAmount(newUnit, GetResourceAmount(oldUnit))
    // If both the old and new units are heroes, handle their hero info.
    if ( IsUnitType(oldUnit, UNIT_TYPE_HERO) and IsUnitType(newUnit, UNIT_TYPE_HERO) ) then
        call SetHeroXP(newUnit, GetHeroXP(oldUnit), false)
        set index=0
        loop
            set indexItem=UnitItemInSlot(oldUnit, index)
            if ( indexItem != null ) then
                call UnitRemoveItem(oldUnit, indexItem)
                call UnitAddItem(newUnit, indexItem)
            endif
            set index=index + 1
            exitwhen index >= bj_MAX_INVENTORY
        endloop
    endif
    // Remove or kill the original unit.  It is sometimes unsafe to remove
    // hidden units, so kill the original unit if it was previously hidden.
    if wasHidden then
        call KillUnit(oldUnit)
        call RemoveUnit(oldUnit)
    else
        call RemoveUnit(oldUnit)
    endif
    set bj_lastReplacedUnit=newUnit
    set oldUnit=null
    set newUnit=null
    set indexItem=null
    return bj_lastReplacedUnit
endfunction

//library YDWEReplaceUnitBJNull ends
//library YDWESetUnitFacingToFaceLocTimedNull:
function YDWESetUnitFacingToFaceLocTimedNull takes unit whichUnit,location target,real duration returns nothing
    local location unitLoc= GetUnitLoc(whichUnit)
    call SetUnitFacingTimed(whichUnit, AngleBetweenPoints(unitLoc, target), duration)
    call h__RemoveLocation(unitLoc)
    set unitLoc=null
endfunction

//library YDWESetUnitFacingToFaceLocTimedNull ends
//library MemoryLeakHelper:
    
    function MemoryLeakHelper___GetElapsedGameTime takes nothing returns real
        return MemoryLeakHelper___GameTime + TimerGetElapsed(MemoryLeakHelper___GameTimeTimer)
    endfunction
    
    function MemoryLeakHelper___UpdateGameTime takes nothing returns nothing
        set MemoryLeakHelper___GameTime=MemoryLeakHelper___GameTime + MemoryLeakHelper___GAMETIME_TIMER_INTERVAL
    endfunction
  function s__MemoryLeakHelper___Index_DestroyHashes takes nothing returns nothing
   local real gt= (1)
   local integer ind
			
			// Well, due to the nature of this system, the looking of the code sucks.
			loop
				exitwhen MemoryLeakHelper___HashNumber == 0
				if gt - MemoryLeakHelper___CreationTime[MemoryLeakHelper___HashNumber] > MemoryLeakHelper___HASH_DECAY_TIME then
					set ind=MemoryLeakHelper___HashHash[MemoryLeakHelper___HashNumber]
					call s__MemoryLeakHelper___Index_deallocate(ind)
					call RemoveSavedInteger(YDHT, (MemoryLeakHelper___key ), ( MemoryLeakHelper___HashData[MemoryLeakHelper___HashNumber])) // INLINED!!
				else
					set MemoryLeakHelper___TempHashNumber=MemoryLeakHelper___TempHashNumber + 1
					set MemoryLeakHelper___TempHashData[MemoryLeakHelper___TempHashNumber]=MemoryLeakHelper___HashData[MemoryLeakHelper___HashNumber]
					set MemoryLeakHelper___TempHashHash[MemoryLeakHelper___TempHashNumber]=MemoryLeakHelper___HashHash[MemoryLeakHelper___HashNumber]
					set MemoryLeakHelper___TempHashPlace[MemoryLeakHelper___TempHashNumber]=MemoryLeakHelper___HashPlace[MemoryLeakHelper___HashNumber]
					set MemoryLeakHelper___TempCreationTime[MemoryLeakHelper___TempHashNumber]=MemoryLeakHelper___CreationTime[MemoryLeakHelper___HashNumber]
				endif
				set MemoryLeakHelper___HashData[MemoryLeakHelper___HashNumber]=0
				set MemoryLeakHelper___HashHash[MemoryLeakHelper___HashNumber]=0
				set MemoryLeakHelper___HashPlace[MemoryLeakHelper___HashNumber]=0
				set MemoryLeakHelper___CreationTime[MemoryLeakHelper___HashNumber]=0.
				set MemoryLeakHelper___HashNumber=MemoryLeakHelper___HashNumber - 1
			endloop
			
			loop
				exitwhen MemoryLeakHelper___TempHashNumber == 0
				set MemoryLeakHelper___HashNumber=MemoryLeakHelper___HashNumber + 1
				set MemoryLeakHelper___HashData[MemoryLeakHelper___HashNumber]=MemoryLeakHelper___TempHashData[MemoryLeakHelper___TempHashNumber]
				set MemoryLeakHelper___HashHash[MemoryLeakHelper___HashNumber]=MemoryLeakHelper___TempHashHash[MemoryLeakHelper___TempHashNumber]
				set MemoryLeakHelper___HashPlace[MemoryLeakHelper___HashNumber]=MemoryLeakHelper___TempHashPlace[MemoryLeakHelper___TempHashNumber]
				set MemoryLeakHelper___TempHashData[MemoryLeakHelper___TempHashNumber]=0
				set MemoryLeakHelper___TempHashNumber=MemoryLeakHelper___TempHashNumber - 1
			endloop
			
  endfunction
	
        function s__MemoryLeakHelper___Index_GetHash takes integer value returns integer
            local integer int= (LoadInteger(YDHT, (MemoryLeakHelper___key ), ( value))) // INLINED!!
            
            if int == 0 then
                set int=s__MemoryLeakHelper___Index__allocate()
                call SaveInteger(YDHT, (MemoryLeakHelper___key ), ( value ), ( int)) // INLINED!!
                
                set MemoryLeakHelper___HashNumber=MemoryLeakHelper___HashNumber + 1
                set MemoryLeakHelper___HashPlace[int]=MemoryLeakHelper___HashNumber
                set MemoryLeakHelper___HashData[MemoryLeakHelper___HashNumber]=value
                set MemoryLeakHelper___HashHash[MemoryLeakHelper___HashNumber]=int
                set MemoryLeakHelper___CreationTime[MemoryLeakHelper___HashNumber]=(MemoryLeakHelper___GameTime + TimerGetElapsed(MemoryLeakHelper___GameTimeTimer)) // INLINED!!
                
                if MemoryLeakHelper___HashNumber >= MemoryLeakHelper___CLEAR_HASH_COUNT then
                    call s__MemoryLeakHelper___Index_DestroyHashes()
                endif
            endif
            
            set MemoryLeakHelper___LastHashedValue=value
            set MemoryLeakHelper___LastIndex=int
            
            return int
        endfunction
        function s__MemoryLeakHelper___GTable_reset takes integer this returns nothing
			call FlushChildHashtable(YDHT, (0)) // INLINED!!
            call FlushChildHashtable(YDHT, ((this))) // INLINED!!
        endfunction
        function s__MemoryLeakHelper___GTable_onDestroy takes integer this returns nothing
            call s__MemoryLeakHelper___GTable_reset(this)
        endfunction
	
function s__MemoryLeakHelper___HandleTable__getindex takes integer this,handle l__MemoryLeakHelper___key returns integer
            return (LoadInteger(YDHT, ((this) ), ( (GetHandleId((l__MemoryLeakHelper___key)))))) // INLINED!!
        endfunction
function s__MemoryLeakHelper___HandleTable__setindex takes integer this,handle l__MemoryLeakHelper___key,integer value returns nothing
            call SaveInteger(YDHT, ((this) ), ( (GetHandleId((l__MemoryLeakHelper___key))) ), ( value)) // INLINED!!
        endfunction
function s__MemoryLeakHelper___HandleTable_flush takes integer this,handle l__MemoryLeakHelper___key returns nothing
            call RemoveSavedInteger(YDHT, ((this) ), ( (GetHandleId((l__MemoryLeakHelper___key))))) // INLINED!!
        endfunction
function s__MemoryLeakHelper___HandleTable_exists takes integer this,handle l__MemoryLeakHelper___key returns boolean
            return (HaveSavedInteger(YDHT, ((this) ), ( (GetHandleId((l__MemoryLeakHelper___key)))))) // INLINED!!
        endfunction
        function s__MemoryLeakHelper___HandleTable_flush2D takes string firstkey returns nothing
            call s__MemoryLeakHelper___GTable_reset((- (StringHash((firstkey))))) // INLINED!!
        endfunction
        function s__MemoryLeakHelper___HandleTable__staticgetindex takes string firstkey returns integer
            return (- (StringHash((firstkey)))) // INLINED!!
        endfunction
//===========================================================================
// Trigger: MemoryLeakHelper
//
//     //hook GetLocationX CatchLocation
//     //hook GetLocationY CatchLocation  
//      //hook ForGroup FG
// 129k
// 3,02 + 43,32 + 697,86
// 744
//===========================================================================
    
    
    
    function YDWEMemoryLeakHelperGetLastCaughtHandle takes nothing returns handle
        return MemoryLeakHelper___LastCaught
    endfunction
    
    function YDWEMemoryLeakHelperProtectHandle takes handle h returns nothing
        call SaveInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId(((h)))) ), ( ( 1))) // INLINED!!
    endfunction
    
    function YDWEMemoryLeakHelperProtectVariable takes handle h returns nothing
        call SaveInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId(((h)))) ), ( ( 1))) // INLINED!!
    endfunction
    function MemoryLeakHelper___EnableMMH takes nothing returns nothing
        set MemoryLeakHelper___Disabled=false
    endfunction
    function YDWEMemoryLeakHelperDelayMMH takes nothing returns nothing
        set MemoryLeakHelper___Disabled=true
        call TimerStart(MemoryLeakHelper___DelayTimer, 0.00, false, function MemoryLeakHelper___EnableMMH)
    endfunction
    
    function YDWEMemoryLeakHelperDisplayLeaks takes nothing returns nothing
        local location loc=null
        if MemoryLeakHelper___IsDisplayMemoryLeakHelper == false then
            call h__CreateNUnitsAtLoc(1, 'hfoo', Player(15), GetRectCenter(GetPlayableMapRect()), bj_UNIT_FACING)
            call RemoveUnit(bj_lastCreatedUnit)
            set loc=GetRectCenter(GetPlayableMapRect())
            call h__CreateNUnitsAtLoc(1, 'hfoo', Player(15), loc, bj_UNIT_FACING)
            call RemoveUnit(bj_lastCreatedUnit)
            call h__RemoveLocation(loc)
            set loc=null
            set MemoryLeakHelper___IsDisplayMemoryLeakHelper=true
        endif
        call ClearTextMessages()
        call BJDebugMsg("======= 自动排泄系统 =======")
        call BJDebugMsg("排除的泄漏" + I2S(MemoryLeakHelper___DestroyedLeaks))
        call BJDebugMsg("用户手动排除的泄漏" + I2S(MemoryLeakHelper___DestroyedLeaksUser))
        call BJDebugMsg("系统排泄比例: " + R2S(I2R(MemoryLeakHelper___DestroyedLeaks) / I2R(MemoryLeakHelper___DestroyedLeaks + MemoryLeakHelper___DestroyedLeaksUser) * 100.) + "%")
        call BJDebugMsg("作者排泄比例" + R2S(I2R(MemoryLeakHelper___DestroyedLeaksUser) / I2R(MemoryLeakHelper___DestroyedLeaks + MemoryLeakHelper___DestroyedLeaksUser) * 100.) + "%")
        call BJDebugMsg("下次排除的泄漏" + I2S(MemoryLeakHelper___MIN_LEAK_NUMBER - MemoryLeakHelper___CaughtLeaks))
        call BJDebugMsg(" === 待排除的泄漏 === ")
        call BJDebugMsg("   单位组泄漏" + I2S(MemoryLeakHelper___GroupDestroyCount))
        call BJDebugMsg("   点泄漏" + I2S(MemoryLeakHelper___LocationDestroyCount))
        call BJDebugMsg("   特效泄漏: " + I2S(MemoryLeakHelper___EffectDestroyCount))
        call BJDebugMsg(" === 还未排除的泄漏=== ")
        call BJDebugMsg("   单位组泄漏" + I2S(MemoryLeakHelper___CaughtGroupLeaks))
        call BJDebugMsg("   点泄漏" + I2S(MemoryLeakHelper___CaughtLocationLeaks))
        call BJDebugMsg("   特效泄漏: " + I2S(MemoryLeakHelper___CaughtEffectLeaks))
        call BJDebugMsg("下次排泄时间: " + I2S(R2I(TimerGetRemaining(MemoryLeakHelper___PassTimer) + 0.5)) + " seconds.")
        call BJDebugMsg("======= 自动排泄系统 =======")
        call BJDebugMsg("排除泄漏" + I2S(MemoryLeakHelper___DestroyedLeaks))
        //if DISPLAY_SAVED_MEMORY then
            call BJDebugMsg("自动排泄系统释放的总内存为 " + R2S(MemoryLeakHelper___SavedMemory) + " kb.")
        //endif
        call BJDebugMsg("================================")
    endfunction
    
    function MemoryLeakHelper___GroupGetMemoryUsageEnum takes nothing returns nothing
        set MemoryLeakHelper___LastCheckedGroupMemoryUsage=MemoryLeakHelper___LastCheckedGroupMemoryUsage + MemoryLeakHelper___GROUP_UNIT_MEMORY_USAGE
    endfunction
    
    function MemoryLeakHelper___GroupGetMemoryUsage takes group g returns real
        set MemoryLeakHelper___LastCheckedGroupMemoryUsage=0.
        call ForGroup(g, function MemoryLeakHelper___GroupGetMemoryUsageEnum)
        return MemoryLeakHelper___LastCheckedGroupMemoryUsage + MemoryLeakHelper___GROUP_MEMORY_USAGE
    endfunction
    	
 function MemoryLeakHelper___CatchLocation takes location l returns nothing
        set MemoryLeakHelper___LastCaught=l
        
        if MemoryLeakHelper___Disabled then
            return
        elseif MemoryLeakHelper___CaughtLocationLeaks == MemoryLeakHelper___MAX_LEAK_INSTANCES then
            return
        endif
        
        if (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) == false then // INLINED!!
            //call BJDebugMsg("Caught Location")
            set MemoryLeakHelper___CaughtLocationLeaks=MemoryLeakHelper___CaughtLocationLeaks + 1
            call sg__MemoryLeakHelper___LocationLeakData_set(MemoryLeakHelper___CaughtLocationLeaks,l)
            call SaveInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))) ), ( ( MemoryLeakHelper___CaughtLocationLeaks))) // INLINED!!
        endif
    endfunction
    
    function MemoryLeakHelper___AddToLocationDestroyQueue takes location l returns nothing
        set MemoryLeakHelper___LocationDestroyCount=MemoryLeakHelper___LocationDestroyCount + 1
        call sg__MemoryLeakHelper___LocationDestroyData_set(MemoryLeakHelper___LocationDestroyCount,l)
        call SaveInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))) ), ( ( MemoryLeakHelper___LocationDestroyCount * - 1))) // Put his to negative, so we know that this is used in the DestroyQueue now. // INLINED!!
endfunction
    
    function MemoryLeakHelper___ReleaseLocation takes location l returns nothing
        local integer index
        if MemoryLeakHelper___IsDestroying == false and (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) then // INLINED!!
            set index=(LoadInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) // INLINED!!
            // If this is true, the index wasn't put to a destroy queue yet.
            if index > 0 then
                call sg__MemoryLeakHelper___LocationLeakData_set(index,sg__MemoryLeakHelper___LocationLeakData_get(MemoryLeakHelper___CaughtLocationLeaks))
                set MemoryLeakHelper___CaughtLocationLeaks=MemoryLeakHelper___CaughtLocationLeaks - 1
            else
                set index=index * - 1
                call sg__MemoryLeakHelper___LocationDestroyData_set(index,sg__MemoryLeakHelper___LocationDestroyData_get(MemoryLeakHelper___LocationDestroyCount))
                set MemoryLeakHelper___LocationDestroyCount=MemoryLeakHelper___LocationDestroyCount - 1
            endif
            call RemoveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))))) // INLINED!!
            set MemoryLeakHelper___DestroyedLeaksUser=MemoryLeakHelper___DestroyedLeaksUser + 1
        endif
    endfunction
	
 function MemoryLeakHelper___CatchGroup takes group l returns nothing
        set MemoryLeakHelper___LastCaught=l
        
        if MemoryLeakHelper___Disabled then
            return
        elseif MemoryLeakHelper___CaughtGroupLeaks == MemoryLeakHelper___MAX_LEAK_INSTANCES then
            return
        endif
        
        if (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) == false then // INLINED!!
            //call BJDebugMsg("Caught Group")
            set MemoryLeakHelper___CaughtGroupLeaks=MemoryLeakHelper___CaughtGroupLeaks + 1
            call sg__MemoryLeakHelper___GroupLeakData_set(MemoryLeakHelper___CaughtGroupLeaks,l)
            call SaveInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))) ), ( ( MemoryLeakHelper___CaughtGroupLeaks))) // INLINED!!
        endif
    endfunction
    
    function MemoryLeakHelper___AddToGroupDestroyQueue takes group l returns nothing
        set MemoryLeakHelper___GroupDestroyCount=MemoryLeakHelper___GroupDestroyCount + 1
        call sg__MemoryLeakHelper___GroupDestroyData_set(MemoryLeakHelper___GroupDestroyCount,l)
        call SaveInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))) ), ( ( MemoryLeakHelper___GroupDestroyCount * - 1))) // Put his to negative, so we know that this is used in the DestroyQueue now. // INLINED!!
endfunction
    
    function MemoryLeakHelper___ReleaseGroup takes group l returns nothing
        local integer index
        if MemoryLeakHelper___IsDestroying == false and (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) then // INLINED!!
            set index=(LoadInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) // INLINED!!
            // If this is true, the index wasn't put to a destroy queue yet.
            if index > 0 then
                call sg__MemoryLeakHelper___GroupLeakData_set(index,sg__MemoryLeakHelper___GroupLeakData_get(MemoryLeakHelper___CaughtGroupLeaks))
                set MemoryLeakHelper___CaughtGroupLeaks=MemoryLeakHelper___CaughtGroupLeaks - 1
            else
                set index=index * - 1
                call sg__MemoryLeakHelper___GroupDestroyData_set(index,sg__MemoryLeakHelper___GroupDestroyData_get(MemoryLeakHelper___GroupDestroyCount))
                set MemoryLeakHelper___GroupDestroyCount=MemoryLeakHelper___GroupDestroyCount - 1
            endif
            call RemoveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))))) // INLINED!!
            set MemoryLeakHelper___DestroyedLeaksUser=MemoryLeakHelper___DestroyedLeaksUser + 1
        endif
    endfunction
	
 function MemoryLeakHelper___CatchEffect takes effect l returns nothing
        set MemoryLeakHelper___LastCaught=l
        
        if MemoryLeakHelper___Disabled then
            return
        elseif MemoryLeakHelper___CaughtEffectLeaks == MemoryLeakHelper___MAX_LEAK_INSTANCES then
            return
        endif
        
        if (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) == false then // INLINED!!
            //call BJDebugMsg("Caught Effect")
            set MemoryLeakHelper___CaughtEffectLeaks=MemoryLeakHelper___CaughtEffectLeaks + 1
            call sg__MemoryLeakHelper___EffectLeakData_set(MemoryLeakHelper___CaughtEffectLeaks,l)
            call SaveInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))) ), ( ( MemoryLeakHelper___CaughtEffectLeaks))) // INLINED!!
        endif
    endfunction
    
    function MemoryLeakHelper___AddToEffectDestroyQueue takes effect l returns nothing
        set MemoryLeakHelper___EffectDestroyCount=MemoryLeakHelper___EffectDestroyCount + 1
        call sg__MemoryLeakHelper___EffectDestroyData_set(MemoryLeakHelper___EffectDestroyCount,l)
        call SaveInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))) ), ( ( MemoryLeakHelper___EffectDestroyCount * - 1))) // Put his to negative, so we know that this is used in the DestroyQueue now. // INLINED!!
endfunction
    
    function MemoryLeakHelper___ReleaseEffect takes effect l returns nothing
        local integer index
        if MemoryLeakHelper___IsDestroying == false and (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) then // INLINED!!
            set index=(LoadInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l))))))) // INLINED!!
            // If this is true, the index wasn't put to a destroy queue yet.
            if index > 0 then
                call sg__MemoryLeakHelper___EffectLeakData_set(index,sg__MemoryLeakHelper___EffectLeakData_get(MemoryLeakHelper___CaughtEffectLeaks))
                set MemoryLeakHelper___CaughtEffectLeaks=MemoryLeakHelper___CaughtEffectLeaks - 1
            else
                set index=index * - 1
                call sg__MemoryLeakHelper___EffectDestroyData_set(index,sg__MemoryLeakHelper___EffectDestroyData_get(MemoryLeakHelper___EffectDestroyCount))
                set MemoryLeakHelper___EffectDestroyCount=MemoryLeakHelper___EffectDestroyCount - 1
            endif
            call RemoveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((l)))))) // INLINED!!
            set MemoryLeakHelper___DestroyedLeaksUser=MemoryLeakHelper___DestroyedLeaksUser + 1
        endif
    endfunction
	
    function MemoryLeakHelper___DestroyMemoryLeaks takes nothing returns nothing
        set MemoryLeakHelper___IsDestroying=true
        
		set MemoryLeakHelper___DestroyedLeaks=MemoryLeakHelper___DestroyedLeaks + MemoryLeakHelper___GroupDestroyCount
        loop
            exitwhen MemoryLeakHelper___GroupDestroyCount == 0
            
            if MemoryLeakHelper___DISPLAY_SAVED_MEMORY then
                set MemoryLeakHelper___SavedMemory=MemoryLeakHelper___SavedMemory + MemoryLeakHelper___GroupGetMemoryUsage(sg__MemoryLeakHelper___GroupDestroyData_get(MemoryLeakHelper___GroupDestroyCount))
            endif
            
            call h__DestroyGroup(sg__MemoryLeakHelper___GroupDestroyData_get(MemoryLeakHelper___GroupDestroyCount))
            call RemoveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((sg__MemoryLeakHelper___GroupDestroyData_get(MemoryLeakHelper___GroupDestroyCount))))))) // INLINED!!
            set MemoryLeakHelper___GroupDestroyCount=MemoryLeakHelper___GroupDestroyCount - 1
        endloop
		
		set MemoryLeakHelper___DestroyedLeaks=MemoryLeakHelper___DestroyedLeaks + MemoryLeakHelper___LocationDestroyCount
        loop
            exitwhen MemoryLeakHelper___LocationDestroyCount == 0
            
            if MemoryLeakHelper___DISPLAY_SAVED_MEMORY then
                set MemoryLeakHelper___SavedMemory=MemoryLeakHelper___SavedMemory + MemoryLeakHelper___LOCATION_MEMORY_USAGE
            endif
            
            call h__RemoveLocation(sg__MemoryLeakHelper___LocationDestroyData_get(MemoryLeakHelper___LocationDestroyCount))
            call RemoveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((sg__MemoryLeakHelper___LocationDestroyData_get(MemoryLeakHelper___LocationDestroyCount))))))) // INLINED!!
            set MemoryLeakHelper___LocationDestroyCount=MemoryLeakHelper___LocationDestroyCount - 1
        endloop
		
		set MemoryLeakHelper___DestroyedLeaks=MemoryLeakHelper___DestroyedLeaks + MemoryLeakHelper___EffectDestroyCount
        loop
            exitwhen MemoryLeakHelper___EffectDestroyCount == 0
            
            if MemoryLeakHelper___DISPLAY_SAVED_MEMORY then
                set MemoryLeakHelper___SavedMemory=MemoryLeakHelper___SavedMemory + MemoryLeakHelper___EFFECT_MEMORY_USAGE
            endif
            
            call h__DestroyEffect(sg__MemoryLeakHelper___EffectDestroyData_get(MemoryLeakHelper___EffectDestroyCount))
            call RemoveSavedInteger(YDHT, (((MemoryLeakHelper___IndexData)) ), ( (GetHandleId(((sg__MemoryLeakHelper___EffectDestroyData_get(MemoryLeakHelper___EffectDestroyCount))))))) // INLINED!!
            set MemoryLeakHelper___EffectDestroyCount=MemoryLeakHelper___EffectDestroyCount - 1
        endloop
		
        set MemoryLeakHelper___IsDestroying=false
        set MemoryLeakHelper___DestroyThreadRunning=false
        //call StartPassTimer.execute() // Strange. This causes bugs sometimes and the function isn't called
        // This is slower, but safe.
        call ExecuteFunc("YDWEMemoryLeakStartPassTimer")
    endfunction
    
    function MemoryLeakHelper___StartDestroyThread takes nothing returns nothing
        if MemoryLeakHelper___DestroyThreadRunning == false then
            set MemoryLeakHelper___DestroyThreadRunning=true
            call TimerStart(MemoryLeakHelper___CleanTimer, MemoryLeakHelper___CLEAN_UP_INTERVAL, false, function MemoryLeakHelper___DestroyMemoryLeaks)
            call PauseTimer(MemoryLeakHelper___PassTimer)
        endif
    endfunction
    
   // hook DoNothing StartDestroyThread
    
    // We want that the user doesn't have to protect too many variables, but all the variables that are filled longer
    // than CLEAN_UP_INTERVAL seconds. But what, when the handle thing is put into the destroy stack and the next destroy is
    // in 5 seconds, because the last one was 15 seconds ago? We can simply avoid something like that by using a 2-step-system
    // that goes sure, the handle is only destroyed when it passed the CLEAN_UP_INTERVAL twice.
    // Having two kinds of variables is simply easier and more efficient than having another variable that refers to
    // how many times the handle passed the timer; If it isn't passed/cleared in the Interval then, we can't loop
    // that easily through the data and we'd have to fix gaps later; That would suck a lot of performacne.
    function MemoryLeakHelper___PassMemoryLeaks takes nothing returns nothing
		set MemoryLeakHelper___CaughtLeaks=MemoryLeakHelper___CaughtLeaks + MemoryLeakHelper___CaughtGroupLeaks
        loop
            exitwhen MemoryLeakHelper___CaughtGroupLeaks < 1
            if (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId(((sg__MemoryLeakHelper___GroupLeakData_get(MemoryLeakHelper___CaughtGroupLeaks)))))))) == false and sg__MemoryLeakHelper___GroupLeakData_get(MemoryLeakHelper___CaughtGroupLeaks) != null then // INLINED!!
                call MemoryLeakHelper___AddToGroupDestroyQueue(sg__MemoryLeakHelper___GroupLeakData_get(MemoryLeakHelper___CaughtGroupLeaks))
            endif
            call sg__MemoryLeakHelper___GroupLeakData_set(MemoryLeakHelper___CaughtGroupLeaks,null)
            set MemoryLeakHelper___CaughtGroupLeaks=MemoryLeakHelper___CaughtGroupLeaks - 1
        endloop
		
		set MemoryLeakHelper___CaughtLeaks=MemoryLeakHelper___CaughtLeaks + MemoryLeakHelper___CaughtLocationLeaks
        loop
            exitwhen MemoryLeakHelper___CaughtLocationLeaks < 1
            if (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId(((sg__MemoryLeakHelper___LocationLeakData_get(MemoryLeakHelper___CaughtLocationLeaks)))))))) == false and sg__MemoryLeakHelper___LocationLeakData_get(MemoryLeakHelper___CaughtLocationLeaks) != null then // INLINED!!
                call MemoryLeakHelper___AddToLocationDestroyQueue(sg__MemoryLeakHelper___LocationLeakData_get(MemoryLeakHelper___CaughtLocationLeaks))
            endif
            call sg__MemoryLeakHelper___LocationLeakData_set(MemoryLeakHelper___CaughtLocationLeaks,null)
            set MemoryLeakHelper___CaughtLocationLeaks=MemoryLeakHelper___CaughtLocationLeaks - 1
        endloop
		
		set MemoryLeakHelper___CaughtLeaks=MemoryLeakHelper___CaughtLeaks + MemoryLeakHelper___CaughtEffectLeaks
        loop
            exitwhen MemoryLeakHelper___CaughtEffectLeaks < 1
            if (HaveSavedInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId(((sg__MemoryLeakHelper___EffectLeakData_get(MemoryLeakHelper___CaughtEffectLeaks)))))))) == false and sg__MemoryLeakHelper___EffectLeakData_get(MemoryLeakHelper___CaughtEffectLeaks) != null then // INLINED!!
                call MemoryLeakHelper___AddToEffectDestroyQueue(sg__MemoryLeakHelper___EffectLeakData_get(MemoryLeakHelper___CaughtEffectLeaks))
            endif
            call sg__MemoryLeakHelper___EffectLeakData_set(MemoryLeakHelper___CaughtEffectLeaks,null)
            set MemoryLeakHelper___CaughtEffectLeaks=MemoryLeakHelper___CaughtEffectLeaks - 1
        endloop
		
        if MemoryLeakHelper___CaughtLeaks > MemoryLeakHelper___MIN_LEAK_NUMBER then
            set MemoryLeakHelper___CaughtLeaks=0
            //call BJDebugMsg("Caught Leaks: "+I2S(MIN_LEAK_NUMBER))
            //call BJDebugMsg("Now start Destroy Timer")
            set MemoryLeakHelper___DestroyThreadRunning=true
            call TimerStart(MemoryLeakHelper___CleanTimer, MemoryLeakHelper___CLEAN_UP_INTERVAL, false, function MemoryLeakHelper___DestroyMemoryLeaks)
            // We have to pause this timer a bit; Otherwise it would break the CLEAN_UP_INTERVAL rule.
            call PauseTimer(MemoryLeakHelper___PassTimer)
        endif
        
    endfunction
    
    // =================================
    // ============= Usage =============
    // =================================
    
    function MemoryLeakHelper___PP takes location source,real dist,real angle returns nothing
        call MemoryLeakHelper___CatchLocation(source)
    endfunction
    
    function MemoryLeakHelper___CU takes integer count,integer unitId,player p,location l,real face returns nothing
        call MemoryLeakHelper___CatchLocation(l)
    endfunction
    
    function MemoryLeakHelper___IPO takes unit k,string order,location l returns nothing
        call MemoryLeakHelper___CatchLocation(l)
    endfunction
    
    function MemoryLeakHelper___SUP takes unit who,location l returns nothing
        call MemoryLeakHelper___CatchLocation(l)
    endfunction
    
    function MemoryLeakHelper___SUF takes unit who,location l,real dur returns nothing
        call MemoryLeakHelper___CatchLocation(l)
    endfunction
    
    function MemoryLeakHelper___GUR takes real radius,location l,boolexpr filter returns nothing
        call MemoryLeakHelper___CatchLocation(l)
    endfunction
    
    function MemoryLeakHelper___CUF takes integer count,integer unitId,player whichPlayer,location loc,location lookAt returns nothing
        call MemoryLeakHelper___CatchLocation(loc)
        call MemoryLeakHelper___CatchLocation(lookAt)
    endfunction
    
//processed hook:     hook PolarProjectionBJ MemoryLeakHelper___PP
//processed hook:     hook CreateNUnitsAtLoc MemoryLeakHelper___CU
//processed hook:     hook CreateNUnitsAtLocFacingLocBJ MemoryLeakHelper___CUF
//processed hook:     hook IssuePointOrderLocBJ MemoryLeakHelper___IPO
//processed hook:     hook SetUnitPositionLoc MemoryLeakHelper___SUP
//processed hook:     hook SetUnitFacingToFaceLocTimed MemoryLeakHelper___SUF
//processed hook:     hook GetUnitsInRangeOfLocMatching MemoryLeakHelper___GUR
//processed hook:     hook RemoveLocation MemoryLeakHelper___ReleaseLocation
    function MemoryLeakHelper___FG takes group g,code callback returns nothing
        call MemoryLeakHelper___CatchGroup(g)
    endfunction
    
//processed hook:     hook ForGroupBJ MemoryLeakHelper___FG // :D This should catch all GUI usages for groups.
//processed hook: hook GroupPickRandomUnit MemoryLeakHelper___CatchGroup
//processed hook:     hook CountUnitsInGroup MemoryLeakHelper___CatchGroup
    
//processed hook:     hook DestroyGroup MemoryLeakHelper___ReleaseGroup
    
    function MemoryLeakHelper___ASETU takes string bla,widget d,string blu returns nothing
        // We can not catch THIS effect, but the effect that was created before.
        // So we can destroy all SpecialEffects excpet one.
        call MemoryLeakHelper___CatchEffect(GetLastCreatedEffectBJ())
    endfunction
    
    function MemoryLeakHelper___ASE takes location where,string modelName returns nothing
        call MemoryLeakHelper___CatchLocation(where)
        call MemoryLeakHelper___CatchEffect(GetLastCreatedEffectBJ())
    endfunction
//processed hook:     hook AddSpecialEffectLocBJ MemoryLeakHelper___ASE
//processed hook:     hook AddSpecialEffectTargetUnitBJ MemoryLeakHelper___ASETU
//processed hook:     hook DestroyEffect MemoryLeakHelper___ReleaseEffect
//processed hook:     hook DestroyEffectBJ MemoryLeakHelper___ReleaseEffect
    
    // When I want to make the timer run the PassMemoryLeaks things, I have to use an .execute command which requires an extra func.
    function YDWEMemoryLeakStartPassTimer takes nothing returns nothing
        //call BJDebugMsg("Restarting PassTimer")
        call TimerStart(MemoryLeakHelper___PassTimer, MemoryLeakHelper___PASS_INTERVAL, true, function MemoryLeakHelper___PassMemoryLeaks)
    endfunction
    
	// 开启接口函数
    function YDWEMemoryLeakHelperMapIsOpenMemoryLeakHelper takes boolean IsOpenMemoryLeak returns nothing
        set MemoryLeakHelper___IsOpenMemoryLeakHelper=IsOpenMemoryLeak
        call PauseTimer(MemoryLeakHelper___PassTimer)
        if ( IsOpenMemoryLeak ) then
            call TimerStart(MemoryLeakHelper___PassTimer, MemoryLeakHelper___PASS_INTERVAL, true, function MemoryLeakHelper___PassMemoryLeaks) // INLINED!!
        endif
    endfunction
    
    function YDWEMemoryLeakHelperProtectLastCaughtHandle takes nothing returns nothing
        call SaveInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId(((((MemoryLeakHelper___LastCaught)))))) ), ( ( 1))) // INLINED!!
    endfunction
    
    function YDWEMemoryLeakHelperProtectLocation takes location loc returns nothing
        call SaveInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId((((loc))))) ), ( ( 1))) // INLINED!!
    endfunction
    function YDWEMemoryLeakHelperProtectGroup takes group g returns nothing
        call SaveInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId((((g))))) ), ( ( 1))) // INLINED!!
    endfunction
    
    function YDWEMemoryLeakHelperProtectEffect takes effect e returns nothing
        call SaveInteger(YDHT, (((MemoryLeakHelper___IsSaved)) ), ( (GetHandleId((((e))))) ), ( ( 1))) // INLINED!!
    endfunction
        
    function MemoryLeakHelper___Init takes nothing returns nothing
        set MemoryLeakHelper___IndexData=s__MemoryLeakHelper___HandleTable__allocate()
        set MemoryLeakHelper___IsSaved=s__MemoryLeakHelper___HandleTable__allocate()
        
        //call YDWEMemoryLeakStartPassTimer()
        call TimerStart(MemoryLeakHelper___GameTimeTimer, MemoryLeakHelper___GAMETIME_TIMER_INTERVAL, true, function MemoryLeakHelper___UpdateGameTime)
    endfunction
    

//library MemoryLeakHelper ends
//library YDWEAroundSystem:
//library TP1 requires YDWEBase
    function YDWEAroundSystem___spin takes nothing returns nothing
        local integer d= 0
        local real x= 0.
        local real y= 0.
        local integer inst= 0
        
        loop
            exitwhen ( inst == s__YDWEAroundSystem___Data_Total )
            set d=s__YDWEAroundSystem___Data_Structs[inst]
            if ( s__YDWEAroundSystem___Data_dur[d] > 0 ) and ( GetUnitState(s__YDWEAroundSystem___Data_caster[d], UNIT_STATE_LIFE) > 0 ) and ( GetUnitState(s__YDWEAroundSystem___Data_obj[d], UNIT_STATE_LIFE) > 0 ) then
                set s__YDWEAroundSystem___Data_each[d]=s__YDWEAroundSystem___Data_each[d] + YDWEAroundSystem___AROUND_INTER
                if ( s__YDWEAroundSystem___Data_each[d] >= s__YDWEAroundSystem___Data_inter[d] ) then
                    set s__YDWEAroundSystem___Data_angle[d]=s__YDWEAroundSystem___Data_angle[d] + s__YDWEAroundSystem___Data_rate[d]
                    set s__YDWEAroundSystem___Data_radius[d]=s__YDWEAroundSystem___Data_radius[d] + s__YDWEAroundSystem___Data_dis[d]
                    set s__YDWEAroundSystem___Data_height[d]=s__YDWEAroundSystem___Data_height[d] + s__YDWEAroundSystem___Data_rise[d]
                    set x=GetUnitX(s__YDWEAroundSystem___Data_caster[d]) + s__YDWEAroundSystem___Data_radius[d] * Cos(s__YDWEAroundSystem___Data_angle[d])
                    set y=GetUnitY(s__YDWEAroundSystem___Data_caster[d]) + s__YDWEAroundSystem___Data_radius[d] * Sin(s__YDWEAroundSystem___Data_angle[d])
                    set x=(RMinBJ(RMaxBJ(((x)*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
                    set y=(RMinBJ(RMaxBJ(((y)*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
                    call SetUnitX(s__YDWEAroundSystem___Data_obj[d], x)
                    call SetUnitY(s__YDWEAroundSystem___Data_obj[d], y)
                    call SetUnitFlyHeight(s__YDWEAroundSystem___Data_obj[d], s__YDWEAroundSystem___Data_height[d], 0.)
                    set s__YDWEAroundSystem___Data_each[d]=0.
                endif
                set s__YDWEAroundSystem___Data_dur[d]=s__YDWEAroundSystem___Data_dur[d] - YDWEAroundSystem___AROUND_INTER
            else
                set bj_lastAbilityTargetUnit=s__YDWEAroundSystem___Data_caster[d]
                call YDWESyStemAbilityCastingOverTriggerAction(s__YDWEAroundSystem___Data_obj[d] , 10)
                set s__YDWEAroundSystem___Data_caster[d]=null
                set s__YDWEAroundSystem___Data_obj[d]=null
                call s__YDWEAroundSystem___Data_deallocate(d)
                set s__YDWEAroundSystem___Data_Total=s__YDWEAroundSystem___Data_Total - 1
                set s__YDWEAroundSystem___Data_Structs[inst]=s__YDWEAroundSystem___Data_Structs[s__YDWEAroundSystem___Data_Total]
                set inst=inst - 1
            endif
            set inst=inst + 1
        endloop
        if ( s__YDWEAroundSystem___Data_Total == 0 ) then
            call PauseTimer(YDWEAroundSystem___AROUND_TIM)
        endif
    endfunction
    function YDWEAroundSystem takes unit satellite,unit star,real angleRate,real displacement,real riseRate,real timeout,real interval returns nothing
        local integer d= s__YDWEAroundSystem___Data__allocate()
        local real x1= GetUnitX(star)
        local real y1= GetUnitY(star)
        local real x2= GetUnitX(satellite)
        local real y2= GetUnitY(satellite)
        set s__YDWEAroundSystem___Data_caster[d]=star
        set s__YDWEAroundSystem___Data_obj[d]=satellite
        set s__YDWEAroundSystem___Data_dur[d]=timeout
        set s__YDWEAroundSystem___Data_inter[d]=interval
        set s__YDWEAroundSystem___Data_rate[d]=angleRate * ( 3.14159 / 180. )
        set s__YDWEAroundSystem___Data_dis[d]=displacement
        set s__YDWEAroundSystem___Data_rise[d]=riseRate
        set s__YDWEAroundSystem___Data_angle[d]=Atan2(y2 - y1, x2 - x1)
        set s__YDWEAroundSystem___Data_radius[d]=SquareRoot(( x2 - x1 ) * ( x2 - x1 ) + ( y2 - y1 ) * ( y2 - y1 ))
        set s__YDWEAroundSystem___Data_height[d]=GetUnitFlyHeight(s__YDWEAroundSystem___Data_obj[d])
        set s__YDWEAroundSystem___Data_Structs[s__YDWEAroundSystem___Data_Total]=(d)
        set s__YDWEAroundSystem___Data_Total=s__YDWEAroundSystem___Data_Total + 1
        if ( s__YDWEAroundSystem___Data_Total - 1 == 0 ) then
            call TimerStart(YDWEAroundSystem___AROUND_TIM, YDWEAroundSystem___AROUND_INTER, true, function YDWEAroundSystem___spin)
        endif
    endfunction
    

//library YDWEAroundSystem ends
//library YDWEGetUnitsInRangeOfLocAllNull:
function YDWEGetUnitsInRangeOfLocAllNull takes real radius,location whichLocation returns group
    return YDWEGetUnitsInRangeOfLocMatchingNull(radius , whichLocation , null)
endfunction

//library YDWEGetUnitsInRangeOfLocAllNull ends
//library YDWEJumpTimer:
function YDWEJumpTimerLoop takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local unit hero=( (LoadUnitHandle(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Hero")))) ) // INLINED!!
    local real angle=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Angle")))) // INLINED!!
    local integer steeps=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steeps")))) // INLINED!!
    local integer steepsMax=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steepsMax")))) // INLINED!!
    local real heightMax=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "heightMax")))) // INLINED!!
    local real dist=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dist")))) // INLINED!!
    local real dheig=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dheig")))) // INLINED!!
    local real OriginHeight=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "OriginHeight")))) // INLINED!!
    local real x=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "X")))) // INLINED!!
    local real y=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Y")))) // INLINED!!
    local real x1=0
    local real y1=0
    local real height=0
    local integer lvJumpTimer=MoveMoreLevel_JumpTimer
    local integer lvUnitMove=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove")))) // INLINED!!
    if steeps < steepsMax and lvJumpTimer >= lvUnitMove then
        set x1=x + steeps * dist * Cos(angle * 3.14159 / 180.0)
        set y1=y + steeps * dist * Sin(angle * 3.14159 / 180.0)
        set x1=(RMinBJ(RMaxBJ(((x1)*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
        set y1=(RMinBJ(RMaxBJ(((y1)*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
        call SetUnitX(hero, x1)
        call SetUnitY(hero, y1)
        set steeps=steeps + 1
        call SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steeps" )), ( steeps)) // INLINED!!
        set height=( - ( 2 * I2R(steeps) * dheig - 1 ) * ( 2 * I2R(steeps) * dheig - 1 ) + 1 ) * heightMax + OriginHeight
        call SetUnitFlyHeight(hero, height, 99999)
        call SetUnitFacing(hero, angle)
      else
        call SetUnitFlyHeight(hero, OriginHeight, 99999)
        call SetUnitPathing(hero, true)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT, StringHash((I2S((GetHandleId((t))))))) // INLINED!!
        call SaveInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove" )), ( 0)) // INLINED!!
        call YDWESyStemAbilityCastingOverTriggerAction(hero , 2)
    endif
    set t=null
    set hero=null
endfunction
                            
function YDWEJumpTimer takes unit hero,real angle,real distance,real lasttime,real timeout,real heightMax returns nothing
    local timer t=null
    local real x=GetUnitX(hero)
    local real y=GetUnitY(hero)
    local integer steepsMax=R2I(lasttime / timeout)
    local integer steeps=0
    local real dist=distance / steepsMax
    local real dheig=1.0 / steepsMax
    local real OriginHeight=GetUnitFlyHeight(hero)
    local integer lvUnitMove=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove")))) // INLINED!!
    if MoveMoreLevel_JumpTimer <= lvUnitMove then
        return
    endif
    set t=CreateTimer()
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove" )), ( MoveMoreLevel_JumpTimer)) // INLINED!!
    call YDWEFlyEnable(hero)
    call SetUnitPathing(hero, false)
    call SaveUnitHandle(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Hero" )), ( hero)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "OriginHeight" )), (( OriginHeight)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Angle" )), (( angle)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dist" )), (( dist)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "heightMax" )), (( heightMax)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dheig" )), (( dheig)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "X" )), (( x)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Y" )), (( y)*1.0)) // INLINED!!
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steeps" )), ( steeps)) // INLINED!!
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steepsMax" )), ( steepsMax)) // INLINED!!
    call TimerStart(t, timeout, true, function YDWEJumpTimerLoop)
    set t=null
endfunction

//library YDWEJumpTimer ends
//library YDWELocalVariable:
function YDWELocalVariableInitiliation takes nothing returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "GlobalsTriggerRunSteps")))) // INLINED!!
    set TriggerRunSteps=TriggerRunSteps + 1
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "GlobalsTriggerRunSteps" )), ( TriggerRunSteps)) // INLINED!!
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps" )), ( TriggerRunSteps)) // INLINED!!
endfunction
function YDWEWaitForLocalVariable takes real time returns nothing
    local integer TriggerRunSteps=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
// call BJDebugMsg("等待之前TriggerRunSteps= "+I2S(TriggerRunSteps))
    call TriggerSleepAction(time)
// call BJDebugMsg("等待之后TriggerRunSteps= "+I2S(TriggerRunSteps))
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps" )), ( TriggerRunSteps)) // INLINED!!
endfunction
function YDWELocalVariableEnd takes nothing returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call FlushChildHashtable(YDHT, StringHash((dir))) // INLINED!!
endfunction
//integer
function YDWESetLocalVariableInteger takes string s,integer i returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s )), ( i)) // INLINED!!
endfunction
function YDWEGetLocalVariableInteger takes string s returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableIntegerArray takes string s,integer index,integer i returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( i)) // INLINED!!
endfunction
function YDWEGetLocalVariableIntegerArray takes string s,integer index returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//real
function YDWESetLocalVariableReal takes string s,real R returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveReal(YDHT, StringHash((dir )), StringHash(( s )), (( R)*1.0)) // INLINED!!
endfunction
function YDWEGetLocalVariableReal takes string s returns real
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadReal(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableRealArray takes string s,integer index,real R returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveReal(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), (( R)*1.0)) // INLINED!!
endfunction
function YDWEGetLocalVariableRealArray takes string s,integer index returns real
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadReal(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//string
function YDWESetLocalVariableString takes string s,string str returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveStr(YDHT, StringHash((dir )), StringHash(( s )), ( str)) // INLINED!!
endfunction
function YDWEGetLocalVariableString takes string s returns string
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadStr(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableStringArray takes string s,integer index,string str returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveStr(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( str)) // INLINED!!
endfunction
function YDWEGetLocalVariableStringArray takes string s,integer index returns string
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadStr(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//boolean
function YDWESetLocalVariableBoolean takes string s,boolean bl returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveBoolean(YDHT, StringHash((dir )), StringHash(( s )), ( bl)) // INLINED!!
endfunction
function YDWEGetLocalVariableBoolean takes string s returns boolean
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadBoolean(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableBooleanArray takes string s,integer index,boolean bl returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveBoolean(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( bl)) // INLINED!!
endfunction
function YDWEGetLocalVariableBooleanArray takes string s,integer index returns boolean
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadBoolean(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//unit
function YDWESetLocalVariableUnit takes string s,unit u returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveUnitHandle(YDHT, StringHash((dir )), StringHash(( s )), ( u)) // INLINED!!
endfunction
function YDWEGetLocalVariableUnit takes string s returns unit
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadUnitHandle(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableUnitArray takes string s,integer index,unit u returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveUnitHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( u)) // INLINED!!
endfunction
function YDWEGetLocalVariableUnitArray takes string s,integer index returns unit
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadUnitHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//unit code
function YDWESetLocalVariableUnitID takes string s,integer uid returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s )), ( uid)) // INLINED!!
endfunction
function YDWEGetLocalVariableUnitID takes string s returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableUnitIDArray takes string s,integer index,integer uid returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( uid)) // INLINED!!
endfunction
function YDWEGetLocalVariableUnitIDArray takes string s,integer index returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//ability code
function YDWESetLocalVariableAbilityID takes string s,integer abid returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s )), ( abid)) // INLINED!!
endfunction
function YDWEGetLocalVariableAbilityID takes string s returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableAbilityIDArray takes string s,integer index,integer abid returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( abid)) // INLINED!!
endfunction
function YDWEGetLocalVariableAbilityIDArray takes string s,integer index returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//item
function YDWESetLocalVariableItem takes string s,item it returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveItemHandle(YDHT, StringHash((dir )), StringHash(( s )), ( it)) // INLINED!!
endfunction
function YDWEGetLocalVariableItem takes string s returns item
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadItemHandle(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableItemArray takes string s,integer index,item it returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveItemHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( it)) // INLINED!!
endfunction
function YDWEGetLocalVariableItemArray takes string s,integer index returns item
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadItemHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//item code
function YDWESetLocalVariableItemID takes string s,integer itid returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s )), ( itid)) // INLINED!!
endfunction
function YDWEGetLocalVariableItemID takes string s returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableItemIDArray takes string s,integer index,integer itid returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( itid)) // INLINED!!
endfunction
function YDWEGetLocalVariableItemIDArray takes string s,integer index returns integer
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadInteger(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//location
function YDWESetLocalVariableLocation takes string s,location point returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveLocationHandle(YDHT, StringHash((dir )), StringHash(( s )), ( point)) // INLINED!!
endfunction
function YDWEGetLocalVariableLocation takes string s returns location
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadLocationHandle(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableLocationArray takes string s,integer index,location point returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveLocationHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( point)) // INLINED!!
endfunction
function YDWEGetLocalVariableLocationArray takes string s,integer index returns location
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadLocationHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//group
function YDWESetLocalVariableGroup takes string s,group g returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveGroupHandle(YDHT, StringHash((dir )), StringHash(( s )), ( g)) // INLINED!!
endfunction
function YDWEGetLocalVariableGroup takes string s returns group
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadGroupHandle(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableGroupArray takes string s,integer index,group g returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveGroupHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( g)) // INLINED!!
endfunction
function YDWEGetLocalVariableGroupArray takes string s,integer index returns group
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadGroupHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//effect
function YDWESetLocalVariableEffect takes string s,effect e returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveEffectHandle(YDHT, StringHash((dir )), StringHash(( s )), ( e)) // INLINED!!
endfunction
function YDWEGetLocalVariableEffect takes string s returns effect
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadEffectHandle(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableEffectArray takes string s,integer index,effect e returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveEffectHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( e)) // INLINED!!
endfunction
function YDWEGetLocalVariableEffectArray takes string s,integer index returns effect
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadEffectHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction
//rect
function YDWESetLocalVariableRect takes string s,rect rt returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveRectHandle(YDHT, StringHash((dir )), StringHash(( s )), ( rt)) // INLINED!!
endfunction
function YDWEGetLocalVariableRect takes string s returns rect
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadRectHandle(YDHT, StringHash((dir )), StringHash(( s)))) // INLINED!!
endfunction
function YDWESetLocalVariableRectArray takes string s,integer index,rect rt returns nothing
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    call SaveRectHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index) )), ( rt)) // INLINED!!
endfunction
function YDWEGetLocalVariableRectArray takes string s,integer index returns rect
    local integer TriggerRunSteps= (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "TriggerRunSteps")))) // INLINED!!
    local string dir= I2S((GetHandleId((GetTriggeringTrigger())))) + I2S(TriggerRunSteps) // INLINED!!
    return (LoadRectHandle(YDHT, StringHash((dir )), StringHash(( s + I2S(index))))) // INLINED!!
endfunction

//library YDWELocalVariable ends
//library YDWETimerPattern:
//***************************************************
//* �� - Matrix ����ģ�庯��
//*--------------------
//* ���ߣ�Warft_TigerCN  �����Ż���Fetrix_sai
//***************************************************
    //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    //                                       Timer Pattern Union                                              //
    //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    function YDWETimerPattern___SingleMagic takes unit sour,unit targ,real x,real y,real h,integer uid,integer aid,integer lv,integer order returns nothing
        local unit dummy= CreateUnit(GetOwningPlayer(sour), uid, x, y, GetUnitFacing(sour))
        call UnitApplyTimedLife(dummy, 'BHwe', 1.0)
        call UnitAddAbility(dummy, aid)
        call SetUnitAbilityLevel(dummy, aid, lv)
        call SetUnitFlyHeight(dummy, h, 0.0)
        call IssueTargetOrderById(dummy, order, targ)
        //debug call BJDebugMsg("Target order")
        set dummy=null
    endfunction
    function YDWETimerPattern___GetUnitZ takes unit u returns real
        call MoveLocation(YDWETimerPattern___yd_loc, GetUnitX(u), GetUnitY(u))
        return GetUnitFlyHeight(u) + GetLocationZ(YDWETimerPattern___yd_loc)
    endfunction
    //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    //                                            Filter Funcs                                                //
    //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    function YDWETimerPattern___EnemyFilter takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false and IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitIllusion(u) == false and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster))
    endfunction
    function YDWETimerPattern___TreeFilter takes nothing returns boolean
        local integer id= GetDestructableTypeId(GetFilterDestructable())
        return id == 'LTlt' or id == 'ATtr' or id == 'BTtw' or id == 'KTtw' or id == 'YTft' or id == 'JTct' or id == 'YTst' or id == 'YTct' or id == 'YTwt' or id == 'JTtw' or id == 'DTsh' or id == 'FTtw' or id == 'CTtr' or id == 'ITtw' or id == 'NTtw' or id == 'OTtw' or id == 'ZTtw' or id == 'WTst' or id == 'GTsh' or id == 'VTlt' or id == 'WTtw' or id == 'ATtc' or id == 'BTtc' or id == 'CTtc' or id == 'ITtc' or id == 'NTtc' or id == 'ZTtc'
    endfunction
    function YDWETimerPattern___DamageFilter takes nothing returns boolean
        local unit u= GetFilterUnit()
        local integer d= YDWETimerPattern___tmp_data
        if not ( IsUnitInGroup(u, s__YDWETimerPattern___Thread_g[d]) ) and s__YDWETimerPattern___Thread_switch[d] != 0 and YDWETimerPattern___EnemyFilter(u , s__YDWETimerPattern___Thread_caster[d]) then
            call UnitDamageTarget(s__YDWETimerPattern___Thread_caster[d], u, s__YDWETimerPattern___Thread_amount[d], true, true, bj_lastSetAttackType, bj_lastSetDamageType, bj_lastSetWeaponType)
            call h__DestroyEffect(AddSpecialEffectTarget(s__YDWETimerPattern___Thread_dsfx[d], u, s__YDWETimerPattern___Thread_part[d]))
            if s__YDWETimerPattern___Thread_skills[d] > '0000' and s__YDWETimerPattern___Thread_skills[d] != null and s__YDWETimerPattern___Thread_order[d] > 0 and s__YDWETimerPattern___Thread_order[d] != null then
                call YDWETimerPattern___SingleMagic(s__YDWETimerPattern___Thread_caster[d] , u , s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[d]] , s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[d]] , GetUnitFlyHeight(s__YDWETimerPattern___Thread_obj[d]) , s__YDWETimerPattern___Thread_unitid[d] , s__YDWETimerPattern___Thread_skills[d] , s__YDWETimerPattern___Thread_level[d] , s__YDWETimerPattern___Thread_order[d])
            endif
            if not ( s__YDWETimerPattern___Thread_recycle[d] ) then
                //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r A one-time.")
                set s__YDWETimerPattern___Thread_switch[d]=0
            endif
            set s__YDWETimerPattern___Thread_target[d]=u
            //call GroupAddUnit(d.g, u)
            set u=null
            return true
        endif
        set u=null
        return false
    endfunction
    function YDWETimerPattern___TreeKill takes nothing returns nothing
        local destructable d= GetEnumDestructable()
        if GetWidgetLife(d) > 0.405 then
            call KillDestructable(d)
        endif
        set d=null
    endfunction
    //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    //                                         Major Structure Code                                           //
    //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        function s__YDWETimerPattern___Thread__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction
        function s__YDWETimerPattern___Thread__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction
        function s__YDWETimerPattern___Thread_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction
        function s__YDWETimerPattern___Thread__set_x takes integer this,real value returns nothing
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]]=value
            call SetUnitX(s__YDWETimerPattern___Thread_obj[this], value)
        endfunction
        function s__YDWETimerPattern___Thread__set_y takes integer this,real value returns nothing
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]]=value
            call SetUnitY(s__YDWETimerPattern___Thread_obj[this], value)
        endfunction
        function s__YDWETimerPattern___Thread__set_z takes integer this,real value returns nothing
            set s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_pos[this]]=value
            call MoveLocation(YDWETimerPattern___yd_loc, s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]])
            call SetUnitFlyHeight(s__YDWETimerPattern___Thread_obj[this], value - GetLocationZ(YDWETimerPattern___yd_loc), 0)
        endfunction
        function s__YDWETimerPattern___Thread_onDestroy takes integer this returns nothing
            //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r Knockback stopped!")
            call RemoveSavedInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((s__YDWETimerPattern___Thread_obj[this])))))))) // INLINED!!
            call RemoveSavedInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((s__YDWETimerPattern___Thread_t[this])))))))) // INLINED!!
            call GroupClear(s__YDWETimerPattern___Thread_g[this])
            call h__DestroyGroup(s__YDWETimerPattern___Thread_g[this])
            call PauseTimer(s__YDWETimerPattern___Thread_t[this])
            call DestroyTimer(s__YDWETimerPattern___Thread_t[this])
            call s__YDWETimerPattern___YDVector3_deallocate(s__YDWETimerPattern___Thread_des[this])
            call s__YDWETimerPattern___YDVector3_deallocate(s__YDWETimerPattern___Thread_pos[this])
            call s__YDWETimerPattern___YDVector3_deallocate(s__YDWETimerPattern___Thread_vel[this])
            set s__YDWETimerPattern___Thread_caster[this]=null
            set s__YDWETimerPattern___Thread_target[this]=null
            set s__YDWETimerPattern___Thread_obj[this]=null
            set s__YDWETimerPattern___Thread_g[this]=null
            set s__YDWETimerPattern___Thread_t[this]=null
            set s__YDWETimerPattern___Thread_amount[this]=0
            set s__YDWETimerPattern___Thread_skills[this]=0
            set s__YDWETimerPattern___Thread_order[this]=0
            set s__YDWETimerPattern___Thread_dsfx[this]=""
            set s__YDWETimerPattern___Thread_gsfx[this]=""
            set s__YDWETimerPattern___Thread_wsfx[this]=""
            set s__YDWETimerPattern___Thread_part[this]=""
        endfunction
        function s__YDWETimerPattern___Parabola_move takes nothing returns nothing
            local integer this= (LoadInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((GetExpiredTimer()))))))))) // INLINED!!
            //local real vx = .des.x - .pos.x
            //local real vy = .des.y - .pos.y
            //local real vz = .des.z - .pos.z
            //if vx * vx + vy * vy + vz * vz > 900.0 then
                call s__YDWETimerPattern___Thread__set_x(this,GetUnitX(s__YDWETimerPattern___Thread_obj[this]) + s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]]) //.pos.x + .vel.x
call s__YDWETimerPattern___Thread__set_y(this,GetUnitY(s__YDWETimerPattern___Thread_obj[this]) + s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]]) //.pos.y + .vel.y
call s__YDWETimerPattern___Thread__set_z(this,YDWETimerPattern___GetUnitZ(s__YDWETimerPattern___Thread_obj[this]) + s__YDWETimerPattern___Thread_ac[this] * s__YDWETimerPattern___Thread_step[this] * 2 + s__YDWETimerPattern___Thread_ac[this] * s__YDWETimerPattern___Thread_dist[this] + s__YDWETimerPattern___Thread_bc[this]) //.pos.z + .ac * .step * 2 + .ac * .dist + .bc
set s__YDWETimerPattern___Thread_step[this]=s__YDWETimerPattern___Thread_step[this] + s__YDWETimerPattern___Thread_dist[this]
                //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r high = ." + R2S(GetLocationZ(yd_loc)))
                if (RMinBJ(RMaxBJ(((s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]])*1.0), yd_MapMinX), yd_MapMaxX)) != s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]] or (RMinBJ(RMaxBJ(((s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]])*1.0), yd_MapMinY), yd_MapMaxY)) != s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]] or s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_pos[this]] <= GetLocationZ(YDWETimerPattern___yd_loc) then // INLINED!!
                    set s__YDWETimerPattern___Thread_switch[this]=0
                endif
                if s__YDWETimerPattern___Thread_amount[this] > 0.0 then
                    //call this.damage(.caster, .pos.x + .vel.x, .pos.y + .vel.y, GetUnitZ(.obj), false, false)
                    set YDWETimerPattern___tmp_data=(this)
                    call GroupEnumUnitsInRange(s__YDWETimerPattern___Thread_g[this], s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]] + s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]] + s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]], 120.0, Condition(function YDWETimerPattern___DamageFilter))
                    //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r Area damage.")
                endif
            //else
                //set .switch = 0
            //endif
            if s__YDWETimerPattern___Thread_switch[this] == 0 then
                call SetUnitFlyHeight(s__YDWETimerPattern___Thread_obj[this], GetUnitDefaultFlyHeight(s__YDWETimerPattern___Thread_obj[this]), 200.0)
                call SetUnitTimeScale(s__YDWETimerPattern___Thread_obj[this], 1)
                //YDWETriggerEvent
                call YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern___Thread_obj[this] , 7)
                call sc__YDWETimerPattern___Thread_deallocate(this)
            endif
        endfunction
        function s__YDWETimerPattern___Parabola_create takes unit source,unit object,real angle,real distance,real time,real interval,real high,real damage,string attach,string deff returns integer
            local integer this= s__YDWETimerPattern___Parabola__allocate()
            local real vx= 0.0
            local real vy= 0.0
            local real vz= 0.0
            set s__YDWETimerPattern___Thread_des[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___Thread_pos[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___Thread_vel[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]]=GetUnitX(object)
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]]=GetUnitY(object)
            set s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_pos[this]]=YDWETimerPattern___GetUnitZ(object)
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_des[this]]=s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]] + distance * Cos(angle)
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_des[this]]=s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]] + distance * Sin(angle)
            call MoveLocation(YDWETimerPattern___yd_loc, s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_des[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_des[this]])
            set s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_des[this]]=GetLocationZ(YDWETimerPattern___yd_loc)
            if s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_pos[this]] > s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_des[this]] then
                set high=high + s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_pos[this]]
            else
                set high=high + s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_des[this]]
            endif
            set s__YDWETimerPattern___Thread_ac[this]=( 2 * ( s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_pos[this]] + s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_des[this]] ) - 4 * high ) / ( distance * distance )
            set s__YDWETimerPattern___Thread_bc[this]=( s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_des[this]] - s__YDWETimerPattern___YDVector3_z[s__YDWETimerPattern___Thread_pos[this]] - s__YDWETimerPattern___Thread_ac[this] * distance * distance ) / distance
            set s__YDWETimerPattern___Thread_dist[this]=distance * interval / time
            set s__YDWETimerPattern___Thread_ac[this]=s__YDWETimerPattern___Thread_ac[this] * s__YDWETimerPattern___Thread_dist[this]
            set s__YDWETimerPattern___Thread_bc[this]=s__YDWETimerPattern___Thread_bc[this] * s__YDWETimerPattern___Thread_dist[this]
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]]=s__YDWETimerPattern___Thread_dist[this] * Cos(angle)
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]]=s__YDWETimerPattern___Thread_dist[this] * Sin(angle)
            set s__YDWETimerPattern___Thread_step[this]=0.0
            set s__YDWETimerPattern___Thread_caster[this]=source
            set s__YDWETimerPattern___Thread_obj[this]=object
            set s__YDWETimerPattern___Thread_amount[this]=damage
            set s__YDWETimerPattern___Thread_dsfx[this]=deff
            set s__YDWETimerPattern___Thread_part[this]=attach
            set s__YDWETimerPattern___Thread_switch[this]=1
            set s__YDWETimerPattern___Thread_recycle[this]=true
            set s__YDWETimerPattern___Thread_t[this]=CreateTimer()
            set s__YDWETimerPattern___Thread_g[this]=CreateGroup()
            call UnitAddAbility(s__YDWETimerPattern___Thread_obj[this], 'Amrf')
            call UnitRemoveAbility(s__YDWETimerPattern___Thread_obj[this], 'Amrf')
            call TimerStart(s__YDWETimerPattern___Thread_t[this], interval, true, function s__YDWETimerPattern___Parabola_move)
            call GroupAddUnit(s__YDWETimerPattern___Thread_g[this], object)
            call SaveInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((object))))) )), ( ( (this)))) // INLINED!!
            call SaveInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((s__YDWETimerPattern___Thread_t[this]))))) )), ( ( (this)))) // INLINED!!
            return this
        endfunction
    // uniform speed
        function s__YDWETimerPattern___Linear_move takes nothing returns nothing
            local integer this= (LoadInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((GetExpiredTimer()))))))))) // INLINED!!
            if s__YDWETimerPattern___Thread_step[this] > s__YDWETimerPattern___Thread_dist[this] then
                call s__YDWETimerPattern___Thread__set_x(this,GetUnitX(s__YDWETimerPattern___Thread_obj[this]) + s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]]) //.pos.x + .vel.x
call s__YDWETimerPattern___Thread__set_y(this,GetUnitY(s__YDWETimerPattern___Thread_obj[this]) + s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]]) //.pos.y + .vel.y
//set .pos.z = GetUnitZ(.obj)
set s__YDWETimerPattern___Thread_step[this]=s__YDWETimerPattern___Thread_step[this] - s__YDWETimerPattern___Thread_dist[this]
                //call this.damage(.caster, .pos.x, .pos.y, .pos.z, true, true)
                set YDWETimerPattern___tmp_data=(this)
                call GroupEnumUnitsInRange(s__YDWETimerPattern___Thread_g[this], s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]] + s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]] + s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]], 120.0, Condition(function YDWETimerPattern___DamageFilter))
                if (RMinBJ(RMaxBJ(((s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]])*1.0), yd_MapMinX), yd_MapMaxX)) != s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]] or (RMinBJ(RMaxBJ(((s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]])*1.0), yd_MapMinY), yd_MapMaxY)) != s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]] then // INLINED!!
                    set s__YDWETimerPattern___Thread_switch[this]=0
                endif
            else
                set s__YDWETimerPattern___Thread_switch[this]=0
            endif
            if s__YDWETimerPattern___Thread_switch[this] == 0 then
                // YDWETriggerEvent
                if s__YDWETimerPattern___Thread_target[this] != null then
                    //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r  |cffff0000" + GetUnitName(.target) + "|r was hit!!!")
                    //call YDWESaveUnitByString(I2S(YDWEH2I(.caster)), "MoonPriestessArrow", .target)
                    set bj_lastAbilityTargetUnit=s__YDWETimerPattern___Thread_target[this]
                    call YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern___Thread_caster[this] , 8)
                else
                    call YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern___Thread_caster[this] , 9)
                endif
                //call KillUnit(.obj)
                call RemoveUnit(s__YDWETimerPattern___Thread_obj[this])
                call sc__YDWETimerPattern___Thread_deallocate(this)
            endif
        endfunction
        function s__YDWETimerPattern___Linear_create takes unit source,unit object,real angle,real distance,real time,real interval,integer uid,integer aid,integer lv,integer orderid,string attach,string sfx returns integer
            local integer this= s__YDWETimerPattern___Linear__allocate()
            set s__YDWETimerPattern___Thread_des[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___Thread_pos[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___Thread_vel[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___Thread_step[this]=distance
            set s__YDWETimerPattern___Thread_dist[this]=distance * interval / time
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]]=s__YDWETimerPattern___Thread_dist[this] * Cos(angle)
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]]=s__YDWETimerPattern___Thread_dist[this] * Sin(angle)
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]]=GetUnitX(object)
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]]=GetUnitY(object)
            set s__YDWETimerPattern___Thread_caster[this]=source
            set s__YDWETimerPattern___Thread_obj[this]=object
            set s__YDWETimerPattern___Thread_unitid[this]=uid
            set s__YDWETimerPattern___Thread_skills[this]=aid
            set s__YDWETimerPattern___Thread_level[this]=lv
            set s__YDWETimerPattern___Thread_order[this]=orderid
            set s__YDWETimerPattern___Thread_part[this]=attach
            set s__YDWETimerPattern___Thread_gsfx[this]=sfx
            set s__YDWETimerPattern___Thread_switch[this]=1
            set s__YDWETimerPattern___Thread_recycle[this]=false
            set s__YDWETimerPattern___Thread_t[this]=CreateTimer()
            set s__YDWETimerPattern___Thread_g[this]=CreateGroup()
            call TimerStart(s__YDWETimerPattern___Thread_t[this], interval, true, function s__YDWETimerPattern___Linear_move)
            call SaveInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((s__YDWETimerPattern___Thread_t[this]))))) )), ( ( (this)))) // INLINED!!
            return this
        endfunction
    // Uniform deceleration
        function s__YDWETimerPattern___Deceleration_move takes nothing returns nothing
            local integer this= (LoadInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((GetExpiredTimer()))))))))) // INLINED!!
            local real xp= GetUnitX(s__YDWETimerPattern___Thread_obj[this]) + s__YDWETimerPattern___Thread_dist[this] * s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]]
            local real yp= GetUnitY(s__YDWETimerPattern___Thread_obj[this]) + s__YDWETimerPattern___Thread_dist[this] * s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]]
            if s__YDWETimerPattern___Thread_volume[this] == false then
                //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |rPathable without terrain.")
                if IsTerrainPathable(xp, yp, PATHING_TYPE_WALKABILITY) then
                    set s__YDWETimerPattern___Thread_switch[this]=0
                else
                    call s__YDWETimerPattern___Thread__set_x(this,xp)
                    call s__YDWETimerPattern___Thread__set_y(this,yp)
                endif
            else
                call s__YDWETimerPattern___Thread__set_x(this,xp)
                call s__YDWETimerPattern___Thread__set_y(this,yp)
            endif
            if s__YDWETimerPattern___Thread_follow[this] == 0 then
                if GetUnitFlyHeight(s__YDWETimerPattern___Thread_obj[this]) < 5. then
                    if IsTerrainPathable(s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]], PATHING_TYPE_FLOATABILITY) then
                        call h__DestroyEffect(AddSpecialEffect(s__YDWETimerPattern___Thread_gsfx[this], s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]]))
                    else
                        call h__DestroyEffect(AddSpecialEffect(s__YDWETimerPattern___Thread_wsfx[this], s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]]))
                    endif
                endif
            endif
            set s__YDWETimerPattern___Thread_follow[this]=s__YDWETimerPattern___Thread_follow[this] + 1
            if s__YDWETimerPattern___Thread_follow[this] == 2 then
                set s__YDWETimerPattern___Thread_follow[this]=0
            endif
            if s__YDWETimerPattern___Thread_killdest[this] then
                call MoveRectTo(YDWETimerPattern___Area, s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]])
                call EnumDestructablesInRect(YDWETimerPattern___Area, YDWETimerPattern___Bexpr, function YDWETimerPattern___TreeKill)
            endif
            if s__YDWETimerPattern___Thread_amount[this] > 0.0 then
                //call this.damage(.caster, .pos.x, .pos.y, 0.0, false, .recycle)
                set YDWETimerPattern___tmp_data=(this)
                call GroupEnumUnitsInRange(s__YDWETimerPattern___Thread_g[this], s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]], s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]], 120.0, Condition(function YDWETimerPattern___DamageFilter))
            endif
            set s__YDWETimerPattern___Thread_dist[this]=s__YDWETimerPattern___Thread_dist[this] - s__YDWETimerPattern___Thread_step[this]
            if s__YDWETimerPattern___Thread_dist[this] <= 0.0 or (RMinBJ(RMaxBJ(((s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]])*1.0), yd_MapMinX), yd_MapMaxX)) != s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]] or (RMinBJ(RMaxBJ(((s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]])*1.0), yd_MapMinY), yd_MapMaxY)) != s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]] then // INLINED!!
                set s__YDWETimerPattern___Thread_switch[this]=0
            endif
            if s__YDWETimerPattern___Thread_switch[this] == 0 then
                call SetUnitFlyHeight(s__YDWETimerPattern___Thread_obj[this], GetUnitDefaultFlyHeight(s__YDWETimerPattern___Thread_obj[this]), 200.0)
                call SetUnitTimeScale(s__YDWETimerPattern___Thread_obj[this], 1)
                // YDWETriggerEvent
                call YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern___Thread_obj[this] , 6)
                call sc__YDWETimerPattern___Thread_deallocate(this)
            endif
        endfunction
        function s__YDWETimerPattern___Deceleration_create takes unit source,unit object,real angle,real distance,real time,real interval,real damage,boolean killtrees,boolean cycle,boolean path,string part,string geff,string weff returns integer
            local integer this= s__YDWETimerPattern___Deceleration__allocate()
local real vx= 0.0
            local real vy= 0.0
            local real l= 0.0
            set s__YDWETimerPattern___Thread_des[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___Thread_pos[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___Thread_vel[this]=s__YDWETimerPattern___YDVector3__allocate()
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_vel[this]]=Cos(angle)
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_vel[this]]=Sin(angle)
            set s__YDWETimerPattern___Thread_dist[this]=2 * distance * interval / time
            set s__YDWETimerPattern___Thread_step[this]=s__YDWETimerPattern___Thread_dist[this] * interval / time
            set s__YDWETimerPattern___YDVector3_x[s__YDWETimerPattern___Thread_pos[this]]=GetUnitX(object)
            set s__YDWETimerPattern___YDVector3_y[s__YDWETimerPattern___Thread_pos[this]]=GetUnitY(object)
            set s__YDWETimerPattern___Thread_caster[this]=source
            set s__YDWETimerPattern___Thread_obj[this]=object
            set s__YDWETimerPattern___Thread_amount[this]=damage
            set s__YDWETimerPattern___Thread_killdest[this]=killtrees
            set s__YDWETimerPattern___Thread_recycle[this]=cycle
            set s__YDWETimerPattern___Thread_volume[this]=path
            set s__YDWETimerPattern___Thread_gsfx[this]=geff
            set s__YDWETimerPattern___Thread_wsfx[this]=weff
            set s__YDWETimerPattern___Thread_switch[this]=1
            set s__YDWETimerPattern___Thread_follow[this]=0
            set s__YDWETimerPattern___Thread_g[this]=CreateGroup()
            set s__YDWETimerPattern___Thread_t[this]=CreateTimer()
            call TimerStart(s__YDWETimerPattern___Thread_t[this], interval, true, function s__YDWETimerPattern___Deceleration_move)
            call SaveInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((s__YDWETimerPattern___Thread_t[this]))))) )), ( ( (this)))) // INLINED!!
            return this
        endfunction
    // Jump Attack PUI
    function YDWETimerPatternJumpAttack takes unit u,real face,real dis,real lasttime,real timeout,real high,real damage,string part,string dsfx returns nothing
        if u == null then
            //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r No object!")
            return
        endif
        call s__YDWETimerPattern___Parabola_create(u , u , Deg2Rad(face) , RMaxBJ(dis, 0) , RMaxBJ(lasttime, 0) , RMaxBJ(timeout, 0) , high , damage , part , dsfx)
    endfunction
    // Moon Priestess Arrow PUI
    function YDWETimerPatternMoonPriestessArrow takes unit u,real face,real dis,real lasttime,real timeout,integer lv,integer aid,integer uid,string order,string part,string dsfx returns nothing
        local unit sour= null
        if u == null then
            //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r No object!")
            return
        endif
        set sour=(LoadUnitHandle(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "MoonPriestessArrow")))) // INLINED!!
        if sour == null then
            set sour=u
        endif
        call s__YDWETimerPattern___Linear_create(sour , u , Deg2Rad(face) , RMaxBJ(dis, 0) , RMaxBJ(lasttime, 0) , RMaxBJ(timeout, 0) , uid , aid , IMaxBJ(lv, 1) , OrderId(order) , part , dsfx)
        //call YDWEFlushMissionByString(I2S(YDWEH2I(u)))
        set sour=null
    endfunction
    // Rush Slide PUI
    function YDWETimerPatternRushSlide takes unit u,real face,real dis,real lasttime,real timeout,real damage,boolean killtrees,boolean cycle,boolean path,string part,string gsfx,string wsfx returns nothing
        if u == null then
            //debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r No object!")
            return
        endif
        call s__YDWETimerPattern___Deceleration_create(u , u , Deg2Rad(face) , RMaxBJ(dis, 0) , RMaxBJ(lasttime, 0) , RMaxBJ(timeout, 0) , damage , killtrees , cycle , path , part , gsfx , wsfx)
    endfunction
    function YDWETimerPattern___Init takes nothing returns nothing
        set YDWETimerPattern___Area=Rect(- 120.0, - 120.0, 120.0, 120.0)
        set YDWETimerPattern___Bexpr=Filter(function YDWETimerPattern___TreeFilter)
    endfunction

//library YDWETimerPattern ends
//library YDWETimerSystem:
function YDWETimerSystem___NewTaskIndex takes nothing returns integer
 local integer h= YDWETimerSystem___TaskListIdleHead
	if YDWETimerSystem___TaskListIdleHead < 0 then
		if YDWETimerSystem___TaskListIdleMax >= 8000 then
			return 8100
		else
			set YDWETimerSystem___TaskListIdleMax=YDWETimerSystem___TaskListIdleMax + 1
			return YDWETimerSystem___TaskListIdleMax
		endif
	endif
	set YDWETimerSystem___TaskListIdleHead=YDWETimerSystem___TaskListIdle[h]
	return h
endfunction
function YDWETimerSystem___DeleteTaskIndex takes integer index returns nothing
	set YDWETimerSystem___TaskListIdle[index]=YDWETimerSystem___TaskListIdleHead
	set YDWETimerSystem___TaskListIdleHead=index
endfunction
//�ú������д���
function YDWETimerSystem___NewTask takes real time,trigger proc returns integer
 local integer index= YDWETimerSystem___NewTaskIndex()
 local integer h= YDWETimerSystem___TaskListHead
 local integer t= R2I(100. * time) + YDWETimerSystem___CurrentTime
 local integer p
	set YDWETimerSystem___TaskListProc[index]=proc
	set YDWETimerSystem___TaskListTime[index]=t
	loop
		set p=YDWETimerSystem___TaskListNext[h]
		if p < 0 or YDWETimerSystem___TaskListTime[p] >= t then
		//	call BJDebugMsg("NewTask:"+I2S(index))
			set YDWETimerSystem___TaskListNext[h]=index
			set YDWETimerSystem___TaskListNext[index]=p
			return index
		endif
		set h=p
	endloop
	return index
endfunction
function YDWETimerSystemNewTask takes real time,trigger proc returns integer
	return YDWETimerSystem___NewTask(time , proc)
endfunction
function YDWETimerSystemGetCurrentTask takes nothing returns integer
	return YDWETimerSystem___CurrentIndex
endfunction
//ɾ����λ
function YDWETimerSystem___RemoveUnit_CallBack takes nothing returns nothing
    call RemoveUnit(LoadUnitHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex)
endfunction
function YDWETimerRemoveUnit takes real time,unit u returns nothing
    call SaveUnitHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___NewTask(time , YDWETimerSystem___fnRemoveUnit), u)
endfunction
//�ݻټ�ʱ��
function YDWETimerSystem___DestroyTimer_CallBack takes nothing returns nothing
    call DestroyTimer(LoadTimerHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex)
endfunction
function YDWETimerDestroyTimer takes real time,timer t returns nothing
    call SaveTimerHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___NewTask(time , YDWETimerSystem___fnDestroyTimer), t)
endfunction
//ɾ����Ʒ
function YDWETimerSystem___RemoveItem_CallBack takes nothing returns nothing
    call RemoveItem(LoadItemHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex)
endfunction
function YDWETimerRemoveItem takes real time,item it returns nothing
    call SaveItemHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___NewTask(time , YDWETimerSystem___fnRemoveItem), it)
endfunction
//ɾ����Ч
function YDWETimerSystem___DestroyEffect_CallBack takes nothing returns nothing
    call h__DestroyEffect(LoadEffectHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex)
endfunction
function YDWETimerDestroyEffect takes real time,effect e returns nothing
    call SaveEffectHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___NewTask(time , YDWETimerSystem___fnDestroyEffect), e)
endfunction
//ɾ��������Ч
function YDWETimerSystem___DestroyLightning_CallBack takes nothing returns nothing
    call DestroyLightning(LoadLightningHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex)
endfunction
function YDWETimerDestroyLightning takes real time,lightning lt returns nothing
 local integer i= YDWETimerSystem___NewTask(time , YDWETimerSystem___fnDestroyLightning)
    call SaveLightningHandle(YDHT, YDWETimerSystem___TimerHandle, i, lt)
endfunction
//���д�����
function YDWETimerSystem___RunTrigger_CallBack takes nothing returns nothing
    call TriggerExecute(LoadTriggerHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___CurrentIndex)
endfunction
function YDWETimerRunTrigger takes real time,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, YDWETimerSystem___TimerHandle, YDWETimerSystem___NewTask(time , YDWETimerSystem___fnRunTrigger), trg)
endfunction
//ɾ��Ư������
function YDWETimerDestroyTextTag takes real time,texttag tt returns nothing
    local integer N=0
    local integer i=0
    if time <= 0 then
        set time=0.01
    endif
    call SetTextTagPermanent(tt, false)
    call SetTextTagLifespan(tt, time)
    call SetTextTagFadepoint(tt, time)
endfunction
//���ļ�ʱ��������
function YDWETimerSystem___Main takes nothing returns nothing
 local integer h= YDWETimerSystem___TaskListHead
 local integer p
	loop
		set YDWETimerSystem___CurrentIndex=YDWETimerSystem___TaskListNext[h]
		exitwhen YDWETimerSystem___CurrentIndex < 0 or YDWETimerSystem___CurrentTime < YDWETimerSystem___TaskListTime[YDWETimerSystem___CurrentIndex]
		//call BJDebugMsg("Task:"+I2S(CurrentIndex))
		call TriggerEvaluate(YDWETimerSystem___TaskListProc[YDWETimerSystem___CurrentIndex])
		call YDWETimerSystem___DeleteTaskIndex(YDWETimerSystem___CurrentIndex)
		set YDWETimerSystem___TaskListNext[h]=YDWETimerSystem___TaskListNext[YDWETimerSystem___CurrentIndex]
	endloop
	set YDWETimerSystem___CurrentTime=YDWETimerSystem___CurrentTime + 1
endfunction
//��ʼ������
function YDWETimerSystem___Init takes nothing returns nothing
    set YDWETimerSystem___Timer=CreateTimer()
	set YDWETimerSystem___TimerHandle=GetHandleId(YDWETimerSystem___Timer)
	set YDWETimerSystem___CurrentTime=0
	set YDWETimerSystem___TaskListHead=0
	set YDWETimerSystem___TaskListNext[0]=- 1
	set YDWETimerSystem___TaskListIdleHead=1
	set YDWETimerSystem___TaskListIdleMax=1
	set YDWETimerSystem___TaskListIdle[1]=- 1
	
	set YDWETimerSystem___fnRemoveUnit=CreateTrigger()
	set YDWETimerSystem___fnDestroyTimer=CreateTrigger()
	set YDWETimerSystem___fnRemoveItem=CreateTrigger()
	set YDWETimerSystem___fnDestroyEffect=CreateTrigger()
	set YDWETimerSystem___fnDestroyLightning=CreateTrigger()
	set YDWETimerSystem___fnRunTrigger=CreateTrigger()
	call TriggerAddCondition(YDWETimerSystem___fnRemoveUnit, Condition(function YDWETimerSystem___RemoveUnit_CallBack))
	call TriggerAddCondition(YDWETimerSystem___fnDestroyTimer, Condition(function YDWETimerSystem___DestroyTimer_CallBack))
	call TriggerAddCondition(YDWETimerSystem___fnRemoveItem, Condition(function YDWETimerSystem___RemoveItem_CallBack))
	call TriggerAddCondition(YDWETimerSystem___fnDestroyEffect, Condition(function YDWETimerSystem___DestroyEffect_CallBack))
	call TriggerAddCondition(YDWETimerSystem___fnDestroyLightning, Condition(function YDWETimerSystem___DestroyLightning_CallBack))
	call TriggerAddCondition(YDWETimerSystem___fnRunTrigger, Condition(function YDWETimerSystem___RunTrigger_CallBack))
	
    call TimerStart(YDWETimerSystem___Timer, 0.01, true, function YDWETimerSystem___Main)
endfunction
//ѭ�������ö�����ʱ��
function YDWETimerSystemGetRunIndex takes nothing returns integer
    return YDWETimerSystem___TimerSystem_RunIndex
endfunction
function YDWETimerSystem___RunPeriodicTriggerFunction takes nothing returns nothing
    local integer tid= GetHandleId(GetExpiredTimer())
    local trigger trg= LoadTriggerHandle(YDHT, tid, $D0001)
	call SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, $D0002))
    if TriggerEvaluate(trg) then
        call TriggerExecute(trg)
    endif
    set trg=null
endfunction
function YDWETimerSystem___RunPeriodicTriggerFunctionByTimes takes nothing returns nothing
    local integer tid= GetHandleId(GetExpiredTimer())
    local trigger trg= LoadTriggerHandle(YDHT, tid, $D0001)
    local integer times= LoadInteger(YDHT, tid, $D0003)
	call SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, $D0002))
    if TriggerEvaluate(trg) then
        call TriggerExecute(trg)
    endif
    set times=times - 1
    if times > 0 then
		call SaveInteger(YDHT, tid, $D0003, times)
      else
        call DestroyTimer(GetExpiredTimer())
        call FlushChildHashtable(YDHT, tid)
    endif
    set trg=null
endfunction
function YDWETimerRunPeriodicTrigger takes real timeout,trigger trg,boolean b,integer times,integer data returns nothing
    local timer t
    local integer tid
    local integer index= 0
    if timeout < 0 then
        return
      else
        set t=CreateTimer()
		set tid=GetHandleId(t)
    endif
    set YDWETimerSystem___TimerSystem_RunIndex=YDWETimerSystem___TimerSystem_RunIndex + 1
	call SaveTriggerHandle(YDHT, tid, $D0001, trg)
	call SaveInteger(YDHT, tid, $D0002, YDWETimerSystem___TimerSystem_RunIndex)
	set index=LoadInteger(YDHT, GetHandleId(trg), 'YDTS' + data)
    set index=index + 1
	call SaveInteger(YDHT, GetHandleId(trg), 'YDTS' + data, index)
	call SaveTimerHandle(YDHT, GetHandleId(trg), ( 'YDTS' + data ) * index, t)
	
    if b == false then
		call SaveInteger(YDHT, tid, $D0003, times)
        call TimerStart(t, timeout, true, function YDWETimerSystem___RunPeriodicTriggerFunctionByTimes)
      else
        call TimerStart(t, timeout, true, function YDWETimerSystem___RunPeriodicTriggerFunction)
    endif
    set t=null
endfunction
function YDWETimerRunPeriodicTriggerOver takes trigger trg,integer data returns nothing
 local integer trgid= GetHandleId(trg)
    local integer index= LoadInteger(YDHT, trgid, 'YDTS' + data)
    local timer t
    loop
        exitwhen index <= 0
        set t=LoadTimerHandle(YDHT, trgid, ( 'YDTS' + data ) * index)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT, GetHandleId(t))
		call RemoveSavedHandle(YDHT, trgid, ( 'YDTS' + data ) * index)
        set index=index - 1
    endloop
	
    call RemoveSavedInteger(YDHT, trgid, 'YDTS' + data)
    set t=null
endfunction

//library YDWETimerSystem ends
//===========================================================================
// 
// 环绕
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Wed Aug 03 03:52:14 2016
//   Map Author: 未知
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
    local integer i= 0
    set i=0
    loop
        exitwhen ( i > 4 )
        set udg_Play[i]=CreateForce()
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_INT[i]=0
        set i=i + 1
    endloop
    set udg_T=false
    set udg_PAI=0
    set udg_time=0
    set i=0
    loop
        exitwhen ( i > 12 )
        set udg_kill[i]=0
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen ( i > 12 )
        set udg_kill2[i]=0
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen ( i > 12 )
        set udg_NdeadDMB[i]=0
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen ( i > 12 )
        set udg_NkillDMB[i]=0
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen ( i > 12 )
        set udg_playertime[i]=0
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen ( i > 4 )
        set udg_Nkillteam[i]=0
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen ( i > 12 )
        set udg_Stringcolor[i]=""
        set i=i + 1
    endloop
    set udg_number=0
    set udg_JSQwin=CreateTimer()
    set udg_DHK=DialogCreate()
    set udg_round=0
    set udg_roundtime=0
    set udg_JSQround=CreateTimer()
    set udg_JSQzhunbei=CreateTimer()
    set udg_teamnb=0
    set i=0
    loop
        exitwhen ( i > 4 )
        set udg_team[i]=CreateForce()
        set i=i + 1
    endloop
    set udg_JSQguai=CreateTimer()
    set udg_iDMB=0
    set udg_fX1=0
    set udg_fX2=0
    set udg_fY1=0
    set udg_fY2=0
    set udg_fZ2=0
    set udg_fZ1=0
endfunction
//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************
function InitSounds takes nothing returns nothing
    set gg_snd_dominating=CreateSound("sounds\\dominating.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_dominating, 1802)
    call SetSoundChannel(gg_snd_dominating, 0)
    call SetSoundVolume(gg_snd_dominating, 127)
    call SetSoundPitch(gg_snd_dominating, 1.0)
    set gg_snd_double_kill=CreateSound("sounds\\double_kill.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_double_kill, 2012)
    call SetSoundChannel(gg_snd_double_kill, 0)
    call SetSoundVolume(gg_snd_double_kill, 127)
    call SetSoundPitch(gg_snd_double_kill, 1.0)
    set gg_snd_firstblood=CreateSound("sounds\\firstblood.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_firstblood, 1567)
    call SetSoundChannel(gg_snd_firstblood, 0)
    call SetSoundVolume(gg_snd_firstblood, 127)
    call SetSoundPitch(gg_snd_firstblood, 1.0)
    set gg_snd_godlike=CreateSound("sounds\\godlike.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_godlike, 1828)
    call SetSoundChannel(gg_snd_godlike, 0)
    call SetSoundVolume(gg_snd_godlike, 127)
    call SetSoundPitch(gg_snd_godlike, 1.0)
    set gg_snd_holyshit=CreateSound("sounds\\holyshit.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_holyshit, 2325)
    call SetSoundChannel(gg_snd_holyshit, 0)
    call SetSoundVolume(gg_snd_holyshit, 127)
    call SetSoundPitch(gg_snd_holyshit, 1.0)
    set gg_snd_killing_spree=CreateSound("sounds\\killing_spree.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_killing_spree, 2377)
    call SetSoundChannel(gg_snd_killing_spree, 0)
    call SetSoundVolume(gg_snd_killing_spree, 127)
    call SetSoundPitch(gg_snd_killing_spree, 1.0)
    set gg_snd_megakill=CreateSound("sounds\\megakill.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_megakill, 2612)
    call SetSoundChannel(gg_snd_megakill, 0)
    call SetSoundVolume(gg_snd_megakill, 127)
    call SetSoundPitch(gg_snd_megakill, 1.0)
    set gg_snd_monsterkill=CreateSound("sounds\\monsterkill.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_monsterkill, 3344)
    call SetSoundChannel(gg_snd_monsterkill, 0)
    call SetSoundVolume(gg_snd_monsterkill, 127)
    call SetSoundPitch(gg_snd_monsterkill, 1.0)
    set gg_snd_ownage=CreateSound("sounds\\ownage.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_ownage, 0)
    call SetSoundVolume(gg_snd_ownage, 127)
    call SetSoundPitch(gg_snd_ownage, 1.0)
    set gg_snd_rampage=CreateSound("sounds\\rampage.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_rampage, 1195)
    call SetSoundChannel(gg_snd_rampage, 0)
    call SetSoundVolume(gg_snd_rampage, 127)
    call SetSoundPitch(gg_snd_rampage, 1.0)
    set gg_snd_SacrificeUnit=CreateSound("Abilities\\Spells\\Other\\ANsa\\SacrificeUnit.wav", false, false, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_SacrificeUnit, "SacrificeUnit")
    call SetSoundDuration(gg_snd_SacrificeUnit, 2693)
    set gg_snd_spectral_dagger=CreateSound("sounds\\spectral dagger.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_spectral_dagger, 0)
    call SetSoundVolume(gg_snd_spectral_dagger, 127)
    call SetSoundPitch(gg_snd_spectral_dagger, 1.0)
    set gg_snd_StampedeCaster1=CreateSound("Abilities\\Spells\\Other\\Stampede\\StampedeCaster1.wav", false, false, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_StampedeCaster1, "StampedeCast")
    call SetSoundDuration(gg_snd_StampedeCaster1, 2670)
    set gg_snd_triple_kill=CreateSound("sounds\\triple_kill.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_triple_kill, 1907)
    call SetSoundChannel(gg_snd_triple_kill, 0)
    call SetSoundVolume(gg_snd_triple_kill, 127)
    call SetSoundPitch(gg_snd_triple_kill, 1.0)
    set gg_snd_ultrakill=CreateSound("sounds\\ultrakill.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_ultrakill, 1958)
    call SetSoundChannel(gg_snd_ultrakill, 0)
    call SetSoundVolume(gg_snd_ultrakill, 127)
    call SetSoundPitch(gg_snd_ultrakill, 1.0)
    set gg_snd_unstoppable=CreateSound("sounds\\unstoppable.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_unstoppable, 2038)
    call SetSoundChannel(gg_snd_unstoppable, 0)
    call SetSoundVolume(gg_snd_unstoppable, 127)
    call SetSoundPitch(gg_snd_unstoppable, 1.0)
    set gg_snd_whickedsick=CreateSound("sounds\\whickedsick.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_whickedsick, 2612)
    call SetSoundChannel(gg_snd_whickedsick, 0)
    call SetSoundVolume(gg_snd_whickedsick, 127)
    call SetSoundPitch(gg_snd_whickedsick, 1.0)
    set gg_snd_MagicLariatLoop1=CreateSound("Abilities\\Spells\\Human\\AerialShackles\\MagicLariatLoop1.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_MagicLariatLoop1, "AerialShacklesLoop")
    call SetSoundDuration(gg_snd_MagicLariatLoop1, 3230)
endfunction
//***************************************************************************
//*
//*  Items
//*
//***************************************************************************
function CreateAllItems takes nothing returns nothing
    local integer itemID
    call CreateItem('I00K', 24.6, - 1195.9)
    call CreateItem('I00L', 108.6, - 1206.5)
    call CreateItem('I00M', 107.8, - 1298.0)
    call CreateItem('I00N', 194.2, - 1233.0)
    call CreateItem('I00O', 263.7, - 1230.1)
    call CreateItem('I00P', 14.8, - 1295.6)
    call CreateItem('I00Q', 277.6, - 1321.7)
    call CreateItem('I00R', 194.5, - 1324.9)
endfunction
//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************
//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'Hpal', - 294.1, - 780.1, 165.602)
    set u=CreateUnit(p, 'hpea', - 332.9, - 661.7, 303.968)
    set u=CreateUnit(p, 'hmtm', 2.1, - 465.8, 190.685)
    set u=CreateUnit(p, 'hkni', - 306.5, - 534.7, 142.486)
    set u=CreateUnit(p, 'hrif', - 126.5, - 527.5, 40.288)
    set u=CreateUnit(p, 'hfoo', - 253.9, - 570.5, 316.746)
    set u=CreateUnit(p, 'Hblm', - 770.8, - 641.2, 306.462)
endfunction
//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'ewsp', 1669.3, - 1945.2, 119.777)
    set u=CreateUnit(p, 'ewsp', 1530.7, - 2029.5, 354.452)
    set u=CreateUnit(p, 'ewsp', 1502.2, - 1719.5, 26.566)
    set u=CreateUnit(p, 'ewsp', 858.0, - 1742.0, 295.772)
    set u=CreateUnit(p, 'ewsp', 839.6, - 1501.0, 109.120)
    set u=CreateUnit(p, 'ewsp', 1467.1, - 2180.1, 303.298)
    set u=CreateUnit(p, 'ewsp', 1757.7, - 2117.2, 81.290)
    set u=CreateUnit(p, 'ewsp', 1394.5, - 1851.4, 217.942)
    set u=CreateUnit(p, 'ewsp', - 1739.2, 1193.7, 355.045)
    set u=CreateUnit(p, 'ewsp', - 1659.4, 856.3, 293.509)
    set u=CreateUnit(p, 'ewsp', - 1435.3, 1281.1, 301.276)
    set u=CreateUnit(p, 'ewsp', - 800.4, 587.9, 23.654)
    set u=CreateUnit(p, 'ewsp', - 1564.3, 913.4, 260.834)
    set u=CreateUnit(p, 'ewsp', - 1474.2, 569.0, 231.950)
    set u=CreateUnit(p, 'ewsp', - 899.0, 424.2, 73.358)
endfunction
//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction
//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
endfunction
//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreateUnitsForPlayer0() // INLINED!!
endfunction
//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************
function CreateRegions takes nothing returns nothing
    local weathereffect we
    set gg_rct_CS_A=Rect(2016.0, - 2560.0, 2048.0, - 2528.0)
    set gg_rct_CS_B=Rect(- 2048.0, 1536.0, - 2016.0, 1568.0)
    set gg_rct_CS_C=Rect(2048.0, 1536.0, 2080.0, 1568.0)
    set gg_rct_CS_D=Rect(- 2048.0, - 2560.0, - 2016.0, - 2528.0)
    set gg_rct_GA0=Rect(0.0, 1824.0, 32.0, 1856.0)
    set gg_rct_GA1=Rect(64.0, 1696.0, 96.0, 1728.0)
    set gg_rct_GA2=Rect(- 96.0, 1696.0, - 64.0, 1728.0)
    set gg_rct_GB0=Rect(0.0, - 2912.0, 32.0, - 2880.0)
    set gg_rct_GB1=Rect(64.0, - 2752.0, 96.0, - 2720.0)
    set gg_rct_GB2=Rect(- 96.0, - 2752.0, - 64.0, - 2720.0)
    set gg_rct_GC0=Rect(2368.0, - 512.0, 2400.0, - 480.0)
    set gg_rct_GC1=Rect(2208.0, - 608.0, 2240.0, - 576.0)
    set gg_rct_GC2=Rect(2208.0, - 448.0, 2240.0, - 416.0)
    set gg_rct_GD0=Rect(- 2400.0, - 544.0, - 2368.0, - 512.0)
    set gg_rct_GD1=Rect(- 2240.0, - 608.0, - 2208.0, - 576.0)
    set gg_rct_GD2=Rect(- 2240.0, - 448.0, - 2208.0, - 416.0)
    set gg_rct_GE0=Rect(5696.0, - 6240.0, 5728.0, - 6208.0)
    set gg_rct_GE1=Rect(5632.0, - 6048.0, 5664.0, - 6016.0)
    set gg_rct_GE2=Rect(5504.0, - 6176.0, 5536.0, - 6144.0)
    set gg_rct_GF0=Rect(5664.0, 5152.0, 5696.0, 5184.0)
    set gg_rct_GF1=Rect(5504.0, 5056.0, 5536.0, 5088.0)
    set gg_rct_GF2=Rect(5664.0, 4992.0, 5696.0, 5024.0)
    set gg_rct______________001________5=Rect(4256.0, - 3200.0, 4960.0, - 2432.0)
    set gg_rct______________012=Rect(- 384.0, 1408.0, 384.0, 2176.0)
    set gg_rct______________012_______u=Rect(- 384.0, - 3200.0, 384.0, - 2432.0)
    set gg_rct______________012________2=Rect(1920.0, - 896.0, 2688.0, - 128.0)
    set gg_rct______________012________3=Rect(- 2688.0, - 896.0, - 1920.0, - 128.0)
    set gg_rct______________012________4=Rect(5248.0, 4736.0, 6016.0, 5504.0)
    set gg_rct______________012________5=Rect(- 6016.0, 4736.0, - 5248.0, 5504.0)
    set gg_rct______________012________6=Rect(- 6016.0, - 6528.0, - 5248.0, - 5760.0)
    set gg_rct______________012________7=Rect(5248.0, - 6528.0, 6016.0, - 5760.0)
    set gg_rct_GG1=Rect(- 5696.0, 5120.0, - 5664.0, 5152.0)
    set gg_rct_GG2=Rect(- 5696.0, 4928.0, - 5664.0, 4960.0)
    set gg_rct_GG3=Rect(- 5536.0, 5088.0, - 5504.0, 5120.0)
    set gg_rct_GH0=Rect(- 5824.0, - 6272.0, - 5792.0, - 6240.0)
    set gg_rct_GH1=Rect(- 5760.0, - 6080.0, - 5728.0, - 6048.0)
    set gg_rct_GH2=Rect(- 5600.0, - 6208.0, - 5568.0, - 6176.0)
endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: 元素对应
//===========================================================================
function Trig_____________uActions takes nothing returns nothing
    call SaveInteger(YDHT, 'A01F', 0x96FD7C9F, 'u01F')
    call SaveInteger(YDHT, 'u01F', 0x2970F80D, 19)
    call SaveInteger(YDHT, 'A005', 0x96FD7C9F, 'u01B')
    call SaveInteger(YDHT, 'u01B', 0x2970F80D, 2)
    call SaveInteger(YDHT, 'A006', 0x96FD7C9F, 'u01C')
    call SaveInteger(YDHT, 'u01C', 0x2970F80D, 3)
    call SaveInteger(YDHT, 'A00S', 0x96FD7C9F, 'u01G')
    call SaveInteger(YDHT, 'u01G', 0x2970F80D, 5)
    call SaveInteger(YDHT, 'A002', 0x96FD7C9F, 'u01A')
    call SaveInteger(YDHT, 'u01A', 0x2970F80D, 7)
    call SaveInteger(YDHT, 'A007', 0x96FD7C9F, 'u01H')
    call SaveInteger(YDHT, 'u01H', 0x2970F80D, 11)
    call SaveInteger(YDHT, 'A00L', 0x96FD7C9F, 'u01E')
    call SaveInteger(YDHT, 'u01E', 0x2970F80D, 13)
    call SaveInteger(YDHT, 'A000', 0x96FD7C9F, 'u01D')
    call SaveInteger(YDHT, 'u01D', 0x2970F80D, 17)
    // XXX技能
    set udg_A[8]='A024'
    set udg_A[343]='A023'
    set udg_A[27]='A02A'
    set udg_A[125]='A024'
    set udg_A[2197]='A028'
    set udg_A[1331]='A02W'
    set udg_A[4913]='A029'
    set udg_A[6859]='A025'
    // XYZ技能
    set udg_A[( ( 2 * 3 ) * 5 )]='A024'
    set udg_A[( ( 2 * 3 ) * 7 )]='A024'
    set udg_A[( ( 2 * 3 ) * 11 )]='A024'
    set udg_A[( ( 2 * 3 ) * 13 )]='A024'
    set udg_A[( ( 2 * 3 ) * 17 )]='A024'
    set udg_A[( ( 2 * 3 ) * 19 )]='A024'
    set udg_A[( ( 2 * 5 ) * 7 )]='A024'
    set udg_A[( ( 2 * 5 ) * 11 )]='A024'
    set udg_A[( ( 2 * 5 ) * 13 )]='A024'
    set udg_A[( ( 2 * 5 ) * 17 )]='A024'
    set udg_A[( ( 2 * 5 ) * 19 )]='A024'
    set udg_A[( ( 2 * 7 ) * 11 )]='A024'
    set udg_A[( ( 2 * 7 ) * 13 )]='A024'
    set udg_A[( ( 2 * 7 ) * 17 )]='A024'
    set udg_A[( ( 2 * 7 ) * 19 )]='A024'
    set udg_A[( ( 2 * 11 ) * 13 )]='A024'
    set udg_A[( ( 2 * 11 ) * 17 )]='A024'
    set udg_A[( ( 2 * 11 ) * 19 )]='A024'
    set udg_A[( ( 2 * 13 ) * 17 )]='A024'
    set udg_A[( ( 2 * 13 ) * 19 )]='A024'
    set udg_A[( ( 2 * 17 ) * 19 )]='A024'
    set udg_A[( ( 3 * 5 ) * 7 )]='A024'
    set udg_A[( ( 3 * 5 ) * 11 )]='A024'
    set udg_A[( ( 3 * 5 ) * 13 )]='A024'
    set udg_A[( ( 3 * 5 ) * 17 )]='A024'
    set udg_A[( ( 3 * 5 ) * 19 )]='A024'
    set udg_A[( ( 3 * 7 ) * 11 )]='A024'
    set udg_A[( ( 3 * 7 ) * 13 )]='A024'
    set udg_A[( ( 3 * 7 ) * 17 )]='A024'
    set udg_A[( ( 3 * 7 ) * 19 )]='A024'
    set udg_A[( ( 3 * 11 ) * 13 )]='A024'
    set udg_A[( ( 3 * 11 ) * 17 )]='A024'
    set udg_A[( ( 3 * 11 ) * 19 )]='A024'
    set udg_A[( ( 3 * 13 ) * 17 )]='A024'
    set udg_A[( ( 3 * 13 ) * 19 )]='A024'
    set udg_A[( ( 3 * 17 ) * 19 )]='A024'
    set udg_A[( ( 5 * 7 ) * 11 )]='A024'
    set udg_A[( ( 5 * 7 ) * 13 )]='A024'
    set udg_A[( ( 5 * 7 ) * 17 )]='A024'
    set udg_A[( ( 5 * 7 ) * 19 )]='A024'
    set udg_A[( ( 5 * 11 ) * 13 )]='A024'
    set udg_A[( ( 5 * 11 ) * 17 )]='A024'
    set udg_A[( ( 5 * 11 ) * 19 )]='A024'
    set udg_A[( ( 5 * 13 ) * 17 )]='A027'
    set udg_A[( ( 5 * 13 ) * 19 )]='A024'
    set udg_A[( ( 5 * 17 ) * 19 )]='A024'
    set udg_A[( ( 7 * 11 ) * 13 )]='A024'
    set udg_A[( ( 7 * 11 ) * 17 )]='A024'
    set udg_A[( ( 7 * 11 ) * 19 )]='A024'
    set udg_A[( ( 7 * 13 ) * 17 )]='A024'
    set udg_A[( ( 7 * 13 ) * 19 )]='A024'
    set udg_A[( ( 7 * 17 ) * 19 )]='A024'
    set udg_A[( ( 11 * 13 ) * 17 )]='A024'
    set udg_A[( ( 11 * 13 ) * 19 )]='A024'
    set udg_A[( ( 11 * 17 ) * 19 )]='A024'
    set udg_A[( ( 13 * 17 ) * 19 )]='A024'
    // XXY技能
    set udg_A[( ( 2 * 2 ) * 3 )]='A024'
    set udg_A[( ( 2 * 2 ) * 5 )]='A024'
    set udg_A[( ( 2 * 2 ) * 7 )]='A02B'
    set udg_A[( ( 2 * 2 ) * 11 )]='A02N'
    set udg_A[( ( 2 * 2 ) * 13 )]='A024'
    set udg_A[( ( 2 * 2 ) * 17 )]='A024'
    set udg_A[( ( 2 * 2 ) * 19 )]='A024'
    set udg_A[( ( 3 * 3 ) * 2 )]='A024'
    set udg_A[( ( 3 * 3 ) * 5 )]='A024'
    set udg_A[( ( 3 * 3 ) * 7 )]='A024'
    set udg_A[( ( 3 * 3 ) * 9 )]='A024'
    set udg_A[( ( 3 * 3 ) * 11 )]='A024'
    set udg_A[( ( 3 * 3 ) * 13 )]='A024'
    set udg_A[( ( 3 * 3 ) * 17 )]='A024'
    set udg_A[( ( 3 * 3 ) * 19 )]='A024'
    set udg_A[( ( 5 * 5 ) * 2 )]='A02C'
    set udg_A[( ( 5 * 5 ) * 3 )]='A024'
    set udg_A[( ( 5 * 5 ) * 7 )]='A021'
    set udg_A[( ( 5 * 5 ) * 11 )]='A02E'
    set udg_A[( ( 5 * 5 ) * 13 )]='A024'
    set udg_A[( ( 5 * 5 ) * 17 )]='A024'
    set udg_A[( ( 5 * 5 ) * 19 )]='A024'
    set udg_A[( ( 7 * 7 ) * 2 )]='A02V'
    set udg_A[( ( 7 * 7 ) * 3 )]='A024'
    set udg_A[( ( 7 * 7 ) * 5 )]='A024'
    set udg_A[( ( 7 * 7 ) * 11 )]='A02U'
    set udg_A[( ( 7 * 7 ) * 13 )]='A024'
    set udg_A[( ( 7 * 7 ) * 17 )]='A024'
    set udg_A[( ( 7 * 7 ) * 19 )]='A024'
    set udg_A[( ( 11 * 11 ) * 2 )]='A02Y'
    set udg_A[( ( 11 * 11 ) * 3 )]='A024'
    set udg_A[( ( 11 * 11 ) * 5 )]='A024'
    set udg_A[( ( 11 * 11 ) * 7 )]='A02X'
    set udg_A[( ( 11 * 11 ) * 13 )]='A024'
    set udg_A[( ( 11 * 11 ) * 17 )]='A024'
    set udg_A[( ( 11 * 11 ) * 19 )]='A024'
    set udg_A[( ( 13 * 13 ) * 2 )]='A024'
    set udg_A[( ( 13 * 13 ) * 3 )]='A024'
    set udg_A[( ( 13 * 13 ) * 5 )]='A024'
    set udg_A[( ( 13 * 13 ) * 7 )]='A024'
    set udg_A[( ( 13 * 13 ) * 11 )]='A024'
    set udg_A[( ( 13 * 13 ) * 17 )]='A024'
    set udg_A[( ( 13 * 13 ) * 19 )]='A024'
    set udg_A[( ( 17 * 17 ) * 2 )]='A02I'
    set udg_A[( ( 17 * 17 ) * 3 )]='A02M'
    set udg_A[( ( 17 * 17 ) * 5 )]='A02K'
    set udg_A[( ( 17 * 17 ) * 7 )]='A02H'
    set udg_A[( ( 17 * 17 ) * 11 )]='A02J'
    set udg_A[( ( 17 * 17 ) * 13 )]='A024'
    set udg_A[( ( 17 * 17 ) * 19 )]='A02L'
    set udg_A[( ( 19 * 19 ) * 2 )]='A024'
    set udg_A[( ( 19 * 19 ) * 3 )]='A024'
    set udg_A[( ( 19 * 19 ) * 5 )]='A024'
    set udg_A[( ( 19 * 19 ) * 7 )]='A024'
    set udg_A[( ( 19 * 19 ) * 11 )]='A024'
    set udg_A[( ( 19 * 19 ) * 13 )]='A024'
    set udg_A[( ( 19 * 19 ) * 17 )]='A024'
endfunction
//===========================================================================
function InitTrig_____________u takes nothing returns nothing
    set gg_trg_____________u=CreateTrigger()
    call TriggerAddAction(gg_trg_____________u, function Trig_____________uActions)
endfunction
//===========================================================================
// Trigger: 1开局
//===========================================================================
function Trig_1______uActions takes nothing returns nothing
    call CreateFogModifierRectBJ(true, Player(0), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
    call YDWEMemoryLeakHelperMapIsOpenMemoryLeakHelper(true)
    call YDWEMemoryLeakHelperDisplayLeaks()
endfunction
//===========================================================================
function InitTrig_1______u takes nothing returns nothing
    set gg_trg_1______u=CreateTrigger()
    call TriggerRegisterPlayerKeyEventBJ(gg_trg_1______u, Player(0), bj_KEYEVENTTYPE_DEPRESS, bj_KEYEVENTKEY_LEFT)
    call TriggerAddAction(gg_trg_1______u, function Trig_1______uActions)
endfunction
//===========================================================================
// Trigger: begin
//===========================================================================
function Trig_beginFunc016A takes nothing returns nothing
    call SetDestructableInvulnerable(GetEnumDestructable(), true)
endfunction
function Trig_beginActions takes nothing returns nothing
    call StartTimerBJ(udg_JSQguai, true, 60.00)
    set udg_Stringcolor[1]="|cffff0303"
    set udg_Stringcolor[2]="|cff0042ff"
    set udg_Stringcolor[3]="|cff1ce6b9"
    set udg_Stringcolor[4]="|cff540081"
    set udg_Stringcolor[5]="|c00fffc01"
    set udg_Stringcolor[6]="|cfffeba0e"
    set udg_Stringcolor[7]="|cff20c000"
    set udg_Stringcolor[8]="|cffd55bb0"
    set udg_Stringcolor[9]="|cff959697"
    set udg_Stringcolor[10]="|cff7ebff1"
    set udg_Stringcolor[11]="|cff106246"
    set udg_Stringcolor[12]="|cff4c2a04"
    call FogMaskEnableOn()
    call EnumDestructablesInRectAll(GetPlayableMapRect(), function Trig_beginFunc016A)
    set udg_GuaiA1[1]='n00F'
    set udg_GuaiA2[1]='n00E'
    set udg_GuaiA1[2]='n00H'
    set udg_GuaiA2[2]='n00G'
    set udg_GuaiA1[3]='n00M'
    set udg_GuaiA2[3]='n00N'
    set udg_GuaiA1[4]='n004'
    set udg_GuaiA2[4]='n003'
    set udg_GuaiB1[1]='n00A'
    set udg_GuaiB2[1]='n008'
    set udg_GuaiB1[2]='n00P'
    set udg_GuaiB2[2]='n00Q'
    set udg_GuaiB1[3]='n00B'
    set udg_GuaiB2[3]='n00C'
    set udg_GuaiB1[4]='n006'
    set udg_GuaiB2[4]='n005'
endfunction
//===========================================================================
function InitTrig_begin takes nothing returns nothing
    set gg_trg_begin=CreateTrigger()
    call TriggerAddAction(gg_trg_begin, function Trig_beginActions)
endfunction
//===========================================================================
// Trigger: team
//===========================================================================
function Trig_teamFunc003Func001A takes nothing returns nothing
    call ForceRemovePlayerSimple(GetEnumPlayer(), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x31078F97))
    call SetForceAllianceStateBJ(YDWEGetForceOfPlayerNull(GetEnumPlayer()), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x31078F97), bj_ALLIANCE_UNALLIED)
    call ForceAddPlayerSimple(GetEnumPlayer(), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x31078F97))
endfunction
function Trig_teamFunc003Func004Func001Func005Func001Func006T takes nothing returns nothing
    call DisplayTextToPlayer(LoadPlayerHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x48656946), 0, 0, "|cffffcc00经过随机分组，您被分到了第一阵营中，请与您的队友共同作战吧！|r")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_teamFunc003Func004Func001Func005Func001Func011T takes nothing returns nothing
    call DisplayTextToPlayer(LoadPlayerHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x48656946), 0, 0, "|cffffcc00经过随机分组，您被分到了第二阵营中，请与您的队友共同作战吧！|r")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_teamFunc003Func004Func001Func005Func001Func016T takes nothing returns nothing
    call DisplayTextToPlayer(LoadPlayerHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x48656946), 0, 0, "|cffffcc00经过随机分组，您被分到了第三阵营中，请与您的队友共同作战吧！|r")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_teamFunc003Func004Func001Func005Func001Func021T takes nothing returns nothing
    call DisplayTextToPlayer(LoadPlayerHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x48656946), 0, 0, "|cffffcc00经过随机分组，您被分到了第四阵营中，请与您的队友共同作战吧！|r")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_teamFunc003Func004Func004Func001Func006T takes nothing returns nothing
    call DisplayTextToPlayer(LoadPlayerHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x48656946), 0, 0, "|cffffcc00经过随机分组，您被分到了第一阵营中，请与您的队友共同作战吧！|r")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_teamFunc003Func004Func004Func001Func010T takes nothing returns nothing
    call DisplayTextToPlayer(LoadPlayerHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x48656946), 0, 0, "|cffffcc00经过随机分组，您被分到了第二阵营中，请与您的队友共同作战吧！|r")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_teamActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52, YDWEGetPlayersByMapControlNull(MAP_CONTROL_USER))
    call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x31078F97, YDWEGetPlayersByMapControlNull(MAP_CONTROL_USER))
    if ( ( udg_teamnb == 0 ) ) then
        call ForForce(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52), function Trig_teamFunc003Func001A)
        call DisplayTextToForce(GetPlayersAll(), "|cffffcc00各自为战模式被开启，每个玩家将单独成为一个阵营，请尽情享受相互厮杀的乐趣吧。。。|r")
        call ConditionalTriggerExecute(gg_trg_DMB0)
    else
        if ( ( udg_teamnb == 2 ) ) then
            call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFAD24066, CreateForce())
            call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4F17DB0B, CreateForce())
            set bj_forLoopAIndex=1
            set bj_forLoopAIndexEnd=6
            loop
                exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                if ( ( CountPlayersInForceBJ(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)) == 0 ) ) then
                    call DoNothing()
 exitwhen true //(  )
                else
                    call SavePlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ForcePickRandomPlayer(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)))
                    call ForceAddPlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFAD24066))
                    call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + GetPlayerName(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) ) + "|R被分入了第一阵营！" ) + "                                                     " ))
                    call ForceRemovePlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
                    set ydl_timer=CreateTimer()
                    call SavePlayerHandle(YDHT, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    call TimerStart(ydl_timer, 1.00, false, function Trig_teamFunc003Func004Func004Func001Func006T)
                    call SavePlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ForcePickRandomPlayer(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)))
                    call ForceAddPlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4F17DB0B))
                    call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + GetPlayerName(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) ) + "|R被分入了第二阵营！" ) + "                                                     " ))
                    set ydl_timer=CreateTimer()
                    call SavePlayerHandle(YDHT, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    call TimerStart(ydl_timer, 1.00, false, function Trig_teamFunc003Func004Func004Func001Func010T)
                    call ForceRemovePlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
                endif
                set bj_forLoopAIndex=bj_forLoopAIndex + 1
            endloop
            set udg_team[1]=LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFAD24066)
            set udg_team[2]=LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4F17DB0B)
            call ConditionalTriggerExecute(gg_trg_DMB1)
            call SetForceAllianceStateBJ(udg_team[1], udg_team[1], bj_ALLIANCE_ALLIED_VISION)
            call SetForceAllianceStateBJ(udg_team[2], udg_team[2], bj_ALLIANCE_ALLIED_VISION)
            call SetForceAllianceStateBJ(udg_team[2], udg_team[1], bj_ALLIANCE_UNALLIED)
            call SetForceAllianceStateBJ(udg_team[1], udg_team[2], bj_ALLIANCE_UNALLIED)
        else
            if ( ( udg_teamnb == 4 ) ) then
                call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFAD24066, CreateForce())
                call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4F17DB0B, CreateForce())
                call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD36730BC, CreateForce())
                call SaveForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB7013ECD, CreateForce())
                set bj_forLoopAIndex=1
                set bj_forLoopAIndexEnd=3
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    if ( ( CountPlayersInForceBJ(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)) == 0 ) ) then
                        call DoNothing()
 exitwhen true //(  )
                    else
                        call SavePlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ForcePickRandomPlayer(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)))
                        call ForceAddPlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFAD24066))
                        call ForceRemovePlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
                        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + GetPlayerName(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) ) + "|R被分入了第一阵营！" ) + "                                                     " ))
                        set ydl_timer=CreateTimer()
                        call SavePlayerHandle(YDHT, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        call TimerStart(ydl_timer, 1.00, false, function Trig_teamFunc003Func004Func001Func005Func001Func006T)
                        call SavePlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ForcePickRandomPlayer(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)))
                        call ForceAddPlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4F17DB0B))
                        call ForceRemovePlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
                        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + GetPlayerName(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) ) + "|R被分入了第二阵营！" ) + "                                                     " ))
                        set ydl_timer=CreateTimer()
                        call SavePlayerHandle(YDHT, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        call TimerStart(ydl_timer, 1.00, false, function Trig_teamFunc003Func004Func001Func005Func001Func011T)
                        call SavePlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ForcePickRandomPlayer(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)))
                        call ForceAddPlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD36730BC))
                        call ForceRemovePlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
                        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + GetPlayerName(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) ) + "|R被分入了第三阵营！" ) + "                                                     " ))
                        set ydl_timer=CreateTimer()
                        call SavePlayerHandle(YDHT, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        call TimerStart(ydl_timer, 1.00, false, function Trig_teamFunc003Func004Func001Func005Func001Func016T)
                        call SavePlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ForcePickRandomPlayer(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52)))
                        call ForceAddPlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB7013ECD))
                        call ForceRemovePlayerSimple(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
                        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + GetPlayerName(LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) ) + "|R被分入了第四阵营！" ) + "                                                     " ))
                        set ydl_timer=CreateTimer()
                        call SavePlayerHandle(YDHT, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        call TimerStart(ydl_timer, 1.00, false, function Trig_teamFunc003Func004Func001Func005Func001Func021T)
                    endif
                    set bj_forLoopAIndex=bj_forLoopAIndex + 1
                endloop
                set udg_team[1]=LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFAD24066)
                set udg_team[2]=LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4F17DB0B)
                set udg_team[3]=LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD36730BC)
                set udg_team[4]=LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB7013ECD)
                call ConditionalTriggerExecute(gg_trg_DMB2)
                call SetForceAllianceStateBJ(udg_team[1], udg_team[1], bj_ALLIANCE_ALLIED_VISION)
                call SetForceAllianceStateBJ(udg_team[2], udg_team[2], bj_ALLIANCE_ALLIED_VISION)
                call SetForceAllianceStateBJ(udg_team[3], udg_team[3], bj_ALLIANCE_ALLIED_VISION)
                call SetForceAllianceStateBJ(udg_team[4], udg_team[4], bj_ALLIANCE_ALLIED_VISION)
                call SetForceAllianceStateBJ(udg_team[1], udg_team[2], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[1], udg_team[3], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[1], udg_team[4], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[2], udg_team[1], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[2], udg_team[3], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[2], udg_team[4], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[4], udg_team[3], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[4], udg_team[2], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[4], udg_team[1], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[3], udg_team[1], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[3], udg_team[2], bj_ALLIANCE_UNALLIED)
                call SetForceAllianceStateBJ(udg_team[3], udg_team[4], bj_ALLIANCE_UNALLIED)
            else
            endif
        endif
    endif
    call ForceClear(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
    call ForceClear(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x31078F97))
    call DestroyForce(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x31078F97))
    call DestroyForce(LoadForceHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAEB50F52))
    call DestroyTrigger(GetTriggeringTrigger())
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
endfunction
//===========================================================================
function InitTrig_team takes nothing returns nothing
    set gg_trg_team=CreateTrigger()
    call TriggerAddAction(gg_trg_team, function Trig_teamActions)
endfunction
//===========================================================================
// Trigger: roundtime 0
//===========================================================================
function Trig_roundtime_0Actions takes nothing returns nothing
    call DestroyTimerDialog(udg_JSQCK)
    call StartTimerBJ(udg_JSQround, false, udg_roundtime)
    call CreateTimerDialogBJ(udg_JSQround, "回合时间：")
    set udg_JSQCK=bj_lastCreatedTimerDialog
    call EnableTrigger(gg_trg_roundtime_2)
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
//===========================================================================
function InitTrig_roundtime_0 takes nothing returns nothing
    set gg_trg_roundtime_0=CreateTrigger()
    call DisableTrigger(gg_trg_roundtime_0)
    call TriggerRegisterTimerExpireEvent(gg_trg_roundtime_0, udg_JSQzhunbei)
    call TriggerAddAction(gg_trg_roundtime_0, function Trig_roundtime_0Actions)
endfunction
//===========================================================================
// Trigger: roundtime 2
//===========================================================================
function Trig_roundtime_2Func007Conditions takes nothing returns nothing
    call DestroyTimerDialog(udg_JSQCK)
    call StartTimerBJ(udg_JSQround, false, udg_roundtime)
    call CreateTimerDialogBJ(udg_JSQround, "回合时间：")
    set udg_JSQCK=bj_lastCreatedTimerDialog
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
function Trig_roundtime_2Actions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DestroyTimerDialog(udg_JSQCK)
    call StartTimerBJ(udg_JSQzhunbei, false, 20.00)
    call CreateTimerDialogBJ(udg_JSQzhunbei, "准备时间：")
    set udg_JSQCK=bj_lastCreatedTimerDialog
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, - 1)
    if ( ( udg_teamnb != 0 ) ) then
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=4
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552, GetForLoopIndexA())
            if ( ( udg_Nkillteam[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552)] >= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) ) ) then
                if ( ( udg_Nkillteam[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552)] > LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) ) ) then
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, udg_Nkillteam[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552)])
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552))
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, 2)
                else
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, 1)
                endif
            else
            endif
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
        if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E) != 1 ) ) then
            if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845) == 1 ) ) then
                call DisplayTextToForce(GetPlayersAll(), "本回合第一阵营获得胜利！")
            else
                if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845) == 2 ) ) then
                    call DisplayTextToForce(GetPlayersAll(), "本回合第二阵营获得胜利！")
                else
                    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845) == 3 ) ) then
                        call DisplayTextToForce(GetPlayersAll(), "本回合第三阵营获得胜利！")
                    else
                        call DisplayTextToForce(GetPlayersAll(), "本回合第四阵营获得胜利！")
                    endif
                endif
            endif
        else
            call DisplayTextToForce(GetPlayersAll(), "本回合打出了平局，期待下一回合见分晓！")
        endif
    else
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=12
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552, GetForLoopIndexA())
            if ( ( udg_NkillDMB[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552)] >= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) ) ) then
                if ( ( udg_NkillDMB[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552)] > LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) ) ) then
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, udg_NkillDMB[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552)])
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552))
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, 2)
                else
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, 1)
                endif
            else
            endif
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
        if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E) != 1 ) ) then
            call SaveStr(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xED96B976, ( udg_Stringcolor[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845)] + ( GetPlayerName(ConvertedPlayer(LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845))) + "|r" ) ))
            call DisplayTextToForce(GetPlayersAll(), ( "本回合" + ( LoadStr(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xED96B976) + "获得胜利！" ) ))
        else
            call DisplayTextToForce(GetPlayersAll(), "本回合打出了平局，期待下一回合见分晓！")
        endif
    endif
    set ydl_trigger=CreateTrigger()
    call TriggerRegisterTimerExpireEvent(ydl_trigger, udg_JSQzhunbei)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_roundtime_2Func007Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_roundtime_2 takes nothing returns nothing
    set gg_trg_roundtime_2=CreateTrigger()
    call DisableTrigger(gg_trg_roundtime_2)
    call TriggerRegisterTimerExpireEvent(gg_trg_roundtime_2, udg_JSQround)
    call TriggerAddAction(gg_trg_roundtime_2, function Trig_roundtime_2Actions)
endfunction
//===========================================================================
// Trigger: 未命名触发器 001
//===========================================================================
function Trig____________________001Actions takes nothing returns nothing
endfunction
//===========================================================================
function InitTrig____________________001 takes nothing returns nothing
    set gg_trg____________________001=CreateTrigger()
    call TriggerAddAction(gg_trg____________________001, function Trig____________________001Actions)
endfunction
//===========================================================================
// Trigger: dialog
//===========================================================================
function Trig_dialogFunc010Func018Func019Conditions takes nothing returns nothing
    if ( ( GetClickedButtonBJ() == udg_DHKbutton[1] ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C, 1)
    else
        if ( ( GetClickedButtonBJ() == udg_DHKbutton[2] ) ) then
            call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C, 8)
        else
            if ( ( GetClickedButtonBJ() == udg_DHKbutton[3] ) ) then
                call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C, 10)
            else
                if ( ( GetClickedButtonBJ() == udg_DHKbutton[4] ) ) then
                    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C, 15)
                else
                    if ( ( GetClickedButtonBJ() == udg_DHKbutton[5] ) ) then
                        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C, 20)
                    else
                        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C, 30)
                    endif
                endif
            endif
        endif
    endif
    set udg_roundtime=( 60.00 * I2R(LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C)) )
    call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(GetTriggerPlayer())] + GetPlayerName(GetTriggerPlayer()) ) + "|R将回合时间设定为：" ) + ( I2S(LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C)) + "分钟" ) ))
    call StartTimerBJ(udg_JSQzhunbei, false, 20.00)
    call CreateTimerDialogBJ(udg_JSQzhunbei, "准备时间：")
    set udg_JSQCK=GetLastCreatedTimerDialogBJ()
    call EnableTrigger(gg_trg_roundtime_0)
    call DisplayTextToForce(GetPlayersAll(), "|cffffcc00系统正在随机分组中，请稍后。。。|r")
    call YDWETimerRunTrigger(2.00 , gg_trg_team)
    call DialogDestroy(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
function Trig_dialogFunc010Func018Conditions takes nothing returns nothing
    local trigger ydl_trigger
    if ( ( GetClickedButtonBJ() == udg_DHKbutton[1] ) ) then
        set udg_round=1
    else
        if ( ( GetClickedButtonBJ() == udg_DHKbutton[2] ) ) then
            set udg_round=2
        else
            if ( ( GetClickedButtonBJ() == udg_DHKbutton[3] ) ) then
                set udg_round=4
            else
                if ( ( GetClickedButtonBJ() == udg_DHKbutton[4] ) ) then
                    set udg_round=6
                else
                    if ( ( GetClickedButtonBJ() == udg_DHKbutton[5] ) ) then
                        set udg_round=8
                    else
                        set udg_round=10
                    endif
                endif
            endif
        endif
    endif
    call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(GetTriggerPlayer())] + GetPlayerName(GetTriggerPlayer()) ) + "|R将回合数设定为：" ) + ( I2S(udg_round) + "回合" ) ))
    call DialogDestroy(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699))
    call SaveDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699, DialogCreate())
    call DialogSetMessage(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), "回合时间")
    call DialogAddButtonBJ(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), "5分钟")
    set udg_DHKbutton[1]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), "8分钟")
    set udg_DHKbutton[2]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), "10分钟")
    set udg_DHKbutton[3]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), "15分钟")
    set udg_DHKbutton[4]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), "20分钟")
    set udg_DHKbutton[5]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), "30分钟")
    set udg_DHKbutton[6]=GetLastCreatedButtonBJ()
    call DialogDisplay(Player(0), LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699), true)
    set ydl_trigger=CreateTrigger()
    call SaveDialogHandle(YDHT, GetHandleId(ydl_trigger), 0x673EE699, LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xF4DF7F2C, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C))
    call TriggerRegisterDialogEvent(ydl_trigger, LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699))
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_dialogFunc010Func018Func019Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
    call DestroyTrigger(GetTriggeringTrigger())
    set ydl_trigger=null
endfunction
function Trig_dialogFunc010Conditions takes nothing returns nothing
    local trigger ydl_trigger
    if ( ( GetClickedButtonBJ() == udg_DHKbutton[1] ) ) then
        set udg_teamnb=2
        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(GetTriggerPlayer())] + GetPlayerName(GetTriggerPlayer()) ) + "|R将队伍模式设定为：" ) + "两个队伍" ))
    else
        if ( ( GetClickedButtonBJ() == udg_DHKbutton[2] ) ) then
            set udg_teamnb=4
            call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(GetTriggerPlayer())] + GetPlayerName(GetTriggerPlayer()) ) + "|R将队伍模式设定为：" ) + "四个队伍" ))
        else
            set udg_teamnb=0
            call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(GetTriggerPlayer())] + GetPlayerName(GetTriggerPlayer()) ) + "|R将队伍模式设定为：" ) + "各自为战" ))
        endif
    endif
    call DialogClear(udg_DHK)
    call DialogSetMessage(udg_DHK, "回合数")
    call DialogAddButtonBJ(udg_DHK, "1局")
    set udg_DHKbutton[1]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(udg_DHK, "2局")
    set udg_DHKbutton[2]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(udg_DHK, "4局")
    set udg_DHKbutton[3]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(udg_DHK, "6局")
    set udg_DHKbutton[4]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(udg_DHK, "8局")
    set udg_DHKbutton[5]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(udg_DHK, "10局")
    set udg_DHKbutton[6]=GetLastCreatedButtonBJ()
    call DialogDisplay(Player(0), udg_DHK, true)
    set ydl_trigger=CreateTrigger()
    call SaveDialogHandle(YDHT, GetHandleId(ydl_trigger), 0x673EE699, LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x673EE699))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xF4DF7F2C, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF4DF7F2C))
    call TriggerRegisterDialogEvent(ydl_trigger, udg_DHK)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_dialogFunc010Func018Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
    call DestroyTrigger(GetTriggeringTrigger())
    set ydl_trigger=null
endfunction
function Trig_dialogActions takes nothing returns nothing
    local trigger ydl_trigger
    call DialogClear(udg_DHK)
    call DialogSetMessage(udg_DHK, "队伍模式")
    call DialogAddButtonBJ(udg_DHK, "两个队伍")
    set udg_DHKbutton[1]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(udg_DHK, "四个队伍")
    set udg_DHKbutton[2]=GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(udg_DHK, "各自为战")
    set udg_DHKbutton[3]=GetLastCreatedButtonBJ()
    call DialogDisplay(Player(0), udg_DHK, true)
    set ydl_trigger=CreateTrigger()
    call SaveDialogHandle(YDHT, GetHandleId(ydl_trigger), 0x673EE699, LoadDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x673EE699))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xF4DF7F2C, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xF4DF7F2C))
    call TriggerRegisterDialogEvent(ydl_trigger, udg_DHK)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_dialogFunc010Conditions))
    call DisableTrigger(GetTriggeringTrigger())
    call DestroyTrigger(GetTriggeringTrigger())
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_dialog takes nothing returns nothing
    set gg_trg_dialog=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_dialog, 3.00)
    call TriggerAddAction(gg_trg_dialog, function Trig_dialogActions)
endfunction
//===========================================================================
// Trigger: GA
//===========================================================================
function Trig_GAFunc001Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAFunc002Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAFunc003Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAFunc004Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAFunc005Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAFunc006Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAFunc007Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAFunc008Func005001001002 takes nothing returns boolean
    return ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
endfunction
function Trig_GAActions takes nothing returns nothing
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012 , Condition(function Trig_GAFunc001Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiA1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GA0), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GA1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GA2), bj_UNIT_FACING)
    else
    endif
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012_______u , Condition(function Trig_GAFunc002Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiA1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GB0), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GB1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GB2), bj_UNIT_FACING)
    else
    endif
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012________2 , Condition(function Trig_GAFunc003Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiA1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GC0), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GC1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GC2), bj_UNIT_FACING)
    else
    endif
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012________3 , Condition(function Trig_GAFunc004Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiA1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GD0), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GD1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiA2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GD2), bj_UNIT_FACING)
    else
    endif
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012________7 , Condition(function Trig_GAFunc005Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiB1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GE0), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GE1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GE2), bj_UNIT_FACING)
    else
    endif
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012________4 , Condition(function Trig_GAFunc006Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiB1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GF0), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GF1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GF2), bj_UNIT_FACING)
    else
    endif
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012________5 , Condition(function Trig_GAFunc007Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiB1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GG1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GG2), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GG3), bj_UNIT_FACING)
    else
    endif
    if ( ( h__CountUnitsInGroup(YDWEGetUnitsInRectMatchingNull(gg_rct______________012________6 , Condition(function Trig_GAFunc008Func005001001002))) == 0 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2, GetRandomInt(1, 4))
        call h__CreateNUnitsAtLoc(1, udg_GuaiB1[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GH0), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GH1), bj_UNIT_FACING)
        call h__CreateNUnitsAtLoc(1, udg_GuaiB2[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC01454E2)], Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct_GH2), bj_UNIT_FACING)
    else
    endif
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
endfunction
//===========================================================================
function InitTrig_GA takes nothing returns nothing
    set gg_trg_GA=CreateTrigger()
    call TriggerRegisterTimerExpireEvent(gg_trg_GA, udg_JSQguai)
    call TriggerAddAction(gg_trg_GA, function Trig_GAActions)
endfunction
//===========================================================================
// Trigger: elf
//===========================================================================
function Trig_elfConditions takes nothing returns boolean
    return ( ( GetUnitTypeId(GetTriggerUnit()) == 'ewsp' ) )
endfunction
function Trig_elfActions takes nothing returns nothing
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8, GetRandomLocInRect(GetPlayableMapRect()))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4B0A6C76, CreateUnitAtLoc(Player(PLAYER_NEUTRAL_AGGRESSIVE), 'ewsp', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8), 0))
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
endfunction
//===========================================================================
function InitTrig_elf takes nothing returns nothing
    set gg_trg_elf=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_elf, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_elf, Condition(function Trig_elfConditions))
    call TriggerAddAction(gg_trg_elf, function Trig_elfActions)
endfunction
//===========================================================================
// Trigger: DMB1
//
// 2队
//===========================================================================
function Trig_DMB1Func019A takes nothing returns nothing
    set udg_iDMB=( udg_iDMB + 1 )
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , ( udg_iDMB + 2 ) , ( udg_Stringcolor[GetConvertedPlayerId(GetEnumPlayer())] + ( GetPlayerName(GetEnumPlayer()) + "|R" ) ))
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x945D5C86, ( udg_iDMB + 2 ))
endfunction
function Trig_DMB1Func021A takes nothing returns nothing
    set udg_iDMB=( udg_iDMB + 1 )
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , ( udg_iDMB + 3 ) , ( udg_Stringcolor[GetConvertedPlayerId(GetEnumPlayer())] + ( GetPlayerName(GetEnumPlayer()) + "|R" ) ))
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x945D5C86, ( udg_iDMB + 3 ))
endfunction
function Trig_DMB1Actions takes nothing returns nothing
    call CreateMultiboardBJ(3, 15, "计分屏")
    set udg_DMB=GetLastCreatedMultiboard()
    call MultiboardSetItemsWidth(udg_DMB, 0.05)
    call YDWEMultiboardSetItemWidthBJNull(udg_DMB , 1 , 0 , 10.00)
    call MultiboardSetItemsStyle(udg_DMB, true, false)
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , 0 , "0")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 0 , "0")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 2 , "")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 9 , "")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , 1 , "|CFFFF0000K|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 1 , "|Cff0000ffD|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , 2 , "|Cffffff00——第一阵营——|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , 9 , "|Cffffff00——第二阵营——|R")
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 0 , 100 , 0.00 , 0.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 3 , 0 , 0.00 , 0.00 , 100.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 9 , 100 , 100.00 , 0.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 2 , 100 , 100.00 , 0.00 , 0)
    set udg_iDMB=0
    call ForForce(udg_team[1], function Trig_DMB1Func019A)
    set udg_iDMB=6
    call ForForce(udg_team[2], function Trig_DMB1Func021A)
    call MultiboardDisplay(udg_DMB, true)
    call DestroyTrigger(gg_trg_Hjifen1)
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
//===========================================================================
function InitTrig_DMB1 takes nothing returns nothing
    set gg_trg_DMB1=CreateTrigger()
    call TriggerAddAction(gg_trg_DMB1, function Trig_DMB1Actions)
endfunction
//===========================================================================
// Trigger: DMB0
//
// 各自为战
//===========================================================================
function Trig_DMB0Actions takes nothing returns nothing
    call CreateMultiboardBJ(3, 13, "计分屏")
    set udg_DMB=GetLastCreatedMultiboard()
    call MultiboardSetItemsWidth(udg_DMB, 0.05)
    call YDWEMultiboardSetItemWidthBJNull(udg_DMB , 1 , 0 , 10.00)
    call MultiboardSetItemsStyle(udg_DMB, true, false)
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , 0 , "0")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 0 , "0")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , 1 , "|CFFFF0000K|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 1 , "|Cff0000ffD|R")
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 0 , 100 , 0.00 , 0.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 3 , 0 , 0.00 , 0.00 , 100.00 , 0)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=12
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , ( GetForLoopIndexA() + 1 ) , ( udg_Stringcolor[GetConvertedPlayerId(ConvertedPlayer(GetForLoopIndexA()))] + ( GetPlayerName(ConvertedPlayer(GetForLoopIndexA())) + "|R" ) ))
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
    call MultiboardDisplay(udg_DMB, true)
    call DestroyTrigger(gg_trg_Hjifen2)
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
//===========================================================================
function InitTrig_DMB0 takes nothing returns nothing
    set gg_trg_DMB0=CreateTrigger()
    call TriggerAddAction(gg_trg_DMB0, function Trig_DMB0Actions)
endfunction
//===========================================================================
// Trigger: DMB2
//
// 4队
//===========================================================================
function Trig_DMB2Func025A takes nothing returns nothing
    set udg_iDMB=( udg_iDMB + 1 )
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , udg_iDMB , ( udg_Stringcolor[GetConvertedPlayerId(GetEnumPlayer())] + ( GetPlayerName(GetEnumPlayer()) + "|R" ) ))
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x945D5C86, udg_iDMB)
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x8B24F338, 1)
endfunction
function Trig_DMB2Func027A takes nothing returns nothing
    set udg_iDMB=( udg_iDMB + 1 )
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , udg_iDMB , ( udg_Stringcolor[GetConvertedPlayerId(GetEnumPlayer())] + ( GetPlayerName(GetEnumPlayer()) + "|R" ) ))
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x945D5C86, udg_iDMB)
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x8B24F338, 2)
endfunction
function Trig_DMB2Func029A takes nothing returns nothing
    set udg_iDMB=( udg_iDMB + 1 )
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , udg_iDMB , ( udg_Stringcolor[GetConvertedPlayerId(GetEnumPlayer())] + ( GetPlayerName(GetEnumPlayer()) + "|R" ) ))
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x945D5C86, udg_iDMB)
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x8B24F338, 3)
endfunction
function Trig_DMB2Func031A takes nothing returns nothing
    set udg_iDMB=( udg_iDMB + 1 )
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , udg_iDMB , ( udg_Stringcolor[GetConvertedPlayerId(GetEnumPlayer())] + ( GetPlayerName(GetEnumPlayer()) + "|R" ) ))
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x945D5C86, udg_iDMB)
    call SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x8B24F338, 4)
endfunction
function Trig_DMB2Actions takes nothing returns nothing
    call CreateMultiboardBJ(3, 17, "计分屏")
    set udg_DMB=GetLastCreatedMultiboard()
    call MultiboardSetItemsWidth(udg_DMB, 0.05)
    call YDWEMultiboardSetItemWidthBJNull(udg_DMB , 1 , 0 , 10.00)
    call MultiboardSetItemsStyle(udg_DMB, true, false)
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , 0 , "0")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 0 , "0")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 2 , "")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 6 , "")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 10 , "")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 14 , "")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , 1 , "|CFFFF0000K|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , 1 , "|Cff0000ffD|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , 2 , "|Cffffff00——第一阵营——|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , 6 , "|Cffffff00——第二阵营——|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , 10 , "|Cffffff00——第三阵营——|R")
    call YDWEMultiboardSetItemValueBJNull(udg_DMB , 1 , 14 , "|Cffffff00——第四阵营——|R")
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 0 , 100 , 0.00 , 0.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 3 , 0 , 0.00 , 0.00 , 100.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 6 , 100 , 100.00 , 0.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 10 , 100 , 100.00 , 0.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 14 , 100 , 100.00 , 0.00 , 0)
    call YDWEMultiboardSetItemColorBJNull(udg_DMB , 2 , 2 , 100 , 100.00 , 0.00 , 0)
    set udg_iDMB=2
    call ForForce(udg_team[1], function Trig_DMB2Func025A)
    set udg_iDMB=6
    call ForForce(udg_team[2], function Trig_DMB2Func027A)
    set udg_iDMB=10
    call ForForce(udg_team[3], function Trig_DMB2Func029A)
    set udg_iDMB=14
    call ForForce(udg_team[4], function Trig_DMB2Func031A)
    call MultiboardDisplay(udg_DMB, true)
    call DestroyTrigger(gg_trg_Hjifen1)
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
//===========================================================================
function InitTrig_DMB2 takes nothing returns nothing
    set gg_trg_DMB2=CreateTrigger()
    call TriggerAddAction(gg_trg_DMB2, function Trig_DMB2Actions)
endfunction
//===========================================================================
// Trigger: Hsharen1
//===========================================================================
function Trig_Hsharen1Conditions takes nothing returns boolean
    return ( ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) and ( GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_AGGRESSIVE) ) and ( IsUnitEnemy(GetKillingUnitBJ(), GetOwningPlayer(GetTriggerUnit())) == true ) and ( GetKillingUnitBJ() != null ) )
endfunction
function Trig_Hsharen1Actions takes nothing returns nothing
    set udg_WJ=GetOwningPlayer(GetTriggerUnit())
    set udg_WJkiller=GetOwningPlayer(GetKillingUnitBJ())
    set udg_kill[GetConvertedPlayerId(udg_WJkiller)]=( udg_kill[GetConvertedPlayerId(udg_WJkiller)] + 1 )
    call DisplayTextToForce(GetPlayersAll(), ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + ( GetPlayerName(udg_WJkiller) + "|r" ) ) + ( "成功地击杀了" + ( udg_Stringcolor[GetConvertedPlayerId(udg_WJ)] + ( GetPlayerName(udg_WJ) + "！|r得到|Cffffff005|R金钱！" ) ) ) ))
    call AdjustPlayerStateBJ(5, udg_WJkiller, PLAYER_STATE_RESOURCE_GOLD)
    if ( ( udg_T == false ) ) then
        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "拿下了|CFFFF0000第一滴血|R！（额外|Cffffff00+3|R金钱）" ))
        call PlaySoundBJ(gg_snd_firstblood)
        call AdjustPlayerStateBJ(3, udg_WJkiller, PLAYER_STATE_RESOURCE_GOLD)
        set udg_T=true
    else
        if ( ( udg_kill[GetConvertedPlayerId(udg_WJkiller)] >= 2 ) ) then
            if ( ( ( udg_time - udg_playertime[GetConvertedPlayerId(udg_WJkiller)] ) <= 60 ) ) then
                if ( ( udg_kill[GetConvertedPlayerId(udg_WJkiller)] == 2 ) ) then
                    call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "完成了一次|CFFFF8000双杀|R！（额外|Cffffff00+3|R金钱）" ))
                    call PlaySoundBJ(gg_snd_double_kill)
                    call AdjustPlayerStateBJ(3, udg_WJkiller, PLAYER_STATE_RESOURCE_GOLD)
                else
                    if ( ( udg_kill[GetConvertedPlayerId(udg_WJkiller)] == 3 ) ) then
                        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "完成了一次|Cff0000ff三杀|R！（额外|Cffffff00+5|R金钱）" ))
                        call PlaySoundBJ(gg_snd_triple_kill)
                        call AdjustPlayerStateBJ(5, udg_WJkiller, PLAYER_STATE_RESOURCE_GOLD)
                    else
                        if ( ( udg_kill[GetConvertedPlayerId(udg_WJkiller)] == 4 ) ) then
                            call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "完成了一次|Cffff00ff疯狂杀戮|R！（额外|Cffffff00+7|R金钱）" ))
                            call PlaySoundBJ(gg_snd_ultrakill)
                            call AdjustPlayerStateBJ(5, udg_WJkiller, PLAYER_STATE_RESOURCE_GOLD)
                        else
                            if ( ( udg_kill[GetConvertedPlayerId(udg_WJkiller)] >= 5 ) ) then
                                call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "正在|CFFFF0000暴走|R！！！" ))
                                call PlaySoundBJ(gg_snd_rampage)
                            else
                            endif
                        endif
                    endif
                endif
            else
                set udg_kill[GetConvertedPlayerId(udg_WJkiller)]=1
            endif
        else
        endif
        set udg_kill[GetConvertedPlayerId(udg_WJ)]=0
    endif
    set udg_playertime[GetConvertedPlayerId(udg_WJkiller)]=udg_time
    call h__RemoveLocation(YDWEGetLocalVariableLocation("WJ"))
    call h__RemoveLocation(YDWEGetLocalVariableLocation("WJkiller"))
endfunction
//===========================================================================
function InitTrig_Hsharen1 takes nothing returns nothing
    set gg_trg_Hsharen1=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hsharen1, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Hsharen1, Condition(function Trig_Hsharen1Conditions))
    call TriggerAddAction(gg_trg_Hsharen1, function Trig_Hsharen1Actions)
endfunction
//===========================================================================
// Trigger: Hsharen2
//===========================================================================
function Trig_Hsharen2Conditions takes nothing returns boolean
    return ( ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) and ( GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_AGGRESSIVE) ) and ( IsUnitEnemy(GetKillingUnitBJ(), GetOwningPlayer(GetTriggerUnit())) == true ) and ( GetKillingUnitBJ() != null ) )
endfunction
function Trig_Hsharen2Actions takes nothing returns nothing
    set udg_WJ=GetOwningPlayer(GetTriggerUnit())
    set udg_WJkiller=GetOwningPlayer(GetKillingUnitBJ())
    set udg_kill2[GetConvertedPlayerId(udg_WJkiller)]=( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] + 1 )
    if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] > 2 ) ) then
        if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] == 3 ) ) then
            call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "正在|CFF00FFFF大杀特杀|R！" ))
            call PlaySoundBJ(gg_snd_killing_spree)
        else
            if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] == 4 ) ) then
                call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "已经|CFFFF8000主宰比赛|R！" ))
                call PlaySoundBJ(gg_snd_dominating)
            else
                if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] == 5 ) ) then
                    call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "已经|Cffff00ff杀人如麻|R！" ))
                    call PlaySoundBJ(gg_snd_megakill)
                else
                    if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] == 6 ) ) then
                        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "已经|Cff808080无人能挡|R！" ))
                        call PlaySoundBJ(gg_snd_unstoppable)
                    else
                        if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] == 7 ) ) then
                            call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "正在|CFF8080FF变态杀戮|R！" ))
                            call PlaySoundBJ(gg_snd_whickedsick)
                        else
                            if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] == 8 ) ) then
                                call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "已经|cff20c000如同妖孽一般|r！！！" ))
                                call PlaySoundBJ(gg_snd_monsterkill)
                            else
                                if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] == 9 ) ) then
                                    call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "已经|c00fffc01如同神一般|r ！！！" ))
                                    call PlaySoundBJ(gg_snd_godlike)
                                else
                                    if ( ( udg_kill2[GetConvertedPlayerId(udg_WJkiller)] > 9 ) ) then
                                        call DisplayTextToForce(GetPlayersAll(), ( ( ( udg_Stringcolor[GetConvertedPlayerId(udg_WJkiller)] + GetPlayerName(udg_WJkiller) ) + "|r" ) + "已经|cfffeba0e超越了神的杀戮|r ！！！拜托谁快去杀了他吧！" ))
                                        call PlaySoundBJ(gg_snd_holyshit)
                                    else
                                    endif
                                endif
                            endif
                        endif
                    endif
                endif
            endif
        endif
    else
    endif
    set udg_kill2[GetConvertedPlayerId(udg_WJ)]=0
    call h__RemoveLocation(YDWEGetLocalVariableLocation("WJ"))
    call h__RemoveLocation(YDWEGetLocalVariableLocation("WJkiller"))
endfunction
//===========================================================================
function InitTrig_Hsharen2 takes nothing returns nothing
    set gg_trg_Hsharen2=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hsharen2, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Hsharen2, Condition(function Trig_Hsharen2Conditions))
    call TriggerAddAction(gg_trg_Hsharen2, function Trig_Hsharen2Actions)
endfunction
//===========================================================================
// Trigger: Hjifen2
//===========================================================================
function Trig_Hjifen2Conditions takes nothing returns boolean
    return ( ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) and ( GetKillingUnitBJ() != null ) and ( udg_teamnb != 0 ) )
endfunction
function Trig_Hjifen2Func005Func004Func003Func003001002 takes nothing returns boolean
    return ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true ) )
endfunction
function Trig_Hjifen2Func005Func004Func003Func003A takes nothing returns nothing
    call h__SetUnitPositionLoc(GetEnumUnit(), GetPlayerStartLocationLoc(GetOwningPlayer(GetEnumUnit())))
    call YDWEPauseAllUnitsBJNull(true)
endfunction
function Trig_Hjifen2Actions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    set udg_Wj=GetOwningPlayer(GetTriggerUnit())
    set udg_Wjkiller=GetOwningPlayer(GetKillingUnitBJ())
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845, LoadInteger(YDHT, GetHandleId(udg_Wjkiller), 0x8B24F338))
    if ( ( udg_teamnb == 4 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, ( ( 4 * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845) ) - 2 ))
    else
        if ( ( udg_teamnb == 2 ) ) then
            call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, ( ( 7 * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845) ) - 5 ))
        else
        endif
    endif
    if ( ( ( IsPlayerInForce(udg_Wj, udg_team[1]) == true ) or ( IsPlayerInForce(udg_Wj, udg_team[2]) == true ) or ( IsPlayerInForce(udg_Wj, udg_team[3]) == true ) or ( IsPlayerInForce(udg_Wj, udg_team[4]) == true ) ) ) then
        set udg_NdeadDMB[GetConvertedPlayerId(udg_Wj)]=( udg_NdeadDMB[GetConvertedPlayerId(udg_Wj)] + 1 )
        call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , LoadInteger(YDHT, GetHandleId(udg_Wj), 0x945D5C86) , I2S(udg_NdeadDMB[GetConvertedPlayerId(udg_Wj)]))
        if ( ( udg_Wjkiller != Player(PLAYER_NEUTRAL_AGGRESSIVE) ) and ( IsUnitEnemy(GetKillingUnitBJ(), udg_Wj) == true ) ) then
            set udg_Nkillteam[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845)]=( udg_Nkillteam[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845)] + 1 )
            call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) , I2S(udg_Nkillteam[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845)]))
            if ( ( udg_Nkillteam[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845)] == 99999 ) ) then
                call YDWEPauseAllUnitsBJNull(true)
                call StartTimerBJ(udg_JSQwin, false, 10.00)
                call h__ForGroupBJ(YDWEGetUnitsInRectMatchingNull(GetPlayableMapRect() , Condition(function Trig_Hjifen2Func005Func004Func003Func003001002)), function Trig_Hjifen2Func005Func004Func003Func003A)
            else
            endif
            set udg_NkillDMB[GetConvertedPlayerId(udg_Wjkiller)]=( udg_NkillDMB[GetConvertedPlayerId(udg_Wjkiller)] + 1 )
            call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , LoadInteger(YDHT, GetHandleId(udg_Wjkiller), 0x945D5C86) , I2S(udg_NkillDMB[GetConvertedPlayerId(udg_Wjkiller)]))
        else
        endif
    else
    endif
    call h__RemoveLocation(YDWEGetLocalVariableLocation("Wj"))
    call h__RemoveLocation(YDWEGetLocalVariableLocation("Wjkiller"))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_group=null
    set ydl_unit=null
endfunction
//===========================================================================
function InitTrig_Hjifen2 takes nothing returns nothing
    set gg_trg_Hjifen2=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hjifen2, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Hjifen2, Condition(function Trig_Hjifen2Conditions))
    call TriggerAddAction(gg_trg_Hjifen2, function Trig_Hjifen2Actions)
endfunction
//===========================================================================
// Trigger: Hjifen1
//===========================================================================
function Trig_Hjifen1Conditions takes nothing returns boolean
    return ( ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) and ( GetKillingUnitBJ() != null ) and ( udg_teamnb == 0 ) )
endfunction
function Trig_Hjifen1Func005Func003Func003Func003001002 takes nothing returns boolean
    return ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true ) )
endfunction
function Trig_Hjifen1Func005Func003Func003Func003A takes nothing returns nothing
    call h__SetUnitPositionLoc(GetEnumUnit(), GetPlayerStartLocationLoc(GetOwningPlayer(GetEnumUnit())))
    call YDWEPauseAllUnitsBJNull(true)
endfunction
function Trig_Hjifen1Actions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    set udg_Wj=GetOwningPlayer(GetTriggerUnit())
    set udg_Wjkiller=GetOwningPlayer(GetKillingUnitBJ())
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845, ( GetConvertedPlayerId(udg_Wjkiller) + 1 ))
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, ( GetConvertedPlayerId(udg_Wj) + 1 ))
    if ( true ) then
        set udg_NdeadDMB[GetConvertedPlayerId(udg_Wj)]=( udg_NdeadDMB[GetConvertedPlayerId(udg_Wj)] + 1 )
        call YDWEMultiboardSetItemValueBJNull(udg_DMB , 3 , LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) , I2S(udg_NdeadDMB[GetConvertedPlayerId(udg_Wj)]))
        if ( ( udg_Wjkiller != Player(PLAYER_NEUTRAL_AGGRESSIVE) ) and ( IsUnitEnemy(GetKillingUnitBJ(), udg_Wj) == true ) ) then
            set udg_NkillDMB[GetConvertedPlayerId(udg_Wjkiller)]=( udg_NkillDMB[GetConvertedPlayerId(udg_Wjkiller)] + 1 )
            call YDWEMultiboardSetItemValueBJNull(udg_DMB , 2 , LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845) , I2S(udg_NkillDMB[GetConvertedPlayerId(udg_Wjkiller)]))
            if ( ( udg_NkillDMB[( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845) - 1 )] == 9999 ) ) then
                call YDWEPauseAllUnitsBJNull(true)
                call StartTimerBJ(udg_JSQwin, false, 10.00)
                call h__ForGroupBJ(YDWEGetUnitsInRectMatchingNull(GetPlayableMapRect() , Condition(function Trig_Hjifen1Func005Func003Func003Func003001002)), function Trig_Hjifen1Func005Func003Func003Func003A)
            else
            endif
        else
        endif
    else
    endif
    call h__RemoveLocation(YDWEGetLocalVariableLocation("Wj"))
    call h__RemoveLocation(YDWEGetLocalVariableLocation("Wjkiller"))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_group=null
    set ydl_unit=null
endfunction
//===========================================================================
function InitTrig_Hjifen1 takes nothing returns nothing
    set gg_trg_Hjifen1=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hjifen1, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Hjifen1, Condition(function Trig_Hjifen1Conditions))
    call TriggerAddAction(gg_trg_Hjifen1, function Trig_Hjifen1Actions)
endfunction
//===========================================================================
// Trigger: e orbit
//===========================================================================
function Trig_e_orbitConditions takes nothing returns boolean
    return ( ( ( GetSpellAbilityId() == 'A002' ) or ( GetSpellAbilityId() == 'A000' ) or ( GetSpellAbilityId() == 'A01F' ) or ( GetSpellAbilityId() == 'A005' ) or ( GetSpellAbilityId() == 'A006' ) or ( GetSpellAbilityId() == 'A00S' ) or ( GetSpellAbilityId() == 'A00L' ) or ( GetSpellAbilityId() == 'A007' ) ) )
endfunction
function Trig_e_orbitFunc002Func003A takes nothing returns nothing
    if ( ( GetUnitTypeId(GetEnumUnit()) != LoadInteger(YDHT, GetSpellAbilityId(), 0x96FD7C9F) ) and ( LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E) != true ) ) then
        call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E, true)
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xAEFFD309, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
        call YDWEReplaceUnitBJNull(GetEnumUnit() , LoadInteger(YDHT, GetSpellAbilityId(), 0x96FD7C9F) , bj_UNIT_STATE_METHOD_DEFAULTS)
        call GroupRemoveUnitSimple(GetEnumUnit(), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x214C62CC))
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xE5515158, GetLastReplacedUnitBJ())
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xE5515158)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xAEFFD309))
        call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xE5515158), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x214C62CC))
    else
    endif
endfunction
function Trig_e_orbitFunc002Func013Func002Func002A takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
endfunction
function Trig_e_orbitFunc002Func013Func002Func007A takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, ( ( 6.00 ) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) ))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    call SetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( - 90.00 ) ))
endfunction
function Trig_e_orbitFunc002Func013Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 0x56046601))
    if ( ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_e_orbitFunc002Func013Func002Func007A)
    else
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_e_orbitFunc002Func013Func002Func002A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 0x94B1391F, 0)
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
endfunction
function Trig_e_orbitActions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    if ( ( ( HaveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x94B1391F) == false ) or ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x94B1391F) == 0 ) ) ) then
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x94B1391F, 3)
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 75.00)
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, CreateGroup())
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, 0.00)
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=3
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948) ) + ( 120.00 ) ))
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
            call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), LoadInteger(YDHT, GetSpellAbilityId(), 0x96FD7C9F), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948) ) - ( - 90.00 ) )))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
            call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
        call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x56046601, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
        set ydl_trigger=CreateTrigger()
        call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
        call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
        call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
        call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
        call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
        call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
        call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
        call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
        call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
        call TriggerAddCondition(ydl_trigger, Condition(function Trig_e_orbitFunc002Func013Conditions))
    else
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x56046601))
        call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, false)
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC), function Trig_e_orbitFunc002Func003A)
        call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x56046601, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    endif
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_group=null
    set ydl_unit=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_e_orbit takes nothing returns nothing
    set gg_trg_e_orbit=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_e_orbit, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_e_orbit, Condition(function Trig_e_orbitConditions))
    call TriggerAddAction(gg_trg_e_orbit, function Trig_e_orbitActions)
endfunction
//===========================================================================
// Trigger: e panduan
//===========================================================================
function Trig_e_panduanConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00V' ) )
endfunction
function Trig_e_panduanFunc005Func002A takes nothing returns nothing
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) * LoadInteger(YDHT, GetUnitTypeId(GetEnumUnit()), 0x2970F80D) ))
endfunction
function Trig_e_panduanActions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), "origin"))
    call UnitRemoveAbility(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x1DD8140C))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE62D96DE, LoadGroupHandle(YDHT, GetHandleId(GetTriggerUnit()), 0x56046601))
    if ( ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE62D96DE)) == false ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2AB194FC, 1)
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE62D96DE), function Trig_e_panduanFunc005Func002A)
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x938D17F5, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2AB194FC))
        call UnitAddAbility(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), udg_A[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2AB194FC)])
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D, udg_A[LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2AB194FC)])
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x1DD8140C, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D))
    else
    endif
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_group=null
    set ydl_unit=null
endfunction
//===========================================================================
function InitTrig_e_panduan takes nothing returns nothing
    set gg_trg_e_panduan=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_e_panduan, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_e_panduan, Condition(function Trig_e_panduanConditions))
    call TriggerAddAction(gg_trg_e_panduan, function Trig_e_panduanActions)
endfunction
//===========================================================================
// Trigger: e panduan2
//===========================================================================
function Trig_e_panduan2Actions takes nothing returns nothing
    if ( ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 8 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 343 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 27 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 125 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2197 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1331 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 4913 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 6859 ) ) ) then
    else
        if ( ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 30 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 42 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 66 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 78 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 102 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 114 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 70 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 110 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 130 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 170 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 190 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 154 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 182 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 238 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 266 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 286 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 374 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 418 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 442 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 646 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 105 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 165 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 195 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 255 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 285 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 231 ) ) ) then
        else
            if ( ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 273 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 357 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 399 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 429 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 495 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 561 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 627 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 663 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 741 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 969 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 385 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 455 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 595 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 665 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 715 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 935 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1045 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1105 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1235 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1615 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1001 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1309 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1463 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1547 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1729 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2261 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2431 ) ) ) then
            else
                if ( ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 722 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1083 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1805 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2527 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 3971 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 4693 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 6137 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 12 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 20 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 28 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 44 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 52 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 68 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 76 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 171 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 18 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 45 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 63 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 99 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 117 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 153 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 475 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 75 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 50 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 175 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 275 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 325 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 425 ) ) ) then
                else
                    if ( ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 931 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 98 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 147 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 245 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 539 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 637 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 833 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2299 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 242 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 363 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 605 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 847 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1573 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2057 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 3211 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 338 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 507 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 845 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1183 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1859 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2873 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 578 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 867 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 1445 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 2023 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 3179 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 3757 ) or ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2AB194FC) == 5491 ) ) ) then
                    else
                    endif
                endif
            endif
        endif
    endif
endfunction
//===========================================================================
function InitTrig_e_panduan2 takes nothing returns nothing
    set gg_trg_e_panduan2=CreateTrigger()
    call TriggerAddAction(gg_trg_e_panduan2, function Trig_e_panduan2Actions)
endfunction
//===========================================================================
// Trigger: A FFF
//===========================================================================
function Trig_A_FFFConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A023' ) )
endfunction
function Trig_A_FFFFunc015Conditions takes nothing returns nothing
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 1.25 ) and ( IsUnitAliveBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)) == true ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.08 ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call SetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
        call IssueImmediateOrderById(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), 852520)
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
endfunction
function Trig_A_FFFActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u019', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call UnitAddAbilityBJ('A020', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.08)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_FFFFunc015Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_FFF takes nothing returns nothing
    set gg_trg_A_FFF=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_FFF, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_FFF, Condition(function Trig_A_FFFConditions))
    call TriggerAddAction(gg_trg_A_FFF, function Trig_A_FFFActions)
endfunction
//===========================================================================
// Trigger: A SLJ
//
// s=1/2at^2
// v=at
// 10,0
// v=10*(1-t)
// s=10*(1-t)/2*t
// s1=10*(1-t+0.8)/2*(t-0.8)
// △=5*(t-t*t-((1-t+0.8)*(t-0.8)))  t-t*t+0.8t-0.8+0.8t-0.8*0.8
// s=5*(0.8t-0.8+0.8t-0.8*0.8)
// 设a秒后的速度为b，令c=b/2，d=ac，间隔时间为e，现在时间为f
//===========================================================================
function Trig_A_SLJConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A027' ) )
endfunction
function Trig_A_SLJFunc020Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x92479DF0) ) ) then
        set ydl_group=CreateGroup()
        call GroupEnumUnitsInRange(ydl_group, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 100.00, null)
        loop
            set ydl_unit=FirstOfGroup(ydl_group)
            exitwhen ydl_unit == null
            call GroupRemoveUnit(ydl_group, ydl_unit)
            if ( ( IsUnitAliveBJ(ydl_unit) == true ) and ( IsUnitEnemy(ydl_unit, GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == true ) and ( GetUnitFlyHeight(ydl_unit) >= LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x51EEC3DC) ) and ( GetUnitFlyHeight(ydl_unit) < GetUnitFlyHeight(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)) ) and ( IsUnitInGroup(ydl_unit, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFBBD1660)) == false ) ) then
                call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFBBD1660), ydl_unit)
                call UnitDamageTarget(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), ydl_unit, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC54D1CBF), false, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_METAL_LIGHT_SLICE)
                if ( true ) then
                else
                endif
            else
            endif
        endloop
        call h__DestroyGroup(ydl_group)
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x51EEC3DC, GetUnitFlyHeight(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.08 ))
    else
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1C6AEBBC) ) ) then
            call SetUnitFlyHeight(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), ( ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x92479DF0) * LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x92479DF0) ) * LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3022A23B) ) / 2.00 ), ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3022A23B) * LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) ))
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.08 ))
        else
            call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
            call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
            call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
            call DestroyTrigger(GetTriggeringTrigger())
        endif
    endif
    set ydl_group=null
    set ydl_unit=null
endfunction
function Trig_A_SLJActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC54D1CBF, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'h006', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), 0.00))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x92479DF0, 2.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1C6AEBBC, 4.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x51C36F04, 5.00)
    call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB71FB5CE, false)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x51EEC3DC, GetUnitFlyHeight(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBBD1660, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x448401C1, 500.00)
    call SetUnitFlyHeight(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x448401C1) * LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x92479DF0) ), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x448401C1))
    set ydl_trigger=CreateTrigger()
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x92479DF0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x92479DF0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x1C6AEBBC, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1C6AEBBC))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x51EEC3DC, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x51EEC3DC))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x3022A23B, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3022A23B))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC54D1CBF, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC54D1CBF))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xFBBD1660, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBBD1660))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.08)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_SLJFunc020Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_SLJ takes nothing returns nothing
    set gg_trg_A_SLJ=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_SLJ, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_SLJ, Condition(function Trig_A_SLJConditions))
    call TriggerAddAction(gg_trg_A_SLJ, function Trig_A_SLJActions)
endfunction
//===========================================================================
// Trigger: A III 
//===========================================================================
function Trig_A_IIIConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A024' ) )
endfunction
function Trig_A_IIIFunc015Conditions takes nothing returns nothing
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 1.25 ) and ( IsUnitAliveBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)) == true ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.08 ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call SetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
        call IssueImmediateOrderById(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), 852520)
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
endfunction
function Trig_A_IIIActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u019', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call UnitAddAbilityBJ('A022', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.08)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_IIIFunc015Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_III takes nothing returns nothing
    set gg_trg_A_III=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_III, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_III, Condition(function Trig_A_IIIConditions))
    call TriggerAddAction(gg_trg_A_III, function Trig_A_IIIActions)
endfunction
//===========================================================================
// Trigger: A SSI 
//===========================================================================
function Trig_A_SSIFunc014Func001Func010Func002003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_A_SSIFunc014Func001Func010Func004Func008T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_A_SSIFunc014Func001Func010Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIob\\AIobSpecialArt.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), "chest"))
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u006', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
    call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "attackonce", GetEnumUnit())
    call YDWETimerRemoveUnit(0.50 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 1.00, false, function Trig_A_SSIFunc014Func001Func010Func004Func008T)
    set ydl_timer=null
endfunction
function Trig_A_SSIFunc014Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 1.50 ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.02 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location((RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(100.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_A_SSIFunc014Func001Func010Func002003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_A_SSIFunc014Func001Func010Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_SSIActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 30.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 18.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u003', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_SSIFunc014Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_SSI takes nothing returns nothing
    set gg_trg_A_SSI=CreateTrigger()
    call TriggerAddAction(gg_trg_A_SSI, function Trig_A_SSIActions)
endfunction
//===========================================================================
// Trigger: A PIF 
//===========================================================================
function Trig_A_PIFConditions takes nothing returns boolean
    return ( ( ( GetSpellAbilityId() == 'A02N' ) or ( GetSpellAbilityId() == 'A02B' ) or ( GetSpellAbilityId() == 'A02X' ) or ( GetSpellAbilityId() == 'A02Y' ) or ( GetSpellAbilityId() == 'A02U' ) or ( GetSpellAbilityId() == 'A02V' ) ) )
endfunction
function Trig_A_PIFFunc015Conditions takes nothing returns nothing
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 1.25 ) and ( IsUnitAliveBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)) == true ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.08 ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call SetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
        call IssueImmediateOrderById(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), 852520)
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
endfunction
function Trig_A_PIFActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u019', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    if ( ( GetSpellAbilityId() == 'A02N' ) ) then
        call UnitAddAbilityBJ('A02R', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    else
        if ( ( GetSpellAbilityId() == 'A02B' ) ) then
            call UnitAddAbilityBJ('A026', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
        else
            if ( ( GetSpellAbilityId() == 'A02X' ) ) then
                call UnitAddAbilityBJ('A02Q', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
            else
                if ( ( GetSpellAbilityId() == 'A02Y' ) ) then
                    call UnitAddAbilityBJ('A02P', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
                else
                    if ( ( GetSpellAbilityId() == 'A02U' ) ) then
                        call UnitAddAbilityBJ('A02S', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
                    else
                        call UnitAddAbilityBJ('A02T', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
                    endif
                endif
            endif
        endif
    endif
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.08)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_PIFFunc015Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_PIF takes nothing returns nothing
    set gg_trg_A_PIF=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_PIF, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_PIF, Condition(function Trig_A_PIFConditions))
    call TriggerAddAction(gg_trg_A_PIF, function Trig_A_PIFActions)
endfunction
//===========================================================================
// Trigger: A PIF 2
//===========================================================================
function Trig_A_PIF_2Conditions takes nothing returns boolean
    return ( ( ( GetSpellAbilityId() == 'A026' ) or ( GetSpellAbilityId() == 'A02R' ) or ( GetSpellAbilityId() == 'A02P' ) or ( GetSpellAbilityId() == 'A02Q' ) or ( GetSpellAbilityId() == 'A02T' ) or ( GetSpellAbilityId() == 'A02S' ) ) )
endfunction
function Trig_A_PIF_2Actions takes nothing returns nothing
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    if ( ( GetSpellAbilityId() == 'A026' ) ) then
        call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D, gg_trg_A_Jet_fire)
        call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, gg_trg_A_Jet_ice)
    else
        if ( ( GetSpellAbilityId() == 'A02R' ) ) then
            call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D, gg_trg_A_Jet_poison)
            call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, gg_trg_A_Jet_ice)
        else
            if ( ( GetSpellAbilityId() == 'A02P' ) ) then
                call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D, gg_trg_A_Jet_ice)
                call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, gg_trg_A_Jet_poison)
            else
                if ( ( GetSpellAbilityId() == 'A02Q' ) ) then
                    call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D, gg_trg_A_Jet_fire)
                    call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, gg_trg_A_Jet_poison)
                else
                    if ( ( GetSpellAbilityId() == 'A02T' ) ) then
                        call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D, gg_trg_A_Jet_ice)
                        call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, gg_trg_A_Jet_fire)
                    else
                        call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D, gg_trg_A_Jet_poison)
                        call SaveTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E, gg_trg_A_Jet_fire)
                    endif
                endif
            endif
        endif
    endif
    if ( ( HaveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x580C4C2B) == true ) ) then
        if ( ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x580C4C2B) > 1 ) ) then
            call TriggerExecute(LoadTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D))
            call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x580C4C2B, 0)
        else
            call TriggerExecute(LoadTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E))
            call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x580C4C2B, ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x580C4C2B) + 1 ))
        endif
    else
        call TriggerExecute(LoadTriggerHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9C0F555E))
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x580C4C2B, 1)
    endif
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
endfunction
//===========================================================================
function InitTrig_A_PIF_2 takes nothing returns nothing
    set gg_trg_A_PIF_2=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_PIF_2, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_PIF_2, Condition(function Trig_A_PIF_2Conditions))
    call TriggerAddAction(gg_trg_A_PIF_2, function Trig_A_PIF_2Actions)
endfunction
//===========================================================================
// Trigger: C fire light 1
//===========================================================================
function Trig_C_fire_light_1Conditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A021' ) )
endfunction
function Trig_C_fire_light_1Func014T takes nothing returns nothing
    if ( ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) < 100 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06, ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) + 4 ))
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=5
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u01J', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
            call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) + 10.00 ))
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
    else
        call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    endif
endfunction
function Trig_C_fire_light_1Func016Func001Func002A takes nothing returns nothing
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
    call RemoveUnit(GetEnumUnit())
endfunction
function Trig_C_fire_light_1Func016Func001Func010A takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0x6A7A5B61))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SetUnitFacing(GetEnumUnit(), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 0.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
endfunction
function Trig_C_fire_light_1Func016Func001Func011Func001Func002Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_fire_light_1Func016Func001Func011Func001Func002Func004Func006T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_fire_light_1Func016Func001Func011Func001Func002Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffect("war3mapImported\\fireraytarget.mdx", GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
    if ( ( GetRandomInt(0, 2) == 0 ) ) then
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u00G', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
        call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "acidbomb", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
        call YDWETimerRemoveUnit(0.15 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    else
    endif
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 0.10, false, function Trig_C_fire_light_1Func016Func001Func011Func001Func002Func004Func006T)
    set ydl_timer=null
endfunction
function Trig_C_fire_light_1Func016Func001Func011Func001A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( ModuloInteger(R2I(LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x6A7A5B61)), 50) == 0 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(60.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_fire_light_1Func016Func001Func011Func001Func002Func003003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_fire_light_1Func016Func001Func011Func001Func002Func004A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_fire_light_1Func016Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 450 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 2 ))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_fire_light_1Func016Func001Func010A)
        if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) > 50 ) ) then
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_fire_light_1Func016Func001Func011Func001A)
        else
        endif
    else
        call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetUnitDefaultTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_fire_light_1Func016Func001Func002A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_fire_light_1Actions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB, CreateGroup())
    call SaveGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 12.00)
    call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), 0.02)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 50.00)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.02, true, function Trig_C_fire_light_1Func014T)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_fire_light_1Func016Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_fire_light_1 takes nothing returns nothing
    set gg_trg_C_fire_light_1=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_fire_light_1, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_fire_light_1, Condition(function Trig_C_fire_light_1Conditions))
    call TriggerAddAction(gg_trg_C_fire_light_1, function Trig_C_fire_light_1Actions)
endfunction
//===========================================================================
// Trigger: C light 1 
//===========================================================================
function Trig_C_light_1Conditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A01E' ) )
endfunction
function Trig_C_light_1Func014T takes nothing returns nothing
    if ( ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) < 100 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06, ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) + 4 ))
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=5
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u006', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
            call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) + 10.00 ))
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
    else
        call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    endif
endfunction
function Trig_C_light_1Func016Func001Func002A takes nothing returns nothing
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
    call RemoveUnit(GetEnumUnit())
endfunction
function Trig_C_light_1Func016Func001Func010A takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0x6A7A5B61))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SetUnitFacing(GetEnumUnit(), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 0.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
endfunction
function Trig_C_light_1Func016Func001Func011Func001Func002Func003003003 takes nothing returns boolean
    return ( ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( ( GetUnitStateSwap(UNIT_STATE_LIFE, GetFilterUnit()) / GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetFilterUnit()) ) != 1.00 ) ) and ( GetFilterUnit() != LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C) ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == true ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_light_1Func016Func001Func011Func001Func002Func004Func005T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_light_1Func016Func001Func011Func001Func002Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\HealingSpray\\HealBottleMissile.mdl", GetEnumUnit(), "chest"))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 0.10, false, function Trig_C_light_1Func016Func001Func011Func001Func002Func004Func005T)
    set ydl_timer=null
endfunction
function Trig_C_light_1Func016Func001Func011Func001A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( ModuloInteger(R2I(LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x6A7A5B61)), 50) == 0 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(60.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_light_1Func016Func001Func011Func001Func002Func003003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_light_1Func016Func001Func011Func001Func002Func004A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_light_1Func016Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 450 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 2 ))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_light_1Func016Func001Func010A)
        if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) > 50 ) ) then
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_light_1Func016Func001Func011Func001A)
        else
        endif
    else
        call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetUnitDefaultTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_light_1Func016Func001Func002A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_light_1Actions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB, CreateGroup())
    call SaveGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, - 12.00)
    call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), 0.02)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 50.00)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.02, true, function Trig_C_light_1Func014T)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_light_1Func016Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_light_1 takes nothing returns nothing
    set gg_trg_C_light_1=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_light_1, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_light_1, Condition(function Trig_C_light_1Conditions))
    call TriggerAddAction(gg_trg_C_light_1, function Trig_C_light_1Actions)
endfunction
//===========================================================================
// Trigger: C ice light 1
//===========================================================================
function Trig_C_ice_light_1Conditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A02C' ) )
endfunction
function Trig_C_ice_light_1Func014T takes nothing returns nothing
    if ( ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) < 100 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06, ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) + 4 ))
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=5
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u01K', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
            call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) + 10.00 ))
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
    else
        call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    endif
endfunction
function Trig_C_ice_light_1Func016Func001Func002A takes nothing returns nothing
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
    call RemoveUnit(GetEnumUnit())
endfunction
function Trig_C_ice_light_1Func016Func001Func010A takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0x6A7A5B61))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SetUnitFacing(GetEnumUnit(), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 0.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
endfunction
function Trig_C_ice_light_1Func016Func001Func011Func001Func002Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_ice_light_1Func016Func001Func011Func001Func002Func004Func006T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_ice_light_1Func016Func001Func011Func001Func002Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\LichMissile\\LichMissile.mdl", GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
    if ( ( GetRandomInt(0, 2) == 0 ) ) then
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u01I', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
        call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "attackonce", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
        call YDWETimerRemoveUnit(0.75 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    else
    endif
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 0.10, false, function Trig_C_ice_light_1Func016Func001Func011Func001Func002Func004Func006T)
    set ydl_timer=null
endfunction
function Trig_C_ice_light_1Func016Func001Func011Func001A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( ModuloInteger(R2I(LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x6A7A5B61)), 50) == 0 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(60.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_ice_light_1Func016Func001Func011Func001Func002Func003003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_ice_light_1Func016Func001Func011Func001Func002Func004A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_ice_light_1Func016Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 450 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 2 ))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_ice_light_1Func016Func001Func010A)
        if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) > 50 ) ) then
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_ice_light_1Func016Func001Func011Func001A)
        else
        endif
    else
        call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetUnitDefaultTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_ice_light_1Func016Func001Func002A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_ice_light_1Actions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB, CreateGroup())
    call SaveGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 12.00)
    call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), 0.02)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 50.00)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.02, true, function Trig_C_ice_light_1Func014T)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_ice_light_1Func016Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_ice_light_1 takes nothing returns nothing
    set gg_trg_C_ice_light_1=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_ice_light_1, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_ice_light_1, Condition(function Trig_C_ice_light_1Conditions))
    call TriggerAddAction(gg_trg_C_ice_light_1, function Trig_C_ice_light_1Actions)
endfunction
//===========================================================================
// Trigger: C poison light 1 
//===========================================================================
function Trig_C_poison_light_1Conditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A02E' ) )
endfunction
function Trig_C_poison_light_1Func014T takes nothing returns nothing
    if ( ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) < 100 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06, ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0xABEAFB06) + 4 ))
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=5
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
            call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u01L', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
            call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
            call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) + 10.00 ))
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
    else
        call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    endif
endfunction
function Trig_C_poison_light_1Func016Func001Func002A takes nothing returns nothing
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
    call RemoveUnit(GetEnumUnit())
endfunction
function Trig_C_poison_light_1Func016Func001Func010A takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0x6A7A5B61))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SetUnitFacing(GetEnumUnit(), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 0.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
endfunction
function Trig_C_poison_light_1Func016Func001Func011Func001Func002Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_poison_light_1Func016Func001Func011Func001Func002Func004Func007T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xD42855DB)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_poison_light_1Func016Func001Func011Func001Func002Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\OrbVenom\\OrbVenomSpecialArt.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), "chest"))
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    if ( ( GetRandomInt(0, 2) == 0 ) ) then
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u005', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
        call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "attackonce", GetEnumUnit())
        call YDWETimerRemoveUnit(0.30 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    else
    endif
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 0.10, false, function Trig_C_poison_light_1Func016Func001Func011Func001Func002Func004Func007T)
    set ydl_timer=null
endfunction
function Trig_C_poison_light_1Func016Func001Func011Func001A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( ModuloInteger(R2I(LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x6A7A5B61)), 50) == 0 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(60.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_poison_light_1Func016Func001Func011Func001Func002Func003003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_poison_light_1Func016Func001Func011Func001Func002Func004A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_poison_light_1Func016Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 450 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 2 ))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_poison_light_1Func016Func001Func010A)
        if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) > 50 ) ) then
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_poison_light_1Func016Func001Func011Func001A)
        else
        endif
    else
        call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetUnitDefaultTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB), function Trig_C_poison_light_1Func016Func001Func002A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB)))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD42855DB))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_poison_light_1Actions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB, CreateGroup())
    call SaveGroupHandle(YDHT, GetHandleId(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 12.00)
    call SetUnitTurnSpeed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), 0.02)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 50.00)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveInteger(YDHT, GetHandleId(ydl_timer), 0xABEAFB06, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xABEAFB06))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.02, true, function Trig_C_poison_light_1Func014T)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xD42855DB, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD42855DB))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_poison_light_1Func016Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_poison_light_1 takes nothing returns nothing
    set gg_trg_C_poison_light_1=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_poison_light_1, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_poison_light_1, Condition(function Trig_C_poison_light_1Conditions))
    call TriggerAddAction(gg_trg_C_poison_light_1, function Trig_C_poison_light_1Actions)
endfunction
//===========================================================================
// Trigger: A stone
//===========================================================================
function Trig_A_stoneConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A029' ) )
endfunction
function Trig_A_stoneFunc014Func002A takes nothing returns nothing
    if ( ( IsUnitAlly(GetEnumUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))) == false ) ) then
        call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl", GetEnumUnit(), "chest"))
        call UnitDamageTarget(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC54D1CBF), true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
    else
        call DoNothing()
    endif
endfunction
function Trig_A_stoneFunc014T takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    call SaveGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x34790103, (YDWEGetUnitsInRangeOfLocMatchingNull(((150.00 )*1.0) , ( LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x50525CFC)) , null))) // INLINED!!
    call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x34790103), function Trig_A_stoneFunc014Func002A)
    call GroupClear(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x34790103))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x34790103))
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8))
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x50525CFC))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_group=null
    set ydl_unit=null
endfunction
function Trig_A_stoneActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC54D1CBF, 100.00)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50525CFC, GetSpellTargetLoc())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476, DistanceBetweenPoints(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8), LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50525CFC)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476) / 1000.00 ))
    call YDWESetUnitFacingToFaceLocTimedNull(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C) , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50525CFC) , 0)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'h000', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8), GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))))
    call UnitApplyTimedLife(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), 'BHwe', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'h000', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50525CFC), GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))))
    call ShowUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54), false)
    call UnitApplyTimedLife(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54), 'BHwe', ( 0.50 + LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476) ))
    call YDWEJumpTimer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840) , YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54)) , DistanceBetweenPoints(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8), LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50525CFC)) , LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476) , 0.01 , ( 0.60 * ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476) * 600.00 ) + 120.00 ) ))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x34790103, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x34790103))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0x50525CFC, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50525CFC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC54D1CBF, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC54D1CBF))
    call TimerStart(ydl_timer, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), false, function Trig_A_stoneFunc014T)
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
endfunction
//===========================================================================
function InitTrig_A_stone takes nothing returns nothing
    set gg_trg_A_stone=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_stone, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_stone, Condition(function Trig_A_stoneConditions))
    call TriggerAddAction(gg_trg_A_stone, function Trig_A_stoneActions)
endfunction
//===========================================================================
// Trigger: A Jet ice
//===========================================================================
function Trig_A_Jet_iceConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A022' ) )
endfunction
function Trig_A_Jet_iceFunc012Func001Func006Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_A_Jet_iceFunc012Func001Func006Func004Func007T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_A_Jet_iceFunc012Func001Func006Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u01I', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
    call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "attackonce", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call YDWETimerRemoveUnit(0.75 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 1.00, false, function Trig_A_Jet_iceFunc012Func001Func006Func004Func007T)
    set ydl_timer=null
endfunction
function Trig_A_Jet_iceFunc012Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 0.50 ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.02 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location((RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(50.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_A_Jet_iceFunc012Func001Func006Func003003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_A_Jet_iceFunc012Func001Func006Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_Jet_iceActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 25.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, ( ( GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)) ) + ( ( GetRandomReal(- 10.00, 10.00) ) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u003', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_Jet_iceFunc012Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_Jet_ice takes nothing returns nothing
    set gg_trg_A_Jet_ice=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_Jet_ice, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_Jet_ice, Condition(function Trig_A_Jet_iceConditions))
    call TriggerAddAction(gg_trg_A_Jet_ice, function Trig_A_Jet_iceActions)
endfunction
//===========================================================================
// Trigger: A Jet fire
//===========================================================================
function Trig_A_Jet_fireConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A020' ) )
endfunction
function Trig_A_Jet_fireFunc012Func001Func006Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_A_Jet_fireFunc012Func001Func006Func004Func008T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_A_Jet_fireFunc012Func001Func006Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIfb\\AIfbSpecialArt.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), "chest"))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u00G', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
    call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "acidbomb", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call YDWETimerRemoveUnit(0.15 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 1.00, false, function Trig_A_Jet_fireFunc012Func001Func006Func004Func008T)
    set ydl_timer=null
endfunction
function Trig_A_Jet_fireFunc012Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 0.50 ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.02 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location((RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(50.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_A_Jet_fireFunc012Func001Func006Func003003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_A_Jet_fireFunc012Func001Func006Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_Jet_fireActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 25.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, ( ( GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)) ) + ( ( GetRandomReal(- 10.00, 10.00) ) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u001', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_Jet_fireFunc012Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_Jet_fire takes nothing returns nothing
    set gg_trg_A_Jet_fire=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_Jet_fire, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_Jet_fire, Condition(function Trig_A_Jet_fireConditions))
    call TriggerAddAction(gg_trg_A_Jet_fire, function Trig_A_Jet_fireActions)
endfunction
//===========================================================================
// Trigger: A Jet poison
//===========================================================================
function Trig_A_Jet_poisonConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A022' ) )
endfunction
function Trig_A_Jet_poisonFunc012Func001Func006Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_A_Jet_poisonFunc012Func001Func006Func004Func009T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_A_Jet_poisonFunc012Func001Func006Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\OrbVenom\\OrbVenomSpecialArt.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), "chest"))
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u005', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
    call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "attackonce", GetEnumUnit())
    call YDWETimerRemoveUnit(0.30 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 1.00, false, function Trig_A_Jet_poisonFunc012Func001Func006Func004Func009T)
    set ydl_timer=null
endfunction
function Trig_A_Jet_poisonFunc012Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 0.50 ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.02 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location((RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(50.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_A_Jet_poisonFunc012Func001Func006Func003003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_A_Jet_poisonFunc012Func001Func006Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_Jet_poisonActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 5.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 25.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, ( ( GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)) ) + ( ( GetRandomReal(- 10.00, 10.00) ) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u004', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_Jet_poisonFunc012Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_Jet_poison takes nothing returns nothing
    set gg_trg_A_Jet_poison=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_Jet_poison, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_Jet_poison, Condition(function Trig_A_Jet_poisonConditions))
    call TriggerAddAction(gg_trg_A_Jet_poison, function Trig_A_Jet_poisonActions)
endfunction
//===========================================================================
// Trigger: A control
//===========================================================================
function Trig_A_controlConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A013' ) and ( LoadInteger(YDHT, GetHandleId(GetSpellTargetUnit()), 0x251AFA4C) != 1 ) and ( LoadUnitHandle(YDHT, GetHandleId(GetSpellTargetUnit()), 0x1D8B46DD) != GetSpellAbilityUnit() ) )
endfunction
function Trig_A_controlFunc024Func001Func002A takes nothing returns nothing
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840, GetEnumUnit())
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xC07D222F))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x251AFA4C))
    call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
endfunction
function Trig_A_controlFunc024Func001Func009Func002Func019Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( ( GetUnitPointValue(GetFilterUnit()) != 999 ) and ( GetFilterUnit() != LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840) ) ) ) ) ) ) )
endfunction
function Trig_A_controlFunc024Func001Func009Func002Func019Func004Func007T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_A_controlFunc024Func001Func009Func002Func019Func004Func008Func001T takes nothing returns nothing
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x251AFA4C))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)))
    call GroupRemoveUnit(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC), LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
endfunction
function Trig_A_controlFunc024Func001Func009Func002Func019Func004A takes nothing returns nothing
    local timer ydl_timer
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), ( 4.00 * LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    if ( ( IsUnitAlly(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == true ) ) then
    else
        call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), ( 1.00 * LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    endif
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", GetEnumUnit(), "origin"))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xB7279243, ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xB7279243) + 1 ))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 1.00, false, function Trig_A_controlFunc024Func001Func009Func002Func019Func004Func007T)
    if ( ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xB7279243) >= 15 ) ) then
        set ydl_timer=CreateTimer()
        call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call TimerStart(ydl_timer, 0.03, false, function Trig_A_controlFunc024Func001Func009Func002Func019Func004Func008Func001T)
    else
    endif
    set ydl_timer=null
endfunction
function Trig_A_controlFunc024Func001Func009A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840, GetEnumUnit())
    if ( ( IsUnitDeadBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)) == true ) ) then
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xC07D222F))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x251AFA4C))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call GroupRemoveUnit(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    else
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xC07D222F))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x6A7A5B61))
        if ( ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xD4403408) == 1 ) ) then
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, ( ( 1.65 ) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) ))
        else
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, ( ( - 1.65 ) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) ))
        endif
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) < 375.00 ) ) then
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) + 1.20 ))
        else
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) - 1.20 ))
        endif
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call AddLightningLoc("LEAS", Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531)))
        call SetLightningColor(GetLastCreatedLightningBJ(), 1.00, 1.00, 1.00, 1.00)
        call YDWETimerDestroyLightning(0.01 , GetLastCreatedLightningBJ())
        if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) > 100 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))))
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(90.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_A_controlFunc024Func001Func009Func002Func019Func003003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_A_controlFunc024Func001Func009Func002Func019Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_controlFunc024Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 1500 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 1 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_A_controlFunc024Func001Func009A)
    else
        call StopSoundBJ(LoadSoundHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9B7EB41F), true)
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_A_controlFunc024Func001Func002A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 0x1D8B46DD))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_controlActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, ( 8.00 + ( 0.24 * I2R(GetHeroInt(GetTriggerUnit(), true)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, CreateGroup())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, GetSpellTargetUnit())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x251AFA4C, 1)
    call SaveUnitHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 0x1D8B46DD, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveSoundHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9B7EB41F, gg_snd_MagicLariatLoop1)
    call PlaySoundOnUnitBJ(LoadSoundHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9B7EB41F), 100, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, YDWEDistanceBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xB7279243, 0)
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xD4403408, GetRandomInt(1, 2))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveSoundHandle(YDHT, GetHandleId(ydl_trigger), 0x9B7EB41F, LoadSoundHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9B7EB41F))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.01)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_controlFunc024Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_control takes nothing returns nothing
    set gg_trg_A_control=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_control, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_control, Condition(function Trig_A_controlConditions))
    call TriggerAddAction(gg_trg_A_control, function Trig_A_controlActions)
endfunction
//===========================================================================
// Trigger: A soul
//===========================================================================
function Trig_A_soulConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A001' ) )
endfunction
function Trig_A_soulFunc021Func011Func011Func011T takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 72.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u000', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_A_soulFunc021Func011Func011T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 72.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u000', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call TimerStart(ydl_timer, 0.60, false, function Trig_A_soulFunc021Func011Func011Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_A_soulFunc021Func011T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 72.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u000', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call TimerStart(ydl_timer, 0.60, false, function Trig_A_soulFunc021Func011Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_A_soulFunc021T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 72.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u000', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call TimerStart(ydl_timer, 0.60, false, function Trig_A_soulFunc021Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_A_soulFunc023Func001Func003Func004A takes nothing returns nothing
    call h__DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl", GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
    call KillUnit(GetEnumUnit())
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
endfunction
function Trig_A_soulFunc023Func001Func003Func010Func009Func002003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_A_soulFunc023Func001Func003Func010Func009Func003Func001Func005T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_A_soulFunc023Func001Func003Func010Func009Func003A takes nothing returns nothing
    local timer ydl_timer
    if ( ( ( IsUnitType(GetEnumUnit(), UNIT_TYPE_HERO) == true ) or ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243) >= 15 ) ) ) then
        call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF18F2888), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
        call h__DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl", (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)))
        call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
    else
        call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243, ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243) + 1 ))
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
        call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865), GetEnumUnit())
        set ydl_timer=CreateTimer()
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
        call TimerStart(ydl_timer, 1.00, false, function Trig_A_soulFunc023Func001Func003Func010Func009Func003Func001Func005T)
    endif
    set ydl_timer=null
endfunction
function Trig_A_soulFunc023Func001Func003Func010A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, ( ( 1.80 ) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) ))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 2.40 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(90.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_A_soulFunc023Func001Func003Func010Func009Func002003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_A_soulFunc023Func001Func003Func010Func009Func003A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_soulFunc023Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( ( EVENT_UNIT_SPELL_EFFECT == GetTriggerEventId() ) == true ) ) then
        if ( ( GetSpellAbilityId() == 'A004' ) ) then
            if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD) > 0 ) ) then
                call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD) - 1 ))
            else
            endif
            call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9186B06B, false)
            if ( ( LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0xAF00FAAD) == true ) ) then
            else
                call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0xAF00FAAD, true)
            endif
        else
        endif
        if ( ( GetSpellAbilityId() == 'A003' ) ) then
            if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD) < 2 ) ) then
                call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD) + 1 ))
            else
            endif
            call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0xAF00FAAD, false)
            if ( ( LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9186B06B) == true ) ) then
            else
                call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9186B06B, true)
            endif
        else
        endif
    else
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 23.00 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.01 ))
            if ( ( LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0xAF00FAAD) == true ) ) then
                call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) - 2.60 ))
                if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) < 300.00 ) ) then
                    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD) == 0 ) ) then
                        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) < 100.00 ) ) then
                            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, 100.00)
                        else
                        endif
                        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD, 0)
                    else
                        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, 300.00)
                    endif
                else
                endif
            else
            endif
            if ( ( LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9186B06B) == true ) ) then
                call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) + 2.60 ))
                if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) > 300.00 ) ) then
                    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD) == 2 ) ) then
                        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) > 800.00 ) ) then
                            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, 800.00)
                        else
                        endif
                        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1B95CCBD, 2)
                    else
                        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, 300.00)
                    endif
                else
                endif
            else
            endif
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_A_soulFunc023Func001Func003Func010A)
        else
            call UnitRemoveAbility(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), 'A003')
            call UnitRemoveAbility(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), 'A004')
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_A_soulFunc023Func001Func003Func004A)
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
            call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
            call DestroyTrigger(GetTriggeringTrigger())
        endif
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_A_soulActions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, ( 5.00 + 10.00 ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF18F2888, 35.00)
    call UnitAddAbility(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), 'A003')
    call UnitAddAbility(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), 'A004')
    call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAF00FAAD, false)
    call SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9186B06B, false)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 300.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, 0.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1B95CCBD, 1)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u000', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xB7279243, 0)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call TimerStart(ydl_timer, 0.60, false, function Trig_A_soulFunc021T)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0x1B95CCBD, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1B95CCBD))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xF18F2888, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF18F2888))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveBoolean(YDHT, GetHandleId(ydl_trigger), 0xAF00FAAD, LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAF00FAAD))
    call SaveBoolean(YDHT, GetHandleId(ydl_trigger), 0x9186B06B, LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9186B06B))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.01)
    call TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_A_soulFunc023Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_A_soul takes nothing returns nothing
    set gg_trg_A_soul=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_A_soul, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_A_soul, Condition(function Trig_A_soulConditions))
    call TriggerAddAction(gg_trg_A_soul, function Trig_A_soulActions)
endfunction
//===========================================================================
// Trigger: B soul fire
//===========================================================================
function Trig_B_soul_fireConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A01D' ) )
endfunction
function Trig_B_soul_fireFunc016Func011Func011Func011Func011Func011T takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 51.43 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00Y', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_B_soul_fireFunc016Func011Func011Func011Func011T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 51.43 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00Y', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E))
    call TimerStart(ydl_timer, 0.30, false, function Trig_B_soul_fireFunc016Func011Func011Func011Func011Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_B_soul_fireFunc016Func011Func011Func011T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 51.43 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00Y', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E))
    call TimerStart(ydl_timer, 0.30, false, function Trig_B_soul_fireFunc016Func011Func011Func011Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_B_soul_fireFunc016Func011Func011T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 51.43 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00Y', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E))
    call TimerStart(ydl_timer, 0.30, false, function Trig_B_soul_fireFunc016Func011Func011Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_B_soul_fireFunc016Func011T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 51.43 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00Y', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E))
    call TimerStart(ydl_timer, 0.30, false, function Trig_B_soul_fireFunc016Func011Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_B_soul_fireFunc016T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 51.43 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00Y', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB7279243, 0)
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E))
    call TimerStart(ydl_timer, 0.30, false, function Trig_B_soul_fireFunc016Func011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_B_soul_fireFunc018Func001Func001A takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
endfunction
function Trig_B_soul_fireFunc018Func001Func009Func009Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_B_soul_fireFunc018Func001Func009Func009Func004Func006T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_B_soul_fireFunc018Func001Func009Func009Func004Func007Func001T takes nothing returns nothing
    call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)))
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_B_soul_fireFunc018Func001Func009Func009Func004A takes nothing returns nothing
    local timer ydl_timer
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffect("war3mapImported\\Soulfire Missile.mdx", GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243, ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243) + 1 ))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
    call TimerStart(ydl_timer, 1.00, false, function Trig_B_soul_fireFunc018Func001Func009Func009Func004Func006T)
    if ( ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243) >= 5 ) ) then
        set ydl_timer=CreateTimer()
        call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
        call TimerStart(ydl_timer, 0.01, false, function Trig_B_soul_fireFunc018Func001Func009Func009Func004Func007Func001T)
    else
    endif
    set ydl_timer=null
endfunction
function Trig_B_soul_fireFunc018Func001Func009A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x38344552) ) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) ))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) > 180 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(90.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_B_soul_fireFunc018Func001Func009Func009Func003003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_B_soul_fireFunc018Func001Func009Func009Func004A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_B_soul_fireFunc018Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 1800 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 2 ))
        if ( ( ModuloInteger(LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704), 200) < 100 ) ) then
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xDFB448FB, - 12.00)
        else
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xDFB448FB, 12.00)
        endif
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x38344552, 1.60)
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) - LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xDFB448FB) ))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_B_soul_fireFunc018Func001Func009A)
    else
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_B_soul_fireFunc018Func001Func001A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_B_soul_fireActions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetSpellTargetUnit())
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 25.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 125.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, 0.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00Y', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), 0.00))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xB7279243, 0)
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.30, false, function Trig_B_soul_fireFunc016T)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x38344552, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38344552))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xDFB448FB, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDFB448FB))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_B_soul_fireFunc018Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_B_soul_fire takes nothing returns nothing
    set gg_trg_B_soul_fire=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_B_soul_fire, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_B_soul_fire, Condition(function Trig_B_soul_fireConditions))
    call TriggerAddAction(gg_trg_B_soul_fire, function Trig_B_soul_fireActions)
endfunction
//===========================================================================
// Trigger: B terror
//===========================================================================
function Trig_B_terrorConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A01C' ) )
endfunction
function Trig_B_terrorFunc014Func001Func011Func002003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_B_terrorFunc014Func001Func011Func004Func008T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_B_terrorFunc014Func001Func011Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call h__DestroyEffect(AddSpecialEffect("war3mapImported\\Skull Missile.mdx", GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
    call SelectUnitRemoveForPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3)))
    call IssuePointOrderLoc(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), "move", h__PolarProjectionBJ(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 450.00, ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) + ( ( GetRandomReal(- 60.00, 60.00) ) ) )))
    call YDWETimerDestroyEffect(0.60 , AddSpecialEffectTarget("Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), "overhead"))
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), ( 1.00 * LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 1.00, false, function Trig_B_terrorFunc014Func001Func011Func004Func008T)
    set ydl_timer=null
endfunction
function Trig_B_terrorFunc014Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 1.50 ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.02 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location((RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(100.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_B_terrorFunc014Func001Func011Func002003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_B_terrorFunc014Func001Func011Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_B_terrorActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 30.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 18.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00X', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_B_terrorFunc014Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_B_terror takes nothing returns nothing
    set gg_trg_B_terror=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_B_terror, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_B_terror, Condition(function Trig_B_terrorConditions))
    call TriggerAddAction(gg_trg_B_terror, function Trig_B_terrorActions)
endfunction
//===========================================================================
// Trigger: B ghost
//===========================================================================
function Trig_B_ghostConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00R' ) )
endfunction
function Trig_B_ghostFunc014Func001Func007Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( GetFilterUnit() != LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_B_ghostFunc014Func001Func007Func004Func004T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_B_ghostFunc014Func001Func007Func004A takes nothing returns nothing
    local timer ydl_timer
    call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5), "banish", GetEnumUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
    call TimerStart(ydl_timer, 1.00, false, function Trig_B_ghostFunc014Func001Func007Func004Func004T)
    set ydl_timer=null
endfunction
function Trig_B_ghostFunc014Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 1.50 ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.02 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location((RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(100.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_B_ghostFunc014Func001Func007Func003003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_B_ghostFunc014Func001Func007Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_B_ghostActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 30.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 18.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00I', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_B_ghostFunc014Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_B_ghost takes nothing returns nothing
    set gg_trg_B_ghost=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_B_ghost, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_B_ghost, Condition(function Trig_B_ghostConditions))
    call TriggerAddAction(gg_trg_B_ghost, function Trig_B_ghostActions)
endfunction
//===========================================================================
// Trigger: C blackhole
//===========================================================================
function Trig_C_blackholeConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00P' ) )
endfunction
function Trig_C_blackholeFunc023Func001Func006A takes nothing returns nothing
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
endfunction
function Trig_C_blackholeFunc023Func001Func019003003 takes nothing returns boolean
    return ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitUserData(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_blackholeFunc023Func001Func020A takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992, YDWEDistanceBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3)))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x2392447A, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB0897302, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61, ( 400.00 / ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992) + 150.00 ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB0897302) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x2392447A) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SetUnitFacingTimed(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 180.00 ) ), 0.50)
endfunction
function Trig_C_blackholeFunc023Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 1000 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 2 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call IssuePointOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC5B4375C), "silence", LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_C_blackholeFunc023Func001Func006A)
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382)))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(450.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_blackholeFunc023Func001Func019003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_blackholeFunc023Func001Func020A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
        call SetUnitPathing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), true)
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x5FB96E0B))
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8DF21269))
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3E1D0D33))
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x692C1A13))
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC5B4375C))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
endfunction
function Trig_C_blackholeActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetTriggerUnit())
    call SetUnitPathing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E), false)
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 50.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5FB96E0B, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'o001', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), bj_UNIT_FACING))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'o000', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), bj_UNIT_FACING))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DF21269, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'o000', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), bj_UNIT_FACING))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3E1D0D33, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'o000', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), bj_UNIT_FACING))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x692C1A13, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'o000', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), bj_UNIT_FACING))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC5B4375C, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00H', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), bj_UNIT_FACING))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5FB96E0B), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DF21269), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3E1D0D33), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x692C1A13), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC5B4375C), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call UnitAddAbilityBJ('A01Q', LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC5B4375C))
    call IssuePointOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC5B4375C), "silence", LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x5FB96E0B, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5FB96E0B))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8DF21269, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DF21269))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3E1D0D33, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3E1D0D33))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x692C1A13, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x692C1A13))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xC5B4375C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC5B4375C))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x2D1E4992, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x2392447A, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xB0897302, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_blackholeFunc023Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_blackhole takes nothing returns nothing
    set gg_trg_C_blackhole=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_blackhole, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_blackhole, Condition(function Trig_C_blackholeConditions))
    call TriggerAddAction(gg_trg_C_blackhole, function Trig_C_blackholeActions)
endfunction
//===========================================================================
// Trigger: C hook
//===========================================================================
function Trig_C_hookConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00V' ) )
endfunction
function Trig_C_hookFunc018Func012T takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 120.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00M', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call SetUnitTimeScalePercent(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), 125.00)
    call SetUnitPathing(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), false)
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xD4403408, 1.00)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_hookFunc018T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) ) + ( 120.00 ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C)), 'u00M', LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531), 0.00))
    call SetUnitTimeScalePercent(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), 125.00)
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xD4403408, 0.50)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E))
    call TimerStart(ydl_timer, 0.60, false, function Trig_C_hookFunc018Func012T)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
    set ydl_timer=null
endfunction
function Trig_C_hookFunc020Func001Func002A takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
endfunction
function Trig_C_hookFunc020Func001Func006Func009Func004003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_ETHEREAL) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_hookFunc020Func001Func006Func009Func005Func005T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_hookFunc020Func001Func006Func009Func005A takes nothing returns nothing
    local timer ydl_timer
    call UnitDamageTarget(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_METAL_MEDIUM_SLICE)
    call h__DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Critters\\Albatross\\CritterBloodAlbatross.mdl", GetEnumUnit(), "chest"))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
    call TimerStart(ydl_timer, 0.15, false, function Trig_C_hookFunc020Func001Func006Func009Func005Func005T)
    set ydl_timer=null
endfunction
function Trig_C_hookFunc020Func001Func006A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, ( ( - 1.00 ) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) ))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 1.20 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x329FF8E6, h__PolarProjectionBJ(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 650.00, ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 60.00 ) )))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(100.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_hookFunc020Func001Func006Func009Func004003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_hookFunc020Func001Func006Func009Func005A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_hookFunc020Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 22.00 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.01 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_C_hookFunc020Func001Func006A)
    else
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_C_hookFunc020Func001Func002A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_hookActions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetSpellTargetUnit())
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 8.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 350.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, 0.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00M', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), 0.00))
    call SetUnitTimeScalePercent(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), 125.00)
    call SetUnitPathing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), false)
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xD4403408, 1.50)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.60, false, function Trig_C_hookFunc018T)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.01)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_hookFunc020Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_hook takes nothing returns nothing
    set gg_trg_C_hook=CreateTrigger()
    call DisableTrigger(gg_trg_C_hook)
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_hook, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_hook, Condition(function Trig_C_hookConditions))
    call TriggerAddAction(gg_trg_C_hook, function Trig_C_hookActions)
endfunction
//===========================================================================
// Trigger: C phoenix
//
// J
//===========================================================================
function Trig_C_phoenixConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00C' ) )
endfunction
function Trig_C_phoenixFunc010T takes nothing returns nothing
    call YDWEAroundSystem(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , 2.75 , - 0.50 , 0.27 , 12.00 , 0.01)
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_phoenixFunc011Func001Func004Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_phoenixFunc011Func001Func004Func004Func006T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_phoenixFunc011Func001Func004Func004A takes nothing returns nothing
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C)), 'u008', LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8), 0))
    call IssueTargetOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54), "acidbomb", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call YDWETimerRemoveUnit(0.30 , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x3893EA54))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call TimerStart(ydl_timer, 0.50, false, function Trig_C_phoenixFunc011Func001Func004Func004Func006T)
    set ydl_timer=null
endfunction
function Trig_C_phoenixFunc011Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 24.00 ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 90.00 ) ))
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.50 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))))
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(180.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_phoenixFunc011Func001Func004Func003003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_phoenixFunc011Func001Func004Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_phoenixActions takes nothing returns nothing
    local timer ydl_timer
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetSpellTargetUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 25.00)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u007', ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + 140.00 ), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0.00))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    call YDWEAroundSystem(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E) , 2.75 , 0.48 , - 0.27 , 12.00 , 0.01)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 12.00, false, function Trig_C_phoenixFunc010T)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x3893EA54, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3893EA54))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_phoenixFunc011Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_phoenix takes nothing returns nothing
    set gg_trg_C_phoenix=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_phoenix, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_phoenix, Condition(function Trig_C_phoenixConditions))
    call TriggerAddAction(gg_trg_C_phoenix, function Trig_C_phoenixActions)
endfunction
//===========================================================================
// Trigger: C destroy
//===========================================================================
function Trig_C_destroyConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00T' ) )
endfunction
function Trig_C_destroyFunc008Func001Func005Func002003003 takes nothing returns boolean
    return ( ( ( ( YDWEDistanceBetweenUnits(GetFilterUnit() , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)) >= 450.00 ) and ( ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840) , GetFilterUnit()) <= ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 30.00 ) ) ) and ( YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840) , GetFilterUnit()) >= ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( 150.00 ) ) ) ) ) and ( ( IsUnitDeadBJ(GetFilterUnit()) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_destroyFunc008Conditions takes nothing returns nothing
    if ( ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) < 2400 ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > 0.01 ) ) then
        call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704, ( LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xBEAE5704) + 2 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        if ( true ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))))
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(1200.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_destroyFunc008Func001Func005Func002003003)))
            call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC2FCB08E, h__GroupPickRandomUnit(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7)))
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD310CF7A, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC2FCB08E)))
            call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x7D73FF94, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC2FCB08E)))
            if ( ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7)) == false ) ) then
                call IssuePointOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), "flare", LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD310CF7A), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x7D73FF94))
            else
            endif
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
endfunction
function Trig_C_destroyActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetSpellTargetUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00K', ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + 0.00 ), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0.00))
    call YDWEAroundSystem(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E) , 1.50 , 0.00 , 0.00 , 30.00 , 0.02)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704, 0)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xC2FCB08E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveInteger(YDHT, GetHandleId(ydl_trigger), 0xBEAE5704, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBEAE5704))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD310CF7A, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD310CF7A))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x7D73FF94, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7D73FF94))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_destroyFunc008Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_destroy takes nothing returns nothing
    set gg_trg_C_destroy=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_destroy, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_destroy, Condition(function Trig_C_destroyConditions))
    call TriggerAddAction(gg_trg_C_destroy, function Trig_C_destroyActions)
endfunction
//===========================================================================
// Trigger: C archane
//===========================================================================
function Trig_C_archaneConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00G' ) )
endfunction
function Trig_C_archaneFunc008Conditions takes nothing returns nothing
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 22.00 ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
endfunction
function Trig_C_archaneActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetSpellTargetUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00B', ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) - 0.00 ), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0.00))
    call YDWEAroundSystem(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C) , 15.00 , 0.00 , 0 , 22.00 , 0.02)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_archaneFunc008Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_archane takes nothing returns nothing
    set gg_trg_C_archane=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_archane, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_archane, Condition(function Trig_C_archaneConditions))
    call TriggerAddAction(gg_trg_C_archane, function Trig_C_archaneActions)
endfunction
//===========================================================================
// Trigger: C vacuum
//===========================================================================
function Trig_C_vacuumConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00J' ) )
endfunction
function Trig_C_vacuumFunc014Func001Func011Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_vacuumFunc014Func001Func011Func004Func001Func004T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_vacuumFunc014Func001Func011Func004A takes nothing returns nothing
    local timer ydl_timer
    if ( ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7)) == false ) ) then
        call IssuePointOrder(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5), "blizzard", LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
        call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865), GetEnumUnit())
        set ydl_timer=CreateTimer()
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
        call TimerStart(ydl_timer, 3.00, false, function Trig_C_vacuumFunc014Func001Func011Func004Func001Func004T)
    else
    endif
    set ydl_timer=null
endfunction
function Trig_C_vacuumFunc014Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 1.50 ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.02 ) ) then
            call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location((RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
            call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(225.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_vacuumFunc014Func001Func011Func003003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_vacuumFunc014Func001Func011Func004A)
            call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
            call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
        else
        endif
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)), 0x93FE3865))
        call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x90BB9840)))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_vacuumActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, 30.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 18.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, AngleBetweenPoints(Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)), Location(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00D', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.02)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_vacuumFunc014Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_vacuum takes nothing returns nothing
    set gg_trg_C_vacuum=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_vacuum, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_vacuum, Condition(function Trig_C_vacuumConditions))
    call TriggerAddAction(gg_trg_C_vacuum, function Trig_C_vacuumActions)
endfunction
//===========================================================================
// Trigger: C change
//===========================================================================
function Trig_C_changeConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00K' ) )
endfunction
function Trig_C_changeFunc019Func001Func004A takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetEnumUnit()), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetEnumUnit()))
endfunction
function Trig_C_changeFunc019Func001Func006Func010Func003003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865)) == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( 0 == 0 ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_changeFunc019Func001Func006Func010Func004Func004Func010003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( false == false ) ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( 0 == 0 ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_changeFunc019Func001Func006Func010Func004Func004Func014A takes nothing returns nothing
    if ( ( IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == true ) ) then
        call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x1D4116CA), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
        call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\OrbOfDeath\\OrbOfDeathMissile.mdl", GetEnumUnit(), "chest"))
    else
    endif
endfunction
function Trig_C_changeFunc019Func001Func006Func010Func004Func008T takes nothing returns nothing
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_changeFunc019Func001Func006Func010Func004Func009Func001T takes nothing returns nothing
    call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)), 0x93FE3865))
    call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5)))
    call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB8F332A5), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_C_changeFunc019Func001Func006Func010Func004A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3, GetEnumUnit())
    call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xE9ECB0BE, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
    call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFC4D8276, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3)))
    if ( ( IsTerrainPathableBJ(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xE9ECB0BE), PATHING_TYPE_WALKABILITY) == true ) ) then
    else
        call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), "chest"))
        call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), "chest"))
        call AddLightningLoc("FORK", LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xE9ECB0BE), LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFC4D8276))
        call SetLightningColor(GetLastCreatedLightningBJ(), 1, 0.00, 1, 0.50)
        call YDWETimerDestroyLightning(0.30 , GetLastCreatedLightningBJ())
        call SetUnitPathing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), false)
        call h__SetUnitPositionLoc(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFC4D8276))
        call h__SetUnitPositionLoc(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3), LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xE9ECB0BE))
        call SetUnitPathing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), true)
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF950E111, YDWEGetUnitsInRangeOfLocMatchingNull(185.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFC4D8276) , Condition(function Trig_C_changeFunc019Func001Func006Func010Func004Func004Func010003003)))
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFC4D8276))
        call h__DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Feedback\\ArcaneTowerAttack.mdl", GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)), GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E))))
        call h__DestroyEffect(AddSpecialEffect("war3mapImported\\demonicpurge2.mdx", GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)), GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E))))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF950E111), function Trig_C_changeFunc019Func001Func006Func010Func004Func004Func014A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF950E111))
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xE9ECB0BE))
    endif
    if ( ( IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C))) == true ) ) then
        call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x9720DBE0), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    else
    endif
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243, ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243) + 1 ))
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0x93FE3865), GetEnumUnit())
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF017C0F3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
    call TimerStart(ydl_timer, 1.00, false, function Trig_C_changeFunc019Func001Func006Func010Func004Func008T)
    if ( ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5)), 0xB7279243) >= 10 ) ) then
        set ydl_timer=CreateTimer()
        call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5))
        call TimerStart(ydl_timer, 0.00, false, function Trig_C_changeFunc019Func001Func006Func010Func004Func009Func001T)
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_changeFunc019Func001Func006A takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948, ( ( 0.90 ) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) ))
    call SaveReal(YDHT, GetHandleId(GetEnumUnit()), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948))
    call SetUnitFacing(GetEnumUnit(), ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948) ) - ( - 90.00 ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xC7EA1948)) ) ))
    call SetUnitX(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
    call SetUnitY(GetEnumUnit(), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xB8F332A5, GetEnumUnit())
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) > 0.50 ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8, Location(GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit())))
        call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(90.00 , LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8) , Condition(function Trig_C_changeFunc019Func001Func006Func010Func003003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7), function Trig_C_changeFunc019Func001Func006Func010Func004A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0xF3DA78D7))
    else
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_changeFunc019Conditions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) < 18.00 ) and ( IsUnitGroupEmptyBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC)) == false ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xD0CB9912) + 0.01 ))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x8786956E)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_C_changeFunc019Func001Func006A)
    else
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC), function Trig_C_changeFunc019Func001Func004A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_C_changeActions takes nothing returns nothing
    local trigger ydl_trigger
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetSpellTargetUnit())
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC, CreateGroup())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0, ( 30.00 + ( 0.75 * I2R(GetHeroInt(GetTriggerUnit(), true)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1D4116CA, ( 20.00 + ( 0.50 * I2R(GetHeroInt(GetTriggerUnit(), true)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 500.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948, 0.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * CosBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) + ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61) * SinBJ(LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948)) ) ))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u00C', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531), 0.00))
    call SetUnitPathing(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), false)
    call GroupAddUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840), LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0x93FE3865, CreateGroup())
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xB7279243, 0)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    set ydl_trigger=CreateTrigger()
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0xE9ECB0BE, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE9ECB0BE))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0xFC4D8276, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFC4D8276))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_trigger), 0xF950E111, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF950E111))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_trigger), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x9720DBE0, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9720DBE0))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x1D4116CA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1D4116CA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_trigger), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0xB8F332A5, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB8F332A5))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.01)
    call TriggerAddCondition(ydl_trigger, Condition(function Trig_C_changeFunc019Conditions))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_trigger=null
endfunction
//===========================================================================
function InitTrig_C_change takes nothing returns nothing
    set gg_trg_C_change=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_change, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_change, Condition(function Trig_C_changeConditions))
    call TriggerAddAction(gg_trg_C_change, function Trig_C_changeActions)
endfunction
//===========================================================================
// Trigger: C energy field
//===========================================================================
function Trig_C_energy_fieldConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A01K' ) )
endfunction
function Trig_C_energy_fieldFunc007Func004003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_ANCIENT) == false ) ) and ( ( 1 == 1 ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_energy_fieldFunc007Func006Func001Func008003003 takes nothing returns boolean
    return ( ( ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_ANCIENT) == false ) ) and ( ( IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865)) == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_C_energy_fieldFunc007Func006Func001Func009A takes nothing returns nothing
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3, GetEnumUnit())
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)))
    if ( ( YDWEDistanceBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)) > 250.00 ) ) then
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), (RMinBJ(RMaxBJ(((( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( 325.00 * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), (RMinBJ(RMaxBJ(((( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( 325.00 * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    else
        call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3))
    endif
endfunction
function Trig_C_energy_fieldFunc007Func006Func001Func010A takes nothing returns nothing
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3, GetEnumUnit())
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948, YDWEAngleBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)))
    if ( ( YDWEDistanceBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)) > 275.00 ) ) then
        if ( ( YDWEDistanceBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)) > 650.00 ) ) then
            call GroupRemoveUnit(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865), GetEnumUnit())
        else
            call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), (RMinBJ(RMaxBJ(((( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA) + ( 275.00 * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
            call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), (RMinBJ(RMaxBJ(((( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382) + ( 275.00 * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948)) ) ))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        endif
    else
    endif
endfunction
function Trig_C_energy_fieldFunc007Func006T takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    if ( ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912) < LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x90498B60) ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912) + 0.02 ))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8, Location(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382)))
        call SaveGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(325.00 , LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8) , Condition(function Trig_C_energy_fieldFunc007Func006Func001Func008003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7), function Trig_C_energy_fieldFunc007Func006Func001Func009A)
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865), function Trig_C_energy_fieldFunc007Func006Func001Func010A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7))
    else
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7))
        call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    endif
    set ydl_group=null
    set ydl_unit=null
endfunction
function Trig_C_energy_fieldFunc007T takes nothing returns nothing
    local timer ydl_timer
    call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912, 0.00)
    call SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
    // 内
    call SaveGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865, YDWEGetUnitsInRangeOfLocMatchingNull(325.00 , LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8) , Condition(function Trig_C_energy_fieldFunc007Func004003003)))
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x93FE3865, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x90498B60, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x90498B60))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E))
    call TimerStart(ydl_timer, 0.02, true, function Trig_C_energy_fieldFunc007Func006T)
    set ydl_timer=null
endfunction
function Trig_C_energy_fieldActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u015', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0.00))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90498B60, 15.00)
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC7EA1948, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7EA1948))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x93FE3865, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x93FE3865))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x90498B60, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90498B60))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.00, false, function Trig_C_energy_fieldFunc007T)
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
endfunction
//===========================================================================
function InitTrig_C_energy_field takes nothing returns nothing
    set gg_trg_C_energy_field=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_energy_field, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_energy_field, Condition(function Trig_C_energy_fieldConditions))
    call TriggerAddAction(gg_trg_C_energy_field, function Trig_C_energy_fieldActions)
endfunction
//===========================================================================
// Trigger: C time field
//===========================================================================
function Trig_C_time_fieldConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A01L' ) )
endfunction
function Trig_C_time_fieldFunc010Func001Func005A takes nothing returns nothing
    call PauseUnit(GetEnumUnit(), false)
    call SetUnitTimeScalePercent(GetEnumUnit(), 100.00)
endfunction
function Trig_C_time_fieldFunc010Func001Func008003003 takes nothing returns boolean
    return ( ( ( GetUnitPointValue(GetFilterUnit()) != 999 ) and ( IsUnitOwnedByPlayer(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))) == false ) ) )
endfunction
function Trig_C_time_fieldFunc010Func001Func009A takes nothing returns nothing
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3, GetEnumUnit())
    call GroupAddUnit(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865), LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3))
    call PauseUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), true)
    call SetUnitTimeScalePercent(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), 0.00)
endfunction
function Trig_C_time_fieldFunc010Func001Func012A takes nothing returns nothing
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3, GetEnumUnit())
    if ( ( YDWEDistanceBetweenUnits(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3) , LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)) > 475.00 ) ) then
        call PauseUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), false)
        call SetUnitTimeScalePercent(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), 100.00)
        call GroupRemoveUnitSimple(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865))
    else
    endif
endfunction
function Trig_C_time_fieldFunc010T takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    if ( ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912) <= LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x90498B60) ) and ( GetUnitState(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E), UNIT_STATE_LIFE) > ( 0.81 / 2.00 ) ) ) then
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x8786956E)))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        call SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8, Location(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382)))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xD0CB9912) + 0.02 ))
        call SaveGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7, YDWEGetUnitsInRangeOfLocMatchingNull(475.00 , LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8) , Condition(function Trig_C_time_fieldFunc010Func001Func008003003)))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7), function Trig_C_time_fieldFunc010Func001Func009A)
        call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x32A9E4C8))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7))
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865), function Trig_C_time_fieldFunc010Func001Func012A)
    else
        call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865), function Trig_C_time_fieldFunc010Func001Func005A)
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x93FE3865))
        call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF3DA78D7))
        call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
        call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    endif
    set ydl_group=null
    set ydl_unit=null
endfunction
function Trig_C_time_fieldActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90498B60, 12.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912, 0.00)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'u016', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0.00))
    call SaveGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x93FE3865, CreateGroup())
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x93FE3865, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x93FE3865))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0xF3DA78D7, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3DA78D7))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x90498B60, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90498B60))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0x32A9E4C8, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xD0CB9912, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0CB9912))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x8786956E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8786956E))
    call TimerStart(ydl_timer, 0.02, true, function Trig_C_time_fieldFunc010T)
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
endfunction
//===========================================================================
function InitTrig_C_time_field takes nothing returns nothing
    set gg_trg_C_time_field=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_C_time_field, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_C_time_field, Condition(function Trig_C_time_fieldConditions))
    call TriggerAddAction(gg_trg_C_time_field, function Trig_C_time_fieldActions)
endfunction
//===========================================================================
// Trigger: lieYanPoJi
//===========================================================================
function Trig_lieYanPoJiConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00Y' ) )
endfunction
function Trig_lieYanPoJiFunc011Func001Func009Func004003003 takes nothing returns boolean
    return ( ( ( ( ( false == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_ANCIENT) == false ) ) and ( ( false == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_lieYanPoJiFunc011Func001Func009Func005A takes nothing returns nothing
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3, GetEnumUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C), GetEnumUnit(), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC54D1CBF), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\DemonHunterMissile\\DemonHunterMissile.mdl", LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), "origin"))
    call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)))
endfunction
function Trig_lieYanPoJiFunc011Func001Func009Func006T takes nothing returns nothing
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_lieYanPoJiFunc011Func001Func009Func011003003 takes nothing returns boolean
    return ( ( ( ( ( false == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_ANCIENT) == false ) ) and ( ( false == false ) and ( ( IsUnitAlly(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C))) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) == false ) and ( GetUnitPointValue(GetFilterUnit()) != 999 ) ) ) ) ) )
endfunction
function Trig_lieYanPoJiFunc011Func001Func009Func012A takes nothing returns nothing
    call SaveUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3, GetEnumUnit())
    call SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x9A060300, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)))
    if ( ( DistanceBetweenPoints(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000), LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x9A060300)) < 550.00 ) ) then
        if ( ( DistanceBetweenPoints(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000), LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x9A060300)) < 325.00 ) ) then
            call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)), 0x6A7A5B61, 4)
        else
            call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)), 0x6A7A5B61, 2)
        endif
    else
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)), 0x6A7A5B61, 1)
    endif
    if ( ( IsUnitType(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), UNIT_TYPE_STRUCTURE) != true ) ) then
        call YDWETimerPatternRushSlide(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3) , AngleBetweenPoints(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000), LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x9A060300)) , ( I2R(LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)), 0x6A7A5B61)) * 200.00 ) , 0.50 , 0.02 , 0 , false , false , false , "origin" , "" , "")
    else
    endif
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x9A060300))
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C), GetEnumUnit(), ( I2R(LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)), 0x6A7A5B61)) * ( 0.50 * LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC54D1CBF) ) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\GreenDragonMissile\\GreenDragonMissile.mdl", LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3), "origin"))
    call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xF017C0F3)))
endfunction
function Trig_lieYanPoJiFunc011Func001Func009Func013T takes nothing returns nothing
    call h__RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000))
    call h__DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call DestroyTimer(GetExpiredTimer())
endfunction
function Trig_lieYanPoJiFunc011T takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer ydl_timer
    if ( ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) >= LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x7BC190FC) ) ) then
        call SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000, Location(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xA99320FA), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFDF65382)))
        if ( ( LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB71FB5CE) == 3.00 ) ) then
            call SetUnitFlyHeight(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), 50.00, 0.00)
            call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
            call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)))
            call SaveGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC, YDWEGetUnitsInRangeOfLocMatchingNull(120.00 , LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000) , Condition(function Trig_lieYanPoJiFunc011Func001Func009Func004003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC), function Trig_lieYanPoJiFunc011Func001Func009Func005A)
            set ydl_timer=CreateTimer()
            call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
            call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0xDEFC4000, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000))
            call TimerStart(ydl_timer, 0.01, false, function Trig_lieYanPoJiFunc011Func001Func009Func006T)
            call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
            call DestroyTimer(GetExpiredTimer())
        else
            call SetUnitFlyHeight(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), 220.00, 0.00)
            call KillUnit(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840))
            call FlushChildHashtable(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)))
            call SaveGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC, YDWEGetUnitsInRangeOfLocMatchingNull(750.00 , LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000) , Condition(function Trig_lieYanPoJiFunc011Func001Func009Func011003003)))
            call h__ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC), function Trig_lieYanPoJiFunc011Func001Func009Func012A)
            set ydl_timer=CreateTimer()
            call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x214C62CC))
            call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0xDEFC4000, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xDEFC4000))
            call TimerStart(ydl_timer, 0.01, false, function Trig_lieYanPoJiFunc011Func001Func009Func013T)
            call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
            call DestroyTimer(GetExpiredTimer())
        endif
    else
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x6A7A5B61) + ( LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB71FB5CE) * 12.00 ) ))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x2392447A, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xB0897302, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x2392447A) + ( ( LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB71FB5CE) * 12.00 ) * CosBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC07D222F)) ) ))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531, ( LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xB0897302) + ( ( LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840)), 0xB71FB5CE) * 12.00 ) * SinBJ(LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC07D222F)) ) ))
        call SetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x41713DA3))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        call SetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x90BB9840), (RMinBJ(RMaxBJ(((LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0x71CA3531))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    endif
    set ydl_group=null
    set ydl_unit=null
    set ydl_timer=null
endfunction
function Trig_lieYanPoJiActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x324AE96A, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x058682B9, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetSpellTargetX())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetSpellTargetY())
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC07D222F, Atan2BJ(( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) - LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x058682B9) ), ( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) - LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x324AE96A) )))
    if ( ( GetRandomInt(0, 9) == 0 ) ) then
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'n000', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x324AE96A), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x058682B9), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC07D222F)))
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xB71FB5CE, 1.00)
    else
        call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840, CreateUnit(GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C)), 'n001', LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x324AE96A), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x058682B9), LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC07D222F)))
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xB71FB5CE, 3.00)
    endif
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61, 0.00)
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7BC190FC, SquareRoot(( Pow(( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA) - LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x324AE96A) ), 2.00) + Pow(( LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382) - LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x058682B9) ), 2.00) )))
    call SaveReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC54D1CBF, ( 75.00 / LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840)), 0xB71FB5CE) ))
    set ydl_timer=CreateTimer()
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
    call SaveGroupHandle(YDHT, GetHandleId(ydl_timer), 0x214C62CC, LoadGroupHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC07D222F, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC07D222F))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x6A7A5B61, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6A7A5B61))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0x90BB9840, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90BB9840))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x7BC190FC, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7BC190FC))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0xDEFC4000, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDEFC4000))
    call SaveLocationHandle(YDHT, GetHandleId(ydl_timer), 0x9A060300, LoadLocationHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9A060300))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC54D1CBF, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC54D1CBF))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x2392447A, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
    call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xF017C0F3, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF017C0F3))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0xB0897302, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302))
    call SaveReal(YDHT, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
    call TimerStart(ydl_timer, 0.02, true, function Trig_lieYanPoJiFunc011T)
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
endfunction
//===========================================================================
function InitTrig_lieYanPoJi takes nothing returns nothing
    set gg_trg_lieYanPoJi=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_lieYanPoJi, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_lieYanPoJi, Condition(function Trig_lieYanPoJiConditions))
    call TriggerAddAction(gg_trg_lieYanPoJi, function Trig_lieYanPoJiActions)
endfunction
//===========================================================================
// Trigger: Diabolic Edict a
//
// 恶魔赦令
//===========================================================================
function Trig_Diabolic_Edict_aConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00X' ) )
endfunction
function Trig_Diabolic_Edict_aActions takes nothing returns nothing
    call YDWESetLocalVariableInteger("RunIndex" , (YDWETimerSystem___TimerSystem_RunIndex)) // INLINED!!
    call YDWESetLocalVariableInteger("RunIndex" , ( YDWEGetLocalVariableInteger("RunIndex") + 1 ))
    call YDWESetLocalVariableUnit("Source" , GetSpellAbilityUnit())
    call SaveUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Source" )), ( YDWEGetLocalVariableUnit("Source"))) // INLINED!!
    call YDWETimerRunPeriodicTrigger(0.25 , gg_trg_Diabolic_Edict_b , false , 80 , (GetHandleId((YDWEGetLocalVariableUnit("Source"))))) // INLINED!!
    call YDWELocalVariableEnd()
endfunction
//===========================================================================
function InitTrig_Diabolic_Edict_a takes nothing returns nothing
    set gg_trg_Diabolic_Edict_a=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Diabolic_Edict_a, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Diabolic_Edict_a, Condition(function Trig_Diabolic_Edict_aConditions))
    call TriggerAddAction(gg_trg_Diabolic_Edict_a, function Trig_Diabolic_Edict_aActions)
endfunction
//===========================================================================
// Trigger: Diabolic Edict b
//
// 恶魔赦令
//===========================================================================
function Trig_Diabolic_Edict_bFunc004002003 takes nothing returns boolean
    return ( ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) and ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(YDWEGetLocalVariableUnit("Source"))) == true ) ) )
endfunction
function Trig_Diabolic_Edict_bActions takes nothing returns nothing
    call YDWESetLocalVariableInteger("RunIndex" , (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "RunIndex"))))) // INLINED!!
    call YDWESetLocalVariableUnit("Source" , (LoadUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Source"))))) // INLINED!!
    call YDWESetLocalVariableLocation("point" , Location(GetUnitX(YDWEGetLocalVariableUnit("Source")), GetUnitY(YDWEGetLocalVariableUnit("Source"))))
    call YDWESetLocalVariableGroup("g" , YDWEGetUnitsInRangeOfLocMatchingNull(400.00 , YDWEGetLocalVariableLocation("point") , Condition(function Trig_Diabolic_Edict_bFunc004002003)))
    call YDWESetLocalVariableInteger("order" , ( (LoadInteger(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "order")))) + 1 )) // INLINED!!
    if ( ( IsUnitGroupEmptyBJ(YDWEGetLocalVariableGroup("g")) == true ) ) then
        call YDWESetLocalVariableLocation("p2" , h__PolarProjectionBJ(YDWEGetLocalVariableLocation("point"), GetRandomReal(1.00, 300.00), GetRandomDirectionDeg()))
        call h__DestroyEffect(AddSpecialEffectLoc("Abilities\\Weapons\\CannonTowerMissile\\CannonTowerMissile.mdl", YDWEGetLocalVariableLocation("p2")))
        call h__RemoveLocation(YDWEGetLocalVariableLocation("p2"))
    else
        call YDWESetLocalVariableUnit("u" , h__GroupPickRandomUnit(YDWEGetLocalVariableGroup("g")))
        call UnitDamageTarget(YDWEGetLocalVariableUnit("Source"), YDWEGetLocalVariableUnit("u"), 5.00, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\CannonTowerMissile\\CannonTowerMissile.mdl", YDWEGetLocalVariableUnit("u"), "origin"))
    endif
    call h__DestroyGroup(YDWEGetLocalVariableGroup("g"))
    call h__RemoveLocation(YDWEGetLocalVariableLocation("point"))
    if ( ( YDWEGetLocalVariableInteger("order") == 80 ) ) then
        call FlushChildHashtable(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex"))))) // INLINED!!
    else
    endif
    call YDWELocalVariableEnd()
endfunction
//===========================================================================
function InitTrig_Diabolic_Edict_b takes nothing returns nothing
    set gg_trg_Diabolic_Edict_b=CreateTrigger()
    call TriggerAddAction(gg_trg_Diabolic_Edict_b, function Trig_Diabolic_Edict_bActions)
endfunction
//===========================================================================
// Trigger: Plasma Field a
//
// 等离子场
//===========================================================================
function Trig_Plasma_Field_aConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00I' ) )
endfunction
function Trig_Plasma_Field_aActions takes nothing returns nothing
    call YDWESetLocalVariableInteger("RunIndex" , (YDWETimerSystem___TimerSystem_RunIndex)) // INLINED!!
    call YDWESetLocalVariableInteger("RunIndex" , ( YDWEGetLocalVariableInteger("RunIndex") + 1 ))
    call YDWESetLocalVariableUnit("Source" , GetSpellAbilityUnit())
    call h__DestroyEffect(AddSpecialEffectTarget("war3mapImported\\razor's_plasma_field_fx.mdx", YDWEGetLocalVariableUnit("Source"), "origin"))
    call YDWETimerDestroyEffect(2.50 , AddSpecialEffectTarget("effects\\lightning_ball_tail_fx.mdx", YDWEGetLocalVariableUnit("Source"), "origin"))
    call SaveUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Source" )), ( YDWEGetLocalVariableUnit("Source"))) // INLINED!!
    call SaveGroupHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Ab" )), ( CreateGroup())) // INLINED!!
    call YDWETimerRunPeriodicTrigger(0.05 , gg_trg_Plasma_Field_b , true , 0 , YDWEGetLocalVariableInteger("RunIndex"))
    call YDWELocalVariableEnd()
endfunction
//===========================================================================
function InitTrig_Plasma_Field_a takes nothing returns nothing
    set gg_trg_Plasma_Field_a=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Plasma_Field_a, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Plasma_Field_a, Condition(function Trig_Plasma_Field_aConditions))
    call TriggerAddAction(gg_trg_Plasma_Field_a, function Trig_Plasma_Field_aActions)
endfunction
//===========================================================================
// Trigger: Plasma Field b
//
// 等离子场
//===========================================================================
function Trig_Plasma_Field_bFunc005Func003Func002002003 takes nothing returns boolean
    return ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) and ( ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) and ( IsUnitInGroup(GetFilterUnit(), YDWEGetLocalVariableGroup("Ab")) == false ) ) and ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(YDWEGetLocalVariableUnit("Source"))) == true ) ) ) ) )
endfunction
function Trig_Plasma_Field_bFunc005Func003Func003A takes nothing returns nothing
    call GroupAddUnitSimple(GetEnumUnit(), YDWEGetLocalVariableGroup("Ab"))
    call YDWESetLocalVariableReal("Damage" , ( YDWEDistanceBetweenUnits(YDWEGetLocalVariableUnit("Source") , GetEnumUnit()) / ( 8.00 + ( - 1.00 * I2R(GetUnitAbilityLevel(YDWEGetLocalVariableUnit("Source"), 'A00I')) ) ) ))
    if ( ( YDWEGetLocalVariableReal("Damage") > ( 35.00 + ( 35.00 * I2R(GetUnitAbilityLevel(YDWEGetLocalVariableUnit("Source"), 'A00I')) ) ) ) ) then
        call YDWESetLocalVariableReal("Damage" , ( 35.00 + ( 35.00 * I2R(GetUnitAbilityLevel(YDWEGetLocalVariableUnit("Source"), 'A00I')) ) ))
    else
        if ( ( YDWEGetLocalVariableReal("Damage") < ( 20.00 + ( 20.00 * I2R(GetUnitAbilityLevel(YDWEGetLocalVariableUnit("Source"), 'A00I')) ) ) ) ) then
            call YDWESetLocalVariableReal("Damage" , ( 20.00 + ( 20.00 * I2R(GetUnitAbilityLevel(YDWEGetLocalVariableUnit("Source"), 'A00I')) ) ))
        else
        endif
    endif
    call UnitDamageTargetBJ(YDWEGetLocalVariableUnit("Source"), GetEnumUnit(), YDWEGetLocalVariableReal("Damage"), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call h__DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl", GetEnumUnit(), "origin"))
endfunction
function Trig_Plasma_Field_bActions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    call YDWESetLocalVariableInteger("RunIndex" , (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "RunIndex"))))) // INLINED!!
    call YDWESetLocalVariableUnit("Source" , (LoadUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Source"))))) // INLINED!!
    call YDWESetLocalVariableGroup("Ab" , (LoadGroupHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Ab"))))) // INLINED!!
    call YDWESetLocalVariableLocation("X" , Location(GetUnitX(YDWEGetLocalVariableUnit("Source")), GetUnitY(YDWEGetLocalVariableUnit("Source"))))
    if ( ( (LoadBoolean(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "ToA")))) == true ) ) then // INLINED!!
        call h__DestroyGroup(YDWEGetLocalVariableGroup("Ab"))
        call YDWETimerRunPeriodicTriggerOver(GetTriggeringTrigger() , YDWEGetLocalVariableInteger("RunIndex"))
        call FlushChildHashtable(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex"))))) // INLINED!!
    else
        if ( ( (LoadBoolean(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "ToB")))) == true ) ) then // INLINED!!
            call YDWESetLocalVariableInteger("i" , ( (LoadInteger(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "i")))) - 1 )) // INLINED!!
        else
            call YDWESetLocalVariableInteger("i" , ( (LoadInteger(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "i")))) + 1 )) // INLINED!!
        endif
        set udg_INT[77]=1
        loop
            exitwhen udg_INT[77] > 36
            call YDWESetLocalVariableLocation("Log" , h__PolarProjectionBJ(YDWEGetLocalVariableLocation("X"), ( 26.00 * I2R(YDWEGetLocalVariableInteger("i")) ), ( 10.00 * I2R(udg_INT[77]) )))
            call YDWESetLocalVariableGroup("Plasma" , YDWEGetUnitsInRangeOfLocMatchingNull(80.00 , YDWEGetLocalVariableLocation("Log") , Condition(function Trig_Plasma_Field_bFunc005Func003Func002002003)))
            call h__ForGroupBJ(YDWEGetLocalVariableGroup("Plasma"), function Trig_Plasma_Field_bFunc005Func003Func003A)
            call h__DestroyGroup(YDWEGetLocalVariableGroup("Plasma"))
            call h__RemoveLocation(YDWEGetLocalVariableLocation("Log"))
            set udg_INT[77]=udg_INT[77] + 1
        endloop
        if ( ( YDWEGetLocalVariableInteger("i") == 27 ) ) then
            call SaveBoolean(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Tob" )), ( true)) // INLINED!!
            call SaveGroupHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Ab" )), ( CreateGroup())) // INLINED!!
        else
            if ( ( YDWEGetLocalVariableInteger("i") == 0 ) ) then
                call SaveBoolean(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "ToA" )), ( true)) // INLINED!!
            else
            endif
        endif
        call SaveInteger(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "i" )), ( YDWEGetLocalVariableInteger("i"))) // INLINED!!
    endif
    call h__RemoveLocation(YDWEGetLocalVariableLocation("X"))
    call YDWELocalVariableEnd()
    set ydl_group=null
    set ydl_unit=null
endfunction
//===========================================================================
function InitTrig_Plasma_Field_b takes nothing returns nothing
    set gg_trg_Plasma_Field_b=CreateTrigger()
    call TriggerAddAction(gg_trg_Plasma_Field_b, function Trig_Plasma_Field_bActions)
endfunction
//===========================================================================
// Trigger: Vacuum a
//
// 真空
//===========================================================================
function Trig_Vacuum_aConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A00H' ) )
endfunction
function Trig_Vacuum_aFunc005Func007002003 takes nothing returns boolean
    return ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false ) and ( ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(YDWEGetLocalVariableUnit("Source"))) == true ) and ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false ) ) and ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) and ( IsUnitType(GetFilterUnit(), UNIT_TYPE_ANCIENT) == false ) ) ) ) ) )
endfunction
function Trig_Vacuum_aFunc005Func008A takes nothing returns nothing
    call IssueImmediateOrder(GetEnumUnit(), "stop")
    call SaveReal(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( I2S((GetHandleId((GetEnumUnit())))) )), (( ( YDWEDistanceBetweenUnits(GetEnumUnit() , YDWEGetLocalVariableUnit("Caster")) / 15.00 ))*1.0)) // INLINED!!
endfunction
function Trig_Vacuum_aActions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    call YDWESetLocalVariableInteger("RunIndex" , (YDWETimerSystem___TimerSystem_RunIndex)) // INLINED!!
    call YDWESetLocalVariableInteger("RunIndex" , ( YDWEGetLocalVariableInteger("RunIndex") + 1 ))
    call YDWESetLocalVariableUnit("Source" , GetSpellAbilityUnit())
    call YDWESetLocalVariableLocation("Fxpoint" , GetSpellTargetLoc())
    if ( ( IsTerrainPathableBJ(YDWEGetLocalVariableLocation("Fxpoint"), PATHING_TYPE_WALKABILITY) == false ) ) then
        call h__DestroyEffect(AddSpecialEffect("war3mapImported\\star aura.mdx", GetSpellTargetX(), GetSpellTargetY()))
        call YDWESetLocalVariableUnit("Caster" , CreateUnitAtLoc(GetOwningPlayer(YDWEGetLocalVariableUnit("Source")), 'e000', YDWEGetLocalVariableLocation("Fxpoint"), 0))
        call YDWESetLocalVariableGroup("Vacuum" , YDWEGetUnitsInRangeOfLocMatchingNull(275.00 , YDWEGetLocalVariableLocation("Fxpoint") , Condition(function Trig_Vacuum_aFunc005Func007002003)))
        call h__ForGroupBJ(YDWEGetLocalVariableGroup("Vacuum"), function Trig_Vacuum_aFunc005Func008A)
        call SaveUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Source" )), ( YDWEGetLocalVariableUnit("Source"))) // INLINED!!
        call SaveUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Caster" )), ( YDWEGetLocalVariableUnit("Caster"))) // INLINED!!
        call SaveGroupHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Vacuum" )), ( YDWEGetLocalVariableGroup("Vacuum"))) // INLINED!!
        call YDWETimerRunPeriodicTrigger(0.02 , gg_trg_Vacuum_b , true , 0 , YDWEGetLocalVariableInteger("RunIndex"))
    else
        call IssueImmediateOrder(YDWEGetLocalVariableUnit("Source"), "stop")
        call SetUnitManaBJ(YDWEGetLocalVariableUnit("Source"), ( GetUnitState(YDWEGetLocalVariableUnit("Source"), UNIT_STATE_MANA) + ( 70.00 + ( 30.00 * I2R(GetUnitAbilityLevel(YDWEGetLocalVariableUnit("Source"), GetSpellAbilityId())) ) ) ))
        call ClearTextMessagesBJ(udg_Play[GetConvertedPlayerId(GetOwningPlayer(YDWEGetLocalVariableUnit("Source")))])
    endif
    call h__RemoveLocation(YDWEGetLocalVariableLocation("Fxpoint"))
    call YDWELocalVariableEnd()
    set ydl_group=null
    set ydl_unit=null
endfunction
//===========================================================================
function InitTrig_Vacuum_a takes nothing returns nothing
    set gg_trg_Vacuum_a=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Vacuum_a, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Vacuum_a, Condition(function Trig_Vacuum_aConditions))
    call TriggerAddAction(gg_trg_Vacuum_a, function Trig_Vacuum_aActions)
endfunction
//===========================================================================
// Trigger: Vacuum b
//
// 真空
//===========================================================================
function Trig_Vacuum_bFunc006A takes nothing returns nothing
    call YDWESetLocalVariableReal("Anger" , YDWEAngleBetweenUnits(GetEnumUnit() , YDWEGetLocalVariableUnit("Caster")))
    call SetUnitX(GetEnumUnit(), ( GetUnitX(GetEnumUnit()) + ( (LoadReal(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( I2S((GetHandleId((GetEnumUnit())))))))) * Cos(( ( YDWEGetLocalVariableReal("Anger") * bj_PI ) / 180.00 )) ) )) // INLINED!!
    call SetUnitY(GetEnumUnit(), ( GetUnitY(GetEnumUnit()) + ( (LoadReal(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( I2S((GetHandleId((GetEnumUnit())))))))) * Sin(( ( YDWEGetLocalVariableReal("Anger") * bj_PI ) / 180.00 )) ) )) // INLINED!!
endfunction
function Trig_Vacuum_bFunc007Func003A takes nothing returns nothing
    call UnitDamageTargetBJ(YDWEGetLocalVariableUnit("Source"), GetEnumUnit(), ( 40.00 * I2R(GetUnitAbilityLevel(YDWEGetLocalVariableUnit("Source"), 'A00H')) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
endfunction
function Trig_Vacuum_bActions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    call YDWESetLocalVariableInteger("RunIndex" , (LoadInteger(YDHT, StringHash((I2S((GetHandleId((GetTriggeringTrigger())))) )), StringHash(( "RunIndex"))))) // INLINED!!
    call YDWESetLocalVariableUnit("Source" , (LoadUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Source"))))) // INLINED!!
    call YDWESetLocalVariableUnit("Caster" , (LoadUnitHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Caster"))))) // INLINED!!
    call YDWESetLocalVariableGroup("Vacuum" , (LoadGroupHandle(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Vacuum"))))) // INLINED!!
    call SaveInteger(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Max" )), ( ( (LoadInteger(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Max")))) + 1 ))) // INLINED!!
    call h__ForGroupBJ(YDWEGetLocalVariableGroup("Vacuum"), function Trig_Vacuum_bFunc006A)
    if ( ( (LoadInteger(YDHT, StringHash((I2S(YDWEGetLocalVariableInteger("RunIndex")) )), StringHash(( "Max")))) == 15 ) ) then // INLINED!!
        call YDWETimerRunPeriodicTriggerOver(GetTriggeringTrigger() , YDWEGetLocalVariableInteger("RunIndex"))
        call h__ForGroupBJ(YDWEGetLocalVariableGroup("Vacuum"), function Trig_Vacuum_bFunc007Func003A)
        call h__DestroyGroup(YDWEGetLocalVariableGroup("Vacuum"))
        call RemoveUnit(YDWEGetLocalVariableUnit("Caster"))
    else
    endif
    call YDWELocalVariableEnd()
    set ydl_group=null
    set ydl_unit=null
endfunction
//===========================================================================
function InitTrig_Vacuum_b takes nothing returns nothing
    set gg_trg_Vacuum_b=CreateTrigger()
    call TriggerAddAction(gg_trg_Vacuum_b, function Trig_Vacuum_bActions)
endfunction
//===========================================================================
// Trigger: anYingJuDu
//===========================================================================
function Trig_anYingJuDuConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A01J' ) )
endfunction
function Trig_anYingJuDuFunc001003001002 takes nothing returns boolean
    return ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true ) )
endfunction
function Trig_anYingJuDuFunc004Func005T takes nothing returns nothing
    if ( ( ( LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E)), 0x46ECEF8C) <= 0.00 ) or ( UnitHasBuffBJ(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E), 'B003') == false ) ) ) then
        call SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), 0x165837FA, LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E)), 0xACC13AD8))
        call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xFC53BD31, 8.00)
        if ( ( LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), 0x165837FA) <= 5 ) ) then
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC54D1CBF, ( 5.00 + ( 5.00 * ( I2R(LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E)), 0xACC13AD8)) - 0.00 ) ) ))
        else
            call SaveReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC54D1CBF, ( 5.00 + ( 5.00 * ( I2R(LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E)), 0xACC13AD8)) - 0.00 ) ) ))
        endif
        call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xB95F828C), LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), 0xC54D1CBF), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
        call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E)), 0xACC13AD8, 0)
        call h__DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(GetExpiredTimer()), 0x4BBAB50B))
        call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    else
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E)), 0x46ECEF8C, ( LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0xC2FCB08E)), 0x46ECEF8C) - 0.01 ))
    endif
endfunction
function Trig_anYingJuDuActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step= LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call SaveInteger(YDHT, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C, FirstOfGroup(YDWEGetUnitsOfPlayerMatchingNull(GetOwningPlayer(GetTriggerUnit()) , Condition(function Trig_anYingJuDuFunc001003001002))))
    call SaveUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E, GetSpellTargetUnit())
    call UnitDamageTargetBJ(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C), LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E), 8.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    if ( ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E)), 0xACC13AD8) <= 0 ) ) then
        call SaveEffectHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4BBAB50B, AddSpecialEffectTarget("war3mapImported\\shamanyouranus-shadowymissile.mdx", LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E), "chest"))
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E)), 0x46ECEF8C, 8.00)
        set ydl_timer=CreateTimer()
        call SaveInteger(YDHT, GetHandleId(ydl_timer), 0x165837FA, LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x165837FA))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xB95F828C, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB95F828C))
        call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0xC2FCB08E, LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E))
        call SaveReal(YDHT, GetHandleId(ydl_timer), 0xC54D1CBF, LoadReal(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC54D1CBF))
        call SaveEffectHandle(YDHT, GetHandleId(ydl_timer), 0x4BBAB50B, LoadEffectHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4BBAB50B))
        call TimerStart(ydl_timer, 0.01, true, function Trig_anYingJuDuFunc004Func005T)
    else
        call SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E)), 0x46ECEF8C, 8.00)
    endif
    call SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E)), 0xACC13AD8, ( LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC2FCB08E)), 0xACC13AD8) + 1 ))
    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
endfunction
//===========================================================================
function InitTrig_anYingJuDu takes nothing returns nothing
    set gg_trg_anYingJuDu=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_anYingJuDu, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_anYingJuDu, Condition(function Trig_anYingJuDuConditions))
    call TriggerAddAction(gg_trg_anYingJuDu, function Trig_anYingJuDuActions)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_____________u()
    call InitTrig_1______u()
    call InitTrig_begin()
    call InitTrig_team()
    call InitTrig_roundtime_0()
    call InitTrig_roundtime_2()
    call InitTrig____________________001()
    call InitTrig_dialog()
    call InitTrig_GA()
    call InitTrig_elf()
    call InitTrig_DMB1()
    call InitTrig_DMB0()
    call InitTrig_DMB2()
    call InitTrig_Hsharen1()
    call InitTrig_Hsharen2()
    call InitTrig_Hjifen2()
    call InitTrig_Hjifen1()
    call InitTrig_e_orbit()
    call InitTrig_e_panduan()
    call InitTrig_e_panduan2()
    call InitTrig_A_FFF()
    call InitTrig_A_SLJ()
    call InitTrig_A_III()
    call InitTrig_A_SSI()
    call InitTrig_A_PIF()
    call InitTrig_A_PIF_2()
    call InitTrig_C_fire_light_1()
    call InitTrig_C_light_1()
    call InitTrig_C_ice_light_1()
    call InitTrig_C_poison_light_1()
    call InitTrig_A_stone()
    call InitTrig_A_Jet_ice()
    call InitTrig_A_Jet_fire()
    call InitTrig_A_Jet_poison()
    call InitTrig_A_control()
    call InitTrig_A_soul()
    call InitTrig_B_soul_fire()
    call InitTrig_B_terror()
    call InitTrig_B_ghost()
    call InitTrig_C_blackhole()
    call InitTrig_C_hook()
    call InitTrig_C_phoenix()
    call InitTrig_C_destroy()
    call InitTrig_C_archane()
    call InitTrig_C_vacuum()
    call InitTrig_C_change()
    call InitTrig_C_energy_field()
    call InitTrig_C_time_field()
    call InitTrig_lieYanPoJi()
    call InitTrig_Diabolic_Edict_a()
    call InitTrig_Diabolic_Edict_b()
    call InitTrig_Plasma_Field_a()
    call InitTrig_Plasma_Field_b()
    call InitTrig_Vacuum_a()
    call InitTrig_Vacuum_b()
    call InitTrig_anYingJuDu()
endfunction
//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_____________u)
    call ConditionalTriggerExecute(gg_trg_begin)
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)
    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)
    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)
    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)
    // Player 8
    call SetPlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_USER)
    // Player 9
    call SetPlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_USER)
    // Player 10
    call SetPlayerStartLocation(Player(10), 10)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(10), false)
    call SetPlayerController(Player(10), MAP_CONTROL_USER)
    // Player 11
    call SetPlayerStartLocation(Player(11), 11)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: 主机
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    // Force: 其他玩家
    call SetPlayerTeam(Player(1), 1)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 1)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 1)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(4), 1)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(6), 1)
    call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(7), 1)
    call SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(8), 1)
    call SetPlayerState(Player(8), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(9), 1)
    call SetPlayerState(Player(9), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(10), 1)
    call SetPlayerState(Player(10), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(11), 1)
    call SetPlayerState(Player(11), PLAYER_STATE_ALLIED_VICTORY, 1)
    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(10), true)
    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(10), true)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 11)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 11)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 11)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 11)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(4, 11)
    call SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(5, 11)
    call SetStartLocPrio(5, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(6, 11)
    call SetStartLocPrio(6, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(7, 11)
    call SetStartLocPrio(7, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(8, 11)
    call SetStartLocPrio(8, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(9, 11)
    call SetStartLocPrio(9, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 8, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 9, 10, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(10, 11)
    call SetStartLocPrio(10, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 8, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 9, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(10, 10, 11, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(11, 11)
    call SetStartLocPrio(11, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 8, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 9, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11, 10, 10, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 4736.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 5248.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 4736.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 4224.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 4736.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 4224.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 4736.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 5248.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronFallDay")
    call SetAmbientNightSound("LordaeronFallNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateRegions()
    call CreateAllItems()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs14033740")
call ExecuteFunc("YDTriggerSaveLoadSystem__Init")
call ExecuteFunc("InitializeYD")
call ExecuteFunc("MemoryLeakHelper___Init")
call ExecuteFunc("YDWETimerPattern___Init")
call ExecuteFunc("YDWETimerSystem___Init")

    call InitGlobals()
    call InitCustomTriggers()
    call RunInitializationTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("环绕")
    call SetMapDescription("没有说明")
    call SetPlayers(12)
    call SetTeams(12)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, 0.0, - 512.0)
    call DefineStartLocation(1, 0.0, - 512.0)
    call DefineStartLocation(2, 0.0, - 512.0)
    call DefineStartLocation(3, 0.0, - 512.0)
    call DefineStartLocation(4, 0.0, - 512.0)
    call DefineStartLocation(5, 0.0, - 512.0)
    call DefineStartLocation(6, 0.0, - 512.0)
    call DefineStartLocation(7, 0.0, - 512.0)
    call DefineStartLocation(8, 0.0, - 512.0)
    call DefineStartLocation(9, 0.0, - 512.0)
    call DefineStartLocation(10, 0.0, - 512.0)
    call DefineStartLocation(11, 0.0, - 512.0)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction
//===========================================================================
//ϵͳ-TimerSystem
//===========================================================================
//library ValueIndexing initializer Init requires YDWEBase
//===========================================================================  
//���ܻ���ģ�� 
//===========================================================================
//===========================================================================
//��Ծϵͳ 
//===========================================================================




//Struct method generated initializers/callers:

//Functions for BigArrays:
function sa__MemoryLeakHelper___GTable_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            call s__MemoryLeakHelper___GTable_reset(this)
   return true
endfunction
function sa__YDWETimerPattern___Thread_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            call RemoveSavedInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((s__YDWETimerPattern___Thread_obj[this])))))))) // INLINED!!
            call RemoveSavedInteger(YDHT, StringHash(("YDWETimerPattern." )), StringHash(( I2S((GetHandleId(((s__YDWETimerPattern___Thread_t[this])))))))) // INLINED!!
            call GroupClear(s__YDWETimerPattern___Thread_g[this])
            call h__DestroyGroup(s__YDWETimerPattern___Thread_g[this])
            call PauseTimer(s__YDWETimerPattern___Thread_t[this])
            call DestroyTimer(s__YDWETimerPattern___Thread_t[this])
            call s__YDWETimerPattern___YDVector3_deallocate(s__YDWETimerPattern___Thread_des[this])
            call s__YDWETimerPattern___YDVector3_deallocate(s__YDWETimerPattern___Thread_pos[this])
            call s__YDWETimerPattern___YDVector3_deallocate(s__YDWETimerPattern___Thread_vel[this])
            set s__YDWETimerPattern___Thread_caster[this]=null
            set s__YDWETimerPattern___Thread_target[this]=null
            set s__YDWETimerPattern___Thread_obj[this]=null
            set s__YDWETimerPattern___Thread_g[this]=null
            set s__YDWETimerPattern___Thread_t[this]=null
            set s__YDWETimerPattern___Thread_amount[this]=0
            set s__YDWETimerPattern___Thread_skills[this]=0
            set s__YDWETimerPattern___Thread_order[this]=0
            set s__YDWETimerPattern___Thread_dsfx[this]=""
            set s__YDWETimerPattern___Thread_gsfx[this]=""
            set s__YDWETimerPattern___Thread_wsfx[this]=""
            set s__YDWETimerPattern___Thread_part[this]=""
   return true
endfunction
function sa___prototype169_MemoryLeakHelper___GetElapsedGameTime takes nothing returns boolean

    set f__result_real= MemoryLeakHelper___GameTime + TimerGetElapsed(MemoryLeakHelper___GameTimeTimer)
    return true
endfunction
function sa___prototype173_MemoryLeakHelper___ReleaseLocation takes nothing returns boolean
    call MemoryLeakHelper___ReleaseLocation(f__arg_location1)
    return true
endfunction
function sa___prototype174_MemoryLeakHelper___CatchGroup takes nothing returns boolean
    call MemoryLeakHelper___CatchGroup(f__arg_group1)
    return true
endfunction
function sa___prototype174_MemoryLeakHelper___ReleaseGroup takes nothing returns boolean
    call MemoryLeakHelper___ReleaseGroup(f__arg_group1)
    return true
endfunction
function sa___prototype175_MemoryLeakHelper___ReleaseEffect takes nothing returns boolean
    call MemoryLeakHelper___ReleaseEffect(f__arg_effect1)
    return true
endfunction
function sa___prototype176_MemoryLeakHelper___PP takes nothing returns boolean
    call MemoryLeakHelper___PP(f__arg_location1,f__arg_real1,f__arg_real2)
    return true
endfunction
function sa___prototype177_MemoryLeakHelper___CU takes nothing returns boolean
    call MemoryLeakHelper___CU(f__arg_integer1,f__arg_integer2,f__arg_player1,f__arg_location1,f__arg_real1)
    return true
endfunction
function sa___prototype178_MemoryLeakHelper___IPO takes nothing returns boolean
    call MemoryLeakHelper___IPO(f__arg_unit1,f__arg_string1,f__arg_location1)
    return true
endfunction
function sa___prototype179_MemoryLeakHelper___SUP takes nothing returns boolean
    call MemoryLeakHelper___SUP(f__arg_unit1,f__arg_location1)
    return true
endfunction
function sa___prototype168_MemoryLeakHelper___SUF takes nothing returns boolean
    call MemoryLeakHelper___SUF(f__arg_unit1,f__arg_location1,f__arg_real1)
    return true
endfunction
function sa___prototype180_MemoryLeakHelper___GUR takes nothing returns boolean
    call MemoryLeakHelper___GUR(f__arg_real1,f__arg_location1,f__arg_boolexpr1)
    return true
endfunction
function sa___prototype181_MemoryLeakHelper___CUF takes nothing returns boolean
    call MemoryLeakHelper___CUF(f__arg_integer1,f__arg_integer2,f__arg_player1,f__arg_location1,f__arg_location2)
    return true
endfunction
function sa___prototype182_MemoryLeakHelper___FG takes nothing returns boolean
    call MemoryLeakHelper___FG(f__arg_group1,f__arg_code1)
    return true
endfunction
function sa___prototype183_MemoryLeakHelper___ASETU takes nothing returns boolean
    call MemoryLeakHelper___ASETU(f__arg_string1,f__arg_widget1,f__arg_string2)
    return true
endfunction
function sa___prototype184_MemoryLeakHelper___ASE takes nothing returns boolean
    call MemoryLeakHelper___ASE(f__arg_location1,f__arg_string1)
    return true
endfunction

function jasshelper__initstructs14033740 takes nothing returns nothing
    set st__MemoryLeakHelper___GTable_onDestroy[2]=CreateTrigger()
    set st__MemoryLeakHelper___GTable_onDestroy[3]=st__MemoryLeakHelper___GTable_onDestroy[2]
    call TriggerAddCondition(st__MemoryLeakHelper___GTable_onDestroy[2],Condition( function sa__MemoryLeakHelper___GTable_onDestroy))
    set st__YDWETimerPattern___Thread_onDestroy[6]=CreateTrigger()
    set st__YDWETimerPattern___Thread_onDestroy[7]=st__YDWETimerPattern___Thread_onDestroy[6]
    set st__YDWETimerPattern___Thread_onDestroy[8]=st__YDWETimerPattern___Thread_onDestroy[6]
    set st__YDWETimerPattern___Thread_onDestroy[9]=st__YDWETimerPattern___Thread_onDestroy[6]
    call TriggerAddCondition(st__YDWETimerPattern___Thread_onDestroy[6],Condition( function sa__YDWETimerPattern___Thread_onDestroy))
    set st___prototype169[1]=CreateTrigger()
    call TriggerAddAction(st___prototype169[1],function sa___prototype169_MemoryLeakHelper___GetElapsedGameTime)
    call TriggerAddCondition(st___prototype169[1],Condition(function sa___prototype169_MemoryLeakHelper___GetElapsedGameTime))
    set st___prototype173[1]=CreateTrigger()
    call TriggerAddAction(st___prototype173[1],function sa___prototype173_MemoryLeakHelper___ReleaseLocation)
    call TriggerAddCondition(st___prototype173[1],Condition(function sa___prototype173_MemoryLeakHelper___ReleaseLocation))
    set st___prototype174[1]=CreateTrigger()
    call TriggerAddAction(st___prototype174[1],function sa___prototype174_MemoryLeakHelper___CatchGroup)
    call TriggerAddCondition(st___prototype174[1],Condition(function sa___prototype174_MemoryLeakHelper___CatchGroup))
    set st___prototype174[2]=CreateTrigger()
    call TriggerAddAction(st___prototype174[2],function sa___prototype174_MemoryLeakHelper___ReleaseGroup)
    call TriggerAddCondition(st___prototype174[2],Condition(function sa___prototype174_MemoryLeakHelper___ReleaseGroup))
    set st___prototype175[1]=CreateTrigger()
    call TriggerAddAction(st___prototype175[1],function sa___prototype175_MemoryLeakHelper___ReleaseEffect)
    call TriggerAddCondition(st___prototype175[1],Condition(function sa___prototype175_MemoryLeakHelper___ReleaseEffect))
    set st___prototype176[1]=CreateTrigger()
    call TriggerAddAction(st___prototype176[1],function sa___prototype176_MemoryLeakHelper___PP)
    call TriggerAddCondition(st___prototype176[1],Condition(function sa___prototype176_MemoryLeakHelper___PP))
    set st___prototype177[1]=CreateTrigger()
    call TriggerAddAction(st___prototype177[1],function sa___prototype177_MemoryLeakHelper___CU)
    call TriggerAddCondition(st___prototype177[1],Condition(function sa___prototype177_MemoryLeakHelper___CU))
    set st___prototype178[1]=CreateTrigger()
    call TriggerAddAction(st___prototype178[1],function sa___prototype178_MemoryLeakHelper___IPO)
    call TriggerAddCondition(st___prototype178[1],Condition(function sa___prototype178_MemoryLeakHelper___IPO))
    set st___prototype179[1]=CreateTrigger()
    call TriggerAddAction(st___prototype179[1],function sa___prototype179_MemoryLeakHelper___SUP)
    call TriggerAddCondition(st___prototype179[1],Condition(function sa___prototype179_MemoryLeakHelper___SUP))
    set st___prototype168[1]=CreateTrigger()
    call TriggerAddAction(st___prototype168[1],function sa___prototype168_MemoryLeakHelper___SUF)
    call TriggerAddCondition(st___prototype168[1],Condition(function sa___prototype168_MemoryLeakHelper___SUF))
    set st___prototype180[1]=CreateTrigger()
    call TriggerAddAction(st___prototype180[1],function sa___prototype180_MemoryLeakHelper___GUR)
    call TriggerAddCondition(st___prototype180[1],Condition(function sa___prototype180_MemoryLeakHelper___GUR))
    set st___prototype181[1]=CreateTrigger()
    call TriggerAddAction(st___prototype181[1],function sa___prototype181_MemoryLeakHelper___CUF)
    call TriggerAddCondition(st___prototype181[1],Condition(function sa___prototype181_MemoryLeakHelper___CUF))
    set st___prototype182[1]=CreateTrigger()
    call TriggerAddAction(st___prototype182[1],function sa___prototype182_MemoryLeakHelper___FG)
    call TriggerAddCondition(st___prototype182[1],Condition(function sa___prototype182_MemoryLeakHelper___FG))
    set st___prototype183[1]=CreateTrigger()
    call TriggerAddAction(st___prototype183[1],function sa___prototype183_MemoryLeakHelper___ASETU)
    call TriggerAddCondition(st___prototype183[1],Condition(function sa___prototype183_MemoryLeakHelper___ASETU))
    set st___prototype184[1]=CreateTrigger()
    call TriggerAddAction(st___prototype184[1],function sa___prototype184_MemoryLeakHelper___ASE)
    call TriggerAddCondition(st___prototype184[1],Condition(function sa___prototype184_MemoryLeakHelper___ASE))










endfunction

