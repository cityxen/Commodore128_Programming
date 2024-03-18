 ///////////////////////////////////////////////////////////////////////////////////////////
// CityXen Commodore 128 Programming Library
//
// NEW C128 Commands (C64 KERNAL)

.const IECIN $FFA5=65445 // Serial - byte input //         
.const CHKIN $FFC6=65478 // Set input channel //         
.const CHKOU $FFC9=65481 // Set output channel //         
.const CHRIN $FFCF=65487 // Input from channel //         
.const CHROU $FFD2=65490 // Output to channel //         
.const IECOU $FFA8=65448 // Serial - byte output //     
.const CINT  $FF81=65409 // Initialize screen editor and devices // 
.const CLALL $FFE7=65511 // Close all channels and files //   
.const CLOSE $FFC3=65475 // Close logical file //         
.const CLRCH $FFCC=65484 // Restore default channels //       
.const GETIN $FFE4=65508 // Read buffered data //         
.const IOBAS $FFF3=65523 // Reads base address of I/O block //   
.const IOINI $FF84=65412 // Initialize system I/O //     
.const LISTE $FFB1=65457 // Serial - send listen command //   
.const LOAD  $FFD5=65493 // Load from file //       
.const MEMBO $FF9C=65436 // Set/read bottom of system RAM     
.const MEMTO $FF99=65433 // Read/set top of system RAM //       
.const OPEN  $FFC0=65472 // Open logical file //         
.const PLOT  $FFF0=65520 // Read/set cursor position //       
.const RAMTA $FF87=65415 // Init RAM and buffers // 
.const RDTIM $FFDE=65502 // Read internal clock
.const READS $FFB7=65463 // Read I/O status byte
.const RESTO $FF8A=65418 // Initialize Kernal indirects
.const SAVE  $FFD8=65496 // Save to file
.const SCNKE $FF9F=65439 // Scan keyboard
.const SCROR $FFED=65517 // Get current screen window size
.const SECON $FF93=65427 // Serial - send SA after LISTEN
.const SETLF $FFBA=65466 // Set channel LA, FA, SA
.const SETMS $FF90=65424 // Kernal messages on/off
.const SETNA $FFBD=65469 // Set filename pointers
.const SETTI $FFDB=65499 // Set internal clock
.const SETTM $FFA2=65442 // (reserved)
.const STOP  $FFE1=65505 // Scan stop key
.const TALK  $FFB4=65460 // Serial - send talk
.const TKSA  $FF96=65430 // Serial - send SA after TALK
.const UDTIM $FFEA=65514 // Increment internal clock
.const UNLSN $FFAE=65454 // Serial - send unlisten
.const UNTLK $FFAB=65451 // Serial - send untalk
.const VECTO $FF8D=65421 // Initialize or copy indirects
// NEW C128 Commands
.const BOOT_CALL    $FF53=65363 // Boot load program from disk //   
.const C64MODE      $FF4D=65357 // Reconfigure system as a C64 //       
.const CLOSE_ALL    $FF4A=65354 // Close all files on a device //   
.const DLCHR        $FF62=65378 // Init 80-col character RAM //       
.const DMA_CALL     $FF50=65360 // Send command to DMA device //   
.const GETCFG       $FF6B=65387 // Lookup MMU data for given bank //   
.const INDCMP       $FF7A=65402 // CMP (cmpvec),Y to any bank //       
.const INDFET       $FF74=65396 // LDA (fetvec),Y from any bank //   
.const INDSTA       $FF77=65399 // STA (stavec),Y to any bank //       
.const JSRFAR       $FF6E=65390 // Gosub in another bank
.const LKUPLA       $FF59=65369 // Search table for given LA
.const LKUPSA       $FF5C=65372 // Search tables for given SA
.const PFKEY        $FF65=65381 // Program a function key
.const PHOENIX      $FF56=65366 // Init function cartridges
.const PRIMM        $FF7D=65405 // Print Immediate utility
.const SETBNK       $FF68=65384 // Set bank for I/O operations
.const SPIN_SPOUT   $FF47=65351 // Setup fast serial ports for I/O
.const SWAPPER      $FF5F=65375 // Switch between 40 and 80 columns




//////////////////////////////////////////////////////////////////////////////////////
// Various Memory Constants
.const SECONDARY_ADDRESS    = $B9
.const DEVICE_NUMBER        = $BA
.const PNTR                 = $D3
.const CURSOR_X_POS         = $D3
.const TBLX                 = $D6
.const CURSOR_Y_POS         = $D6
.const CURSOR_COLOR         = $286
.const VICSCN               = $400
.const SCREEN_RAM           = $400
.const COLOR_RAM            = $D800
// Safe zero page locations $57-$70, $92-$96, $A3-$B1, $F7-$FE
.const TEMP_1               = $FB
.const TEMP_2               = $FC
.const zp_tmp               = $FB
.const zp_tmp_lo            = $FB
.const zp_tmp_hi            = $FC
.const TEMP_3               = $FD
.const TEMP_4               = $FE
.const TEMP_5               = $02
.const TEMP_6               = $c003
.const TEMP_7               = $04
.const TEMP_8               = $05
.const zp_ptr_screen        = $60
.const zp_ptr_screen_lo     = $60
.const zp_ptr_screen_hi     = $61
.const zp_ptr_color         = $62
.const zp_ptr_color_lo      = $62
.const zp_ptr_color_hi      = $63
.const zp_point_tmp         = $59
.const zp_point_tmp_lo      = $59
.const zp_point_tmp_hi      = $5a
.const zp_ptr_2             = $64
.const zp_ptr_2_lo          = $64
.const zp_ptr_2_hi          = $65
.const zp_temp              = $a3
.const zp_temp2             = $a4
.const zp_temp3             = $a5
.const JOYPORT_TIMER        = $05
//////////////////////////////////////////////////////////////////////////////////////
// VARIOUS STUFF
.const ZP_DATA_DIRECTION    = $00
.const ZP_IO_REGISTER       = $01
.const KERNAL_STOP_VECTOR   = $0328
//////////////////////////////////////////////////////////////////////////////////////
// SPRITE POINTERS
.const SPRITE_POINTERS      = $7F8
.const SPRITE_0_POINTER     = $7F8
.const SPRITE_1_POINTER     = $7F9
.const SPRITE_2_POINTER     = $7FA
.const SPRITE_3_POINTER     = $7FB
.const SPRITE_4_POINTER     = $7FC
.const SPRITE_5_POINTER     = $7FD
.const SPRITE_6_POINTER     = $7FE
.const SPRITE_7_POINTER     = $7FF
//////////////////////////////////////////////////////////////////////////////////////
// VIC CONSTANTS
.const SPRITE_LOCATIONS     = $D000
.const SPRITE_0_X           = $D000 // 53248 SP0X Sprite 0 Horizontal Position
.const SPRITE_0_Y           = $D001 // 53249 SP0Y Sprite 0 Vertical Position
.const SPRITE_1_X           = $D002 // 53250 SP1X Sprite 1 Horizontal Position
.const SPRITE_1_Y           = $D003 // 53251 SP1Y Sprite 1 Vertical Position
.const SPRITE_2_X           = $D004 // 53252 SP2X Sprite 2 Horizontal Position
.const SPRITE_2_Y           = $D005 // 53253 SP2Y Sprite 2 Vertical Position
.const SPRITE_3_X           = $D006 // 53254 SP3X Sprite 3 Horizontal Position
.const SPRITE_3_Y           = $D007 // 53255 SP3Y Sprite 3 Vertical Position
.const SPRITE_4_X           = $D008 // 53256 SP4X Sprite 4 Horizontal Position
.const SPRITE_4_Y           = $D009 // 53257 SP4Y Sprite 4 Vertical Position
.const SPRITE_5_X           = $D00A // 53258 SP5X Sprite 5 Horizontal Position
.const SPRITE_5_Y           = $D00B // 53259 SP5Y Sprite 5 Vertical Position
.const SPRITE_6_X           = $D00C // 53260 SP6X Sprite 6 Horizontal Position
.const SPRITE_6_Y           = $D00D // 53261 SP6Y Sprite 6 Vertical Position
.const SPRITE_7_X           = $D00E // 53262 SP7X Sprite 7 Horizontal Position
.const SPRITE_7_Y           = $D00F // 53263 SP7Y Sprite 7 Vertical Position
.const SPRITE_LOCATIONS_MSB = $D010 // 53264 Most Significant Bits of Sprites 0-7 Horizontal Position
.const SPRITE_MSB_X         = $D010 // 53264 Most Significant Bits of Sprites 0-7 Horizontal Position
.const VIC_CONTROL_REG_1    = $D011 // 53265 RST8 ECM- BMM- DEN- RSEL [   YSCROLL   ]
.const VIC_RASTER_COUNTER   = $D012 // 53266
.const VIC_LIGHT_PEN_X      = $D013 // 53267
.const VIC_LIGHT_PEN_Y      = $D014 // 53268
.const SPRITE_ENABLE        = $D015 // 53269
.const VIC_CONTROL_REG_2    = $D016 // 53270 ---- ---- RES- MCM- CSEL [   XSCROLL   ]
.const SPRITE_EXPAND_Y      = $D017 // 53271
.const VIC_MEM_POINTERS     = $D018 // 53272 VM13 VM12 VM11 VM10 CB13 CB12 CB11 ----
.const VIC_INTERRUPT_REG    = $D019 // 53273 IRQ- ---- ---- ---- ILP- IMMC IMBC IRST
.const VIC_INTERRUPT_ENABLE = $D01A // 53274 ---- ---- ---- ---- ELP- EMMC EMBC ERST
.const SPRITE_PRIORITY      = $D01B // 53275
.const SPRITE_MULTICOLOR    = $D01C // 53276
.const SPRITE_EXPAND_X      = $D01D // 53277
.const SPRITE_COLLISION_SPR = $D01E // 53278
.const SPRITE_COLLISION_DATA= $D01F // 53279
.const BORDER_COLOR         = $D020 // 53280
.const BACKGROUND_COLOR     = $D021 // 53281
.const BACKGROUND_COLOR_1   = $D022 // 53282
.const BACKGROUND_COLOR_2   = $D023 // 53283
.const BACKGROUND_COLOR_3   = $D024 // 53284
.const SPRITE_MULTICOLOR_0  = $D025
.const SPRITE_MULTICOLOR_1  = $D026
.const SPRITE_COLORS        = $D027
.const SPRITE_0_COLOR       = $D027
.const SPRITE_1_COLOR       = $D028
.const SPRITE_2_COLOR       = $D029
.const SPRITE_3_COLOR       = $D02A
.const SPRITE_4_COLOR       = $D02B
.const SPRITE_5_COLOR       = $D02C
.const SPRITE_6_COLOR       = $D02D
.const SPRITE_7_COLOR       = $D02E
//////////////////////////////////////////////////////////////////////////////////////
// IO CONSTANTS
.const JOYSTICK_PORT_2      = $DC00
.const JOYSTICK_PORT_1      = $DC01
//////////////////////////////////////////////////////////////////////////////////////
// SID CONSTANTS
.const SID_V1_FREQ_LOW      = $D400 // (54272) frequency voice 1 low byte
.const SID_V1_FREQ_HIGH     = $D401 // (54273) frequency voice 1 high byte
.const SID_V1_PULSE_LOW     = $D402 // (54274) pulse wave duty cycle voice 1 low byte 7..4 3..0
.const SID_V1_PULSE_HIGH    = $D403 // (54275) pulse wave duty cycle voice 1 high byte
.const SID_V1_CONTROL_REG   = $D404 // (54276) control register voice 1 - 7 noise,6 pulse,5 sawtooth,4 triangle,3 test,2 ring modulation with voice 3,1 synchronize with voice 3,0 gate
.const SID_V1_ATK_DECAY     = $D405 // (54277) attack duration	decay duration voice 1
.const SID_V1_SUS_REL       = $D406 // (54278) sustain level	release duration
.const SID_V2_FREQ_LOW      = $D407 // (54279) frequency voice 2 low byte
.const SID_V2_FREQ_HIGH     = $D408 // (54280) frequency voice 2 high byte
.const SID_V2_PULSE_LOW     = $D409 // (54281) pulse wave duty cycle voice 2 low byte 7..4	3..0
.const SID_V2_PULSE_HIGH    = $D40A // (54275) pulse wave duty cycle voice 2 high byte
.const SID_V2_CONTROL_REG   = $D40B // (54283) control register voice 2 - 7 noise,6 pulse,5 sawtooth,4 triangle,3 test,2 ring modulation with voice 3,1 synchronize with voice 3,0 gate
.const SID_V2_ATK_DECAY     = $D40C // (54284) attack duration	decay duration voice 2
.const SID_V2_SUS_REL       = $D40D // (54285) sustain level	release duration voice 2
.const SID_V3_FREQ_LOW      = $D40E // (54286) frequency voice 3 low byte
.const SID_V3_FREQ_HIGH     = $D40F // (54287) frequency voice 3 high byte
.const SID_V3_PULSE_LOW     = $D410 // (54288) pulse wave duty cycle voice 3 low byte 7..4	3..0
.const SID_V3_PULSE_HIGH    = $D411 // (54275) pulse wave duty cycle voice 3 high byte
.const SID_V3_CONTROL_REG   = $D412 // (54290) control register voice 3 - 7 noise,6 pulse,5 sawtooth,4 triangle,3 test,2 ring modulation with voice 3,1 synchronize with voice 3,0 gate
.const SID_V3_ATK_DECAY     = $D413 // (54291) attack duration	decay duration voice 3
.const SID_V3_SUS_REL       = $D414 // (54292) sustain level	release duration voice 3
.const SID_FILTER_CUTOFF_LOW= $D415 // (54293) filter cutoff frequency low byte
.const SID_FILTER_CUTOFF_HIGH=$D416 // (54294) filter cutoff frequency high byte
.const SID_FILTER_RESONANCE = $D417 // (54295) filter resonance and routing - 7..4 - filter resonance, 3 - external input, 2 - voice 3, 1 - voice 2, 0 - voice 1
.const SID_VOLUME_FILTER    = $D418 // (54296) filter mode and main volume control - 7 - mute voice 3, 6 - high pass, 5 - band pass, 4 - low pass, 3..0 - main volume
.const PADDLE_X             = $D419 // (54297) paddle x value (read only)
.const PADDLE_Y             = $D41A // (54298) paddle y value (read only)
.const SID_OSCILLATOR_V3    = $D41B // (54299) oscillator voice 3 (read only)
.const SID_ENVELOPE_V3      = $D41C // (54300) envelope voice 3 (read only)
//////////////////////////////////////////////////////////////////////////////////////
// User Port Stuff
.const USER_PORT_DATA       = $DD01 // User Port Data
.const USER_PORT_DATA_DIR   = $DD03 // User Port Data Direction per bit 1 = talk 0 = listen
//////////////////////////////////////////////////////////////////////////////////////
// 1541 Ultimate II Command Interface
.const UII_CONTROL          = $DF1C // CONTROL REGISTER (WRITE)
.const UII_STATUS           = $DF1C // STATUS REGISTER (READ) $00
.const UII_COMMAND          = $DF1D // COMMAND DATA REGISTER (WRITE)
.const UII_ID               = $DF1D // IDENTIFICATION REGISTER (READ) $C9
.const UII_RESPONSE         = $DF1E // RESPONSE DATA REGISTER (READ ONLY)
.const UII_STATUS_DATA      = $DF1F // STATUS DATA REGISTER
//////////////////////////////////////////////////////////////////////////////////////
// KERNAL SUB ROUTINES
.const KERNAL_PRINT_HEX     = $BDCD // Print 16 bit number to screen LDX lobyte LDA hibyte
//////////////////////////////////////////////////////////////////////////////////////
// OTHER KERNAL STUFF
.const CURSOR_SET           = $E510
.const KERNAL_CLEAR_SCREEN  = $E544 // Clear Screen
.const KERNAL_IRQ_ENTRY     = $EA31
//////////////////////////////////////////////////////////////////////////////////////
// Serial BUS
.const SERIAL_TALK          = $ED09 // Send TALK command to serial bus. Input: A = Device number.
.const SERIAL_LISTEN        = $ED0C // Send LISTEN command to serial bus. Input: A = Device number.
.const SERIAL_FLUSH         = $ED40 // Flush serial bus output cache, at memory address $0095, to serial bus. Used registers: A.
.const SERIAL_LISTEN_2      = $EDB9	// Send LISTEN secondary address to serial bus. Input: A = Secondary address.
.const SERIAL_TALK_2        = $EDC7	// Send TALK secondary address to serial bus. Input: A = Secondary address.
.const SERIAL_WRITE_BYTE    = $EDDD // Write byte to serial bus. Input: A = Byte to write.
.const SERIAL_UNTALK        = $EDEF	// Send UNTALK command to serial bus.
.const SERIAL_UNLISTEN      = $EDFE	// Send UNLISTEN command to serial bus.
.const SERIAL_READ_BYTE     = $EE13	// Read byte from serial bus. Output: A = Byte read.
.const SERIAL_CLOCK_OUT_HIGH= $EE85	// Set CLOCK OUT to high.
.const SERIAL_CLOCK_OUT_LOW = $EE8E	// Set CLOCK OUT to low.
.const SERIAL_DATA_OUT_HIGH = $EE97	// Set DATA OUT to high.
.const SERIAL_DATA_OUT_LOW  = $EEA0	// Set DATA OUT to low.
.const SERIAL_CLOCK_DATA_IN = $EEA9	// Read CLOCK IN and DATA IN. Output: Carry = DATA IN; Negative = CLOCK IN; A = CLOCK IN (in bit #7).

//////////////////////////////////////////////////////////////////////////////////////
// KEYS (This is not MATRIX codes)
.const KEY_RETURN       = $0d
.const KEY_HOME         = $13
.const KEY_DELETE       = $14
.const KEY_SPACE        = $20
.const KEY_DOLLAR_SIGN  = $24
.const KEY_ASTERISK     = $2a
.const KEY_MINUS        = $2d
.const KEY_PLUS         = $2b
.const KEY_COLON        = $3a
.const KEY_SEMICOLON    = $3b
.const KEY_1            = $31
.const KEY_2            = $32
.const KEY_3            = $33
.const KEY_4            = $34
.const KEY_5            = $35
.const KEY_6            = $36
.const KEY_7            = $37
.const KEY_8            = $38
.const KEY_9            = $39
.const KEY_EQUAL        = $3d
.const KEY_A            = $41
.const KEY_B            = $42
.const KEY_C            = $43
.const KEY_D            = $44
.const KEY_E            = $45
.const KEY_F            = $46
.const KEY_G            = $47
.const KEY_H            = $48
.const KEY_I            = $49
.const KEY_J            = $4a
.const KEY_K            = $4b
.const KEY_L            = $4c
.const KEY_M            = $4d
.const KEY_N            = $4e
.const KEY_O            = $4f
.const KEY_P            = $50
.const KEY_Q            = $51
.const KEY_R            = $52
.const KEY_S            = $53
.const KEY_T            = $54
.const KEY_U            = $55
.const KEY_V            = $56
.const KEY_W            = $57
.const KEY_X            = $58
.const KEY_Y            = $59
.const KEY_Z            = $5a
.const KEY_F1           = $85
.const KEY_F2           = $89
.const KEY_F3           = $86
.const KEY_F4           = $8a
.const KEY_F5           = $87
.const KEY_F6           = $8b
.const KEY_F7           = $88
.const KEY_F8           = $89
.const KEY_CURSOR_UP    = $91
.const KEY_CURSOR_DOWN  = $11
.const KEY_CURSOR_LEFT  = $9d
.const KEY_CURSOR_RIGHT = $1d
.const KEY_CLEAR        = $93
