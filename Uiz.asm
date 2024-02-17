.model small
.stack 100h
.data
	line db 10,"----------------------$"
	menu db 10,"------Main menu-------$"
	chs db 10,"Choose the House of Construction$"
	mv db 10,"1- Craftsman"
	mv1 db 10,"2- Ranch"
	mv2 db 10,"3- Farmhouse"
	mv3 db 10,"4- Cottage"
	close db 10,"5- Exit$"
	t2 db 10,"----------------------",10,"===Choose Sqr Yards===",10,"----------------------$"
	t1 db 10, "1- 240 sq yrds", 10, "2- 500 sq yrds", 10, "3- 1000 sq yrds ", 10, "4- Model for Sample"
	value db 10,"Enter Your Selection : $"
	thnk db 10,"Thank You"
	thnk1 db 10,"For Visiting our Site"
	thnk2 db 10,"Plz press Enter & move to the next step$"	
	fname db 10 dup ('$'),0
	address dw ?
	usr db 100 dup ('$')
	hmm db "Enter the Client Requirments in file",10,"$"
	filen db 10,"Name a file : $",10
	path db 'C:\tasm 1.4\tasm',0
	var db 10,"File is created & Successfully write In file$"
	var1 db 10,"1- Created a File",10,"2- Exit",10,"Enter Your Selection : $"
.code
start:
Mov ax,@data
Mov ds,ax

CreateF macro  ; Macro Function For Create File
	Mov ah,3ch
	Lea dx,fname
	Mov cl,0
	Int 21h
Endm CreateF

Backgrnd macro
Mov ah,0
Mov al,10h
Int 10h

Mov ah,0bh
Mov bh,00h
Mov bl,1
Int 10h

Mov ah,02
Mov bh,0
Mov dh,12
Mov dl,12	;col
Int 10h

Lea dx,thnk
Mov ah,09h
Int 21h

Mov bl,2
Mov cx,0
Int 10h
Endm Backgrnd

Lea dx,line
Mov ah,09h
Int 21h

Lea dx,menu
Mov ah,09h
Int 21h

Lea dx,line
Mov ah,09h
Int 21h

Lea dx,chs
Mov ah,09h
Int 21h

Lea dx,line
Mov ah,09h
Int 21h

Lea dx,mv
Mov ah,09h
Int 21h

Lea dx,value
Mov ah,09h
Int 21h

Mov ah,08
Int 21h
Cmp al,"1"
je time
Cmp al,"2"
je time
Cmp al,"3"
je time
Cmp al,"4"
je time
jmp exit

time:
lea dx,t2
Mov ah,09h
Int 21h

lea dx,t1
Mov ah,09h
Int 21h
Mov ah,08
Int 21h

Cmp al,"1"
je Sample
Cmp al,"2"
je Sample
Cmp al,"3"
je Sample
Cmp al,"4"
je Sample
jmp exit

Sample:

Mov ax,6
Int 10h

;Line One
Mov ah,0ch
Mov al,1
Mov cx,200
Mov dx,100

L1:
Int 10h
Inc cx
Cmp cx,600
jle L1

;Line Two
Mov ah,0ch
Mov al,1
Mov cx,300
Mov dx,100

L2:
Int 10h
Inc dx
Cmp dx,200
jle L2

;Line Three Most Left Vertical
Mov ah,0ch
Mov al,1
Mov cx,200
Mov dx,100

L3:
Int 10h
Inc dx
Cmp dx,200
jle L3

;Line Four Most Right Vertical
Mov ah,0ch
Mov al,1
Mov cx,600
Mov dx,50

L4:
Int 10h
Inc dx
Cmp dx,200
jle L4

;Line Five Most top Line Horizontanl
Mov ah,0ch
Mov al,1
Mov cx,250
Mov dx,50

L5:
Int 10h
Inc cx
Cmp cx,600
jle L5

;Line Six
Mov ah,0ch
Mov al,1
Mov cx,250
Mov dx,50

L6:
Int 10h
Inc dx 
Inc cx
Cmp dx,100
jle L6


;Line Seven
Mov ah,0ch
Mov al,1
Mov cx,250
Mov dx,50

L7:
Int 10h
Dec cx 
Inc dx
Cmp dx,100
jle L7

;Line Right Window
Mov ah,0ch
Mov al,1
Mov cx,550
Mov dx,140

L8:
Int 10h 
Inc dx
Cmp dx,180
jle L8

;Line Top Window Horizontanl
Mov ah,0ch
Mov al,1
Mov cx,440
Mov dx,140

L9:
Int 10h 
Inc cx
Cmp cx,550
jle L9

;Line 10 Left Window Vertical
Mov ah,0ch
Mov al,1
Mov cx,440
Mov dx,140

LA:
Int 10h 
Inc dx
Cmp dx,180
jle LA

;Line Bottom Window Horizontanl
Mov ah,0ch
Mov al,1
Mov cx,440
Mov dx,180

LB:
Int 10h 
Inc cx
Cmp cx,550
jle LB

;Line Bottom Window Horizontanl
Mov ah,0ch
Mov al,1
Mov cx,440
Mov dx,160

LC:
Int 10h 
Inc cx
Cmp cx,550
jle LC

;Line center Window Vertical
Mov ah,0ch
Mov al,1
Mov cx,495
Mov dx,140

LC1:
Int 10h 
Inc dx
Cmp dx,180
jle LC1

;Line Door Left Vertical
Mov ah,0ch
Mov al,1
Mov cx,230
Mov dx,150

LD:
Int 10h 
Inc dx
Cmp dx,200
jle LD

;Line Door right Vertical
Mov ah,0ch
Mov al,1
Mov cx,280
Mov dx,150

LD1:
Int 10h 
Inc dx
Cmp dx,200
jle LD1

;Line Door top Horizontal
Mov ah,0ch
Mov al,1
Mov cx,230
Mov dx,150

LD2:
Int 10h 
Inc cx
Cmp cx,280
jle LD2

;Line Lock door 
Mov ah,0ch
Mov al,1
Mov cx,270
Mov dx,180

LK:
Int 10h 
Inc dx
Cmp dx,181
jle LK

;Line Bricks One
Mov ah,0ch
Mov al,1
Mov cx,290
Mov dx,90

LBR:
Int 10h
Inc cx
Cmp cx,600
jle LBR

;Line Bricks Two
Mov ah,0ch
Mov al,1
Mov cx,280
Mov dx,80

LBR2:
Int 10h
Inc cx
Cmp cx,600
jle LBR2

;Line Bricks Three
Mov ah,0ch
Mov al,1
Mov cx,270
Mov dx,70

LBR3:
Int 10h
Inc cx
Cmp cx,600
jle LBR3

;Line Bricks Four
Mov ah,0ch
Mov al,1
Mov cx,260
Mov dx,60

LBR4:
Int 10h
Inc cx
Cmp cx,600
jle LBR4

;Line Bricks Vertical One
Mov ah,0ch
Mov al,1
Mov cx,320
Mov dx,50

LBRV:
Int 10h
Add cx,1
Inc dx
Cmp dx,100
jle LBRV

;Line Bricks Vertical Two
Mov ah,0ch
Mov al,1
Mov cx,400
Mov dx,50

LBRV2:
Int 10h
Add cx,1
Inc dx
Cmp dx,100
jle LBRV2

;Line Bricks Vertical Three
Mov ah,0ch
Mov al,1
Mov cx,480
Mov dx,50

LBRV3:
Int 10h
Add cx,1
Inc dx
Cmp dx,100
jle LBRV3

;Line Bricks Vertical Four
Mov ah,0ch
Mov al,1
Mov cx,560
Mov dx,50

LBRV4:
Int 10h
Add cx,1
Inc dx
Cmp dx,90
jle LBRV4


;Line Swing Horizontal
Mov ah,0ch
Mov al,1
Mov cx,5
Mov dx,110

LSW:
Int 10h 
Inc cx
Cmp cx,170
jle LSW

;Line Swing Vertical
Mov ah,0ch
Mov al,1
Mov cx,5
Mov dx,110

LSW1:
Int 10h 
Inc dx
Cmp dx,170
jle LSW1

;Line Swing Vertical 2
Mov ah,0ch
Mov al,1
Mov cx,170
Mov dx,110

LSW2:
Int 10h 
Inc dx
Cmp dx,170
jle LSW2


;Line Swing Vertical 3
Mov ah,0ch
Mov al,1
Mov cx,65
Mov dx,110

LSW3:
Int 10h 
Add dx,2
Inc dx
Cmp dx,155
jle LSW3

;Line Swing Vertical 4
Mov ah,0ch
Mov al,1
Mov cx,105
Mov dx,110

LSW4:
Int 10h 
Add dx,2
Inc dx
Cmp dx,155
jle LSW4

;Line Swing Horizontal Lower
Mov ah,0ch
Mov al,1
Mov cx,65
Mov dx,155

LSWL:
Int 10h 
Add cx,2
Inc cx
Cmp cx,105
jle LSWL

;Line Swing Kid Head Right
Mov ah,0ch
Mov al,1
Mov cx,85
Mov dx,140

LSWKHd:
Int 10h 
Inc cx
Cmp cx,95
jle LSWKHd

;Line Swing Kid Head left
Mov ah,0ch
Mov al,1
Mov cx,75
Mov dx,140

LSWKHd1:
Int 10h 
Inc cx
Cmp cx,85
jle LSWKHd1

;Line Swing Kid Head Horizontal
Mov ah,0ch
Mov al,1
Mov cx,75
Mov dx,135

LSWKHd2:
Int 10h 
Inc cx
Cmp cx,95
jle LSWKHd2

;Line Swing Kid Head Left Vertical
Mov ah,0ch
Mov al,1
Mov cx,75
Mov dx,135

LSWKHd3:
Int 10h 
Inc dx
Cmp dx,140
jle LSWKHd3

;Line Swing Kid Head Right Vertical
Mov ah,0ch
Mov al,1
Mov cx,95
Mov dx,135

LSWKHd4:
Int 10h 
Inc dx
Cmp dx,140
jle LSWKHd4

;Line Swing Kid Height
Mov ah,0ch
Mov al,1
Mov cx,85
Mov dx,140

LSWK:
Int 10h 
Inc dx
Cmp dx,155
jle LSWK

;Line Swing Kid Right leg
Mov ah,0ch
Mov al,1
Mov cx,85
Mov dx,155

LSWKL:
Int 10h 
Add cx,1
Inc dx
Cmp dx,165
jle LSWKL

;Line Swing Kid Left leg
Mov ah,0ch
Mov al,1
Mov cx,85
Mov dx,155

LSWKL2:
Int 10h 
Sub cx,1
Inc dx
Cmp dx,165
jle LSWKL2

;Line Swing Kid Right Hand leg
Mov ah,0ch
Mov al,1
Mov cx,85
Mov dx,145

LSWKH:
Int 10h 
Inc cx
Cmp cx,105
jle LSWKH

;Line Swing Kid Left Hand leg
Mov ah,0ch
Mov al,1
Mov cx,65
Mov dx,145

LSWKH2:
Int 10h 
Inc cx
Cmp cx,85
jle LSWKH2

;Line Stars 
Mov ah,0ch
Mov al,1
Mov cx,270
Mov dx,210

LS:
Int 10h
Add cx,200 
Inc dx
Cmp dx,230
jle LS

Mov ah,0
Int 16h

Mov ax,3
Int 10h
jmp Thannks

Thannks:
Backgrnd
Mov ah,01
Int 21h
Cmp al,13
Je FileHand

FileHand:

Lea dx,var1
Mov ah,09h
Int 21h

call input			; Function For Input

Cmp al,"1" 
je create
;Cmp al,"2" 
;je update
Jmp exit

create:
Mov ax,@data
Mov ds,ax

Lea dx,filen
Mov ah,09h
Int 21h

Lea si,fname

Lo:
call input 			; Function For Input

Cmp al,13
Jz write

Mov [si],al
Inc si
Jmp Lo
write:

CreateF 		;Macro Function For Create File

Mov address,ax

update:
lea dx,hmm
Mov ah,09h
Int 21h

Call OpenF			; Function For Open File

Mov address,ax

Mov ah,09
lea dx,usr
Int 21h

Mov si,0
Mov cx,0

again:
call input			; Function For Input
Cmp al,13
Jz sahi
Mov usr[si],al
Inc si
Inc cx
Jmp again

sahi:
;write on created File
Mov ah,40h
Mov bx,address
lea dx,usr
Int 21h

Jmp oka

oka:

call CloseF			; Function For Close File

Lea dx,var
Mov ah,09h
Int 21h

jmp exit

exit:
Mov ah,4ch			; Close Program
Int 21h

CloseF proc
Mov ah,3eh
Lea dx,address
Int 21h
ret
CloseF Endp

input proc
Mov ah,01
Int 21h
ret
input Endp

OpenF proc
Mov ah,3dh
Lea dx,fname
Mov al,2
Int 21h
ret
OpenF Endp

End start