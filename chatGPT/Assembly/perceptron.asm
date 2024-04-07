__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
funcaoDegrau:
        push r28
        push r29
        rcall .
        rcall .
        in r28,__SP_L__
        in r29,__SP_H__
.L__stack_usage = 6
        std Y+1,r22
        std Y+2,r23
        std Y+3,r24
        std Y+4,r25
        ldi r18,0
        ldi r19,0
        ldi r20,0
        ldi r21,0
        ldd r22,Y+1
        ldd r23,Y+2
        ldd r24,Y+3
        ldd r25,Y+4
        rcall __gesf2
        cp r24, __zero_reg__
        brlt .L6
        ldi r24,lo8(1)
        ldi r25,0
        rjmp .L4
.L6:
        ldi r24,0
        ldi r25,0
.L4:
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop r29
        pop r28
        ret
treinarPerceptron:
        push r8
        push r9
        push r10
        push r11
        push r12
        push r13
        push r14
        push r15
        push r16
        push r17
        push r28
        push r29
        in r28,__SP_L__
        in r29,__SP_H__
        sbiw r28,28
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
.L__stack_usage = 40
        std Y+22,r25
        std Y+21,r24
        std Y+24,r23
        std Y+23,r22
        std Y+26,r21
        std Y+25,r20
        std Y+28,r19
        std Y+27,r18
        std Y+6,__zero_reg__
        std Y+5,__zero_reg__
        rjmp .L8
.L17:
        std Y+8,__zero_reg__
        std Y+7,__zero_reg__
        rjmp .L9
.L16:
        std Y+1,__zero_reg__
        std Y+2,__zero_reg__
        std Y+3,__zero_reg__
        std Y+4,__zero_reg__
        std Y+10,__zero_reg__
        std Y+9,__zero_reg__
        rjmp .L10
.L11:
        ldd r24,Y+7
        ldd r25,Y+8
        lsl r24
        rol r25
        lsl r24
        rol r25
        lsl r24
        rol r25
        ldd r18,Y+23
        ldd r19,Y+24
        add r18,r24
        adc r19,r25
        ldd r24,Y+9
        ldd r25,Y+10
        lsl r24
        rol r25
        lsl r24
        rol r25
        add r24,r18
        adc r25,r19
        mov r30,r24
        mov r31,r25
        ld r12,Z
        ldd r13,Z+1
        ldd r14,Z+2
        ldd r15,Z+3
        ldd r24,Y+9
        ldd r25,Y+10
        lsl r24
        rol r25
        lsl r24
        rol r25
        ldd r18,Y+21
        ldd r19,Y+22
        add r24,r18
        adc r25,r19
        mov r30,r24
        mov r31,r25
        ld r24,Z
        ldd r25,Z+1
        ldd r26,Z+2
        ldd r27,Z+3
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        mov r25,r15
        mov r24,r14
        mov r23,r13
        mov r22,r12
        rcall __mulsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        ldd r22,Y+1
        ldd r23,Y+2
        ldd r24,Y+3
        ldd r25,Y+4
        rcall __addsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        std Y+1,r24
        std Y+2,r25
        std Y+3,r26
        std Y+4,r27
        ldd r24,Y+9
        ldd r25,Y+10
        adiw r24,1
        std Y+10,r25
        std Y+9,r24
.L10:
        ldd r24,Y+9
        ldd r25,Y+10
        cpi r24,2
        cpc r25,__zero_reg__
        brge .+2
        rjmp .L11
        ldd r24,Y+1
        ldd r25,Y+2
        ldd r26,Y+3
        ldd r27,Y+4
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall funcaoDegrau
        mov __tmp_reg__,r25
        lsl r0
        sbc r26,r26
        sbc r27,r27
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall __floatsisf
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        std Y+13,r24
        std Y+14,r25
        std Y+15,r26
        std Y+16,r27
        ldd r24,Y+7
        ldd r25,Y+8
        lsl r24
        rol r25
        ldd r18,Y+25
        ldd r19,Y+26
        add r24,r18
        adc r25,r19
        mov r30,r24
        mov r31,r25
        ld r24,Z
        ldd r25,Z+1
        mov __tmp_reg__,r25
        lsl r0
        sbc r26,r26
        sbc r27,r27
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall __floatsisf
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        ldd r18,Y+13
        ldd r19,Y+14
        ldd r20,Y+15
        ldd r21,Y+16
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall __subsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        std Y+17,r24
        std Y+18,r25
        std Y+19,r26
        std Y+20,r27
        ldi r18,0
        ldi r19,0
        ldi r20,0
        ldi r21,0
        ldd r22,Y+17
        ldd r23,Y+18
        ldd r24,Y+19
        ldd r25,Y+20
        rcall __nesf2
        cp r24, __zero_reg__
        brne .+2
        rjmp .L12
        std Y+12,__zero_reg__
        std Y+11,__zero_reg__
        rjmp .L14
.L15:
        ldd r24,Y+11
        ldd r25,Y+12
        lsl r24
        rol r25
        lsl r24
        rol r25
        ldd r18,Y+21
        ldd r19,Y+22
        add r24,r18
        adc r25,r19
        mov r30,r24
        mov r31,r25
        ld r12,Z
        ldd r13,Z+1
        ldd r14,Z+2
        ldd r15,Z+3
        ldi r18,lo8(-51)
        ldi r19,lo8(-52)
        ldi r20,lo8(-52)
        ldi r21,lo8(61)
        ldd r22,Y+17
        ldd r23,Y+18
        ldd r24,Y+19
        ldd r25,Y+20
        rcall __mulsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        mov r8,r24
        mov r9,r25
        mov r10,r26
        mov r11,r27
        ldd r24,Y+7
        ldd r25,Y+8
        lsl r24
        rol r25
        lsl r24
        rol r25
        lsl r24
        rol r25
        ldd r18,Y+23
        ldd r19,Y+24
        add r18,r24
        adc r19,r25
        ldd r24,Y+11
        ldd r25,Y+12
        lsl r24
        rol r25
        lsl r24
        rol r25
        add r24,r18
        adc r25,r19
        mov r30,r24
        mov r31,r25
        ld r24,Z
        ldd r25,Z+1
        ldd r26,Z+2
        ldd r27,Z+3
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        mov r25,r11
        mov r24,r10
        mov r23,r9
        mov r22,r8
        rcall __mulsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        ldd r18,Y+11
        ldd r19,Y+12
        lsl r18
        rol r19
        lsl r18
        rol r19
        ldd r20,Y+21
        ldd r21,Y+22
        mov r16,r20
        mov r17,r21
        add r16,r18
        adc r17,r19
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        mov r25,r15
        mov r24,r14
        mov r23,r13
        mov r22,r12
        rcall __addsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        mov r30,r16
        mov r31,r17
        st Z,r24
        std Z+1,r25
        std Z+2,r26
        std Z+3,r27
        ldd r24,Y+11
        ldd r25,Y+12
        adiw r24,1
        std Y+12,r25
        std Y+11,r24
.L14:
        ldd r24,Y+11
        ldd r25,Y+12
        cpi r24,2
        cpc r25,__zero_reg__
        brge .+2
        rjmp .L15
.L12:
        ldd r24,Y+7
        ldd r25,Y+8
        adiw r24,1
        std Y+8,r25
        std Y+7,r24
.L9:
        ldd r18,Y+7
        ldd r19,Y+8
        ldd r24,Y+27
        ldd r25,Y+28
        cp r18,r24
        cpc r19,r25
        brge .+2
        rjmp .L16
        ldd r24,Y+5
        ldd r25,Y+6
        adiw r24,1
        std Y+6,r25
        std Y+5,r24
.L8:
        ldd r24,Y+5
        ldd r25,Y+6
        cpi r24,100
        cpc r25,__zero_reg__
        brge .+2
        rjmp .L17
        nop
        nop
adiw r28,28
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
        pop r29
        pop r28
        pop r17
        pop r16
        pop r15
        pop r14
        pop r13
        pop r12
        pop r11
        pop r10
        pop r9
        pop r8
        ret
.LC1:
        .string "Entrada: [%f, %f] - Sa\303\255da: %d\n"
.LC0:
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   -128
        .byte   63
        .byte   0
        .byte   0
        .byte   -128
        .byte   63
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   0
        .byte   -128
        .byte   63
        .byte   0
        .byte   0
        .byte   -128
        .byte   63
main:
        push r12
        push r13
        push r14
        push r15
        push r28
        push r29
        in r28,__SP_L__
        in r29,__SP_H__
        sbiw r28,60
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
.L__stack_usage = 66
        ldi r24,0
        ldi r25,0
        rcall time
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        rcall srand
        std Y+2,__zero_reg__
        std Y+1,__zero_reg__
        rjmp .L20
.L21:
        rcall rand
        mov __tmp_reg__,r25
        lsl r0
        sbc r26,r26
        sbc r27,r27
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall __floatsisf
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        ldi r18,0
        ldi r19,lo8(-2)
        ldi r20,lo8(-1)
        ldi r21,lo8(70)
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall __divsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall __addsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        ldi r18,0
        ldi r19,0
        ldi r20,lo8(-128)
        ldi r21,lo8(63)
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall __subsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        ldd r18,Y+1
        ldd r19,Y+2
        lsl r18
        rol r19
        lsl r18
        rol r19
        mov r20,r28
        mov r21,r29
        subi r20,-1
        sbci r21,-1
        add r18,r20
        adc r19,r21
        subi r18,-10
        sbci r19,-1
        mov r30,r18
        mov r31,r19
        st Z,r24
        std Z+1,r25
        std Z+2,r26
        std Z+3,r27
        ldd r24,Y+1
        ldd r25,Y+2
        adiw r24,1
        std Y+2,r25
        std Y+1,r24
.L20:
        ldd r24,Y+1
        ldd r25,Y+2
        cpi r24,2
        cpc r25,__zero_reg__
        brge .+2
        rjmp .L21
        ldi r24,lo8(32)
        ldi r30,lo8(.LC0)
        ldi r31,hi8(.LC0)
        mov r26,r28
        mov r27,r29
        adiw r26,19
        0:
        ld r0,Z+
        st X+,r0
        dec r24
        brne 0b
        std Y+52,__zero_reg__
        std Y+51,__zero_reg__
        std Y+54,__zero_reg__
        std Y+53,__zero_reg__
        std Y+56,__zero_reg__
        std Y+55,__zero_reg__
        ldi r24,lo8(1)
        ldi r25,0
        std Y+58,r25
        std Y+57,r24
        mov r20,r28
        mov r21,r29
        subi r20,-51
        sbci r21,-1
        mov r22,r28
        mov r23,r29
        subi r22,-19
        sbci r23,-1
        mov r24,r28
        mov r25,r29
        adiw r24,11
        ldi r18,lo8(4)
        ldi r19,0
        rcall treinarPerceptron
        std Y+4,__zero_reg__
        std Y+3,__zero_reg__
        rjmp .L22
.L25:
        std Y+5,__zero_reg__
        std Y+6,__zero_reg__
        std Y+7,__zero_reg__
        std Y+8,__zero_reg__
        std Y+10,__zero_reg__
        std Y+9,__zero_reg__
        rjmp .L23
.L24:
        ldd r24,Y+3
        ldd r25,Y+4
        mov r18,r24
        mov r19,r25
        lsl r18
        rol r19
        ldd r24,Y+9
        ldd r25,Y+10
        add r24,r18
        adc r25,r19
        lsl r24
        rol r25
        lsl r24
        rol r25
        mov r18,r28
        mov r19,r29
        subi r18,-1
        sbci r19,-1
        add r24,r18
        adc r25,r19
        adiw r24,18
        mov r26,r24
        mov r27,r25
        ld r12,X+
        ld r13,X+
        ld r14,X+
        ld r15,X
        ldd r24,Y+9
        ldd r25,Y+10
        lsl r24
        rol r25
        lsl r24
        rol r25
        mov r18,r28
        mov r19,r29
        subi r18,-1
        sbci r19,-1
        add r24,r18
        adc r25,r19
        adiw r24,10
        mov r30,r24
        mov r31,r25
        ld r24,Z
        ldd r25,Z+1
        ldd r26,Z+2
        ldd r27,Z+3
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        mov r25,r15
        mov r24,r14
        mov r23,r13
        mov r22,r12
        rcall __mulsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        ldd r22,Y+5
        ldd r23,Y+6
        ldd r24,Y+7
        ldd r25,Y+8
        rcall __addsf3
        mov r27,r25
        mov r26,r24
        mov r25,r23
        mov r24,r22
        std Y+5,r24
        std Y+6,r25
        std Y+7,r26
        std Y+8,r27
        ldd r24,Y+9
        ldd r25,Y+10
        adiw r24,1
        std Y+10,r25
        std Y+9,r24
.L23:
        ldd r24,Y+9
        ldd r25,Y+10
        cpi r24,2
        cpc r25,__zero_reg__
        brge .+2
        rjmp .L24
        ldd r24,Y+5
        ldd r25,Y+6
        ldd r26,Y+7
        ldd r27,Y+8
        mov r22,r24
        mov r23,r25
        mov r24,r26
        mov r25,r27
        rcall funcaoDegrau
        std Y+60,r25
        std Y+59,r24
        ldd r24,Y+3
        ldd r25,Y+4
        lsl r24
        rol r25
        lsl r24
        rol r25
        lsl r24
        rol r25
        mov r18,r28
        mov r19,r29
        subi r18,-1
        sbci r19,-1
        add r24,r18
        adc r25,r19
        adiw r24,22
        mov r26,r24
        mov r27,r25
        ld r20,X+
        ld r21,X+
        ld r22,X+
        ld r23,X
        ldd r24,Y+3
        ldd r25,Y+4
        lsl r24
        rol r25
        lsl r24
        rol r25
        lsl r24
        rol r25
        mov r18,r28
        mov r19,r29
        subi r18,-1
        sbci r19,-1
        add r24,r18
        adc r25,r19
        adiw r24,18
        mov r30,r24
        mov r31,r25
        ld r24,Z
        ldd r25,Z+1
        ldd r26,Z+2
        ldd r27,Z+3
        ldd r18,Y+60
        push r18
        ldd r18,Y+59
        push r18
        mov r18,r23
        push r18
        mov r18,r22
        push r18
        mov r18,r21
        push r18
        mov r18,r20
        push r18
        mov r18,r27
        push r18
        mov r18,r26
        push r18
        mov r18,r25
        push r18
        push r24
        ldi r24,lo8(.LC1)
        ldi r25,hi8(.LC1)
        mov r24,r25
        push r24
        ldi r24,lo8(.LC1)
        ldi r25,hi8(.LC1)
        push r24
        rcall printf
        in r24,__SP_L__
        in r25,__SP_H__
        adiw r24,12
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
        ldd r24,Y+3
        ldd r25,Y+4
        adiw r24,1
        std Y+4,r25
        std Y+3,r24
.L22:
        ldd r24,Y+3
        ldd r25,Y+4
        cpi r24,4
        cpc r25,__zero_reg__
        brge .+2
        rjmp .L25
        ldi r24,0
        ldi r25,0
        adiw r28,60
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
        pop r29
        pop r28
        pop r15
        pop r14
        pop r13
        pop r12
        ret