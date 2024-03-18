

*=$0bb8
    lda #$02
    tax
    tay
    jsr $ffba
    lda #$02
    ldx #$fc
    ldy #$0b
    jsr $ffbd
    jsr $ffc0
    lda #$0e
    jsr $ffd2
j:
    jsr $ffb7
    and #$08
    bne $0be2
    ldx #$02
    jsr $ffc6
    jsr $ffe4
    jsr $ffd2
    jsr $ffcc
    jsr $ffe4
    beq $0bd0
    pha
    jsr $ffd2
    ldx #$02
    jsr $ffc9
    pla
    jsr $ffd2
    jsr $ffcc
    beq j
