1  CLEAR :G = 5:Q = 5
2 CNT = 1:CTN = 1:STR = 1
5  DIM US$(14),SR$(14),NUM$(5)
10  TEXT : HOME : PRINT  TAB( 8)"GLOBAL THERMONUCLEAR WAR": FOR I = 1 TO 40: PRINT "-";: NEXT I
15  PRINT : PRINT "WHICH SIDE DO YOU WANT TO BE?";: INPUT " ";SIDE$: IF SIDE$ <  > "RUSSIA" AND SIDE$ <  > "UNITED STATES" THEN 15
20  DATA  LAS VEGAS,SEATTLE,LOS ANGELES,WASHINGTON D.C.,NEW YORK,MIAMI,BOSTON,HOUSTON,DENVER,CONEY ISLAND,CHICAGO,EUREKA,PHOENIX,HAWAII
30  FOR I = 1 TO 14: READ US$(I): NEXT I
40  DATA  MOSCOW,LENINGRAD,STALINGRAD,VOLGOGRAD,VLADIVOSTOK,OKHOTSK,WARSAW,BERLIN,PRAGUE,KIEV,CHITA,SARAJEVO,TEHRAN,OMSK
50  FOR I = 1 TO 14: READ SR$(I): NEXT I
60  HOME : IF SIDE$ = "RUSSIA" THEN  FOR I = 1 TO 14: PRINT " ";I;")";: PRINT  TAB( 6)US$(I): NEXT I
70  IF SIDE$ = "UNITED STATES" THEN  FOR I = 1 TO 14: PRINT " ";I;")";: PRINT  TAB( 6)SR$(I): NEXT I
75 AS = 15 - CTN: IF AS < 5 THEN G = AS
80  PRINT : PRINT "ENTER ";: INVERSE : PRINT "NUMBERS";: NORMAL : PRINT " OF PRIMARY TARGETS:": FOR I = 1 TO G: INPUT ">";NUM$(I): IF  VAL (NUM$(I)) < 1 OR  VAL (NUM$(I)) > 14 THEN 60
82  IF I = 1 THEN 90
85  FOR ER = 1 TO I - 1: IF  VAL (NUM$(I)) =  VAL (NUM$(ER)) THEN 60
87  NEXT ER
90  NEXT I
100  FOR I = 1 TO G: IF SIDE$ = "UNITED STATES" THEN C$ = SR$( VAL (NUM$(I)))
110  IF SIDE$ = "RUSSIA" THEN C$ = US$( VAL (NUM$(I)))
115  IF C$ = "" THEN 160
120  HOME : VTAB 15: HTAB 20: PRINT "X ";C$
130  FOR T = 2 TO 15: VTAB T: HTAB 20: PRINT  CHR$ (124): VTAB T - 1: HTAB 20: PRINT " ": FOR U = 1 TO 50: NEXT U,T
140 R =  INT (2 * ( RND (1))): IF R = 1 THEN  FOR T = 1 TO 100: VTAB 15: HTAB 20: PRINT "#"; CHR$ (8);"*"; CHR$ (8);"+": NEXT T: VTAB 21: HTAB 18: PRINT "NUKED": GOSUB 1000
150  IF R = 0 THEN  VTAB 15: HTAB 20: PRINT "X": VTAB 21: HTAB 17: PRINT "INTACT"
155  FOR U = 1 TO 700: NEXT U
160  NEXT I
170  HOME : VTAB 12: HTAB 15: FLASH : PRINT "RETALIATION": NORMAL : FOR I = 1 TO 1000: NEXT I
180  HOME :AX = 15 - CNT: IF AX < 5 THEN Q = AX
182  FOR I = 1 TO Q:R =  INT (2 * ( RND (1))): IF R = 0 THEN 210
185  IF SIDE$ = "UNITED STATES" THEN  PRINT US$(CNT);" DESTROYED":US$(CNT) = ""
190  IF SIDE$ = "RUSSIA" THEN  PRINT SR$(CNT);" DESTROYED":SR$(CNT) = ""
200 CNT = CNT + 1
210  NEXT I
220  FOR I = 1 TO 2000: NEXT I
240  IF CTN = 15 THEN  PRINT "YOU WIN!  YOUR OPPONENT IS DEFEATED!": GOTO 900
245  HOME : IF CNT = 15 THEN  PRINT "YOU LOSE.  YOUR COUNTRY IS DEVASTATED": GOTO 900
250  PRINT "AFTER STRIKE ";STR;": ": PRINT "  YOU HAVE DESTROYED ";CTN - 1;" CITIES.": PRINT "  ";CNT - 1;" OF YOUR CITIES ARE GONE":STR = STR + 1
270  FOR TYU = 1 TO 2000: NEXT TYU
300  GOTO 60
900  FOR TNT = 1 TO 1500: NEXT TNT
910  HOME : PRINT "PLAY AGAIN? ";: GET C$: IF C$ = "Y" THEN  RUN 
920  HOME : END 
1000  IF SIDE$ = "UNITED STATES" THEN SR$( VAL (NUM$(I))) = ""
1010  IF SIDE$ = "RUSSIA" THEN US$( VAL (NUM$(I))) = ""
1015  VTAB 15: HTAB 20: PRINT " "
1017 CTN = CTN + 1
1020  RETURN 
