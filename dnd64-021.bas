1 dim p$(25)
10 print chr$(147) : sp%=30
20 print "1 - human 2 - elf 3 - dwarf 4 - tiefling"
25 print
30 input "choose your race by printing in its number"; ra%
35 if ra%>4 or ra%<1 goto 10
40 if ra%=2 then let d1%=2 : ra$="elf"
50 if ra%=1 then let s1%=1 : d1%=1 : e1%=1 : i1%=1 : w1%=1 : c1%=1: ra$="human"
60 if ra%=3 then let e1%=2 : ra$="dwarf" : sp%=25
70 if ra%=4 then let c1%=2 : ra$="tiefling"
75 if ra%=1 goto 120
80 print chr$(147)
81 if ra%=2 then print "1 - high elf 2 - wood elf 3 - drow 4 - sea elf"
82 if ra%=3 then print "1 - hill dwarf 2 - mountain dwarf 3 - duergar"
83 if ra%=4 then print "1 - asmodeus 2 - zariel 3 - glasya 4 - fierna"
84 print
85 input "choose your subrace by printing in its number"; sr%
86 if sr%>4 or sr%<1 goto 80
87 if ra%=3 and sr%>3 goto 80
90 if ra%=2 and sr%=1 then let i1%=i1%+1 : sr$="(high)"
91 if ra%=2 and sr%=2 then let w1%=w1%+1 : sr$="(wood)" : sp%=35
92 if ra%=2 and sr%=3 then let c1%=c1%+1 : sr$="(drow)"
93 if ra%=2 and sr%=4 then let e1%=e1%+1 : sr$="(sea)"
100 if ra%=3 and sr%=1 then let w1%=w1%+1 : sr$="(hill)"
101 if ra%=3 and sr%=2 then let s1%=s1%+2 : sr$="(mountain)"
102 if ra%=3 and sr%=3 then let s1%=s1%+1 : sr$="(duergar)"
110 if ra%=4 and sr%=1 then let i1%=i1%+1 : sr$="(asmodeus)"
111 if ra%=4 and sr%=2 then let s1%=s1%+1 : sr$="(zariel)"
112 if ra%=4 and sr%=3 then let d1%=d1%+1 : sr$="(glasya)"
113 if ra%=4 and sr%=4 then let w1%=w1%+1 : sr$="(fierna)"
120 print chr$(147)
121 print "1 - acolyte 2 - noble 3 - soldier 4 - sage"
129 print
130 input "choose your background by printing in its number"; ba%
135 if ba%>4 or ba%<1 goto 120
150 print chr$(147)
151 print "1 - fighter 2 - warlock 3 - cleric"
152 print
153 input "choose your class by printing in its number"; cl%
154 if cl%<1 or cl%>3 goto 150
155 if cl%<3 then goto 160
156 print chr$(147) : print "1 - knowledge 2 - life 3 - light 4 - war"
157 print
158 input "choose your clerical domain by printing in its number"; sc%
159 if sc%=2 or sc%=4 then let ha%=1 : sl%=1 : if sc%=4 then let hw%=1
160 if cl%=1 then ac%=2 : ah%=2 : at%=2 : hi%=2 : is%=2 : it%=2 : pn%=2 : su%=2
161 if cl%=1 then cl$="fighter" : hp%=10 : s3%=2 : e3%=2 : ha%=1 : sl%=1
162 if cl%=2 then ar%=2 : dc%=2 : hi%=2 : it%=2 : iv%=2 : na%=2 : re%=2
163 if cl%=2 then cl$="warlock" : hp%=8 : w3%=2 : c3%=2
164 if cl%=3 then hi%=2 : is%=2 : me%=2 : pr%=2 : re%=2 : cl$="cleric"
165 if cl%=3 then cl$="cleric"  : hp%=8 : w3%=2 : c3%=2
170 if ba%=1 then let is%=1 : re%=1 : b3%=11 : b4%=9 : ba$="acolyte" : gp%=15
171 if ba%=1 then let is$="insight " : re$="religion "
172 if ba%=2 then let hi%=1 : pr%=1 : b3%=6 : b4%=18 : ba$="noble" : gp%=25
173 if ba%=2 then let hi$="history " : pr$="perception "
174 if ba%=3 then let at%=1 : it%=1 : b3%=1 : b4%=16 : ba$="soldier" : gp%=10
175 if ba%=3 then let at$="athletics " : it$="intimidation "
176 if ba%=4 then let ar%=1 : hi%=1 : b3%=5 : b4%=6 : ba$="sage" : gp%=10
177 if ba%=4 then let ar$="arcana " : hi$="history "
180 if ra%=2 then let pn%=1 : r1%=13 : pn$="perception "
185 print chr$(147)
190 if at%=2 and b1%<>1 then print "athletics - 1"
191 if ac%=2 and b1%<>2 then print "acrobatics - 2"
192 if sd%=2 and b1%<>3 then print "sleight of hand - 3"
193 if sh%=2 and b1%<>4 then print "stealth - 4"
194 if ar%=2 and b1%<>5 then print "arcana - 5"
195 if hi%=2 and b1%<>6 then print "history - 6"
196 if iv%=2 and b1%<>7 then print "investigation - 7"
197 if na%=2 and b1%<>8 then print "nature - 8"
198 if re%=2 and b1%<>9 then print "religion - 9"
199 if ah%=2 and b1%<>10 then print "animal handling - 10"
200 if is%=2 and b1%<>11 then print "insight - 11"
201 if me%=2 and b1%<>12 then print "medicine - 12"
202 if pn%=2 and b1%<>13 then print "perception - 13"
203 if su%=2 and b1%<>14 then print "survival - 14"
204 if dc%=2 and b1%<>15 then print "deception - 15"
205 if it%=2 and b1%<>16 then print "intimidation - 16"
206 if pe%=2 and b1%<>17 then print "performance - 17"
207 if pr%=2 and b1%<>18 then print "persuasion - 18"
208 print
210 if b1%<>0 goto 220
211 input "choose your first proficiency by printing in its number"; b1%
212 if b1%=b3% or b1%=b4% or b1%=r1% then let b1%=0
213 if b1%<0 or b1%>18 then let b1%=0
214 goto 185
220 input "choose your second proficiency by printing in its number"; b2%
221 if b2%=b3% or b2%=b4% or b2%=r1% or b2%=b1% goto 220
222 if b2%<0 or b2%>18 goto 220
230 if at%=2 and (b1%=1 or b2%=1) then let at%=1 : at$="athletics " : goto 233
231 if at%<>2 and (b1%=1 or b2%=1) then let b1%=0 : let b2%=0 : goto 160
233 if ac%=2 and (b1%=2 or b2%=2) then let ac%=1 : ac$="acrobatics " : goto 236
234 if ac%<>2 and (b1%=2 or b2%=2) then let b1%=0 : let b2%=0 : goto 160
236 if sd%=2 and (b1%=3 or b2%=3) then sd%=1 : sd$="sleight of hand " :goto 239
237 if sd%<>2 and (b1%=3 or b2%=3) then let b1%=0 : let b2%=0 : goto 160
239 if sh%=2 and (b1%=4 or b2%=4) then let sh%=1 : sh$="stealth " : goto 242
240 if sh%<>2 and (b1%=4 or b2%=4) then let b1%=0 : let b2%=0 : goto 160
242 if ar%=2 and (b1%=5 or b2%=5) then let ar%=1 : ar$="arcana " : goto 245
243 if ar%<>2 and (b1%=5 or b2%=5) then let b1%=0 : let b2%=0 : goto 160
245 if hi%=2 and (b1%=6 or b2%=6) then let hi%=1 : hi$="history " : goto 248
246 if hi%<>2 and (b1%=6 or b2%=6) then let b1%=0 : let b2%=0 : goto 160
248 if iv%=2 and (b1%=7 or b2%=7) then iv%=1 : iv$="investigation " : goto 251
249 if iv%<>2 and (b1%=7 or b2%=7) then let b1%=0 : let b2%=0 : goto 160
251 if na%=2 and (b1%=8 or b2%=8) then let na%=1 : na$="nature " : goto 254
252 if na%<>2 and (b1%=8 or b2%=8) then let b1%=0 : let b2%=0 : goto 160
254 if re%=2 and (b1%=9 or b2%=9) then let re%=1 : re$="religion " : goto 257
255 if re%<>2 and (b1%=9 or b2%=9) then let b1%=0 : let b2%=0 : goto 160
257 if ah%=2 and (b1%=10 or b2%=10) then ah%=1 : ah$="animal handling ":goto260
258 if ah%<>2 and (b1%=10 or b2%=10) then let b1%=0 : let b2%=0 : goto 160
260 if is%=2 and (b1%=11 or b2%=11) then let is%=1 : is$="insight " : goto 263
261 if is%<>2 and (b1%=11 or b2%=11) then let b1%=0 : let b2%=0 : goto 160
263 if me%=2 and (b1%=12 or b2%=12) then let me%=1 : me$="medicine " : goto 266
264 if me%<>2 and (b1%=12 or b2%=12) then let b1%=0 : let b2%=0 : goto 160
266 if pn%=2 and (b1%=13 or b2%=13) then pn%=1 : pn$="perception " : goto 269
267 if pn%<>2 and (b1%=13 or b2%=13) then let b1%=0 : let b2%=0 : goto 160
269 if su%=2 and (b1%=14 or b2%=14) then let su%=1 : su$="survival " : goto 272
270 if su%<>2 and (b1%=14 or b2%=14) then let b1%=0 : let b2%=0 : goto 160
272 if dc%=2 and (b1%=15 or b2%=15) then let dc%=1 : dc$="deception " : goto275
273 if dc%<>2 and (b1%=15 or b2%=15) then let b1%=0 : let b2%=0 : goto 160
275 if it%=2 and (b1%=16 or b2%=16) then it%=1 : it$="intimidation " : goto 278
276 if it%<>2 and (b1%=16 or b2%=16) then let b1%=0 : let b2%=0 : goto 160
278 if pe%=2 and (b1%=17 or b2%=17) then pe%=1 : pe$="performance " : goto 281
279 if pe%<>2 and (b1%=17 or b2%=17) then let b1%=0 : let b2%=0 : goto 160
281 if pr%=2 and (b1%=18 or b2%=18) then pr%=1 : pr$="persuasion " : goto 285
282 if pr%<>2 and (b1%=18 or b2%=18) then let b1%=0 : let b2%=0 : goto 160
285 if cl%=1 then goto 1000
286 if cl%=2 then goto 2000
287 if cl%=3 then goto 3000
290 print chr$(147)
291 print "please enter your stats. race modifiers will be added automatically"
292 print
300 input "strength"; st%
301 if st%<>8 aN st%<>10 aN st%<>12 aN st%<>13 aN st%<>14 aN st%<>15 goto 290
310 input "dexterity"; de%
311 if de%<>8 aN de%<>10 aN de%<>12 aN de%<>13 aN de%<>14 aN de%<>15 goto 310
312 if de%=st% goto 310
320 input "constitution"; co%
321 if co%<>8 aN co%<>10 aN co%<>12 aN co%<>13 aN co%<>14 aN co%<>15 goto 320
322 if co%=st% or co%=de% goto 320
330 input "intelligence"; in%
331 if in%<>8 aN in%<>10 aN in%<>12 aN in%<>13 aN in%<>14 aN in%<>15 goto 330
332 if in%=st% or in%=de% or in%=co% goto 330
340 input "wisdom"; wi%
341 if wi%<>8 aN wi%<>10 aN wi%<>12 aN wi%<>13 aN wi%<>14 aN wi%<>15 goto 340
342 if wi%=st% or wi%=de% or wi%=co% or wi%=in% goto 340
350 input "charisma"; ch%
351 if ch%<>8 aN ch%<>10 aN ch%<>12 aN ch%<>13 aN ch%<>14 aN ch%<>15 goto 350
352 if ch%=st% or ch%=de% or ch%=co% or ch%=in% or ch%=wi% goto 350
360 let st%=st%+s1% : let s2%=int((st%-10)/2) : let s4%=s2%+s3%
361 let at%(1)=s2% : if at%=1 then let at%(1)=s2%+2
365 let de%=de%+d1% : let d2%=int((de%-10)/2) : let d4%=d2%+d3%
366 let ac%(1)=d2% : if ac%=1 then let ac%(1)=d2%+2
367 let sd%(1)=d2% : if sd%=1 then let sd%(1)=d2%+2
368 let sh%(1)=d2% : if sh%=1 then let sh%(1)=d2%+2
370 let co%=co%+e1% : let e2%=int((co%-10)/2) : let e4%=e2%+e3%
374 let in%=in%+i1% : let i2%=int((in%-10)/2) : let i4%=i2%+i3%
375 let ar%(1)=i2% : if ar%=1 then let ar%(1)=i2%+2
376 let hi%(1)=i2% : if hi%=1 then let hi%(1)=i2%+2
377 let iv%(1)=i2% : if iv%=1 then let iv%(1)=i2%+2
378 let na%(1)=i2% : if na%=1 then let na%(1)=i2%+2
379 let re%(1)=i2% : if re%=1 then let re%(1)=i2%+2
380 let wi%=wi%+w1% : let w2%=int((wi%-10)/2) : let w4%=w2%+w3%
381 let ah%(1)=w2% : if ah%=1 then let ah%(1)=w2%+2
382 let is%(1)=w2% : if is%=1 then let is%(1)=w2%+2
383 let me%(1)=w2% : if me%=1 then let me%(1)=w2%+2
384 let pn%(1)=w2% : if pn%=1 then let pn%(1)=w2%+2
385 let su%(1)=w2% : if su%=1 then let su%(1)=w2%+2
386 let ch%=ch%+c1% : let c2%=int((ch%-10)/2) : let c4%=c2%+c3%
387 let dc%(1)=c2% : if dc%=1 then let dc%(1)=c2%+2
388 let it%(1)=c2% : if it%=1 then let it%(1)=c2%+2
389 let pe%(1)=c2% : if pe%=1 then let pe%(1)=c2%+2
390 let pr%(1)=c2% : if pr%=1 then let pr%(1)=c2%+2
391 let hp%=hp%+e2% : if ra%=3 and sr%=1 then let hp%=hp%+1
392 gosub 20000
393 print chr$(147)
394 let z%=0
395 print "weapon slot number"z%;p$(p%(z%));p1%(z%) : let z%=z%+1
396 if p%(z%)>0 then goto 395
397 let z1%=z%
398 print
399 input "choose your currently held weapon by picking its slot number"; z%
400 if z%<0 or z%>=z1% then goto 393
401 let p2%=p%(z%)
405 print chr$(147)
406 print "your character race is " ra$" "sr$
407 print
410 print "your character background is " ba$
411 print
420 print "your character class is " cl$
421 print
430 print "your character proficiencies are:"
431 ? at$ ac$ sd$ sh$ ar$ hi$ iv$ na$ re$ ah$ is$ me$ pn$ su$ dc$ it$ pe$ pr$
432 print
440 print "your character stats are:"
441 print
450 print "strength -" st% "("s2%")";
451 if st%<10 then print " (weakass)"
452 if st%>=10 then print
460 print "dexterity -" de% "("d2%")"
470 print "constitution -" co% "("e2%")"
480 print "intelligence -" in% "("i2%")"
490 print "wisdom -" wi% "("w2%")"
500 print "charisma -" ch% "("c2%")"
505 print
510 print "your character hp is" hp%"/"hp%
515 print
520 print "your character speed is" sp% "ft"
525 print
530 print "page 1/5 ";
531 input "choose your page"; pa%
535 if pa%<1 or pa%>5 then print chr$(145) chr$(145) : goto 530
536 if pa%=1 goto 405
540 if pa%=2 then print chr$(147)
541 if pa%=3 goto 590
542 if pa%=4 goto 706
543 if pa%=5 goto 786
545 print "your character skill modifiers are:"
546 print
550 print "athletics - " at%(1)
551 print "acrobatics - " ac%(1)
552 print "sleight of hand - " sd%(1)
553 print "stealth - " sh%(1)
554 print "arcana - " ar%(1)
555 print "history - " hi%(1)
556 print "investigation - " iv%(1)
557 print "nature - " na%(1)
558 print "religion - " re%(1)
559 print "animal handling - " ah%(1)
560 print "insight - " is%(1)
561 print "medicine - " me%(1)
562 print "perception - " pn%(1)
563 print "survival - " su%(1)
564 print "deception - " dc%(1)
565 print "intimidation - " it%(1)
566 print "performance - " pe%(1)
567 print "persuasion - " pr%(1)
568 print
580 print "page 2/5 ";
581 input "choose your page"; pa%
585 if pa%<1 or pa%>5 then print chr$(145) chr$(145) : goto 580
586 if pa%=2 goto 540
587 if pa%=1 goto 405
588 if pa%=4 goto 706
589 if pa%=5 goto 786
590 if pa%=3 then print chr$(147)
601 print "character weapon inventory"
602 print
603 gosub 10500
605 print
610 print "your currently held weapon is " p$(p2%)
650 print
700 print "page 3/5 ";
701 input "choose your page"; pa%
702 if pa%=1 goto 405
703 if pa%=2 goto 540
704 if pa%=3 goto 590
705 if pa%=5 goto 786
706 if pa%=4 then print chr$(147)
707 if pa%<1 or pa%>5 then print chr$(145) chr$(145) : goto 700
750 gosub 21000
751 print "character misc inventory"
752 print
760 let z%=0
761 print "misc slot number"z%;n$(n%(z%));n1%(z%) : let z%=z%+1
762 if z% <10 goto 761
770 print
771 print "gp -" gp%
772 print
780 print "page 4/5 ";
781 input "choose your page"; pa%
782 if pa%=1 goto 405
783 if pa%=2 goto 540
784 if pa%=3 goto 590
785 if pa%=4 goto 706
786 if pa%=5 then print chr$(147)
787 if pa%<1 or pa%>5 then print chr$(145) chr$(145) : goto 780
800 gosub 22000
801 print "character ammo inventory"
802 print
810 let z%=0
811 print "ammo slot number"z%;a$(a%(z%));a1%(z%) : let z%=z%+1
812 if z% <10 goto 811
820 print
830 print "page 5/5 ";
831 input "choose your page"; pa%
832 if pa%=1 goto 405
833 if pa%=2 goto 540
834 if pa%=3 goto 590
835 if pa%=4 goto 706
836 if pa%=5 goto 786
837 if pa%<1 or pa%>5 then print chr$(145) chr$(145) : goto 830
1000 print chr$(147)
1010 print "1 - chain mail"
1020 print "2 - leather armor, longbow, 20 arrows"
1025 print
1030 input "choose your starting equipment"; ic%(1)
1040 if ic%(1)<1 or ic%(1)>2 then goto 1000
1050 if ic%(1)=1 then let am%=1
1060 if ic%(1)=2 then let am%=2
1061 if ic%(1)=2 then let x%=1 : x1%=1 : gosub 10000
1062 if ic%(1)=2 then let w%=1 : w1%=20 : gosub 12000
1100 print chr$(147)
1110 print "1 - a martial weapon and a shield"
1120 print "2 - two martial weapons"
1125 print
1130 input "choose your starting equipment"; ic%(2)
1140 if ic%(2)<1 or ic%(2)>2 then goto 1100
1150 if ic%(2)=1 then let se%=1 : goto 1500
1160 if ic%(2)=2 then goto 1550
1200 print chr$(147)
1210 print "1 - a light crossbow and 20 bolts"
1220 print "2 - two handaxes"
1225 print
1230 input "choose your starting equipment"; ic%(3)
1240 if ic%(3)<1 or ic%(3)>2 then goto 1200
1250 if ic%(3)=1 then let x%=11 : x1%=1 : gosub 10000
1251 if ic%(3)=1 then let w%=2 : w1%=20 : gosub 12000
1260 if ic%(3)=2 then let x%=18 : x1%=2 : gosub 10000
1300 print chr$(147)
1310 print "1 - a dungeoneer pack"
1320 print "2 - an explorer pack"
1325 print
1330 input "choose your starting equipment"; ic%(4)
1340 if ic%(4)<1 or ic%(4)>2 then goto 1300
1350 if ic%(4)=1 then let y%=1 : y1%=1 : gosub 11000
1360 if ic%(4)=2 then let y%=2 : y1%=1 : gosub 11000
1400 goto 290
1500 print chr$(147)
1501 gosub 5000
1502 input "choose your martial weapon"; x%
1503 if x%<1 or x%>10 then goto 1500
1504 let x1%=1 : gosub 10000
1505 goto 1200
1550 print chr$(147)
1551 gosub 5000
1552 input "choose your first martial weapon"; x%
1553 if x%<1 or x%>10 then goto 1550
1554 let x1%=1 : gosub 10000
1555 input "choose your second martial weapon"; x%
1556 if x%<1 or x%>10 then goto 1550
1557 let x1%=1 : gosub 10000
1558 goto 1200
2000 print chr$(147)
2010 print "1 - a light crossbow and 20 bolts"
2020 print "2 - any simple weapon"
2025 print
2030 input "choose your starting equipment"; ic%(1)
2040 if ic%(1)<1 or ic%(1)>2 then goto 2000
2050 if ic%(1)=1 then let x%=11 : x1%=1 : gosub 10000
2055 if ic%(1)=1 then let w%=2 : w1%=20 : gosub 12000
2060 if ic%(1)=2 then gosub 2500
2100 print chr$(147)
2110 print "1 - a component pouch"
2120 print "2 - an arcane focus"
2125 print
2130 input "choose your starting equipment"; ic%(2)
2140 if ic%(2)<1 or ic%(2)>2 then goto 2100
2150 if ic%(2)=1 then let y%=4 : y1%=1 : gosub 11000
2160 if ic%(2)=2 then let y%=5 : y1%=1 : gosub 11000
2200 print chr$(147)
2210 print "1 - a scholar pack"
2220 print "2 - a dungeoneer pack"
2225 print
2230 input "choose your starting equipment"; ic%(3)
2240 if ic%(3)<1 or ic%(2)>3 then goto 2200
2250 if ic%(3)=1 then let y%=3 : y1%=1 : gosub 11000
2260 if ic%(3)=2 then let y%=1 : y1%=1 : gosub 11000
2300 let am%=11 : let x%=15 : x1%=2 : gosub 10000
2310 gosub 2500
2320 goto 290
2500 print chr$(147)
2501 gosub 6000
2502 input "choose your simple weapon"; sw%
2503 if sw%<1 or sw%>10 then goto 2500
2504 let x%=sw%+10 : let x1%=1 : gosub 10000
2505 return
3000 print chr$(147)
3005 if hw%=0 then let x%=20 : x1%=1 : gosub 10000 : goto 3100
3010 print "1 - a mace"
3020 print "2 - a warhammer"
3025 print
3030 input "choose your starting equipment"; ic%(1)
3040 if ic%(1)<1 or ic%(1)>2 then goto 3000
3050 if ic%(1)=1 then let x%=20 : x1%=1 : gosub 10000
3060 if ic%(1)=2 then let x%=7 : x1%=1 : gosub 10000
3100 print chr$(147)
3110 print "1 - scale mail"
3120 print "2 - leather armor"
3130 if ha%=1 then print "3 - chain mail"
3135 print
3140 input "choose your starting equipment"; ic%(2)
3150 if ic%(2)<1 or ic%(2)>3 then goto 3100
3151 if ic%(2)=1 then let am%=3
3152 if ic%(2)=2 then let am%=2
3153 if ha%=0 and ic%(2)=3 then goto 3100
3154 if ic%(2)=3 then let am%=1
3160 print chr$(147)
3161 print "1 - a light crossbow and 20 bolts"
3162 print "2 - any simple weapon"
3165 print
3170 input "choose your starting equipment"; ic%(3)
3171 if ic%(3)<1 or ic%(3)>2 then goto 3160
3172 if ic%(3)=1 then let x%=11 : x1%=1 : gosub 10000
3173 if ic%(3)=1 then let w%=2 : w1%=20 : gosub 12000
3174 if ic%(3)=2 then gosub 2500
3200 print chr$(147)
3210 print "1 - a priest pack"
3220 print "2 - an explorer pack"
3225 print
3230 input "choose your starting equipment"; ic%(4)
3240 if ic%(4)<1 or ic%(4)>2 then goto 3200
3250 if ic%(4)=1 then let y%=6 : y1%=1 : gosub 11000
3260 if ic%(4)=2 then let y%=2 : y1%=1 : gosub 11000
3300 let se%=1
3310 let y%=7 : y1%=1 : gosub 11000
3320 goto 290
5000 print "1 - longbow"
5001 print "2 - hand crossbow"
5002 print "3 - heavy crossbow"
5003 print "4 - greatsword"
5004 print "5 - greataxe"
5005 print "6 - longsword"
5006 print "7 - warhammer"
5007 print "8 - shortsword"
5008 print "9 - halberd"
5009 print "10 - flail"
5010 print
5100 return
6000 print "1 - light crossbow"
6001 print "2 - shortbow"
6002 print "3 - sling"
6003 print "4 - spear"
6004 print "5 - dagger"
6005 print "6 - greatclub"
6006 print "7 - quarterstuff"
6007 print "8 - handaxe"
6008 print "9 - sickle"
6009 print "10 - mace"
6010 print
6100 return
10000 let z%=0
10001 if p%(z%)=0 or p%(z%)=x% then let p%(z%)=x% : p1%(z%)=p1%(z%)+x1%:return
10002 if p%(z%)<>0 then let z%=z%+1 : goto 10001
10500 let z%=0
10501 print "weapon slot number"z%;p$(p%(z%));p1%(z%) : let z%=z%+1
10502 if z% <10 goto 10501
10503 return
11000 let z%=0
11001 if n%(z%)=0 or n%(z%)=y% then let n%(z%)=y% : n1%(z%)=n1%(z%)+y1%:return
11002 if n%(z%)<>0 then let z%=z%+1 : goto 11001
12000 let z%=0
12001 if a%(z%)=0 or a%(z%)=w% then let a%(z%)=w% : a1%(z%)=a1%(z%)+w1%:return
12002 if a%(z%)<>0 then let z%=z%+1 : goto 12001
20000 let p$(0)="empty"
20001 let p$(1)="longbow"
20002 let p$(2)="hand crossbow"
20003 let p$(3)="heavy crossbow"
20004 let p$(4)="greatsword"
20005 let p$(5)="greataxe"
20006 let p$(6)="longsword"
20007 let p$(7)="warhammer"
20008 let p$(8)="shortsword"
20009 let p$(9)="halberd"
20010 let p$(10)="flail"
20011 let p$(11)="light crossbow"
20012 let p$(12)="shortbow"
20013 let p$(13)="sling"
20014 let p$(14)="spear"
20015 let p$(15)="dagger"
20016 let p$(16)="greatclub"
20017 let p$(17)="quarterstuff"
20018 let p$(18)="handaxe"
20019 let p$(19)="sickle"
20020 let p$(20)="mace"
20100 return
21000 let n$(0)="empty"
21001 let n$(1)="dungeoneer pack"
21002 let n$(2)="explorer pack"
21003 let n$(3)="scholar pack"
21004 let n$(4)="component pouch"
21005 let n$(5)="arcane focus"
21006 let n$(6)="priest pack"
21007 let n$(7)="holy symbol"
21100 return
22000 let a$(0)="empty"
22001 let a$(1)="arrows"
22002 let a$(2)="bolts"
22100 return
23000 let am$(0)="no armor"
23001 let am$(1)="chain mail"
23002 let am$(2)="leather armor"
23003 let am$(3)="scale mail"
23050 if am%=1 then let ap%=16 : ca%=1
23051 if am%=2 then let ap%=11+d2% : ca%=0
23052 if am%=3 then let ap%=14+d2% : ca%=1
23100 return
