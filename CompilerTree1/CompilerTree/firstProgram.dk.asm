.386
.model flat, stdcall
option casemap : none
include /masm32/include/kernel32.inc
include /masm32/macros/macros.asm
include /masm32/include/msvcrt.inc
include /masm32/include/masm32.inc
includelib /masm32/lib/kernel32
includelib /masm32/lib/msvcrt
includelib /masm32/lib/masm32
.data
a2914f09729cd482abf8aa353dde5bbc5 real8 21.0
first real8 ?
a1dd895fb52ac4c07b55b735c35697194 real8 ?
a4e3ca37ce2774380a0df53032870c657 real8 21.0
globalDouble real8 ?
a8cf2957a1fd14f6c83791185ad81577b real8 0.0
i real8 ?
a96f35ca71ae0431487401c25537ea79b real8 0.0
j real8 ?
a4bee6e4e6e0f4a52a160b2f7bebbe76f real8 ?
a46fb3eb9e61e4cefacab941621ccc9d7 real8 1.0
a2ea83d2c5406494ca0b8b87247b971e4 real8 ?
a803d5ab232d54eaeb30b86f72ebc6d80 real8 5.0
a44d614c39629427bbdbb2a737de91ea2 real8 ?
d4d41cef47344fe7b384835d971a18b1 real8 55.0
d69f506f605c429dac7c5ca991e6120c real8 ?
b23654aa18334d2ab882d692a87760cc real8 2.0
af50feddaf5649ed90ff6e635fa4cc80 real8 ?
c4d5af69b33a458d82dd849754db9b36 real8 10.0

.code

start:

fld a2914f09729cd482abf8aa353dde5bbc5
fstp first

fld a4e3ca37ce2774380a0df53032870c657

fld first
fdiv
fstp globalDouble

fld a8cf2957a1fd14f6c83791185ad81577b
fstp i

fld a96f35ca71ae0431487401c25537ea79b
fstp j

whilebf92858826b047dd8ba183615c4e5e5d:
jmp conditionbf92858826b047dd8ba183615c4e5e5d
afterbf92858826b047dd8ba183615c4e5e5d:

iffad54b181ead4ee3be1672c7ac95e89f:
conditionfad54b181ead4ee3be1672c7ac95e89f:
finit
startboola2ea83d2c5406494ca0b8b87247b971e4:

fld i

fcom a803d5ab232d54eaeb30b86f72ebc6d80
fstsw ax
fwait
sahf
ja outboola2ea83d2c5406494ca0b8b87247b971e4
jmp outfalsea2ea83d2c5406494ca0b8b87247b971e4
outboola2ea83d2c5406494ca0b8b87247b971e4:
jmp afterfad54b181ead4ee3be1672c7ac95e89f

outfalsea2ea83d2c5406494ca0b8b87247b971e4:
jmp ifelsefad54b181ead4ee3be1672c7ac95e89f

afterfad54b181ead4ee3be1672c7ac95e89f:

fld i

fld a46fb3eb9e61e4cefacab941621ccc9d7
fadd
fstp i
jmp endiffad54b181ead4ee3be1672c7ac95e89f

ifelsefad54b181ead4ee3be1672c7ac95e89f:

fld i

fld d4d41cef47344fe7b384835d971a18b1
fadd
fstp i

fld i

fld b23654aa18334d2ab882d692a87760cc
fmul
fstp i

endiffad54b181ead4ee3be1672c7ac95e89f:

jmp endwhilebf92858826b047dd8ba183615c4e5e5d

jmp whilebf92858826b047dd8ba183615c4e5e5d
conditionbf92858826b047dd8ba183615c4e5e5d:
finit
jmp startboolaf50feddaf5649ed90ff6e635fa4cc80

startboolaf50feddaf5649ed90ff6e635fa4cc80:

fld i

fcom c4d5af69b33a458d82dd849754db9b36
fstsw ax
fwait
sahf
jb outboolaf50feddaf5649ed90ff6e635fa4cc80
jmp outfalseaf50feddaf5649ed90ff6e635fa4cc80
outboolaf50feddaf5649ed90ff6e635fa4cc80:
jmp afterbf92858826b047dd8ba183615c4e5e5d

outfalseaf50feddaf5649ed90ff6e635fa4cc80:
jmp endwhilebf92858826b047dd8ba183615c4e5e5d


endwhilebf92858826b047dd8ba183615c4e5e5d:
printf("i = %f\n",i)exit
end start
