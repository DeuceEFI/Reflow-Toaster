;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.05
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F88.inc"
; Heap block 0, size:96 (0x00000110 - 0x0000016F)
__HEAP_BLOCK0_BANK               EQU	0x00000002
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000010
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000006F
; Heap block 1, size:96 (0x00000190 - 0x000001EF)
__HEAP_BLOCK1_BANK               EQU	0x00000003
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000010
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000006F
; Heap block 2, size:59 (0x000000B5 - 0x000000EF)
__HEAP_BLOCK2_BANK               EQU	0x00000001
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000035
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_pir2                         EQU	0x0000000D ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_tmr2                         EQU	0x00000011 ; bytes:1
gbl_t2con                        EQU	0x00000012 ; bytes:1
gbl_sspbuf                       EQU	0x00000013 ; bytes:1
gbl_sspcon                       EQU	0x00000014 ; bytes:1
gbl_ccpr1l                       EQU	0x00000015 ; bytes:1
gbl_ccpr1h                       EQU	0x00000016 ; bytes:1
gbl_ccp1con                      EQU	0x00000017 ; bytes:1
gbl_rcsta                        EQU	0x00000018 ; bytes:1
gbl_txreg                        EQU	0x00000019 ; bytes:1
gbl_rcreg                        EQU	0x0000001A ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_osccon                       EQU	0x0000008F ; bytes:1
gbl_osctune                      EQU	0x00000090 ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_sspadd                       EQU	0x00000093 ; bytes:1
gbl_sspstat                      EQU	0x00000094 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_ansel                        EQU	0x0000009B ; bytes:1
gbl_cmcon                        EQU	0x0000009C ; bytes:1
gbl_cvrcon                       EQU	0x0000009D ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_wdtcon                       EQU	0x00000105 ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
gbl_m_seconds                    EQU	0x0000003F ; bytes:1
gbl_eeaddress                    EQU	0x00000040 ; bytes:1
gbl_err_num                      EQU	0x00000041 ; bytes:1
gbl_total_seconds                EQU	0x00000023 ; bytes:2
gbl_display_seconds              EQU	0x00000025 ; bytes:2
gbl_step_seconds                 EQU	0x00000027 ; bytes:2
gbl_a_temp1                      EQU	0x00000029 ; bytes:2
gbl_a_temp2                      EQU	0x0000002B ; bytes:2
gbl_tot_err                      EQU	0x0000002D ; bytes:2
gbl_proj_actual                  EQU	0x0000002F ; bytes:2
gbl_proj_temp                    EQU	0x00000031 ; bytes:2
gbl_proj_err                     EQU	0x00000033 ; bytes:2
gbl_step_time                    EQU	0x00000035 ; bytes:2
gbl_step_temp                    EQU	0x00000037 ; bytes:2
gbl_prev_step_temp               EQU	0x00000039 ; bytes:2
gbl_set_temp                     EQU	0x0000003B ; bytes:2
gbl_W_TEMP                       EQU	0x00000042 ; bytes:1
gbl_STATUS_TEMP                  EQU	0x00000043 ; bytes:1
gbl_step_number                  EQU	0x00000044 ; bytes:1
gbl_PCLATH_TEMP                  EQU	0x00000045 ; bytes:1
gbl_timer_on                     EQU	0x00000046 ; bytes:1
gbl_temp_on                      EQU	0x00000047 ; bytes:1
gbl_relay_on                     EQU	0x00000048 ; bytes:1
gbl_eeaddoffset                  EQU	0x00000049 ; bytes:1
gbl_cur_pos                      EQU	0x0000004A ; bytes:1
gbl_digit_100                    EQU	0x0000004B ; bytes:1
gbl_digit_10                     EQU	0x0000004C ; bytes:1
gbl_digit_1                      EQU	0x0000004D ; bytes:1
gbl_choice                       EQU	0x0000004E ; bytes:1
gbl_button_push                  EQU	0x0000004F ; bytes:1
gbl_button_release               EQU	0x00000050 ; bytes:1
gbl_long_push                    EQU	0x00000051 ; bytes:1
gbl_two_second_timer             EQU	0x0000003D ; bytes:2
gbl_update_flag                  EQU	0x00000052 ; bytes:1
gbl_menu_index                   EQU	0x00000053 ; bytes:1
gbl_state                        EQU	0x00000054 ; bytes:1
gbl_prev_state                   EQU	0x00000055 ; bytes:1
gbl_mode                         EQU	0x00000056 ; bytes:1
gbl_prev_mode                    EQU	0x00000057 ; bytes:1
gbl_set_mode                     EQU	0x00000058 ; bytes:1
gbl_timer_int                    EQU	0x00000059 ; bytes:1
gbl_temp_units                   EQU	0x0000005A ; bytes:1
gbl_relay_LED                    EQU	0x0000005B ; bytes:1
gbl_t_inc                        EQU	0x0000005C ; bytes:1
gbl_clock_cal                    EQU	0x0000005D ; bytes:1
gbl_tc                           EQU	0x0000005E ; bytes:1
delay_ms_00001_arg_x             EQU	0x0000005F ; bytes:2
delay_ms_00001_1_y               EQU	0x00000061 ; bytes:1
delay_ms_00001_1_z               EQU	0x00000062 ; bytes:1
LCD_wait_00000_1_i               EQU	0x00000078 ; bit:0
CompTempVar127                   EQU	0x00000064 ; bytes:17
CompTempVar128                   EQU	0x00000075 ; bytes:1
CompTempVar129                   EQU	0x00000064 ; bytes:17
CompTempVar130                   EQU	0x00000075 ; bytes:1
CompTempVarRet135                EQU	0x00000073 ; bytes:1
send_cmd_00000_arg_c             EQU	0x00000076 ; bytes:1
send_cmd_00000_arg_cmd           EQU	0x00000077 ; bytes:1
printf_lcd_00000_arg_nate        EQU	0x00000062 ; bytes:2
printf_lcd_00000_1_i             EQU	0x00000075 ; bytes:1
onboard_ee_00011_arg_e_address   EQU	0x00000072 ; bytes:1
onboard_ee_00012_arg_e_data      EQU	0x00000066 ; bytes:1
onboard_ee_00012_arg_e_address   EQU	0x00000067 ; bytes:1
onboard_ee_00012_1_temp_intcon   EQU	0x00000068 ; bit:0
mod_digit_00000_arg_value        EQU	0x00000062 ; bytes:1
mod_digit_00000_arg_direction    EQU	0x00000063 ; bytes:1
CompTempVarRet136                EQU	0x00000064 ; bytes:1
CompTempVarRet137                EQU	0x00000079 ; bytes:2
get_temp_00000_1_x               EQU	0x00000072 ; bytes:1
get_temp_00000_1_temperature     EQU	0x00000073 ; bytes:4
get_temp_00000_1_total           EQU	0x00000077 ; bytes:2
CompTempVar138                   EQU	0x00000079 ; bytes:1
CompTempVar139                   EQU	0x0000007A ; bytes:1
CompTempVar140                   EQU	0x0000007B ; bytes:1
CompTempVar141                   EQU	0x0000007C ; bytes:1
CompTempVar142                   EQU	0x0000007D ; bytes:1
CompTempVar143                   EQU	0x0000007E ; bytes:1
CompTempVar144                   EQU	0x000000A4 ; bytes:1
CompTempVar145                   EQU	0x000000A5 ; bytes:1
CompTempVar146                   EQU	0x0000007D ; bytes:1
CompTempVar147                   EQU	0x0000007E ; bytes:1
CompTempVar148                   EQU	0x000000A4 ; bytes:1
CompTempVar149                   EQU	0x000000A5 ; bytes:1
CompTempVar150                   EQU	0x00000079 ; bytes:1
put_edata_00000_arg_e_address    EQU	0x00000062 ; bytes:1
put_edata_00000_arg_value        EQU	0x00000063 ; bytes:2
put_edata_00000_1_e_data         EQU	0x00000065 ; bytes:1
get_edata_00000_arg_e_address    EQU	0x0000006D ; bytes:1
CompTempVarRet151                EQU	0x00000072 ; bytes:2
get_edata_00000_1_x              EQU	0x0000006E ; bytes:1
get_edata_00000_1_y              EQU	0x0000006F ; bytes:1
get_edata_00000_1_value          EQU	0x00000070 ; bytes:2
update_dis_00013_arg_value       EQU	0x00000066 ; bytes:2
update_dis_00013_arg_location    EQU	0x00000068 ; bytes:1
CompTempVarRet152                EQU	0x0000006C ; bytes:1
speed_butt_00015_arg_value       EQU	0x00000062 ; bytes:2
speed_butt_00015_arg_direction   EQU	0x00000064 ; bytes:1
speed_butt_00015_arg_disp_pos    EQU	0x00000065 ; bytes:1
CompTempVarRet155                EQU	0x00000066 ; bytes:2
CompTempVar156                   EQU	0x00000066 ; bytes:1
CompTempVar157                   EQU	0x00000067 ; bytes:1
CompTempVar158                   EQU	0x00000066 ; bytes:1
CompTempVar159                   EQU	0x00000067 ; bytes:1
CompTempVar160                   EQU	0x00000066 ; bytes:1
CompTempVar161                   EQU	0x00000067 ; bytes:1
CompTempVar162                   EQU	0x00000066 ; bytes:1
CompTempVar163                   EQU	0x00000067 ; bytes:1
CompTempVar164                   EQU	0x00000066 ; bytes:1
CompTempVar165                   EQU	0x00000067 ; bytes:1
CompTempVar166                   EQU	0x00000066 ; bytes:1
CompTempVar167                   EQU	0x00000067 ; bytes:1
bin2hex_00000_arg_x              EQU	0x00000069 ; bytes:1
CompTempVar153                   EQU	0x0000006A ; bytes:1
CompTempVar154                   EQU	0x0000006B ; bytes:1
init_state_00000_arg_timer       EQU	0x00000062 ; bytes:1
init_state_00000_arg_temp        EQU	0x00000063 ; bytes:1
serial_put_00016_arg_s_out       EQU	0x00000064 ; bytes:1
convert_in_00014_arg_value       EQU	0x00000069 ; bytes:2
serial_put_00017_arg_value       EQU	0x00000062 ; bytes:2
proj_value_00000_arg_x2          EQU	0x00000065 ; bytes:2
proj_value_00000_arg_x3          EQU	0x00000067 ; bytes:2
proj_value_00000_arg_y1          EQU	0x00000069 ; bytes:2
proj_value_00000_arg_y2          EQU	0x0000006B ; bytes:2
CompTempVarRet168                EQU	0x0000006F ; bytes:2
proj_value_00000_1_value         EQU	0x0000006D ; bytes:2
CompTempVar169                   EQU	0x00000073 ; bytes:1
CompTempVar170                   EQU	0x00000074 ; bytes:1
CompTempVar171                   EQU	0x00000079 ; bytes:1
CompTempVar172                   EQU	0x0000007A ; bytes:1
CompTempVar173                   EQU	0x0000007B ; bytes:1
CompTempVar174                   EQU	0x0000007C ; bytes:1
CompTempVar175                   EQU	0x0000007D ; bytes:1
CompTempVar176                   EQU	0x0000007E ; bytes:1
CompTempVar177                   EQU	0x000000A0 ; bytes:1
CompTempVar178                   EQU	0x000000AE ; bytes:1
CompTempVar179                   EQU	0x000000AF ; bytes:1
CompTempVar182                   EQU	0x0000005F ; bytes:1
CompTempVar183                   EQU	0x00000060 ; bytes:1
main_24_value                    EQU	0x00000061 ; bytes:1
CompTempVar186                   EQU	0x00000062 ; bytes:1
CompTempVar187                   EQU	0x00000063 ; bytes:1
CompTempVar190                   EQU	0x00000062 ; bytes:1
CompTempVar191                   EQU	0x00000063 ; bytes:1
CompTempVar194                   EQU	0x00000062 ; bytes:1
CompTempVar195                   EQU	0x00000063 ; bytes:1
CompTempVar196                   EQU	0x00000064 ; bytes:6
CompTempVar197                   EQU	0x0000006A ; bytes:1
CompTempVar198                   EQU	0x00000064 ; bytes:17
CompTempVar199                   EQU	0x00000075 ; bytes:1
CompTempVar200                   EQU	0x00000064 ; bytes:10
CompTempVar201                   EQU	0x0000006E ; bytes:1
CompTempVar202                   EQU	0x00000064 ; bytes:10
CompTempVar203                   EQU	0x0000006E ; bytes:1
CompTempVar204                   EQU	0x00000064 ; bytes:10
CompTempVar205                   EQU	0x0000006E ; bytes:1
CompTempVar206                   EQU	0x00000064 ; bytes:10
CompTempVar207                   EQU	0x0000006E ; bytes:1
CompTempVar208                   EQU	0x00000064 ; bytes:10
CompTempVar209                   EQU	0x0000006E ; bytes:1
CompTempVar210                   EQU	0x00000064 ; bytes:16
CompTempVar211                   EQU	0x00000074 ; bytes:1
CompTempVar212                   EQU	0x00000064 ; bytes:17
CompTempVar213                   EQU	0x00000075 ; bytes:1
CompTempVar214                   EQU	0x00000064 ; bytes:2
CompTempVar215                   EQU	0x00000066 ; bytes:1
CompTempVar216                   EQU	0x00000064 ; bytes:2
CompTempVar217                   EQU	0x00000066 ; bytes:1
CompTempVar218                   EQU	0x00000064 ; bytes:4
CompTempVar219                   EQU	0x00000068 ; bytes:1
CompTempVar220                   EQU	0x00000064 ; bytes:6
CompTempVar221                   EQU	0x0000006A ; bytes:1
CompTempVar222                   EQU	0x00000064 ; bytes:4
CompTempVar223                   EQU	0x00000068 ; bytes:1
CompTempVar224                   EQU	0x00000064 ; bytes:6
CompTempVar225                   EQU	0x0000006A ; bytes:1
CompTempVar226                   EQU	0x00000064 ; bytes:11
CompTempVar227                   EQU	0x0000006F ; bytes:1
CompTempVar228                   EQU	0x00000064 ; bytes:5
CompTempVar229                   EQU	0x00000069 ; bytes:1
CompTempVar230                   EQU	0x00000064 ; bytes:17
CompTempVar231                   EQU	0x00000075 ; bytes:1
CompTempVar232                   EQU	0x00000064 ; bytes:11
CompTempVar233                   EQU	0x0000006F ; bytes:1
CompTempVar234                   EQU	0x00000064 ; bytes:5
CompTempVar235                   EQU	0x00000069 ; bytes:1
CompTempVar236                   EQU	0x00000064 ; bytes:17
CompTempVar237                   EQU	0x00000075 ; bytes:1
CompTempVar238                   EQU	0x00000064 ; bytes:17
CompTempVar239                   EQU	0x00000075 ; bytes:1
CompTempVar240                   EQU	0x00000064 ; bytes:2
CompTempVar241                   EQU	0x00000066 ; bytes:1
CompTempVar242                   EQU	0x00000062 ; bytes:1
CompTempVar243                   EQU	0x00000063 ; bytes:1
CompTempVar244                   EQU	0x00000064 ; bytes:1
CompTempVar245                   EQU	0x00000065 ; bytes:1
CompTempVar246                   EQU	0x00000066 ; bytes:1
CompTempVar248                   EQU	0x0000006D ; bytes:1
CompTempVar249                   EQU	0x0000006E ; bytes:1
CompTempVar250                   EQU	0x0000006F ; bytes:1
CompTempVar254                   EQU	0x0000006D ; bytes:1
CompTempVar255                   EQU	0x0000006E ; bytes:1
CompTempVar256                   EQU	0x0000006F ; bytes:1
CompTempVar257                   EQU	0x00000070 ; bytes:1
CompTempVar258                   EQU	0x00000071 ; bytes:1
CompTempVar259                   EQU	0x0000006B ; bytes:1
CompTempVar260                   EQU	0x0000006C ; bytes:1
CompTempVar261                   EQU	0x0000006D ; bytes:1
CompTempVar262                   EQU	0x0000006E ; bytes:1
CompTempVar263                   EQU	0x0000006F ; bytes:1
CompTempVar264                   EQU	0x00000070 ; bytes:1
CompTempVar265                   EQU	0x00000071 ; bytes:1
CompTempVar266                   EQU	0x00000065 ; bytes:1
CompTempVar267                   EQU	0x00000066 ; bytes:1
CompTempVar268                   EQU	0x00000067 ; bytes:1
CompTempVar269                   EQU	0x00000068 ; bytes:1
CompTempVar270                   EQU	0x00000069 ; bytes:1
CompTempVar271                   EQU	0x0000006A ; bytes:1
CompTempVar272                   EQU	0x00000065 ; bytes:1
CompTempVar273                   EQU	0x00000064 ; bytes:2
CompTempVar274                   EQU	0x00000066 ; bytes:1
CompTempVar275                   EQU	0x00000064 ; bytes:2
CompTempVar276                   EQU	0x00000066 ; bytes:1
CompTempVar277                   EQU	0x00000064 ; bytes:2
CompTempVar278                   EQU	0x00000066 ; bytes:1
CompTempVar279                   EQU	0x00000062 ; bytes:1
CompTempVar280                   EQU	0x00000063 ; bytes:1
CompTempVar281                   EQU	0x00000064 ; bytes:17
CompTempVar282                   EQU	0x00000075 ; bytes:1
CompTempVar283                   EQU	0x00000064 ; bytes:3
CompTempVar284                   EQU	0x00000067 ; bytes:1
CompTempVar285                   EQU	0x00000062 ; bytes:1
CompTempVar286                   EQU	0x00000063 ; bytes:1
CompTempVar287                   EQU	0x00000062 ; bytes:1
CompTempVar288                   EQU	0x00000063 ; bytes:1
CompTempVar289                   EQU	0x00000062 ; bytes:1
CompTempVar290                   EQU	0x00000063 ; bytes:1
CompTempVar291                   EQU	0x00000064 ; bytes:1
CompTempVar292                   EQU	0x00000065 ; bytes:1
CompTempVar293                   EQU	0x00000064 ; bytes:17
CompTempVar294                   EQU	0x00000075 ; bytes:1
CompTempVar295                   EQU	0x00000064 ; bytes:17
CompTempVar296                   EQU	0x00000075 ; bytes:1
CompTempVar297                   EQU	0x00000064 ; bytes:16
CompTempVar298                   EQU	0x00000074 ; bytes:1
CompTempVar299                   EQU	0x00000064 ; bytes:13
CompTempVar300                   EQU	0x00000071 ; bytes:1
CompTempVar301                   EQU	0x00000064 ; bytes:5
CompTempVar302                   EQU	0x00000069 ; bytes:1
CompTempVar303                   EQU	0x00000064 ; bytes:5
CompTempVar304                   EQU	0x00000069 ; bytes:1
CompTempVar305                   EQU	0x00000064 ; bytes:17
CompTempVar306                   EQU	0x00000075 ; bytes:1
CompTempVar307                   EQU	0x00000064 ; bytes:17
CompTempVar308                   EQU	0x00000075 ; bytes:1
__div_32_3_00001_arg_a           EQU	0x00000079 ; bytes:4
__div_32_3_00001_arg_b           EQU	0x000000A0 ; bytes:4
CompTempVarRet309                EQU	0x000000A8 ; bytes:4
__div_32_3_00001_1_r             EQU	0x000000A4 ; bytes:4
__div_32_3_00001_1_i             EQU	0x0000007D ; bytes:1
__div_16_1_00003_arg_a           EQU	0x00000075 ; bytes:2
__div_16_1_00003_arg_b           EQU	0x00000077 ; bytes:2
CompTempVarRet313                EQU	0x000000A4 ; bytes:2
__div_16_1_00003_1_r             EQU	0x000000A1 ; bytes:2
__div_16_1_00003_1_i             EQU	0x000000A3 ; bytes:1
__rem_16_1_00004_arg_a           EQU	0x0000006B ; bytes:2
__rem_16_1_00004_arg_b           EQU	0x0000006D ; bytes:2
CompTempVarRet315                EQU	0x00000072 ; bytes:2
__rem_16_1_00004_1_c             EQU	0x0000006F ; bytes:2
__rem_16_1_00004_1_i             EQU	0x00000071 ; bytes:1
__div_8_8_00000_arg_a            EQU	0x00000065 ; bytes:1
__div_8_8_00000_arg_b            EQU	0x00000066 ; bytes:1
CompTempVarRet317                EQU	0x00000074 ; bytes:1
__div_8_8_00000_1_r              EQU	0x00000072 ; bytes:1
__div_8_8_00000_1_i              EQU	0x00000073 ; bytes:1
__mul_8u_8_00006_arg_a           EQU	0x000000AC ; bytes:1
__mul_8u_8_00006_arg_b           EQU	0x000000AD ; bytes:1
CompTempVarRet551                EQU	0x000000B3 ; bytes:2
__mul_8u_8_00006_1_i             EQU	0x000000B0 ; bytes:1
__mul_8u_8_00006_1_t             EQU	0x000000B1 ; bytes:2
__mul_16u__0000C_arg_a           EQU	0x00000067 ; bytes:2
__mul_16u__0000C_arg_b           EQU	0x00000069 ; bytes:2
CompTempVarRet554                EQU	0x00000075 ; bytes:2
__mul_16u__0000C_1_i             EQU	0x00000072 ; bytes:1
__mul_16u__0000C_1_t             EQU	0x00000073 ; bytes:2
__mul_16s__0000E_arg_a           EQU	0x0000006F ; bytes:2
__mul_16s__0000E_arg_b           EQU	0x00000071 ; bytes:2
CompTempVarRet560                EQU	0x000000A3 ; bytes:2
__mul_16s__0000E_1_i             EQU	0x000000A0 ; bytes:1
__mul_16s__0000E_1_t             EQU	0x000000A1 ; bytes:2
__mul_32u__0000F_arg_a           EQU	0x00000079 ; bytes:4
__mul_32u__0000F_arg_b           EQU	0x000000A0 ; bytes:4
CompTempVarRet563                EQU	0x000000A7 ; bytes:4
__mul_32u__0000F_1_i             EQU	0x000000A6 ; bytes:1
delay_ms_00000_arg_del           EQU	0x00000079 ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000020 ; bytes:3
	ORG 0x00000000
	BSF PCLATH,3
	GOTO	_startup
	ORG 0x00000004
	MOVWF Int1Context
	SWAPF STATUS, W
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF Int1BContext
	SWAPF PCLATH, W
	MOVWF Int1BContext+D'1'
	SWAPF FSR, W
	MOVWF Int1BContext+D'2'
	BSF PCLATH,3
	BCF PCLATH,4
	GOTO	interrupt
	ORG 0x00000010
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label1
	RETURN
label1
	MOVLW 0xF9
label2
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label2
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label1
	RETURN
; } delay_ms function end

	ORG 0x0000001C
delay_ms_00001
; { delay_ms ; function begin
label3
	MOVF delay_ms_00001_arg_x, W
	SUBLW 0x00
	BTFSC STATUS,C
	MOVF delay_ms_00001_arg_x+D'1', W
	BTFSC STATUS,Z
	RETURN
	CLRF delay_ms_00001_1_y
label4
	MOVLW 0x04
	SUBWF delay_ms_00001_1_y, W
	BTFSC STATUS,C
	GOTO	label7
	CLRF delay_ms_00001_1_z
label5
	MOVLW 0x45
	SUBWF delay_ms_00001_1_z, W
	BTFSC STATUS,C
	GOTO	label6
	INCF delay_ms_00001_1_z, F
	GOTO	label5
label6
	INCF delay_ms_00001_1_y, F
	GOTO	label4
label7
	MOVF delay_ms_00001_arg_x, F
	BTFSC STATUS,Z
	DECF delay_ms_00001_arg_x+D'1', F
	DECF delay_ms_00001_arg_x, F
	GOTO	label3
; } delay_ms function end

	ORG 0x00000035
int_save_r_00019
; { int_save_registers ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_W_TEMP
	MOVF gbl_status, W
	CLRF gbl_status
	MOVWF gbl_STATUS_TEMP
	MOVF gbl_pclath, W
	MOVWF gbl_PCLATH_TEMP
	CLRF gbl_pclath
	RETURN
; } int_save_registers function end

	ORG 0x0000003F
int_restor_0001A
; { int_restore_registers ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_PCLATH_TEMP, W
	MOVWF gbl_pclath
	MOVF gbl_STATUS_TEMP, W
	MOVWF gbl_status
	MOVF gbl_W_TEMP, W
	RETURN
; } int_restore_registers function end

	ORG 0x00000047
__mul_8u_8_00006
; { __mul_8u_8u ; function begin
	CLRF __mul_8u_8_00006_1_i
	CLRF CompTempVarRet551
	CLRF CompTempVarRet551+D'1'
	MOVF __mul_8u_8_00006_arg_a, W
	MOVWF __mul_8u_8_00006_1_t
	CLRF __mul_8u_8_00006_1_t+D'1'
label8
	BTFSC __mul_8u_8_00006_1_i,3
	RETURN
	BTFSS __mul_8u_8_00006_arg_b,0
	GOTO	label9
	MOVF __mul_8u_8_00006_1_t, W
	ADDWF CompTempVarRet551, F
	BTFSC gbl_status,0
	INCF CompTempVarRet551+D'1', F
	MOVF __mul_8u_8_00006_1_t+D'1', W
	ADDWF CompTempVarRet551+D'1', F
label9
	RRF __mul_8u_8_00006_arg_b, F
	BCF gbl_status,0
	RLF __mul_8u_8_00006_1_t, F
	RLF __mul_8u_8_00006_1_t+D'1', F
	INCF __mul_8u_8_00006_1_i, F
	GOTO	label8
; } __mul_8u_8u function end

	ORG 0x0000005D
__rem_16_1_00004
; { __rem_16_16 ; function begin
	CLRF CompTempVarRet315
	CLRF CompTempVarRet315+D'1'
	CLRF __rem_16_1_00004_1_c
	CLRF __rem_16_1_00004_1_c+D'1'
	CLRF __rem_16_1_00004_1_i
label10
	BTFSC __rem_16_1_00004_1_i,4
	RETURN
	BCF STATUS,C
	RLF __rem_16_1_00004_1_c, F
	RLF __rem_16_1_00004_1_c+D'1', F
	RLF __rem_16_1_00004_arg_a, F
	RLF __rem_16_1_00004_arg_a+D'1', F
	RLF CompTempVarRet315, F
	RLF CompTempVarRet315+D'1', F
	MOVF __rem_16_1_00004_arg_b+D'1', W
	SUBWF CompTempVarRet315+D'1', W
	BTFSS STATUS,Z
	GOTO	label11
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet315, W
label11
	BTFSS STATUS,C
	GOTO	label12
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet315, F
	MOVF __rem_16_1_00004_arg_b+D'1', W
	BTFSS STATUS,C
	DECF CompTempVarRet315+D'1', F
	SUBWF CompTempVarRet315+D'1', F
	BSF __rem_16_1_00004_1_c,0
label12
	INCF __rem_16_1_00004_1_i, F
	GOTO	label10
; } __rem_16_16 function end

	ORG 0x0000007C
__div_16_1_00003
; { __div_16_16 ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF __div_16_1_00003_1_r
	CLRF __div_16_1_00003_1_r+D'1'
	CLRF CompTempVarRet313
	CLRF CompTempVarRet313+D'1'
	CLRF __div_16_1_00003_1_i
label13
	BTFSC __div_16_1_00003_1_i,4
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet313, F
	RLF CompTempVarRet313+D'1', F
	RLF __div_16_1_00003_arg_a, F
	RLF __div_16_1_00003_arg_a+D'1', F
	RLF __div_16_1_00003_1_r, F
	RLF __div_16_1_00003_1_r+D'1', F
	MOVF __div_16_1_00003_arg_b+D'1', W
	SUBWF __div_16_1_00003_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label14
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, W
label14
	BTFSS STATUS,C
	GOTO	label15
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, F
	MOVF __div_16_1_00003_arg_b+D'1', W
	BTFSS STATUS,C
	DECF __div_16_1_00003_1_r+D'1', F
	SUBWF __div_16_1_00003_1_r+D'1', F
	BSF CompTempVarRet313,0
label15
	INCF __div_16_1_00003_1_i, F
	GOTO	label13
; } __div_16_16 function end

	ORG 0x0000009D
LCD_wait_00000
; { LCD_wait ; function begin
	BSF LCD_wait_00000_1_i,0
	MOVLW 0x1F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_trisa
	BCF STATUS, RP0
	BSF gbl_porta,6
	BCF gbl_portb,6
label16
	BTFSS LCD_wait_00000_1_i,0
	GOTO	label17
	BSF gbl_porta,7
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF LCD_wait_00000_1_i,0
	BTFSC gbl_porta,3
	BSF LCD_wait_00000_1_i,0
	BCF gbl_porta,7
	BSF gbl_porta,7
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_porta,7
	GOTO	label16
label17
	MOVLW 0x10
	BSF STATUS, RP0
	MOVWF gbl_trisa
	RETURN
; } LCD_wait function end

	ORG 0x000000B9
send_cmd_00000
; { send_cmd ; function begin
	CALL LCD_wait_00000
	BCF STATUS, RP0
	BCF gbl_porta,6
	BCF gbl_porta,7
	DECF send_cmd_00000_arg_cmd, W
	BTFSS STATUS,Z
	GOTO	label18
	BCF gbl_portb,6
	GOTO	label19
label18
	BSF gbl_portb,6
label19
	BTFSC send_cmd_00000_arg_c,7
	BSF gbl_porta,3
	BTFSS send_cmd_00000_arg_c,7
	BCF gbl_porta,3
	BTFSC send_cmd_00000_arg_c,6
	BSF gbl_porta,2
	BTFSS send_cmd_00000_arg_c,6
	BCF gbl_porta,2
	BTFSC send_cmd_00000_arg_c,5
	BSF gbl_porta,1
	BTFSS send_cmd_00000_arg_c,5
	BCF gbl_porta,1
	BTFSC send_cmd_00000_arg_c,4
	BSF gbl_porta,0
	BTFSS send_cmd_00000_arg_c,4
	BCF gbl_porta,0
	BSF gbl_porta,7
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_porta,7
	BTFSC send_cmd_00000_arg_c,3
	BSF gbl_porta,3
	BTFSS send_cmd_00000_arg_c,3
	BCF gbl_porta,3
	BTFSC send_cmd_00000_arg_c,2
	BSF gbl_porta,2
	BTFSS send_cmd_00000_arg_c,2
	BCF gbl_porta,2
	BTFSC send_cmd_00000_arg_c,1
	BSF gbl_porta,1
	BTFSS send_cmd_00000_arg_c,1
	BCF gbl_porta,1
	BTFSC send_cmd_00000_arg_c,0
	BSF gbl_porta,0
	BTFSS send_cmd_00000_arg_c,0
	BCF gbl_porta,0
	BSF gbl_porta,7
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_porta,7
	RETURN
; } send_cmd function end

	ORG 0x000000EE
convert_in_00014
; { convert_int ; function begin
	MOVF convert_in_00014_arg_value, W
	MOVWF __div_16_1_00003_arg_a
	MOVF convert_in_00014_arg_value+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	MOVLW 0x64
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet313, W
	BCF STATUS, RP0
	MOVWF gbl_digit_100
	MOVF convert_in_00014_arg_value, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF convert_in_00014_arg_value+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	MOVLW 0x64
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet315, W
	MOVWF convert_in_00014_arg_value
	MOVF CompTempVarRet315+D'1', W
	MOVWF convert_in_00014_arg_value+D'1'
	MOVF convert_in_00014_arg_value, W
	MOVWF __div_16_1_00003_arg_a
	MOVF convert_in_00014_arg_value+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	MOVLW 0x0A
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet313, W
	BCF STATUS, RP0
	MOVWF gbl_digit_10
	MOVF convert_in_00014_arg_value, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF convert_in_00014_arg_value+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	MOVLW 0x0A
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet315, W
	MOVWF convert_in_00014_arg_value
	MOVF CompTempVarRet315+D'1', W
	MOVWF convert_in_00014_arg_value+D'1'
	MOVF convert_in_00014_arg_value, W
	MOVWF gbl_digit_1
	RETURN
; } convert_int function end

	ORG 0x0000011F
bin2hex_00000
; { bin2hex ; function begin
	CLRF CompTempVar153
	MOVLW 0x00
	SUBWF bin2hex_00000_arg_x, W
	BTFSC STATUS,C
	INCF CompTempVar153, F
	MOVF CompTempVar153, W
	SUBLW 0x09
	BTFSS STATUS,C
	GOTO	label20
	MOVLW 0x30
	ADDWF bin2hex_00000_arg_x, W
	MOVWF CompTempVarRet152
	RETURN
label20
	CLRF CompTempVar154
	MOVLW 0x0A
	SUBWF bin2hex_00000_arg_x, W
	BTFSC STATUS,C
	INCF CompTempVar154, F
	MOVF CompTempVar154, W
	SUBLW 0x0F
	BTFSS STATUS,C
	GOTO	label21
	MOVLW 0x37
	ADDWF bin2hex_00000_arg_x, W
	MOVWF CompTempVarRet152
	RETURN
label21
	MOVLW 0x3F
	MOVWF CompTempVarRet152
	RETURN
; } bin2hex function end

	ORG 0x0000013C
update_dis_00013
; { update_display ; function begin
	MOVF update_dis_00013_arg_value, W
	MOVWF convert_in_00014_arg_value
	MOVF update_dis_00013_arg_value+D'1', W
	MOVWF convert_in_00014_arg_value+D'1'
	CALL convert_in_00014
	MOVF update_dis_00013_arg_location, W
	ADDLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_digit_100, F
	BTFSS STATUS,Z
	GOTO	label22
	MOVLW 0x20
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label23
label22
	MOVF gbl_digit_100, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
label23
	MOVF gbl_digit_100, F
	BTFSS STATUS,Z
	GOTO	label24
	MOVF gbl_digit_10, F
	BTFSS STATUS,Z
	GOTO	label24
	MOVLW 0x20
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label25
label24
	MOVF gbl_digit_10, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
label25
	MOVF gbl_digit_1, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	RETURN
; } update_display function end

	ORG 0x00000170
serial_put_00016
; { serial_putchar ; function begin
label26
	BTFSS gbl_pir1,4
	GOTO	label26
	MOVF serial_put_00016_arg_s_out, W
	MOVWF gbl_txreg
	RETURN
; } serial_putchar function end

	ORG 0x00000175
printf_lcd_00000
; { printf_lcd ; function begin
	CLRF printf_lcd_00000_1_i
label27
	BCF STATUS,IRP
	BTFSC printf_lcd_00000_arg_nate+D'1',0
	BSF STATUS,IRP
	MOVF printf_lcd_00000_arg_nate, W
	ADDWF printf_lcd_00000_1_i, W
	MOVWF FSR
	MOVF INDF, F
	BTFSC STATUS,Z
	RETURN
	BCF STATUS,IRP
	BTFSC printf_lcd_00000_arg_nate+D'1',0
	BSF STATUS,IRP
	MOVF printf_lcd_00000_arg_nate, W
	ADDWF printf_lcd_00000_1_i, W
	MOVWF FSR
	MOVF INDF, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	INCF printf_lcd_00000_1_i, F
	GOTO	label27
; } printf_lcd function end

	ORG 0x0000018B
onboard_ee_00012
; { onboard_eewrite ; function begin
	BCF onboard_ee_00012_1_temp_intcon,0
	BTFSC gbl_intcon,7
	BSF onboard_ee_00012_1_temp_intcon,0
	BSF STATUS, RP0
	BSF STATUS, RP1
	BCF gbl_eecon1,7
	BCF gbl_eecon1,4
	BCF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_pir2,4
	MOVF onboard_ee_00012_arg_e_address, W
	BSF STATUS, RP1
	MOVWF gbl_eeadr
	BCF STATUS, RP1
	MOVF onboard_ee_00012_arg_e_data, W
	BSF STATUS, RP1
	MOVWF gbl_eedata
	BSF STATUS, RP0
	BSF gbl_eecon1,2
	BCF gbl_intcon,7
	MOVLW 0x55
	MOVWF gbl_eecon2
	MOVLW 0xAA
	MOVWF gbl_eecon2
	BSF gbl_eecon1,1
label28
	BCF STATUS, RP0
	BCF STATUS, RP1
	BTFSS gbl_pir2,4
	GOTO	label28
	BCF gbl_pir2,4
	BSF STATUS, RP0
	BSF STATUS, RP1
	BCF gbl_eecon1,2
	BCF STATUS, RP0
	BCF STATUS, RP1
	BTFSC onboard_ee_00012_1_temp_intcon,0
	BSF gbl_intcon,7
	BTFSS onboard_ee_00012_1_temp_intcon,0
	BCF gbl_intcon,7
	RETURN
; } onboard_eewrite function end

	ORG 0x000001B3
onboard_ee_00011
; { onboard_eeread ; function begin
	BSF STATUS, RP0
	BSF STATUS, RP1
	BCF gbl_eecon1,7
	MOVF onboard_ee_00011_arg_e_address, W
	BCF STATUS, RP0
	MOVWF gbl_eeadr
	BSF STATUS, RP0
	BSF gbl_eecon1,0
	BCF STATUS, RP0
	MOVF gbl_eedata, W
	MOVWF CompTempVarRet135
	RETURN
; } onboard_eeread function end

	ORG 0x000001BF
init_lcd_00000
; { init_lcd ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_portb,6
	BCF gbl_porta,6
	BCF gbl_porta,7
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x03
	MOVWF gbl_porta
	BSF gbl_porta,7
	BCF gbl_porta,7
	MOVLW 0x0A
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x03
	MOVWF gbl_porta
	BSF gbl_porta,7
	BCF gbl_porta,7
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x32
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x28
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x0C
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_c
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	RETURN
; } init_lcd function end

	ORG 0x000001E9
__mul_32u__0000F
; { __mul_32u_32u ; function begin
	CLRF __mul_32u__0000F_1_i
	CLRF CompTempVarRet563
	CLRF CompTempVarRet563+D'1'
	CLRF CompTempVarRet563+D'2'
	CLRF CompTempVarRet563+D'3'
label29
	BTFSC __mul_32u__0000F_1_i,5
	RETURN
	BTFSS __mul_32u__0000F_arg_b,0
	GOTO	label30
	MOVF __mul_32u__0000F_arg_a, W
	ADDWF CompTempVarRet563, F
	MOVF __mul_32u__0000F_arg_a+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_32u__0000F_arg_a+D'1', W
	ADDWF CompTempVarRet563+D'1', F
	MOVF __mul_32u__0000F_arg_a+D'2', W
	BTFSC gbl_status,0
	INCFSZ __mul_32u__0000F_arg_a+D'2', W
	ADDWF CompTempVarRet563+D'2', F
	MOVF __mul_32u__0000F_arg_a+D'3', W
	BTFSC gbl_status,0
	INCFSZ __mul_32u__0000F_arg_a+D'3', W
	ADDWF CompTempVarRet563+D'3', F
label30
	BCF gbl_status,0
	RRF __mul_32u__0000F_arg_b+D'3', F
	RRF __mul_32u__0000F_arg_b+D'2', F
	RRF __mul_32u__0000F_arg_b+D'1', F
	RRF __mul_32u__0000F_arg_b, F
	BCF gbl_status,0
	RLF __mul_32u__0000F_arg_a, F
	RLF __mul_32u__0000F_arg_a+D'1', F
	RLF __mul_32u__0000F_arg_a+D'2', F
	RLF __mul_32u__0000F_arg_a+D'3', F
	INCF __mul_32u__0000F_1_i, F
	GOTO	label29
; } __mul_32u_32u function end

	ORG 0x0000020C
__mul_16s__0000E
; { __mul_16s_16s__16 ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF __mul_16s__0000E_1_i
	CLRF CompTempVarRet560
	CLRF CompTempVarRet560+D'1'
	BCF STATUS, RP0
	MOVF __mul_16s__0000E_arg_a, W
	BSF STATUS, RP0
	MOVWF __mul_16s__0000E_1_t
	MOVF __mul_16s__0000E_arg_a+D'1', W
	MOVWF __mul_16s__0000E_1_t+D'1'
	BTFSS __mul_16s__0000E_arg_b+D'1',7
	GOTO	label31
	BSF __mul_16s__0000E_1_i,7
	COMF __mul_16s__0000E_arg_b, F
	COMF __mul_16s__0000E_arg_b+D'1', F
	INCF __mul_16s__0000E_arg_b, F
	BTFSC gbl_status,2
	INCF __mul_16s__0000E_arg_b+D'1', F
label31
	BTFSC __mul_16s__0000E_1_i,4
	GOTO	label33
	BTFSS __mul_16s__0000E_arg_b,0
	GOTO	label32
	MOVF __mul_16s__0000E_1_t, W
	ADDWF CompTempVarRet560, F
	MOVF __mul_16s__0000E_1_t+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_16s__0000E_1_t+D'1', W
	ADDWF CompTempVarRet560+D'1', F
label32
	BCF gbl_status,0
	RRF __mul_16s__0000E_arg_b+D'1', F
	RRF __mul_16s__0000E_arg_b, F
	BCF gbl_status,0
	RLF __mul_16s__0000E_1_t, F
	RLF __mul_16s__0000E_1_t+D'1', F
	INCF __mul_16s__0000E_1_i, F
	GOTO	label31
label33
	BTFSS __mul_16s__0000E_1_i,7
	RETURN
	COMF CompTempVarRet560, F
	COMF CompTempVarRet560+D'1', F
	INCF CompTempVarRet560, F
	BTFSC gbl_status,2
	INCF CompTempVarRet560+D'1', F
	RETURN
; } __mul_16s_16s__16 function end

	ORG 0x00000239
__div_32_3_00001
; { __div_32_32 ; function begin
	CLRF __div_32_3_00001_1_r
	CLRF __div_32_3_00001_1_r+D'1'
	CLRF __div_32_3_00001_1_r+D'2'
	CLRF __div_32_3_00001_1_r+D'3'
	CLRF CompTempVarRet309
	CLRF CompTempVarRet309+D'1'
	CLRF CompTempVarRet309+D'2'
	CLRF CompTempVarRet309+D'3'
	CLRF __div_32_3_00001_1_i
label34
	BTFSC __div_32_3_00001_1_i,5
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet309, F
	RLF CompTempVarRet309+D'1', F
	RLF CompTempVarRet309+D'2', F
	RLF CompTempVarRet309+D'3', F
	RLF __div_32_3_00001_arg_a, F
	RLF __div_32_3_00001_arg_a+D'1', F
	RLF __div_32_3_00001_arg_a+D'2', F
	RLF __div_32_3_00001_arg_a+D'3', F
	RLF __div_32_3_00001_1_r, F
	RLF __div_32_3_00001_1_r+D'1', F
	RLF __div_32_3_00001_1_r+D'2', F
	RLF __div_32_3_00001_1_r+D'3', F
	MOVF __div_32_3_00001_arg_b+D'3', W
	SUBWF __div_32_3_00001_1_r+D'3', W
	BTFSS STATUS,Z
	GOTO	label35
	MOVF __div_32_3_00001_arg_b+D'2', W
	SUBWF __div_32_3_00001_1_r+D'2', W
	BTFSS STATUS,Z
	GOTO	label35
	MOVF __div_32_3_00001_arg_b+D'1', W
	SUBWF __div_32_3_00001_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label35
	MOVF __div_32_3_00001_arg_b, W
	SUBWF __div_32_3_00001_1_r, W
label35
	BTFSS STATUS,C
	GOTO	label36
	MOVF __div_32_3_00001_arg_b, W
	SUBWF __div_32_3_00001_1_r, F
	MOVF __div_32_3_00001_arg_b+D'1', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00001_arg_b+D'1', W
	SUBWF __div_32_3_00001_1_r+D'1', F
	MOVF __div_32_3_00001_arg_b+D'2', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00001_arg_b+D'2', W
	SUBWF __div_32_3_00001_1_r+D'2', F
	MOVF __div_32_3_00001_arg_b+D'3', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00001_arg_b+D'3', W
	SUBWF __div_32_3_00001_1_r+D'3', F
	BSF CompTempVarRet309,0
label36
	INCF __div_32_3_00001_1_i, F
	GOTO	label34
; } __div_32_32 function end

	ORG 0x00000272
speed_butt_00015
; { speed_button ; function begin
	MOVF speed_butt_00015_arg_direction, W
	XORLW 0x75
	BTFSS STATUS,Z
	GOTO	label42
	MOVF gbl_t_inc, W
	MOVWF CompTempVar156
	CLRF CompTempVar157
	INCF CompTempVar156, F
	BTFSC STATUS,Z
	INCF CompTempVar157, F
	MOVF CompTempVar156, W
	ADDWF speed_butt_00015_arg_value, F
	MOVF CompTempVar157, W
	BTFSC STATUS,C
	INCF speed_butt_00015_arg_value+D'1', F
	ADDWF speed_butt_00015_arg_value+D'1', F
	MOVF speed_butt_00015_arg_value+D'1', W
	SUBLW 0x03
	BTFSS STATUS,Z
	GOTO	label37
	MOVF speed_butt_00015_arg_value, W
	SUBLW 0xE7
label37
	BTFSC STATUS,C
	GOTO	label38
	MOVF gbl_t_inc, W
	MOVWF CompTempVar158
	CLRF CompTempVar159
	INCF CompTempVar158, F
	BTFSC STATUS,Z
	INCF CompTempVar159, F
	MOVF CompTempVar158, W
	MOVWF speed_butt_00015_arg_value
	MOVF CompTempVar159, W
	MOVWF speed_butt_00015_arg_value+D'1'
label38
	MOVF speed_butt_00015_arg_value, W
	MOVWF update_dis_00013_arg_value
	MOVF speed_butt_00015_arg_value+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVF speed_butt_00015_arg_disp_pos, W
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
label39
	BTFSC gbl_portb,0
	GOTO	label42
	MOVF gbl_t_inc, W
	MOVWF CompTempVar160
	CLRF CompTempVar161
	INCF CompTempVar160, F
	BTFSC STATUS,Z
	INCF CompTempVar161, F
	MOVF CompTempVar160, W
	ADDWF speed_butt_00015_arg_value, F
	MOVF CompTempVar161, W
	BTFSC STATUS,C
	INCF speed_butt_00015_arg_value+D'1', F
	ADDWF speed_butt_00015_arg_value+D'1', F
	MOVF speed_butt_00015_arg_value+D'1', W
	SUBLW 0x03
	BTFSS STATUS,Z
	GOTO	label40
	MOVF speed_butt_00015_arg_value, W
	SUBLW 0xE7
label40
	BTFSC STATUS,C
	GOTO	label41
	MOVF gbl_t_inc, W
	MOVWF CompTempVar162
	CLRF CompTempVar163
	INCF CompTempVar162, F
	BTFSC STATUS,Z
	INCF CompTempVar163, F
	MOVF CompTempVar162, W
	MOVWF speed_butt_00015_arg_value
	MOVF CompTempVar163, W
	MOVWF speed_butt_00015_arg_value+D'1'
label41
	MOVF speed_butt_00015_arg_value, W
	MOVWF update_dis_00013_arg_value
	MOVF speed_butt_00015_arg_value+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVF speed_butt_00015_arg_disp_pos, W
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	GOTO	label39
label42
	MOVF speed_butt_00015_arg_direction, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label48
	MOVF speed_butt_00015_arg_value, W
	SUBLW 0x00
	MOVF speed_butt_00015_arg_value+D'1', W
	BTFSS STATUS,C
	GOTO	label43
	BTFSS STATUS,Z
	GOTO	label43
	MOVLW 0xE7
	MOVWF speed_butt_00015_arg_value
	MOVLW 0x03
	MOVWF speed_butt_00015_arg_value+D'1'
	GOTO	label44
label43
	MOVF gbl_t_inc, W
	MOVWF CompTempVar164
	CLRF CompTempVar165
	INCF CompTempVar164, F
	BTFSC STATUS,Z
	INCF CompTempVar165, F
	MOVF CompTempVar164, W
	SUBWF speed_butt_00015_arg_value, F
	MOVF CompTempVar165, W
	BTFSS STATUS,C
	DECF speed_butt_00015_arg_value+D'1', F
	SUBWF speed_butt_00015_arg_value+D'1', F
label44
	MOVF speed_butt_00015_arg_value, W
	MOVWF update_dis_00013_arg_value
	MOVF speed_butt_00015_arg_value+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVF speed_butt_00015_arg_disp_pos, W
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
label45
	BTFSC gbl_portb,1
	GOTO	label48
	MOVF speed_butt_00015_arg_value, W
	SUBLW 0x00
	MOVF speed_butt_00015_arg_value+D'1', W
	BTFSS STATUS,C
	GOTO	label46
	BTFSS STATUS,Z
	GOTO	label46
	MOVLW 0xE7
	MOVWF speed_butt_00015_arg_value
	MOVLW 0x03
	MOVWF speed_butt_00015_arg_value+D'1'
	GOTO	label47
label46
	MOVF gbl_t_inc, W
	MOVWF CompTempVar166
	CLRF CompTempVar167
	INCF CompTempVar166, F
	BTFSC STATUS,Z
	INCF CompTempVar167, F
	MOVF CompTempVar166, W
	SUBWF speed_butt_00015_arg_value, F
	MOVF CompTempVar167, W
	BTFSS STATUS,C
	DECF speed_butt_00015_arg_value+D'1', F
	SUBWF speed_butt_00015_arg_value+D'1', F
label47
	MOVF speed_butt_00015_arg_value, W
	MOVWF update_dis_00013_arg_value
	MOVF speed_butt_00015_arg_value+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVF speed_butt_00015_arg_disp_pos, W
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	GOTO	label45
label48
	MOVF speed_butt_00015_arg_value, W
	MOVWF CompTempVarRet155
	MOVF speed_butt_00015_arg_value+D'1', W
	MOVWF CompTempVarRet155+D'1'
	RETURN
; } speed_button function end

	ORG 0x00000313
serial_put_00017
; { serial_putnumber ; function begin
	MOVF serial_put_00017_arg_value, W
	MOVWF convert_in_00014_arg_value
	MOVF serial_put_00017_arg_value+D'1', W
	MOVWF convert_in_00014_arg_value+D'1'
	CALL convert_in_00014
	MOVF gbl_digit_100, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
	MOVF gbl_digit_10, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
	MOVF gbl_digit_1, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
	MOVLW 0x09
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
	RETURN
; } serial_putnumber function end

	ORG 0x0000032E
send_tunit_00018
; { send_tunits ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	DECF gbl_temp_units, W
	BTFSS STATUS,Z
	GOTO	label49
	MOVLW 0x43
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	RETURN
label49
	MOVLW 0x46
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	RETURN
; } send_tunits function end

	ORG 0x0000033D
put_edata_00000
; { put_edata ; function begin
	CLRF put_edata_00000_1_e_data
	MOVF put_edata_00000_arg_value, W
	MOVWF put_edata_00000_1_e_data
	MOVF put_edata_00000_1_e_data, W
	MOVWF onboard_ee_00012_arg_e_data
	INCF put_edata_00000_arg_e_address, W
	MOVWF onboard_ee_00012_arg_e_address
	CALL onboard_ee_00012
	MOVF put_edata_00000_arg_value+D'1', W
	MOVWF put_edata_00000_1_e_data
	MOVF put_edata_00000_1_e_data, W
	MOVWF onboard_ee_00012_arg_e_data
	MOVF put_edata_00000_arg_e_address, W
	MOVWF onboard_ee_00012_arg_e_address
	CALL onboard_ee_00012
	RETURN
; } put_edata function end

	ORG 0x0000034D
proj_value_00000
; { proj_value ; function begin
	MOVF proj_value_00000_arg_y1, W
	SUBWF proj_value_00000_arg_y2, W
	MOVWF CompTempVar169
	INCF proj_value_00000_arg_y1+D'1', W
	BTFSC STATUS,C
	MOVF proj_value_00000_arg_y1+D'1', W
	SUBWF proj_value_00000_arg_y2+D'1', W
	MOVWF CompTempVar170
	MOVF proj_value_00000_arg_x3, W
	MOVWF __mul_16s__0000E_arg_a
	MOVF proj_value_00000_arg_x3+D'1', W
	MOVWF __mul_16s__0000E_arg_a+D'1'
	MOVF CompTempVar169, W
	MOVWF __mul_16s__0000E_arg_b
	MOVF CompTempVar170, W
	MOVWF __mul_16s__0000E_arg_b+D'1'
	CALL __mul_16s__0000E
	MOVF CompTempVarRet560, W
	MOVWF CompTempVar171
	MOVF CompTempVarRet560+D'1', W
	MOVWF CompTempVar172
	CLRF CompTempVar177
	MOVF CompTempVar171, W
	MOVWF __div_16_1_00003_arg_a
	MOVF CompTempVar172, W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS CompTempVar172,7
	GOTO	label50
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar177, F
label50
	BCF STATUS, RP0
	MOVF proj_value_00000_arg_x2, W
	MOVWF __div_16_1_00003_arg_b
	MOVF proj_value_00000_arg_x2+D'1', W
	MOVWF __div_16_1_00003_arg_b+D'1'
	BTFSS proj_value_00000_arg_x2+D'1',7
	GOTO	label51
	COMF __div_16_1_00003_arg_b, F
	COMF __div_16_1_00003_arg_b+D'1', F
	INCF __div_16_1_00003_arg_b, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_b+D'1', F
	BSF STATUS, RP0
	INCF CompTempVar177, F
label51
	CALL __div_16_1_00003
	MOVF CompTempVarRet313, W
	MOVWF CompTempVar173
	MOVF CompTempVarRet313+D'1', W
	MOVWF CompTempVar174
	BTFSS CompTempVar177,0
	GOTO	label52
	COMF CompTempVar173, F
	COMF CompTempVar174, F
	INCF CompTempVar173, F
	BTFSC STATUS,Z
	INCF CompTempVar174, F
label52
	MOVF CompTempVar173, W
	BCF STATUS, RP0
	ADDWF proj_value_00000_arg_y1, W
	MOVWF CompTempVar175
	MOVF CompTempVar174, W
	MOVWF CompTempVar176
	MOVF proj_value_00000_arg_y1+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar176, F
	ADDWF CompTempVar176, F
	MOVF CompTempVar175, W
	MOVWF proj_value_00000_1_value
	MOVF CompTempVar176, W
	MOVWF proj_value_00000_1_value+D'1'
	MOVF proj_value_00000_1_value, W
	MOVWF CompTempVarRet168
	MOVF proj_value_00000_1_value+D'1', W
	MOVWF CompTempVarRet168+D'1'
	RETURN
; } proj_value function end

	ORG 0x0000039C
mod_digit_00000
; { mod_digit ; function begin
	MOVF mod_digit_00000_arg_direction, W
	XORLW 0x75
	BTFSS STATUS,Z
	GOTO	label53
	INCF mod_digit_00000_arg_value, F
	MOVLW 0x0A
	SUBWF mod_digit_00000_arg_value, W
	BTFSC STATUS,C
	CLRF mod_digit_00000_arg_value
label53
	MOVF mod_digit_00000_arg_direction, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label55
	MOVF mod_digit_00000_arg_value, W
	SUBLW 0x00
	BTFSS STATUS,C
	GOTO	label54
	MOVLW 0x09
	MOVWF mod_digit_00000_arg_value
	GOTO	label55
label54
	DECF mod_digit_00000_arg_value, F
label55
	MOVF mod_digit_00000_arg_value, W
	MOVWF CompTempVarRet136
	RETURN
; } mod_digit function end

	ORG 0x000003B4
init_state_00000
; { init_state ; function begin
	MOVF init_state_00000_arg_timer, W
	MOVWF gbl_timer_on
	MOVF init_state_00000_arg_temp, W
	MOVWF gbl_temp_on
	CLRF gbl_display_seconds
	CLRF gbl_display_seconds+D'1'
	CLRF gbl_relay_on
	CLRF gbl_total_seconds
	CLRF gbl_total_seconds+D'1'
	CLRF gbl_step_seconds
	CLRF gbl_step_seconds+D'1'
	RETURN
; } init_state function end

	ORG 0x000003C0
get_temp_00000
; { get_temp ; function begin
	CLRF get_temp_00000_1_temperature
	CLRF get_temp_00000_1_temperature+D'1'
	CLRF get_temp_00000_1_temperature+D'2'
	CLRF get_temp_00000_1_temperature+D'3'
	CLRF get_temp_00000_1_total
	CLRF get_temp_00000_1_total+D'1'
	MOVLW 0xC0
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_adcon1
	MOVLW 0x61
	BCF STATUS, RP0
	MOVWF gbl_adcon0
	CLRF get_temp_00000_1_x
label56
	MOVLW 0x10
	SUBWF get_temp_00000_1_x, W
	BTFSC STATUS,C
	GOTO	label58
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_adcon0,2
label57
	BTFSC gbl_adcon0,2
	GOTO	label57
	BSF STATUS, RP0
	MOVF gbl_adresl, W
	MOVWF get_temp_00000_1_temperature
	BCF STATUS, RP0
	MOVF gbl_adresh, W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVF get_temp_00000_1_temperature, W
	ADDWF get_temp_00000_1_total, F
	MOVF get_temp_00000_1_temperature+D'1', W
	BTFSC STATUS,C
	INCF get_temp_00000_1_total+D'1', F
	ADDWF get_temp_00000_1_total+D'1', F
	INCF get_temp_00000_1_x, F
	GOTO	label56
label58
	MOVF get_temp_00000_1_total, W
	MOVWF CompTempVar138
	MOVF get_temp_00000_1_total+D'1', W
	MOVWF CompTempVar139
	CLRF CompTempVar140
	CLRF CompTempVar141
	RRF CompTempVar139, F
	RRF CompTempVar138, F
	RRF CompTempVar139, F
	RRF CompTempVar138, F
	RRF CompTempVar139, F
	RRF CompTempVar138, F
	RRF CompTempVar139, F
	RRF CompTempVar138, F
	MOVLW 0x0F
	ANDWF CompTempVar139, F
	MOVF CompTempVar138, W
	MOVWF get_temp_00000_1_temperature
	MOVF CompTempVar139, W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVF CompTempVar140, W
	MOVWF get_temp_00000_1_temperature+D'2'
	MOVF CompTempVar141, W
	MOVWF get_temp_00000_1_temperature+D'3'
	MOVF get_temp_00000_1_temperature, W
	MOVWF __mul_32u__0000F_arg_a
	MOVF get_temp_00000_1_temperature+D'1', W
	MOVWF __mul_32u__0000F_arg_a+D'1'
	MOVF get_temp_00000_1_temperature+D'2', W
	MOVWF __mul_32u__0000F_arg_a+D'2'
	MOVF get_temp_00000_1_temperature+D'3', W
	MOVWF __mul_32u__0000F_arg_a+D'3'
	MOVLW 0x70
	BSF STATUS, RP0
	MOVWF __mul_32u__0000F_arg_b
	MOVLW 0x17
	MOVWF __mul_32u__0000F_arg_b+D'1'
	CLRF __mul_32u__0000F_arg_b+D'2'
	CLRF __mul_32u__0000F_arg_b+D'3'
	CALL __mul_32u__0000F
	MOVF CompTempVarRet563, W
	MOVWF CompTempVar142
	MOVF CompTempVarRet563+D'1', W
	MOVWF CompTempVar143
	MOVF CompTempVarRet563+D'2', W
	MOVWF CompTempVar144
	MOVF CompTempVarRet563+D'3', W
	MOVWF CompTempVar145
	MOVF CompTempVar142, W
	MOVWF get_temp_00000_1_temperature
	MOVF CompTempVar143, W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVF CompTempVar144, W
	MOVWF get_temp_00000_1_temperature+D'2'
	MOVF CompTempVar145, W
	MOVWF get_temp_00000_1_temperature+D'3'
	MOVF get_temp_00000_1_temperature, W
	MOVWF __div_32_3_00001_arg_a
	MOVF get_temp_00000_1_temperature+D'1', W
	MOVWF __div_32_3_00001_arg_a+D'1'
	MOVF get_temp_00000_1_temperature+D'2', W
	MOVWF __div_32_3_00001_arg_a+D'2'
	MOVF get_temp_00000_1_temperature+D'3', W
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x00
	MOVWF __div_32_3_00001_arg_b
	MOVLW 0x04
	MOVWF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet309, W
	MOVWF get_temp_00000_1_temperature
	MOVF CompTempVarRet309+D'1', W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVF CompTempVarRet309+D'2', W
	MOVWF get_temp_00000_1_temperature+D'2'
	MOVF CompTempVarRet309+D'3', W
	MOVWF get_temp_00000_1_temperature+D'3'
	BCF STATUS, RP0
	MOVF gbl_temp_units, F
	BTFSS STATUS,Z
	GOTO	label59
	MOVF get_temp_00000_1_temperature, W
	MOVWF __mul_32u__0000F_arg_a
	MOVF get_temp_00000_1_temperature+D'1', W
	MOVWF __mul_32u__0000F_arg_a+D'1'
	MOVF get_temp_00000_1_temperature+D'2', W
	MOVWF __mul_32u__0000F_arg_a+D'2'
	MOVF get_temp_00000_1_temperature+D'3', W
	MOVWF __mul_32u__0000F_arg_a+D'3'
	MOVLW 0x09
	BSF STATUS, RP0
	MOVWF __mul_32u__0000F_arg_b
	CLRF __mul_32u__0000F_arg_b+D'1'
	CLRF __mul_32u__0000F_arg_b+D'2'
	CLRF __mul_32u__0000F_arg_b+D'3'
	CALL __mul_32u__0000F
	MOVF CompTempVarRet563, W
	MOVWF CompTempVar146
	MOVF CompTempVarRet563+D'1', W
	MOVWF CompTempVar147
	MOVF CompTempVarRet563+D'2', W
	MOVWF CompTempVar148
	MOVF CompTempVarRet563+D'3', W
	MOVWF CompTempVar149
	MOVF CompTempVar146, W
	MOVWF get_temp_00000_1_temperature
	MOVF CompTempVar147, W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVF CompTempVar148, W
	MOVWF get_temp_00000_1_temperature+D'2'
	MOVF CompTempVar149, W
	MOVWF get_temp_00000_1_temperature+D'3'
	MOVF get_temp_00000_1_temperature, W
	MOVWF __div_32_3_00001_arg_a
	MOVF get_temp_00000_1_temperature+D'1', W
	MOVWF __div_32_3_00001_arg_a+D'1'
	MOVF get_temp_00000_1_temperature+D'2', W
	MOVWF __div_32_3_00001_arg_a+D'2'
	MOVF get_temp_00000_1_temperature+D'3', W
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x32
	MOVWF __div_32_3_00001_arg_b
	CLRF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet309, W
	MOVWF get_temp_00000_1_temperature
	MOVF CompTempVarRet309+D'1', W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVF CompTempVarRet309+D'2', W
	MOVWF get_temp_00000_1_temperature+D'2'
	MOVF CompTempVarRet309+D'3', W
	MOVWF get_temp_00000_1_temperature+D'3'
	MOVLW 0x20
	MOVWF CompTempVar150
	MOVF get_temp_00000_1_temperature, W
	ADDWF CompTempVar150, F
	MOVF CompTempVar150, W
	MOVWF get_temp_00000_1_temperature
	MOVLW 0x00
	MOVWF CompTempVar150
	MOVF get_temp_00000_1_temperature+D'1', W
	BTFSC STATUS,C
	INCFSZ get_temp_00000_1_temperature+D'1', W
	ADDWF CompTempVar150, F
	MOVF CompTempVar150, W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVLW 0x00
	MOVWF CompTempVar150
	MOVF get_temp_00000_1_temperature+D'2', W
	BTFSC STATUS,C
	INCFSZ get_temp_00000_1_temperature+D'2', W
	ADDWF CompTempVar150, F
	MOVF CompTempVar150, W
	MOVWF get_temp_00000_1_temperature+D'2'
	MOVLW 0x00
	MOVWF CompTempVar150
	MOVF get_temp_00000_1_temperature+D'3', W
	BTFSC STATUS,C
	INCFSZ get_temp_00000_1_temperature+D'3', W
	ADDWF CompTempVar150, F
	MOVF CompTempVar150, W
	MOVWF get_temp_00000_1_temperature+D'3'
	GOTO	label60
label59
	MOVF get_temp_00000_1_temperature, W
	MOVWF __div_32_3_00001_arg_a
	MOVF get_temp_00000_1_temperature+D'1', W
	MOVWF __div_32_3_00001_arg_a+D'1'
	MOVF get_temp_00000_1_temperature+D'2', W
	MOVWF __div_32_3_00001_arg_a+D'2'
	MOVF get_temp_00000_1_temperature+D'3', W
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x06
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_b
	CLRF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet309, W
	MOVWF get_temp_00000_1_temperature
	MOVF CompTempVarRet309+D'1', W
	MOVWF get_temp_00000_1_temperature+D'1'
	MOVF CompTempVarRet309+D'2', W
	MOVWF get_temp_00000_1_temperature+D'2'
	MOVF CompTempVarRet309+D'3', W
	MOVWF get_temp_00000_1_temperature+D'3'
label60
	MOVF get_temp_00000_1_temperature, W
	MOVWF CompTempVarRet137
	MOVF get_temp_00000_1_temperature+D'1', W
	MOVWF CompTempVarRet137+D'1'
	RETURN
; } get_temp function end

	ORG 0x000004A9
get_edata_00000
; { get_edata ; function begin
	INCF get_edata_00000_arg_e_address, W
	MOVWF onboard_ee_00011_arg_e_address
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF get_edata_00000_1_x
	MOVF get_edata_00000_arg_e_address, W
	MOVWF onboard_ee_00011_arg_e_address
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF get_edata_00000_1_y
	MOVF get_edata_00000_1_x, W
	MOVWF get_edata_00000_1_value
	MOVF get_edata_00000_1_y, W
	MOVWF get_edata_00000_1_value+D'1'
	MOVF get_edata_00000_1_value, W
	MOVWF CompTempVarRet151
	MOVF get_edata_00000_1_value+D'1', W
	MOVWF CompTempVarRet151+D'1'
	RETURN
; } get_edata function end

	ORG 0x000004BE
boot_up_00000
; { boot_up ; function begin
	MOVLW 0x10
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_ansel
	BCF STATUS, RP0
	CLRF gbl_porta
	MOVLW 0x10
	BSF STATUS, RP0
	MOVWF gbl_trisa
	BCF STATUS, RP0
	CLRF gbl_m_seconds
	CLRF gbl_total_seconds
	CLRF gbl_total_seconds+D'1'
	CLRF gbl_step_seconds
	CLRF gbl_step_seconds+D'1'
	MOVLW 0x83
	BSF STATUS, RP0
	MOVWF gbl_trisb
	BCF gbl_option_reg,7
	BCF STATUS, RP0
	CLRF gbl_portb
	CALL init_lcd_00000
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar127
	MOVWF CompTempVar127+D'7'
	MOVWF CompTempVar127+D'12'
	MOVWF CompTempVar127+D'13'
	MOVWF CompTempVar127+D'14'
	MOVWF CompTempVar127+D'15'
	MOVLW 0x41
	MOVWF CompTempVar127+D'1'
	MOVLW 0x47
	MOVWF CompTempVar127+D'8'
	MOVLW 0x64
	MOVWF CompTempVar127+D'3'
	MOVLW 0x65
	MOVWF CompTempVar127+D'5'
	MOVLW 0x6E
	MOVWF CompTempVar127+D'2'
	MOVLW 0x6F
	MOVWF CompTempVar127+D'9'
	MOVLW 0x72
	MOVWF CompTempVar127+D'4'
	MOVLW 0x73
	MOVWF CompTempVar127+D'10'
	MOVWF CompTempVar127+D'11'
	MOVLW 0x77
	MOVWF CompTempVar127+D'6'
	CLRF CompTempVar127+D'16'
	MOVLW HIGH(CompTempVar127+D'0')
	MOVWF CompTempVar128
	MOVLW LOW(CompTempVar127+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar128, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0xC0
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar129+D'6'
	MOVWF CompTempVar129+D'11'
	MOVLW 0x2E
	MOVWF CompTempVar129+D'14'
	MOVLW 0x31
	MOVWF CompTempVar129+D'15'
	MOVLW 0x32
	MOVWF CompTempVar129+D'13'
	MOVLW 0x4F
	MOVWF CompTempVar129+D'7'
	MOVLW 0x52
	MOVWF CompTempVar129
	MOVLW 0x65
	MOVWF CompTempVar129+D'1'
	MOVWF CompTempVar129+D'9'
	MOVLW 0x66
	MOVWF CompTempVar129+D'2'
	MOVLW 0x6C
	MOVWF CompTempVar129+D'3'
	MOVLW 0x6E
	MOVWF CompTempVar129+D'10'
	MOVLW 0x6F
	MOVWF CompTempVar129+D'4'
	MOVLW 0x76
	MOVWF CompTempVar129+D'8'
	MOVWF CompTempVar129+D'12'
	MOVLW 0x77
	MOVWF CompTempVar129+D'5'
	CLRF CompTempVar129+D'16'
	MOVLW HIGH(CompTempVar129+D'0')
	MOVWF CompTempVar130
	MOVLW LOW(CompTempVar129+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar130, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x08
	MOVWF gbl_portb
	MOVLW 0xD0
	MOVWF delay_ms_00001_arg_x
	MOVLW 0x07
	MOVWF delay_ms_00001_arg_x+D'1'
	CALL delay_ms_00001
	CLRF gbl_portb
	MOVLW 0x24
	BSF STATUS, RP0
	MOVWF gbl_txsta
	MOVLW 0x90
	BCF STATUS, RP0
	MOVWF gbl_rcsta
	MOVLW 0x33
	BSF STATUS, RP0
	MOVWF gbl_spbrg
	MOVLW 0x50
	MOVWF onboard_ee_00011_arg_e_address
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF gbl_tc
	MOVLW 0x51
	MOVWF onboard_ee_00011_arg_e_address
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF gbl_temp_units
	MOVLW 0x52
	MOVWF onboard_ee_00011_arg_e_address
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF gbl_relay_LED
	MOVLW 0x53
	MOVWF onboard_ee_00011_arg_e_address
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF gbl_t_inc
	MOVLW 0x54
	MOVWF onboard_ee_00011_arg_e_address
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF gbl_clock_cal
	RETURN
; } boot_up function end

	ORG 0x00000555
__mul_16u__0000C
; { __mul_16u_16u__16 ; function begin
	CLRF __mul_16u__0000C_1_i
	CLRF CompTempVarRet554
	CLRF CompTempVarRet554+D'1'
	MOVF __mul_16u__0000C_arg_a, W
	MOVWF __mul_16u__0000C_1_t
	MOVF __mul_16u__0000C_arg_a+D'1', W
	MOVWF __mul_16u__0000C_1_t+D'1'
label61
	BTFSC __mul_16u__0000C_1_i,4
	RETURN
	BTFSS __mul_16u__0000C_arg_b,0
	GOTO	label62
	MOVF __mul_16u__0000C_1_t, W
	ADDWF CompTempVarRet554, F
	MOVF __mul_16u__0000C_1_t+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_16u__0000C_1_t+D'1', W
	ADDWF CompTempVarRet554+D'1', F
label62
	BCF gbl_status,0
	RRF __mul_16u__0000C_arg_b+D'1', F
	RRF __mul_16u__0000C_arg_b, F
	BCF gbl_status,0
	RLF __mul_16u__0000C_1_t, F
	RLF __mul_16u__0000C_1_t+D'1', F
	INCF __mul_16u__0000C_1_i, F
	GOTO	label61
; } __mul_16u_16u__16 function end

	ORG 0x0000056E
__div_8_8_00000
; { __div_8_8 ; function begin
	CLRF __div_8_8_00000_1_r
	CLRF CompTempVarRet317
	CLRF __div_8_8_00000_1_i
label63
	BTFSC __div_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet317, F
	RLF __div_8_8_00000_arg_a, F
	RLF __div_8_8_00000_1_r, F
	MOVF __div_8_8_00000_arg_b, W
	SUBWF __div_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label64
	MOVWF __div_8_8_00000_1_r
	BSF CompTempVarRet317,0
label64
	INCF __div_8_8_00000_1_i, F
	GOTO	label63
; } __div_8_8 function end

	ORG 0x0000057F
main
; { main ; function begin
	MOVLW 0x70
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_osccon
	CALL boot_up_00000
	BSF gbl_t1con,4
	BSF gbl_t1con,5
	BSF gbl_intcon,7
	BSF gbl_intcon,6
	MOVLW 0x01
	BSF STATUS, RP0
	MOVWF gbl_pie1
	BCF STATUS, RP0
	BCF gbl_t1con,1
	MOVLW 0x9E
	MOVWF gbl_tmr1h
	MOVLW 0x57
	MOVWF gbl_tmr1l
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_c
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x83
	BSF STATUS, RP0
	MOVWF gbl_trisb
	BCF STATUS, RP0
	BSF gbl_t1con,0
	MOVLW 0x03
	MOVWF gbl_state
	MOVLW 0x14
	MOVWF gbl_prev_state
	MOVLW 0x03
	MOVWF gbl_prev_mode
	CLRF gbl_button_release
	MOVLW 0x6E
	MOVWF gbl_choice
label65
	CLRF gbl_button_push
	CLRF gbl_long_push
	CLRF gbl_update_flag
	MOVF gbl_total_seconds, W
	MOVWF gbl_two_second_timer
	MOVF gbl_total_seconds+D'1', W
	MOVWF gbl_two_second_timer+D'1'
	BTFSS gbl_portb,7
	GOTO	label66
	BTFSS gbl_portb,0
	GOTO	label66
	BTFSS gbl_portb,1
	GOTO	label66
	MOVLW 0x01
	MOVWF gbl_button_release
	MOVLW 0x6E
	MOVWF gbl_choice
	MOVLW 0x32
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
label66
	BTFSC gbl_portb,0
	GOTO	label70
	DECF gbl_button_release, W
	BTFSS STATUS,Z
	GOTO	label70
	MOVLW 0x75
	MOVWF gbl_choice
	CLRF gbl_button_release
label67
	BTFSC gbl_portb,0
	GOTO	label69
	MOVLW 0x02
	ADDWF gbl_two_second_timer, W
	MOVWF CompTempVar186
	MOVF gbl_two_second_timer+D'1', W
	MOVWF CompTempVar187
	BTFSC STATUS,C
	INCF CompTempVar187, F
	MOVF CompTempVar187, W
	SUBWF gbl_total_seconds+D'1', W
	BTFSS STATUS,Z
	GOTO	label68
	MOVF CompTempVar186, W
	SUBWF gbl_total_seconds, W
label68
	BTFSS STATUS,C
	GOTO	label67
label69
	MOVLW 0x01
	MOVWF gbl_button_push
label70
	BTFSC gbl_portb,1
	GOTO	label74
	DECF gbl_button_release, W
	BTFSS STATUS,Z
	GOTO	label74
	MOVLW 0x64
	MOVWF gbl_choice
	CLRF gbl_button_release
label71
	BTFSC gbl_portb,1
	GOTO	label73
	MOVLW 0x02
	ADDWF gbl_two_second_timer, W
	MOVWF CompTempVar190
	MOVF gbl_two_second_timer+D'1', W
	MOVWF CompTempVar191
	BTFSC STATUS,C
	INCF CompTempVar191, F
	MOVF CompTempVar191, W
	SUBWF gbl_total_seconds+D'1', W
	BTFSS STATUS,Z
	GOTO	label72
	MOVF CompTempVar190, W
	SUBWF gbl_total_seconds, W
label72
	BTFSS STATUS,C
	GOTO	label71
label73
	MOVLW 0x01
	MOVWF gbl_button_push
label74
	BTFSC gbl_portb,7
	GOTO	label78
	DECF gbl_button_release, W
	BTFSS STATUS,Z
	GOTO	label78
	MOVLW 0x73
	MOVWF gbl_choice
	CLRF gbl_button_release
label75
	BTFSC gbl_portb,7
	GOTO	label77
	MOVLW 0x02
	ADDWF gbl_two_second_timer, W
	MOVWF CompTempVar194
	MOVF gbl_two_second_timer+D'1', W
	MOVWF CompTempVar195
	BTFSC STATUS,C
	INCF CompTempVar195, F
	MOVF CompTempVar195, W
	SUBWF gbl_total_seconds+D'1', W
	BTFSS STATUS,Z
	GOTO	label76
	MOVF CompTempVar194, W
	SUBWF gbl_total_seconds, W
label76
	BTFSS STATUS,C
	GOTO	label75
label77
	MOVLW 0x01
	MOVWF gbl_button_push
label78
	MOVLW 0x02
	ADDWF gbl_two_second_timer, W
	MOVWF CompTempVar182
	MOVF gbl_two_second_timer+D'1', W
	MOVWF CompTempVar183
	BTFSC STATUS,C
	INCF CompTempVar183, F
	MOVF CompTempVar183, W
	SUBWF gbl_total_seconds+D'1', W
	BTFSS STATUS,Z
	GOTO	label79
	MOVF CompTempVar182, W
	SUBWF gbl_total_seconds, W
label79
	BTFSS STATUS,C
	GOTO	label80
	MOVLW 0x01
	MOVWF gbl_long_push
label80
	DECF gbl_timer_int, W
	BTFSS STATUS,Z
	GOTO	label87
	CLRF gbl_timer_int
	MOVF gbl_total_seconds, W
	MOVWF serial_put_00017_arg_value
	MOVF gbl_total_seconds+D'1', W
	MOVWF serial_put_00017_arg_value+D'1'
	CALL serial_put_00017
	MOVF gbl_set_temp, W
	MOVWF serial_put_00017_arg_value
	MOVF gbl_set_temp+D'1', W
	MOVWF serial_put_00017_arg_value+D'1'
	CALL serial_put_00017
	CALL get_temp_00000
	MOVF CompTempVarRet137, W
	BCF STATUS, RP0
	MOVWF serial_put_00017_arg_value
	MOVF CompTempVarRet137+D'1', W
	MOVWF serial_put_00017_arg_value+D'1'
	CALL serial_put_00017
	MOVF gbl_a_temp1, W
	MOVWF gbl_a_temp2
	MOVF gbl_a_temp1+D'1', W
	MOVWF gbl_a_temp2+D'1'
	CALL get_temp_00000
	MOVF CompTempVarRet137, W
	BCF STATUS, RP0
	MOVWF gbl_a_temp1
	MOVF CompTempVarRet137+D'1', W
	MOVWF gbl_a_temp1+D'1'
	MOVF gbl_relay_on, F
	BTFSC STATUS,Z
	GOTO	label81
	MOVLW 0x31
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
	GOTO	label82
label81
	MOVLW 0x30
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
label82
	MOVLW 0x0D
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
	MOVLW 0x0A
	MOVWF serial_put_00016_arg_s_out
	CALL serial_put_00016
	DECF gbl_temp_on, W
	BTFSS STATUS,Z
	GOTO	label83
	CALL get_temp_00000
	MOVF CompTempVarRet137, W
	BCF STATUS, RP0
	MOVWF update_dis_00013_arg_value
	MOVF CompTempVarRet137+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x0C
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
label83
	DECF gbl_timer_on, W
	BTFSS STATUS,Z
	GOTO	label84
	MOVF gbl_total_seconds, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_total_seconds+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x02
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	INCF gbl_step_seconds, F
	BTFSC STATUS,Z
	INCF gbl_step_seconds+D'1', F
	GOTO	label85
label84
	MOVF gbl_timer_on, F
	BTFSS STATUS,Z
	GOTO	label85
	MOVF gbl_display_seconds, W
	MOVWF gbl_total_seconds
	MOVF gbl_display_seconds+D'1', W
	MOVWF gbl_total_seconds+D'1'
label85
	DECF gbl_relay_on, W
	BTFSS STATUS,Z
	GOTO	label86
	BSF gbl_portb,4
	DECF gbl_relay_LED, W
	BTFSC STATUS,Z
	BSF gbl_portb,3
	GOTO	label87
label86
	BCF gbl_portb,4
	BCF gbl_portb,3
label87
	MOVF gbl_state, W
	XORLW 0x00
	BTFSC STATUS,Z
	GOTO	label88
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label97
	XORLW 0x03
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label105
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label112
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label112
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label131
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label131
	XORLW 0x0B
	BTFSC STATUS,Z
	GOTO	label148
	BCF PCLATH,3
	GOTO	label65
label88
	MOVF gbl_prev_state, F
	BTFSC STATUS,Z
	GOTO	label89
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_c
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x4D
	MOVWF CompTempVar196
	MOVLW 0x6F
	MOVWF CompTempVar196+D'1'
	MOVLW 0x64
	MOVWF CompTempVar196+D'2'
	MOVLW 0x65
	MOVWF CompTempVar196+D'3'
	MOVLW 0x3A
	MOVWF CompTempVar196+D'4'
	CLRF CompTempVar196+D'5'
	MOVLW HIGH(CompTempVar196+D'0')
	MOVWF CompTempVar197
	MOVLW LOW(CompTempVar196+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar197, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0xC0
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar198+D'2'
	MOVWF CompTempVar198+D'3'
	MOVWF CompTempVar198+D'5'
	MOVWF CompTempVar198+D'6'
	MOVWF CompTempVar198+D'8'
	MOVWF CompTempVar198+D'9'
	MOVLW 0x2F
	MOVWF CompTempVar198+D'12'
	MOVLW 0x4D
	MOVWF CompTempVar198
	MOVWF CompTempVar198+D'1'
	MOVLW 0x4E
	MOVWF CompTempVar198+D'10'
	MOVLW 0x53
	MOVWF CompTempVar198+D'13'
	MOVLW 0x65
	MOVWF CompTempVar198+D'14'
	MOVLW 0x6C
	MOVWF CompTempVar198+D'15'
	MOVLW 0x78
	MOVWF CompTempVar198+D'4'
	MOVWF CompTempVar198+D'7'
	MOVWF CompTempVar198+D'11'
	CLRF CompTempVar198+D'16'
	MOVLW HIGH(CompTempVar198+D'0')
	MOVWF CompTempVar199
	MOVLW LOW(CompTempVar198+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar199, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CLRF gbl_prev_state
	DECF gbl_prev_mode, W
	MOVWF gbl_mode
	MOVLW 0x01
	MOVWF gbl_button_push
	MOVLW 0x73
	MOVWF gbl_choice
	CLRF gbl_long_push
	CLRF init_state_00000_arg_timer
	CLRF init_state_00000_arg_temp
	CALL init_state_00000
label89
	DECF gbl_button_push, W
	BTFSS STATUS,Z
	GOTO	label65
	MOVF gbl_choice, W
	XORLW 0x73
	BTFSS STATUS,Z
	GOTO	label65
	DECF gbl_long_push, W
	BTFSS STATUS,Z
	GOTO	label90
	MOVF gbl_mode, W
	MOVWF gbl_state
	GOTO	label65
label90
	INCF gbl_mode, F
	MOVF gbl_mode, W
	MOVWF gbl_prev_mode
	MOVLW 0x87
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_mode, W
	XORLW 0x06
	BTFSS STATUS,Z
	GOTO	label91
	MOVLW 0x01
	MOVWF gbl_mode
label91
	MOVF gbl_mode, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label92
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label93
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label94
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label95
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label96
	GOTO	label65
label92
	MOVLW 0x20
	MOVWF CompTempVar200
	MOVWF CompTempVar200+D'1'
	MOVWF CompTempVar200+D'2'
	MOVLW 0x4D
	MOVWF CompTempVar200+D'3'
	MOVLW 0x61
	MOVWF CompTempVar200+D'4'
	MOVWF CompTempVar200+D'7'
	MOVLW 0x6C
	MOVWF CompTempVar200+D'8'
	MOVLW 0x6E
	MOVWF CompTempVar200+D'5'
	MOVLW 0x75
	MOVWF CompTempVar200+D'6'
	CLRF CompTempVar200+D'9'
	MOVLW HIGH(CompTempVar200+D'0')
	MOVWF CompTempVar201
	MOVLW LOW(CompTempVar200+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar201, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	GOTO	label65
label93
	MOVLW 0x53
	MOVWF CompTempVar202
	MOVLW 0x65
	MOVWF CompTempVar202+D'1'
	MOVLW 0x6D
	MOVWF CompTempVar202+D'2'
	MOVLW 0x69
	MOVWF CompTempVar202+D'3'
	MOVLW 0x2D
	MOVWF CompTempVar202+D'4'
	MOVLW 0x41
	MOVWF CompTempVar202+D'5'
	MOVLW 0x75
	MOVWF CompTempVar202+D'6'
	MOVLW 0x74
	MOVWF CompTempVar202+D'7'
	MOVLW 0x6F
	MOVWF CompTempVar202+D'8'
	CLRF CompTempVar202+D'9'
	MOVLW HIGH(CompTempVar202+D'0')
	MOVWF CompTempVar203
	MOVLW LOW(CompTempVar202+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar203, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	GOTO	label65
label94
	MOVLW 0x20
	MOVWF CompTempVar204+D'7'
	MOVLW 0x31
	MOVWF CompTempVar204+D'8'
	MOVLW 0x50
	MOVWF CompTempVar204
	MOVLW 0x61
	MOVWF CompTempVar204+D'5'
	MOVLW 0x67
	MOVWF CompTempVar204+D'3'
	MOVLW 0x6D
	MOVWF CompTempVar204+D'6'
	MOVLW 0x6F
	MOVWF CompTempVar204+D'2'
	MOVLW 0x72
	MOVWF CompTempVar204+D'1'
	MOVWF CompTempVar204+D'4'
	CLRF CompTempVar204+D'9'
	MOVLW HIGH(CompTempVar204+D'0')
	MOVWF CompTempVar205
	MOVLW LOW(CompTempVar204+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar205, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	GOTO	label65
label95
	MOVLW 0x20
	MOVWF CompTempVar206+D'7'
	MOVLW 0x32
	MOVWF CompTempVar206+D'8'
	MOVLW 0x50
	MOVWF CompTempVar206
	MOVLW 0x61
	MOVWF CompTempVar206+D'5'
	MOVLW 0x67
	MOVWF CompTempVar206+D'3'
	MOVLW 0x6D
	MOVWF CompTempVar206+D'6'
	MOVLW 0x6F
	MOVWF CompTempVar206+D'2'
	MOVLW 0x72
	MOVWF CompTempVar206+D'1'
	MOVWF CompTempVar206+D'4'
	CLRF CompTempVar206+D'9'
	MOVLW HIGH(CompTempVar206+D'0')
	MOVWF CompTempVar207
	MOVLW LOW(CompTempVar206+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar207, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	GOTO	label65
label96
	MOVLW 0x20
	MOVWF CompTempVar208
	MOVWF CompTempVar208+D'1'
	MOVWF CompTempVar208+D'2'
	MOVWF CompTempVar208+D'3'
	MOVLW 0x53
	MOVWF CompTempVar208+D'4'
	MOVLW 0x65
	MOVWF CompTempVar208+D'5'
	MOVLW 0x74
	MOVWF CompTempVar208+D'6'
	MOVLW 0x75
	MOVWF CompTempVar208+D'7'
	MOVLW 0x70
	MOVWF CompTempVar208+D'8'
	CLRF CompTempVar208+D'9'
	MOVLW HIGH(CompTempVar208+D'0')
	MOVWF CompTempVar209
	MOVLW LOW(CompTempVar208+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar209, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	GOTO	label65
label97
	DECF gbl_prev_state, W
	BTFSC STATUS,Z
	GOTO	label98
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar210
	MOVWF CompTempVar210+D'1'
	MOVWF CompTempVar210+D'2'
	MOVWF CompTempVar210+D'3'
	MOVWF CompTempVar210+D'6'
	MOVWF CompTempVar210+D'7'
	MOVWF CompTempVar210+D'8'
	MOVWF CompTempVar210+D'9'
	MOVWF CompTempVar210+D'10'
	MOVWF CompTempVar210+D'11'
	MOVLW 0x30
	MOVWF CompTempVar210+D'4'
	MOVWF CompTempVar210+D'12'
	MOVWF CompTempVar210+D'13'
	MOVWF CompTempVar210+D'14'
	MOVLW 0x73
	MOVWF CompTempVar210+D'5'
	CLRF CompTempVar210+D'15'
	MOVLW HIGH(CompTempVar210+D'0')
	MOVWF CompTempVar211
	MOVLW LOW(CompTempVar210+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar211, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CALL send_tunit_00018
	MOVLW 0xC0
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar212+D'2'
	MOVWF CompTempVar212+D'6'
	MOVWF CompTempVar212+D'11'
	MOVWF CompTempVar212+D'12'
	MOVLW 0x2D
	MOVWF CompTempVar212+D'8'
	MOVLW 0x2F
	MOVWF CompTempVar212+D'4'
	MOVWF CompTempVar212+D'13'
	MOVLW 0x41
	MOVWF CompTempVar212+D'1'
	MOVLW 0x45
	MOVWF CompTempVar212+D'14'
	MOVLW 0x4D
	MOVWF CompTempVar212
	MOVLW 0x52
	MOVWF CompTempVar212+D'3'
	MOVWF CompTempVar212+D'5'
	MOVWF CompTempVar212+D'7'
	MOVLW 0x6E
	MOVWF CompTempVar212+D'10'
	MOVLW 0x6F
	MOVWF CompTempVar212+D'9'
	MOVLW 0x78
	MOVWF CompTempVar212+D'15'
	CLRF CompTempVar212+D'16'
	MOVLW HIGH(CompTempVar212+D'0')
	MOVWF CompTempVar213
	MOVLW LOW(CompTempVar212+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar213, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x01
	MOVWF gbl_prev_state
	CLRF init_state_00000_arg_timer
	MOVLW 0x01
	MOVWF init_state_00000_arg_temp
	CALL init_state_00000
	CLRF gbl_set_temp
	CLRF gbl_set_temp+D'1'
label98
	DECF gbl_button_push, W
	BTFSS STATUS,Z
	GOTO	label65
	MOVF gbl_choice, W
	XORLW 0x75
	BTFSC STATUS,Z
	GOTO	label99
	XORLW 0x11
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label102
	XORLW 0x17
	BTFSC STATUS,Z
	GOTO	label104
	BCF PCLATH,3
	GOTO	label65
label99
	DECF gbl_long_push, W
	BTFSS STATUS,Z
	GOTO	label100
	MOVLW 0x14
	MOVWF gbl_prev_state
	GOTO	label65
label100
	MOVF gbl_timer_on, F
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label101
	MOVF gbl_display_seconds, W
	MOVWF gbl_total_seconds
	MOVF gbl_display_seconds+D'1', W
	MOVWF gbl_total_seconds+D'1'
	MOVLW 0xC3
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x53
	MOVWF CompTempVar214
	CLRF CompTempVar214+D'1'
	MOVLW HIGH(CompTempVar214+D'0')
	MOVWF CompTempVar215
	MOVLW LOW(CompTempVar214+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar215, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x01
	MOVWF gbl_timer_on
	GOTO	label65
label101
	MOVF gbl_total_seconds, W
	MOVWF gbl_display_seconds
	MOVF gbl_total_seconds+D'1', W
	MOVWF gbl_display_seconds+D'1'
	MOVLW 0xC3
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x52
	MOVWF CompTempVar216
	CLRF CompTempVar216+D'1'
	MOVLW HIGH(CompTempVar216+D'0')
	MOVWF CompTempVar217
	MOVLW LOW(CompTempVar216+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar217, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CLRF gbl_timer_on
	GOTO	label65
label102
	MOVF gbl_relay_on, F
	BTFSS STATUS,Z
	GOTO	label103
	MOVLW 0x01
	MOVWF gbl_relay_on
	MOVLW 0xC9
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x6F
	MOVWF CompTempVar218
	MOVLW 0x66
	MOVWF CompTempVar218+D'1'
	MOVWF CompTempVar218+D'2'
	CLRF CompTempVar218+D'3'
	MOVLW HIGH(CompTempVar218+D'0')
	MOVWF CompTempVar219
	MOVLW LOW(CompTempVar218+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar219, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x87
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x52
	MOVWF CompTempVar220
	MOVLW 0x45
	MOVWF CompTempVar220+D'1'
	MOVLW 0x4C
	MOVWF CompTempVar220+D'2'
	MOVLW 0x41
	MOVWF CompTempVar220+D'3'
	MOVLW 0x59
	MOVWF CompTempVar220+D'4'
	CLRF CompTempVar220+D'5'
	MOVLW HIGH(CompTempVar220+D'0')
	MOVWF CompTempVar221
	MOVLW LOW(CompTempVar220+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar221, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	GOTO	label65
label103
	CLRF gbl_relay_on
	MOVLW 0xC9
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x6F
	MOVWF CompTempVar222
	MOVLW 0x6E
	MOVWF CompTempVar222+D'1'
	MOVLW 0x20
	MOVWF CompTempVar222+D'2'
	CLRF CompTempVar222+D'3'
	MOVLW HIGH(CompTempVar222+D'0')
	MOVWF CompTempVar223
	MOVLW LOW(CompTempVar222+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar223, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x87
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar224
	MOVWF CompTempVar224+D'1'
	MOVWF CompTempVar224+D'2'
	MOVWF CompTempVar224+D'3'
	MOVWF CompTempVar224+D'4'
	CLRF CompTempVar224+D'5'
	MOVLW HIGH(CompTempVar224+D'0')
	MOVWF CompTempVar225
	MOVLW LOW(CompTempVar224+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar225, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	GOTO	label65
label104
	DECF gbl_long_push, W
	BTFSC STATUS,Z
	CLRF gbl_state
	BCF PCLATH,3
	GOTO	label65
label105
	MOVF gbl_prev_state, W
	XORLW 0x02
	BTFSC STATUS,Z
	GOTO	label106
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar226
	MOVWF CompTempVar226+D'1'
	MOVWF CompTempVar226+D'2'
	MOVWF CompTempVar226+D'3'
	MOVWF CompTempVar226+D'4'
	MOVWF CompTempVar226+D'5'
	MOVWF CompTempVar226+D'6'
	MOVLW 0x30
	MOVWF CompTempVar226+D'7'
	MOVWF CompTempVar226+D'8'
	MOVWF CompTempVar226+D'9'
	CLRF CompTempVar226+D'10'
	MOVLW HIGH(CompTempVar226+D'0')
	MOVWF CompTempVar227
	MOVLW LOW(CompTempVar226+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar227, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CALL send_tunit_00018
	MOVLW 0x20
	MOVWF CompTempVar228
	MOVLW 0x30
	MOVWF CompTempVar228+D'1'
	MOVWF CompTempVar228+D'2'
	MOVWF CompTempVar228+D'3'
	CLRF CompTempVar228+D'4'
	MOVLW HIGH(CompTempVar228+D'0')
	MOVWF CompTempVar229
	MOVLW LOW(CompTempVar228+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar229, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CALL send_tunit_00018
	MOVLW 0xC0
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar230+D'2'
	MOVWF CompTempVar230+D'6'
	MOVWF CompTempVar230+D'10'
	MOVWF CompTempVar230+D'11'
	MOVWF CompTempVar230+D'12'
	MOVLW 0x2F
	MOVWF CompTempVar230+D'4'
	MOVWF CompTempVar230+D'8'
	MOVWF CompTempVar230+D'13'
	MOVLW 0x41
	MOVWF CompTempVar230+D'1'
	MOVLW 0x44
	MOVWF CompTempVar230+D'7'
	MOVWF CompTempVar230+D'9'
	MOVLW 0x45
	MOVWF CompTempVar230+D'14'
	MOVLW 0x53
	MOVWF CompTempVar230
	MOVLW 0x55
	MOVWF CompTempVar230+D'3'
	MOVWF CompTempVar230+D'5'
	MOVLW 0x78
	MOVWF CompTempVar230+D'15'
	CLRF CompTempVar230+D'16'
	MOVLW HIGH(CompTempVar230+D'0')
	MOVWF CompTempVar231
	MOVLW LOW(CompTempVar230+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar231, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CALL get_temp_00000
	MOVF CompTempVarRet137, W
	BCF STATUS, RP0
	MOVWF update_dis_00013_arg_value
	MOVF CompTempVarRet137+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x0C
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVLW 0x02
	MOVWF gbl_prev_state
	CLRF init_state_00000_arg_timer
	MOVLW 0x01
	MOVWF init_state_00000_arg_temp
	CALL init_state_00000
	CLRF gbl_set_temp
	CLRF gbl_set_temp+D'1'
label106
	DECF gbl_button_push, W
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label109
	MOVF gbl_choice, W
	XORLW 0x75
	BTFSC STATUS,Z
	GOTO	label107
	XORLW 0x11
	BTFSC STATUS,Z
	GOTO	label107
	XORLW 0x17
	BTFSC STATUS,Z
	GOTO	label108
	GOTO	label109
label107
	MOVF gbl_set_temp, W
	MOVWF speed_butt_00015_arg_value
	MOVF gbl_set_temp+D'1', W
	MOVWF speed_butt_00015_arg_value+D'1'
	MOVF gbl_choice, W
	MOVWF speed_butt_00015_arg_direction
	MOVLW 0x07
	MOVWF speed_butt_00015_arg_disp_pos
	BCF PCLATH,3
	CALL speed_butt_00015
	MOVF CompTempVarRet155, W
	MOVWF gbl_set_temp
	MOVF CompTempVarRet155+D'1', W
	MOVWF gbl_set_temp+D'1'
	BSF PCLATH,3
	GOTO	label109
label108
	DECF gbl_long_push, W
	BTFSC STATUS,Z
	CLRF gbl_state
label109
	MOVF gbl_set_temp, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_set_temp+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x07
	MOVWF update_dis_00013_arg_location
	BCF PCLATH,3
	CALL update_dis_00013
	CALL get_temp_00000
	BCF STATUS, RP0
	MOVF gbl_set_temp+D'1', W
	SUBWF CompTempVarRet137+D'1', W
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label110
	MOVF gbl_set_temp, W
	SUBWF CompTempVarRet137, W
label110
	BTFSC STATUS,C
	GOTO	label111
	MOVLW 0x01
	MOVWF gbl_relay_on
	BCF PCLATH,3
	GOTO	label65
label111
	CLRF gbl_relay_on
	BCF PCLATH,3
	GOTO	label65
label112
	MOVF gbl_prev_state, W
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label115
	MOVF gbl_prev_state, W
	XORLW 0x04
	BTFSC STATUS,Z
	GOTO	label115
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar232+D'1'
	MOVWF CompTempVar232+D'6'
	MOVLW 0x30
	MOVWF CompTempVar232
	MOVWF CompTempVar232+D'2'
	MOVWF CompTempVar232+D'3'
	MOVWF CompTempVar232+D'4'
	MOVWF CompTempVar232+D'7'
	MOVWF CompTempVar232+D'8'
	MOVWF CompTempVar232+D'9'
	MOVLW 0x73
	MOVWF CompTempVar232+D'5'
	CLRF CompTempVar232+D'10'
	MOVLW HIGH(CompTempVar232+D'0')
	MOVWF CompTempVar233
	MOVLW LOW(CompTempVar232+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar233, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CALL send_tunit_00018
	MOVLW 0x20
	MOVWF CompTempVar234
	MOVLW 0x30
	MOVWF CompTempVar234+D'1'
	MOVWF CompTempVar234+D'2'
	MOVWF CompTempVar234+D'3'
	CLRF CompTempVar234+D'4'
	MOVLW HIGH(CompTempVar234+D'0')
	MOVWF CompTempVar235
	MOVLW LOW(CompTempVar234+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar235, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CALL send_tunit_00018
	MOVLW 0xC0
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar236+D'2'
	MOVWF CompTempVar236+D'6'
	MOVWF CompTempVar236+D'10'
	MOVLW 0x2F
	MOVWF CompTempVar236+D'4'
	MOVWF CompTempVar236+D'13'
	MOVLW 0x31
	MOVWF CompTempVar236+D'1'
	MOVLW 0x45
	MOVWF CompTempVar236+D'11'
	MOVWF CompTempVar236+D'14'
	MOVLW 0x4A
	MOVWF CompTempVar236+D'7'
	MOVLW 0x50
	MOVWF CompTempVar236
	MOVLW 0x52
	MOVWF CompTempVar236+D'3'
	MOVWF CompTempVar236+D'5'
	MOVLW 0x64
	MOVWF CompTempVar236+D'12'
	MOVLW 0x6D
	MOVWF CompTempVar236+D'8'
	MOVLW 0x70
	MOVWF CompTempVar236+D'9'
	MOVLW 0x78
	MOVWF CompTempVar236+D'15'
	CLRF CompTempVar236+D'16'
	MOVLW HIGH(CompTempVar236+D'0')
	MOVWF CompTempVar237
	MOVLW LOW(CompTempVar236+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar237, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVF gbl_state, W
	XORLW 0x03
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label113
	MOVLW 0x20
	MOVWF CompTempVar238+D'2'
	MOVWF CompTempVar238+D'6'
	MOVWF CompTempVar238+D'10'
	MOVLW 0x2F
	MOVWF CompTempVar238+D'4'
	MOVWF CompTempVar238+D'13'
	MOVLW 0x31
	MOVWF CompTempVar238+D'1'
	MOVLW 0x45
	MOVWF CompTempVar238+D'11'
	MOVWF CompTempVar238+D'14'
	MOVLW 0x4A
	MOVWF CompTempVar238+D'7'
	MOVLW 0x50
	MOVWF CompTempVar238
	MOVLW 0x52
	MOVWF CompTempVar238+D'3'
	MOVWF CompTempVar238+D'5'
	MOVLW 0x64
	MOVWF CompTempVar238+D'12'
	MOVLW 0x6D
	MOVWF CompTempVar238+D'8'
	MOVLW 0x70
	MOVWF CompTempVar238+D'9'
	MOVLW 0x78
	MOVWF CompTempVar238+D'15'
	CLRF CompTempVar238+D'16'
	MOVLW HIGH(CompTempVar238+D'0')
	MOVWF CompTempVar239
	MOVLW LOW(CompTempVar238+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar239, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	MOVLW 0x03
	MOVWF gbl_prev_state
	CLRF gbl_eeaddoffset
label113
	MOVF gbl_state, W
	XORLW 0x04
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label114
	MOVLW 0xC1
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x32
	MOVWF CompTempVar240
	CLRF CompTempVar240+D'1'
	MOVLW HIGH(CompTempVar240+D'0')
	MOVWF CompTempVar241
	MOVLW LOW(CompTempVar240+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar241, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x04
	MOVWF gbl_prev_state
	MOVLW 0x28
	MOVWF gbl_eeaddoffset
label114
	CLRF init_state_00000_arg_timer
	MOVLW 0x01
	MOVWF init_state_00000_arg_temp
	BCF PCLATH,3
	CALL init_state_00000
	CLRF gbl_step_number
	MOVF gbl_eeaddoffset, W
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_time
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_time+D'1'
	CLRF gbl_step_seconds
	CLRF gbl_step_seconds+D'1'
	MOVLW 0x02
	ADDWF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_temp
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_temp+D'1'
	MOVF gbl_step_time, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_time+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x02
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVF gbl_step_temp, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_temp+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x07
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVLW 0x19
	MOVWF gbl_prev_step_temp
	CLRF gbl_prev_step_temp+D'1'
	MOVF gbl_temp_units, F
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label115
	MOVLW 0x4E
	MOVWF gbl_prev_step_temp
	CLRF gbl_prev_step_temp+D'1'
label115
	DECF gbl_timer_on, W
	BTFSS STATUS,Z
	GOTO	label122
	MOVF gbl_step_seconds+D'1', W
	SUBWF gbl_step_time+D'1', W
	BTFSS STATUS,Z
	GOTO	label116
	MOVF gbl_step_seconds, W
	SUBWF gbl_step_time, W
label116
	BTFSC STATUS,C
	GOTO	label117
	INCF gbl_step_number, F
	CLRF gbl_step_seconds
	CLRF gbl_step_seconds+D'1'
	MOVF gbl_step_number, W
	MOVWF CompTempVar245
	CLRF CompTempVar246
	RLF CompTempVar245, F
	RLF CompTempVar246, F
	RLF CompTempVar245, F
	RLF CompTempVar246, F
	MOVLW 0xFC
	ANDWF CompTempVar245, F
	MOVF gbl_eeaddoffset, W
	ADDWF CompTempVar245, W
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	BCF PCLATH,3
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_time
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_time+D'1'
	MOVF gbl_step_temp, W
	MOVWF gbl_prev_step_temp
	MOVF gbl_step_temp+D'1', W
	MOVWF gbl_prev_step_temp+D'1'
	MOVLW 0x02
	ADDWF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_temp
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_temp+D'1'
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_step_number, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_step_time, F
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label117
	MOVF gbl_step_time+D'1', F
	BTFSS STATUS,Z
	GOTO	label117
	CLRF gbl_timer_on
	CLRF gbl_relay_on
	MOVLW 0x14
	MOVWF gbl_prev_state
label117
	MOVF gbl_step_time, W
	MOVWF proj_value_00000_arg_x2
	MOVF gbl_step_time+D'1', W
	MOVWF proj_value_00000_arg_x2+D'1'
	MOVF gbl_step_seconds, W
	MOVWF proj_value_00000_arg_x3
	MOVF gbl_step_seconds+D'1', W
	MOVWF proj_value_00000_arg_x3+D'1'
	MOVF gbl_prev_step_temp, W
	MOVWF proj_value_00000_arg_y1
	MOVF gbl_prev_step_temp+D'1', W
	MOVWF proj_value_00000_arg_y1+D'1'
	MOVF gbl_step_temp, W
	MOVWF proj_value_00000_arg_y2
	MOVF gbl_step_temp+D'1', W
	MOVWF proj_value_00000_arg_y2+D'1'
	BCF PCLATH,3
	CALL proj_value_00000
	MOVF CompTempVarRet168, W
	MOVWF gbl_set_temp
	MOVF CompTempVarRet168+D'1', W
	MOVWF gbl_set_temp+D'1'
	MOVF gbl_set_temp, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_set_temp+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x07
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVF gbl_tc, W
	MOVWF CompTempVar242
	BCF STATUS,C
	RRF CompTempVar242, W
	ADDWF gbl_step_seconds, W
	MOVWF CompTempVar243
	MOVF gbl_step_seconds+D'1', W
	MOVWF CompTempVar244
	BTFSC STATUS,C
	INCF CompTempVar244, F
	MOVF CompTempVar244, W
	SUBWF gbl_step_time+D'1', W
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label118
	MOVF CompTempVar243, W
	SUBWF gbl_step_time, W
label118
	BTFSS STATUS,C
	GOTO	label119
	MOVF gbl_step_time, W
	MOVWF proj_value_00000_arg_x2
	MOVF gbl_step_time+D'1', W
	MOVWF proj_value_00000_arg_x2+D'1'
	MOVF gbl_tc, W
	MOVWF CompTempVar248
	BCF STATUS,C
	RRF CompTempVar248, W
	ADDWF gbl_step_seconds, W
	MOVWF CompTempVar249
	MOVF gbl_step_seconds+D'1', W
	MOVWF CompTempVar250
	BTFSC STATUS,C
	INCF CompTempVar250, F
	MOVF CompTempVar249, W
	MOVWF proj_value_00000_arg_x3
	MOVF CompTempVar250, W
	MOVWF proj_value_00000_arg_x3+D'1'
	MOVF gbl_prev_step_temp, W
	MOVWF proj_value_00000_arg_y1
	MOVF gbl_prev_step_temp+D'1', W
	MOVWF proj_value_00000_arg_y1+D'1'
	MOVF gbl_step_temp, W
	MOVWF proj_value_00000_arg_y2
	MOVF gbl_step_temp+D'1', W
	MOVWF proj_value_00000_arg_y2+D'1'
	BCF PCLATH,3
	CALL proj_value_00000
	MOVF CompTempVarRet168, W
	MOVWF gbl_proj_temp
	MOVF CompTempVarRet168+D'1', W
	MOVWF gbl_proj_temp+D'1'
	BSF PCLATH,3
	GOTO	label120
label119
	MOVLW 0x04
	ADDWF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	BCF PCLATH,3
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF proj_value_00000_arg_x2
	MOVF CompTempVarRet151+D'1', W
	MOVWF proj_value_00000_arg_x2+D'1'
	MOVF gbl_tc, W
	MOVWF CompTempVar256
	BCF STATUS,C
	RRF CompTempVar256, F
	MOVF gbl_step_seconds, W
	SUBWF gbl_step_time, W
	MOVWF CompTempVar254
	INCF gbl_step_seconds+D'1', W
	BTFSC STATUS,C
	MOVF gbl_step_seconds+D'1', W
	SUBWF gbl_step_time+D'1', W
	MOVWF CompTempVar255
	MOVF CompTempVar254, W
	SUBWF CompTempVar256, W
	MOVWF CompTempVar257
	COMF CompTempVar255, W
	MOVWF CompTempVar258
	BTFSC STATUS,C
	INCF CompTempVar258, F
	MOVF CompTempVar257, W
	MOVWF proj_value_00000_arg_x3
	MOVF CompTempVar258, W
	MOVWF proj_value_00000_arg_x3+D'1'
	MOVF gbl_step_temp, W
	MOVWF proj_value_00000_arg_y1
	MOVF gbl_step_temp+D'1', W
	MOVWF proj_value_00000_arg_y1+D'1'
	MOVLW 0x06
	ADDWF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF proj_value_00000_arg_y2
	MOVF CompTempVarRet151+D'1', W
	MOVWF proj_value_00000_arg_y2+D'1'
	CALL proj_value_00000
	MOVF CompTempVarRet168, W
	MOVWF gbl_proj_temp
	MOVF CompTempVarRet168+D'1', W
	MOVWF gbl_proj_temp+D'1'
label120
	BCF PCLATH,3
	CALL get_temp_00000
	BCF STATUS, RP0
	MOVF gbl_tc, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x06
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet317, W
	MOVWF CompTempVar261
	MOVF gbl_a_temp2, W
	SUBWF gbl_a_temp1, W
	MOVWF CompTempVar259
	INCF gbl_a_temp2+D'1', W
	BTFSC STATUS,C
	MOVF gbl_a_temp2+D'1', W
	SUBWF gbl_a_temp1+D'1', W
	MOVWF CompTempVar260
	MOVF CompTempVar261, W
	MOVWF __mul_16u__0000C_arg_a
	CLRF __mul_16u__0000C_arg_a+D'1'
	MOVF CompTempVar259, W
	MOVWF __mul_16u__0000C_arg_b
	MOVF CompTempVar260, W
	MOVWF __mul_16u__0000C_arg_b+D'1'
	CALL __mul_16u__0000C
	MOVF CompTempVarRet554, W
	MOVWF CompTempVar262
	MOVF CompTempVarRet554+D'1', W
	MOVWF CompTempVar263
	MOVF CompTempVar262, W
	ADDWF CompTempVarRet137, W
	MOVWF CompTempVar264
	MOVF CompTempVar263, W
	MOVWF CompTempVar265
	MOVF CompTempVarRet137+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar265, F
	ADDWF CompTempVar265, F
	MOVF CompTempVar264, W
	MOVWF gbl_proj_actual
	MOVF CompTempVar265, W
	MOVWF gbl_proj_actual+D'1'
	CALL get_temp_00000
	BCF STATUS, RP0
	MOVF gbl_set_temp, W
	SUBWF CompTempVarRet137, W
	MOVWF CompTempVar268
	INCF gbl_set_temp+D'1', W
	BTFSC STATUS,C
	MOVF gbl_set_temp+D'1', W
	SUBWF CompTempVarRet137+D'1', W
	MOVWF CompTempVar269
	MOVF gbl_proj_temp, W
	SUBWF gbl_proj_actual, W
	MOVWF CompTempVar266
	INCF gbl_proj_temp+D'1', W
	BTFSC STATUS,C
	MOVF gbl_proj_temp+D'1', W
	SUBWF gbl_proj_actual+D'1', W
	MOVWF CompTempVar267
	MOVF CompTempVar266, W
	ADDWF CompTempVar268, W
	MOVWF CompTempVar270
	MOVF CompTempVar267, W
	MOVWF CompTempVar271
	MOVF CompTempVar269, W
	BTFSC STATUS,C
	INCF CompTempVar271, F
	ADDWF CompTempVar271, F
	MOVF CompTempVar270, W
	MOVWF gbl_proj_err
	MOVF CompTempVar271, W
	MOVWF gbl_proj_err+D'1'
	MOVLW 0x80
	MOVWF CompTempVar272
	MOVF gbl_proj_err+D'1', W
	XORLW 0x80
	SUBWF CompTempVar272, W
	MOVF gbl_proj_err, W
	MOVF gbl_proj_err+D'1', F
	BTFSC STATUS,Z
	SUBLW 0x00
	BSF PCLATH,3
	BTFSS STATUS,C
	GOTO	label121
	MOVLW 0x01
	MOVWF gbl_relay_on
	GOTO	label123
label121
	CLRF gbl_relay_on
	GOTO	label123
label122
	MOVF gbl_display_seconds, W
	MOVWF gbl_total_seconds
	MOVF gbl_display_seconds+D'1', W
	MOVWF gbl_total_seconds+D'1'
label123
	DECF gbl_button_push, W
	BCF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label65
	MOVF gbl_choice, W
	XORLW 0x75
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label124
	XORLW 0x11
	BTFSC STATUS,Z
	GOTO	label127
	XORLW 0x17
	BTFSC STATUS,Z
	GOTO	label129
	BCF PCLATH,3
	GOTO	label65
label124
	DECF gbl_long_push, W
	BTFSS STATUS,Z
	GOTO	label125
	MOVLW 0x14
	MOVWF gbl_prev_state
	BCF PCLATH,3
	GOTO	label65
label125
	MOVF gbl_timer_on, F
	BTFSS STATUS,Z
	GOTO	label126
	MOVF gbl_display_seconds, W
	MOVWF gbl_total_seconds
	MOVF gbl_display_seconds+D'1', W
	MOVWF gbl_total_seconds+D'1'
	MOVLW 0xC3
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x53
	MOVWF CompTempVar273
	CLRF CompTempVar273+D'1'
	MOVLW HIGH(CompTempVar273+D'0')
	MOVWF CompTempVar274
	MOVLW LOW(CompTempVar273+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar274, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x01
	MOVWF gbl_timer_on
	GOTO	label65
label126
	MOVF gbl_total_seconds, W
	MOVWF gbl_display_seconds
	MOVF gbl_total_seconds+D'1', W
	MOVWF gbl_display_seconds+D'1'
	MOVLW 0xC3
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x52
	MOVWF CompTempVar275
	CLRF CompTempVar275+D'1'
	MOVLW HIGH(CompTempVar275+D'0')
	MOVWF CompTempVar276
	MOVLW LOW(CompTempVar275+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar276, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CLRF gbl_timer_on
	CLRF gbl_relay_on
	GOTO	label65
label127
	CLRF gbl_display_seconds
	CLRF gbl_display_seconds+D'1'
	CLRF gbl_total_seconds
	CLRF gbl_total_seconds+D'1'
	MOVLW 0xC3
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x52
	MOVWF CompTempVar277
	CLRF CompTempVar277+D'1'
	MOVLW HIGH(CompTempVar277+D'0')
	MOVWF CompTempVar278
	MOVLW LOW(CompTempVar277+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar278, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	CLRF gbl_relay_on
	CLRF gbl_timer_on
	INCF gbl_step_number, F
	MOVF gbl_step_number, W
	MOVWF CompTempVar279
	CLRF CompTempVar280
	RLF CompTempVar279, F
	RLF CompTempVar280, F
	RLF CompTempVar279, F
	RLF CompTempVar280, F
	MOVLW 0xFC
	ANDWF CompTempVar279, F
	MOVF gbl_eeaddoffset, W
	ADDWF CompTempVar279, W
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_time
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_time+D'1'
	MOVF gbl_step_time, F
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label128
	MOVF gbl_step_time+D'1', F
	BTFSS STATUS,Z
	GOTO	label128
	MOVLW 0x14
	MOVWF gbl_prev_state
label128
	MOVF gbl_step_temp, W
	MOVWF gbl_prev_step_temp
	MOVF gbl_step_temp+D'1', W
	MOVWF gbl_prev_step_temp+D'1'
	MOVLW 0x02
	ADDWF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	BCF PCLATH,3
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_temp
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_temp+D'1'
	MOVF gbl_step_time, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_time+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x02
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVF gbl_step_temp, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_temp+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x07
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_step_number, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label65
label129
	MOVF gbl_state, W
	MOVWF gbl_prev_state
	DECF gbl_long_push, W
	BTFSS STATUS,Z
	GOTO	label130
	CLRF gbl_state
	BCF PCLATH,3
	GOTO	label65
label130
	MOVLW 0x0A
	ADDWF gbl_state, F
	BCF PCLATH,3
	GOTO	label65
label131
	MOVF gbl_prev_state, W
	XORLW 0x0D
	BTFSC STATUS,Z
	GOTO	label134
	MOVF gbl_prev_state, W
	XORLW 0x0E
	BTFSC STATUS,Z
	GOTO	label134
	MOVLW 0xC0
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar281+D'2'
	MOVWF CompTempVar281+D'6'
	MOVWF CompTempVar281+D'10'
	MOVLW 0x2F
	MOVWF CompTempVar281+D'4'
	MOVWF CompTempVar281+D'8'
	MOVWF CompTempVar281+D'13'
	MOVLW 0x31
	MOVWF CompTempVar281+D'1'
	MOVLW 0x44
	MOVWF CompTempVar281+D'7'
	MOVWF CompTempVar281+D'9'
	MOVLW 0x45
	MOVWF CompTempVar281
	MOVWF CompTempVar281+D'14'
	MOVLW 0x4E
	MOVWF CompTempVar281+D'11'
	MOVLW 0x55
	MOVWF CompTempVar281+D'3'
	MOVWF CompTempVar281+D'5'
	MOVLW 0x78
	MOVWF CompTempVar281+D'12'
	MOVWF CompTempVar281+D'15'
	CLRF CompTempVar281+D'16'
	MOVLW HIGH(CompTempVar281+D'0')
	MOVWF CompTempVar282
	MOVLW LOW(CompTempVar281+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar282, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVF gbl_state, W
	XORLW 0x0D
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label132
	MOVLW 0x0D
	MOVWF gbl_prev_state
	CLRF gbl_eeaddoffset
label132
	MOVF gbl_state, W
	XORLW 0x0E
	BTFSS STATUS,Z
	GOTO	label133
	MOVLW 0xC1
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x32
	MOVWF CompTempVar283
	MOVLW 0x20
	MOVWF CompTempVar283+D'1'
	CLRF CompTempVar283+D'2'
	MOVLW HIGH(CompTempVar283+D'0')
	MOVWF CompTempVar284
	MOVLW LOW(CompTempVar283+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar284, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x0E
	MOVWF gbl_prev_state
	MOVLW 0x28
	MOVWF gbl_eeaddoffset
label133
	CLRF init_state_00000_arg_timer
	CLRF init_state_00000_arg_temp
	BCF PCLATH,3
	CALL init_state_00000
	CLRF gbl_step_number
	MOVF gbl_eeaddoffset, W
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_time
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_time+D'1'
	MOVLW 0x02
	ADDWF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_temp
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_temp+D'1'
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_step_number, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_step_time, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_time+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x02
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVF gbl_step_temp, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_temp+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x07
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x0F
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	CLRF gbl_cur_pos
label134
	DECF gbl_button_push, W
	BCF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label65
	MOVF gbl_cur_pos, W
	XORLW 0x00
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label135
	XORLW 0x05
	BTFSC STATUS,Z
	GOTO	label137
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label140
	GOTO	label143
label135
	MOVF gbl_step_number, W
	MOVWF mod_digit_00000_arg_value
	MOVF gbl_choice, W
	MOVWF mod_digit_00000_arg_direction
	BCF PCLATH,3
	CALL mod_digit_00000
	MOVF CompTempVarRet136, W
	MOVWF gbl_step_number
	MOVF gbl_step_number, W
	MOVWF CompTempVar285
	CLRF CompTempVar286
	RLF CompTempVar285, F
	RLF CompTempVar286, F
	RLF CompTempVar285, F
	RLF CompTempVar286, F
	MOVLW 0xFC
	ANDWF CompTempVar285, F
	MOVF gbl_eeaddoffset, W
	ADDWF CompTempVar285, W
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_time
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_time+D'1'
	MOVF gbl_step_time, F
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label136
	MOVF gbl_step_time+D'1', F
	BTFSS STATUS,Z
	GOTO	label136
	CLRF gbl_step_number
label136
	MOVLW 0x02
	ADDWF gbl_eeaddress, W
	MOVWF get_edata_00000_arg_e_address
	BCF PCLATH,3
	CALL get_edata_00000
	MOVF CompTempVarRet151, W
	MOVWF gbl_step_temp
	MOVF CompTempVarRet151+D'1', W
	MOVWF gbl_step_temp+D'1'
	MOVF gbl_step_time, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_time+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x02
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVF gbl_step_temp, W
	MOVWF update_dis_00013_arg_value
	MOVF gbl_step_temp+D'1', W
	MOVWF update_dis_00013_arg_value+D'1'
	MOVLW 0x07
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_step_number, W
	MOVWF bin2hex_00000_arg_x
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVLW 0x0F
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	BSF PCLATH,3
	GOTO	label143
label137
	MOVF gbl_choice, W
	XORLW 0x75
	BTFSC STATUS,Z
	GOTO	label138
	MOVF gbl_choice, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label139
label138
	MOVF gbl_step_time, W
	MOVWF speed_butt_00015_arg_value
	MOVF gbl_step_time+D'1', W
	MOVWF speed_butt_00015_arg_value+D'1'
	MOVF gbl_choice, W
	MOVWF speed_butt_00015_arg_direction
	MOVLW 0x02
	MOVWF speed_butt_00015_arg_disp_pos
	BCF PCLATH,3
	CALL speed_butt_00015
	MOVF CompTempVarRet155, W
	MOVWF gbl_step_time
	MOVF CompTempVarRet155+D'1', W
	MOVWF gbl_step_time+D'1'
label139
	MOVF gbl_step_number, W
	MOVWF CompTempVar287
	CLRF CompTempVar288
	RLF CompTempVar287, F
	RLF CompTempVar288, F
	RLF CompTempVar287, F
	RLF CompTempVar288, F
	MOVLW 0xFC
	ANDWF CompTempVar287, F
	MOVF gbl_eeaddoffset, W
	ADDWF CompTempVar287, W
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF put_edata_00000_arg_e_address
	MOVF gbl_step_time, W
	MOVWF put_edata_00000_arg_value
	MOVF gbl_step_time+D'1', W
	MOVWF put_edata_00000_arg_value+D'1'
	BCF PCLATH,3
	CALL put_edata_00000
	BSF PCLATH,3
	GOTO	label143
label140
	MOVF gbl_choice, W
	XORLW 0x75
	BTFSC STATUS,Z
	GOTO	label141
	MOVF gbl_choice, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label142
label141
	MOVF gbl_step_temp, W
	MOVWF speed_butt_00015_arg_value
	MOVF gbl_step_temp+D'1', W
	MOVWF speed_butt_00015_arg_value+D'1'
	MOVF gbl_choice, W
	MOVWF speed_butt_00015_arg_direction
	MOVLW 0x07
	MOVWF speed_butt_00015_arg_disp_pos
	BCF PCLATH,3
	CALL speed_butt_00015
	MOVF CompTempVarRet155, W
	MOVWF gbl_step_temp
	MOVF CompTempVarRet155+D'1', W
	MOVWF gbl_step_temp+D'1'
label142
	MOVF gbl_step_number, W
	MOVWF CompTempVar289
	CLRF CompTempVar290
	RLF CompTempVar289, F
	RLF CompTempVar290, F
	RLF CompTempVar289, F
	RLF CompTempVar290, F
	MOVLW 0xFC
	ANDWF CompTempVar289, F
	MOVF gbl_eeaddoffset, W
	ADDWF CompTempVar289, W
	MOVWF CompTempVar291
	MOVF CompTempVar290, W
	MOVWF CompTempVar292
	BTFSC STATUS,C
	INCF CompTempVar292, F
	MOVLW 0x02
	ADDWF CompTempVar291, W
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF put_edata_00000_arg_e_address
	MOVF gbl_step_temp, W
	MOVWF put_edata_00000_arg_value
	MOVF gbl_step_temp+D'1', W
	MOVWF put_edata_00000_arg_value+D'1'
	BCF PCLATH,3
	CALL put_edata_00000
label143
	MOVF gbl_choice, W
	XORLW 0x73
	BCF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label65
	DECF gbl_long_push, W
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label144
	MOVF gbl_state, W
	MOVWF gbl_prev_state
	MOVLW 0x0A
	SUBWF gbl_state, F
	MOVLW 0x0C
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	GOTO	label65
label144
	MOVF gbl_cur_pos, W
	XORLW 0x05
	BTFSS STATUS,Z
	GOTO	label145
	MOVLW 0x0A
	MOVWF gbl_cur_pos
	GOTO	label147
label145
	MOVF gbl_cur_pos, F
	BTFSS STATUS,Z
	GOTO	label146
	MOVLW 0x05
	MOVWF gbl_cur_pos
	GOTO	label147
label146
	CLRF gbl_cur_pos
label147
	MOVF gbl_cur_pos, W
	ADDLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x0F
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label65
label148
	MOVF gbl_prev_state, W
	XORLW 0x05
	BTFSC STATUS,Z
	GOTO	label149
	MOVLW 0xC0
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x20
	MOVWF CompTempVar293+D'2'
	MOVWF CompTempVar293+D'5'
	MOVWF CompTempVar293+D'6'
	MOVWF CompTempVar293+D'9'
	MOVWF CompTempVar293+D'10'
	MOVLW 0x2F
	MOVWF CompTempVar293+D'13'
	MOVLW 0x44
	MOVWF CompTempVar293+D'7'
	MOVLW 0x45
	MOVWF CompTempVar293+D'14'
	MOVLW 0x4E
	MOVWF CompTempVar293+D'11'
	MOVLW 0x53
	MOVWF CompTempVar293
	MOVLW 0x55
	MOVWF CompTempVar293+D'1'
	MOVWF CompTempVar293+D'3'
	MOVLW 0x6E
	MOVWF CompTempVar293+D'8'
	MOVLW 0x70
	MOVWF CompTempVar293+D'4'
	MOVLW 0x78
	MOVWF CompTempVar293+D'12'
	MOVWF CompTempVar293+D'15'
	CLRF CompTempVar293+D'16'
	MOVLW HIGH(CompTempVar293+D'0')
	MOVWF CompTempVar294
	MOVLW LOW(CompTempVar293+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar294, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	CALL printf_lcd_00000
	MOVLW 0x05
	MOVWF gbl_prev_state
	CLRF init_state_00000_arg_timer
	CLRF init_state_00000_arg_temp
	CALL init_state_00000
	MOVLW 0x01
	MOVWF gbl_set_mode
	MOVWF gbl_button_push
	MOVLW 0x6E
	MOVWF gbl_choice
label149
	DECF gbl_button_push, W
	BCF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label65
	MOVF gbl_choice, W
	XORLW 0x73
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label150
	XORLW 0x17
	BTFSC STATUS,Z
	GOTO	label152
	XORLW 0x11
	BTFSC STATUS,Z
	GOTO	label152
	GOTO	label159
label150
	DECF gbl_long_push, W
	BTFSS STATUS,Z
	GOTO	label151
	CLRF gbl_state
	GOTO	label159
label151
	INCF gbl_set_mode, F
	MOVF gbl_set_mode, W
	XORLW 0x06
	BTFSS STATUS,Z
	GOTO	label159
	MOVLW 0x01
	MOVWF gbl_set_mode
	GOTO	label159
label152
	MOVF gbl_set_mode, W
	ADDLW 0x4F
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF onboard_ee_00011_arg_e_address
	BCF PCLATH,3
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF main_24_value
	DECF gbl_set_mode, W
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label153
	MOVF gbl_choice, W
	XORLW 0x75
	BTFSC STATUS,Z
	INCF main_24_value, F
	MOVF gbl_choice, W
	XORLW 0x64
	BTFSC STATUS,Z
	DECF main_24_value, F
	MOVF main_24_value, W
	MOVWF update_dis_00013_arg_value
	CLRF update_dis_00013_arg_value+D'1'
	MOVLW 0x0C
	MOVWF update_dis_00013_arg_location
	BCF PCLATH,3
	CALL update_dis_00013
label153
	MOVF gbl_set_mode, W
	XORLW 0x02
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label154
	MOVF gbl_set_mode, W
	XORLW 0x03
	BTFSS STATUS,Z
	GOTO	label156
label154
	DECF main_24_value, W
	BTFSS STATUS,Z
	GOTO	label155
	CLRF main_24_value
	GOTO	label156
label155
	MOVF main_24_value, F
	BTFSS STATUS,Z
	GOTO	label156
	MOVLW 0x01
	MOVWF main_24_value
label156
	MOVF gbl_set_mode, W
	XORLW 0x04
	BTFSC STATUS,Z
	GOTO	label157
	MOVF gbl_set_mode, W
	XORLW 0x05
	BTFSS STATUS,Z
	GOTO	label158
label157
	MOVF main_24_value, W
	MOVWF mod_digit_00000_arg_value
	MOVF gbl_choice, W
	MOVWF mod_digit_00000_arg_direction
	BCF PCLATH,3
	CALL mod_digit_00000
	MOVF CompTempVarRet136, W
	MOVWF main_24_value
label158
	MOVF main_24_value, W
	MOVWF onboard_ee_00012_arg_e_data
	MOVF gbl_eeaddress, W
	MOVWF onboard_ee_00012_arg_e_address
	BCF PCLATH,3
	CALL onboard_ee_00012
label159
	MOVF gbl_set_mode, W
	ADDLW 0x4F
	MOVWF gbl_eeaddress
	MOVF gbl_eeaddress, W
	MOVWF onboard_ee_00011_arg_e_address
	BCF PCLATH,3
	CALL onboard_ee_00011
	MOVF CompTempVarRet135, W
	BCF STATUS, RP1
	MOVWF main_24_value
	MOVLW 0x80
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF gbl_set_mode, W
	XORLW 0x01
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label160
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label161
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label162
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label164
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label166
	BCF PCLATH,3
	GOTO	label65
label160
	MOVF main_24_value, W
	MOVWF gbl_tc
	MOVLW 0x20
	MOVWF CompTempVar295+D'4'
	MOVWF CompTempVar295+D'10'
	MOVWF CompTempVar295+D'12'
	MOVWF CompTempVar295+D'13'
	MOVWF CompTempVar295+D'14'
	MOVLW 0x3D
	MOVWF CompTempVar295+D'11'
	MOVLW 0x43
	MOVWF CompTempVar295+D'5'
	MOVLW 0x54
	MOVWF CompTempVar295
	MOVLW 0x65
	MOVWF CompTempVar295+D'3'
	MOVLW 0x69
	MOVWF CompTempVar295+D'1'
	MOVLW 0x6D
	MOVWF CompTempVar295+D'2'
	MOVLW 0x6E
	MOVWF CompTempVar295+D'7'
	MOVLW 0x6F
	MOVWF CompTempVar295+D'6'
	MOVLW 0x73
	MOVWF CompTempVar295+D'8'
	MOVWF CompTempVar295+D'15'
	MOVLW 0x74
	MOVWF CompTempVar295+D'9'
	CLRF CompTempVar295+D'16'
	MOVLW HIGH(CompTempVar295+D'0')
	MOVWF CompTempVar296
	MOVLW LOW(CompTempVar295+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar296, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	MOVF main_24_value, W
	MOVWF update_dis_00013_arg_value
	CLRF update_dis_00013_arg_value+D'1'
	MOVLW 0x0C
	MOVWF update_dis_00013_arg_location
	CALL update_dis_00013
	GOTO	label65
label161
	MOVF main_24_value, W
	MOVWF gbl_temp_units
	MOVLW 0x20
	MOVWF CompTempVar297+D'4'
	MOVWF CompTempVar297+D'10'
	MOVWF CompTempVar297+D'11'
	MOVWF CompTempVar297+D'13'
	MOVWF CompTempVar297+D'14'
	MOVLW 0x3D
	MOVWF CompTempVar297+D'12'
	MOVLW 0x54
	MOVWF CompTempVar297
	MOVLW 0x55
	MOVWF CompTempVar297+D'5'
	MOVLW 0x65
	MOVWF CompTempVar297+D'1'
	MOVLW 0x69
	MOVWF CompTempVar297+D'7'
	MOVLW 0x6D
	MOVWF CompTempVar297+D'2'
	MOVLW 0x6E
	MOVWF CompTempVar297+D'6'
	MOVLW 0x70
	MOVWF CompTempVar297+D'3'
	MOVLW 0x73
	MOVWF CompTempVar297+D'9'
	MOVLW 0x74
	MOVWF CompTempVar297+D'8'
	CLRF CompTempVar297+D'15'
	MOVLW HIGH(CompTempVar297+D'0')
	MOVWF CompTempVar298
	MOVLW LOW(CompTempVar297+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar298, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	MOVLW 0x8F
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	CALL send_tunit_00018
	GOTO	label65
label162
	MOVF main_24_value, W
	MOVWF gbl_relay_LED
	MOVLW 0x20
	MOVWF CompTempVar299+D'5'
	MOVWF CompTempVar299+D'9'
	MOVWF CompTempVar299+D'10'
	MOVLW 0x3D
	MOVWF CompTempVar299+D'11'
	MOVLW 0x44
	MOVWF CompTempVar299+D'8'
	MOVLW 0x45
	MOVWF CompTempVar299+D'7'
	MOVLW 0x4C
	MOVWF CompTempVar299+D'6'
	MOVLW 0x52
	MOVWF CompTempVar299
	MOVLW 0x61
	MOVWF CompTempVar299+D'3'
	MOVLW 0x65
	MOVWF CompTempVar299+D'1'
	MOVLW 0x6C
	MOVWF CompTempVar299+D'2'
	MOVLW 0x79
	MOVWF CompTempVar299+D'4'
	CLRF CompTempVar299+D'12'
	MOVLW HIGH(CompTempVar299+D'0')
	MOVWF CompTempVar300
	MOVLW LOW(CompTempVar299+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar300, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	MOVLW 0x8C
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	DECF main_24_value, W
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label163
	MOVLW 0x20
	MOVWF CompTempVar301
	MOVWF CompTempVar301+D'3'
	MOVLW 0x4E
	MOVWF CompTempVar301+D'2'
	MOVLW 0x4F
	MOVWF CompTempVar301+D'1'
	CLRF CompTempVar301+D'4'
	MOVLW HIGH(CompTempVar301+D'0')
	MOVWF CompTempVar302
	MOVLW LOW(CompTempVar301+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar302, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	GOTO	label65
label163
	MOVLW 0x20
	MOVWF CompTempVar303
	MOVLW 0x4F
	MOVWF CompTempVar303+D'1'
	MOVLW 0x46
	MOVWF CompTempVar303+D'2'
	MOVWF CompTempVar303+D'3'
	CLRF CompTempVar303+D'4'
	MOVLW HIGH(CompTempVar303+D'0')
	MOVWF CompTempVar304
	MOVLW LOW(CompTempVar303+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar304, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	GOTO	label65
label164
	MOVF main_24_value, W
	MOVWF gbl_t_inc
	MOVLW 0x20
	MOVWF CompTempVar305+D'6'
	MOVWF CompTempVar305+D'11'
	MOVWF CompTempVar305+D'13'
	MOVWF CompTempVar305+D'14'
	MOVWF CompTempVar305+D'15'
	MOVLW 0x2F
	MOVWF CompTempVar305+D'2'
	MOVLW 0x3D
	MOVWF CompTempVar305+D'12'
	MOVLW 0x49
	MOVWF CompTempVar305+D'7'
	MOVLW 0x54
	MOVWF CompTempVar305
	MOVLW 0x63
	MOVWF CompTempVar305+D'9'
	MOVLW 0x6D
	MOVWF CompTempVar305+D'1'
	MOVWF CompTempVar305+D'4'
	MOVLW 0x6E
	MOVWF CompTempVar305+D'8'
	MOVLW 0x70
	MOVWF CompTempVar305+D'5'
	MOVLW 0x72
	MOVWF CompTempVar305+D'10'
	MOVLW 0x74
	MOVWF CompTempVar305+D'3'
	CLRF CompTempVar305+D'16'
	MOVLW HIGH(CompTempVar305+D'0')
	MOVWF CompTempVar306
	MOVLW LOW(CompTempVar305+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar306, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	MOVLW 0x8E
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF main_24_value, W
	XORLW 0x09
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label165
	MOVLW 0x31
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x30
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label65
label165
	INCF main_24_value, W
	MOVWF bin2hex_00000_arg_x
	BCF PCLATH,3
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label65
label166
	MOVF main_24_value, W
	MOVWF gbl_clock_cal
	MOVLW 0x20
	MOVWF CompTempVar307+D'5'
	MOVWF CompTempVar307+D'9'
	MOVWF CompTempVar307+D'10'
	MOVWF CompTempVar307+D'12'
	MOVWF CompTempVar307+D'13'
	MOVWF CompTempVar307+D'14'
	MOVWF CompTempVar307+D'15'
	MOVLW 0x3D
	MOVWF CompTempVar307+D'11'
	MOVLW 0x43
	MOVWF CompTempVar307
	MOVLW 0x61
	MOVWF CompTempVar307+D'7'
	MOVLW 0x63
	MOVWF CompTempVar307+D'3'
	MOVWF CompTempVar307+D'6'
	MOVLW 0x6B
	MOVWF CompTempVar307+D'4'
	MOVLW 0x6C
	MOVWF CompTempVar307+D'1'
	MOVWF CompTempVar307+D'8'
	MOVLW 0x6F
	MOVWF CompTempVar307+D'2'
	CLRF CompTempVar307+D'16'
	MOVLW HIGH(CompTempVar307+D'0')
	MOVWF CompTempVar308
	MOVLW LOW(CompTempVar307+D'0')
	MOVWF printf_lcd_00000_arg_nate
	MOVF CompTempVar308, W
	MOVWF printf_lcd_00000_arg_nate+D'1'
	BCF PCLATH,3
	CALL printf_lcd_00000
	MOVLW 0x8E
	MOVWF send_cmd_00000_arg_c
	MOVLW 0x01
	MOVWF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	MOVF main_24_value, W
	XORLW 0x09
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label167
	MOVLW 0x31
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	BCF PCLATH,3
	CALL send_cmd_00000
	MOVLW 0x30
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label65
label167
	INCF main_24_value, W
	MOVWF bin2hex_00000_arg_x
	BCF PCLATH,3
	CALL bin2hex_00000
	MOVF CompTempVarRet152, W
	MOVWF send_cmd_00000_arg_c
	CLRF send_cmd_00000_arg_cmd
	CALL send_cmd_00000
	GOTO	label65
; } main function end

	ORG 0x00000F1E
_startup
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_err_num
	CLRF gbl_a_temp1
	CLRF gbl_a_temp1+D'1'
	CLRF gbl_a_temp2
	CLRF gbl_a_temp2+D'1'
	CLRF gbl_tot_err
	CLRF gbl_tot_err+D'1'
	CLRF gbl_proj_actual
	CLRF gbl_proj_actual+D'1'
	CLRF gbl_proj_temp
	CLRF gbl_proj_temp+D'1'
	CLRF gbl_set_temp
	CLRF gbl_set_temp+D'1'
	CLRF gbl_timer_on
	CLRF gbl_temp_on
	CLRF gbl_relay_on
	CLRF gbl_two_second_timer
	CLRF gbl_two_second_timer+D'1'
	CLRF gbl_update_flag
	CLRF gbl_menu_index
	CLRF gbl_timer_int
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x00000F38
interrupt
; { interrupt ; function begin
	BCF PCLATH,3
	CALL int_save_r_00019
	BSF PCLATH,3
	BTFSS gbl_pir1,0
	GOTO	label172
	BCF gbl_t1con,0
	MOVLW 0x9E
	MOVWF gbl_tmr1h
	MOVF gbl_clock_cal, W
	BSF STATUS, RP0
	MOVWF __mul_8u_8_00006_arg_a
	MOVLW 0x14
	MOVWF __mul_8u_8_00006_arg_b
	BCF PCLATH,3
	CALL __mul_8u_8_00006
	MOVF CompTempVarRet551, W
	MOVWF CompTempVar178
	MOVF CompTempVarRet551+D'1', W
	MOVWF CompTempVar179
	MOVF CompTempVar178, W
	ADDLW 0x57
	BCF STATUS, RP0
	MOVWF gbl_tmr1l
	INCF gbl_m_seconds, F
	MOVF gbl_m_seconds, W
	XORLW 0x0A
	BSF PCLATH,3
	BTFSS STATUS,Z
	GOTO	label169
	CLRF gbl_m_seconds
	INCF gbl_total_seconds, F
	BTFSC STATUS,Z
	INCF gbl_total_seconds+D'1', F
	MOVLW 0x01
	MOVWF gbl_timer_int
label169
	MOVLW 0x03
	SUBWF gbl_total_seconds+D'1', W
	BTFSS STATUS,Z
	GOTO	label170
	MOVLW 0xE7
	SUBWF gbl_total_seconds, W
label170
	BTFSS STATUS,C
	GOTO	label171
	CLRF gbl_total_seconds
	CLRF gbl_total_seconds+D'1'
label171
	BCF gbl_pir1,0
	BSF gbl_t1con,0
label172
	BCF PCLATH,3
	CALL int_restor_0001A
	SWAPF Int1BContext+D'2', W
	MOVWF FSR
	SWAPF Int1BContext+D'1', W
	MOVWF PCLATH
	SWAPF Int1BContext, W
	MOVWF STATUS
	SWAPF Int1Context, F
	SWAPF Int1Context, W
	RETFIE
; } interrupt function end

	ORG 0x00002007
	DW 0x3F30
	ORG 0x00002100
	DW 0x0000
	DW 0x000F
	DW 0x0000
	DW 0x0028
	DW 0x0000
	DW 0x005A
	DW 0x0000
	DW 0x0082
	DW 0x0000
	DW 0x005A
	DW 0x0000
	DW 0x00C1
	DW 0x0000
	DW 0x002D
	DW 0x0000
	DW 0x00F0
	DW 0x0000
	DW 0x003C
	DW 0x0000
	DW 0x008C
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x000F
	DW 0x0000
	DW 0x0028
	DW 0x0000
	DW 0x005A
	DW 0x0000
	DW 0x0096
	DW 0x0000
	DW 0x005A
	DW 0x0000
	DW 0x00B4
	DW 0x0000
	DW 0x001E
	DW 0x0000
	DW 0x00D7
	DW 0x0000
	DW 0x003C
	DW 0x0000
	DW 0x0096
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0014
	DW 0x0001
	DW 0x0001
	DW 0x0004
	DW 0x0004
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	DW 0x0000
	END
