﻿:Namespace KINGDOM

    Ⓔ←1

    ∇ CUMV←CS V;N
      CUMV←+/((N,2×N)⍴((0⌈N-1)⍴0),V)[;⍳N←⍴V←(,V),0⍴1]
    ∇

    ∇ Q←DATA
      'YOU HAVE ',(⍕G),' BUSHELS OF GRAIN AVAILABLE AT THIS POINT, AND    '
      (⍕L+R),' ACRES AVAILABLE FOR PLANTING.'
      'LAND COSTS 20 BUSHELS PER ACRE TO BUY OR SELL, AND'
      'CAN BE RENTED FOR 4 BUSHELS PER ACRE PER YEAR.'
      'EACH ACRE PLANTED REQUIRES 1 BUSHEL OF GRAIN,'
      'AND EACH MERCENARY REQUIRES 10 BUSHELS PER YEAR.'
      Q←⎕
    ∇

    ∇ EXPLAIN
      ' '
      '****************************************************'
      '*                                                  *'
      '*              Ⓚ*Ⓘ*Ⓝ*Ⓖ*Ⓓ*Ⓞ*Ⓜ                       *'
      '*                                                  *'
      '*              AN INTERACTIVE SIMULATION           *'
      '*              DEMONSTRATION GAME.                 *'
      '*                                                  *'
      '*              PROGRAMMED BY THE APPLICATIONS      *'
      '*              GROUP                               *'
      '*              COMPUTING SERVICES,                 *'
      '*              THE UNIVERSITY OF ALBERTA,          *'
      '*              EDMONTON, ALBERTA.                  *'
      '*                                                  *'
      '*              BROUGHT TO U OF M WITH THE AID OF - *'
      '*              GAIL LIFT AND GEORGE HELFFRICH      *'
      '****************************************************'
      ' '
      'YOU HAVE JUST BECOME A ⓀⒾⓃⒼ OF A SMALL PRINCIPALITY.'
      'YOU ARE RESPONSIBLE FOR ALL DECISION-MAKING IN THE'
      'COUNTRY.'
      ' '
      'THE RESOURCES YOU HAVE AT YOUR DISPOSAL ARE'
      'LAND, PEASANTS, AND GRAIN.'
      'EACH YEAR YOU MUST DECIDE WHETHER TO BUY, SELL OR '
      'RENT LAND, HOW MUCH LAND TO PLANT WITH GRAIN, AND'
      'HOW MUCH GRAIN TO GIVE TO THE PEASANTS.'
      ' '
      'THE COUNTRY IS SURROUNDED BY JEALOUS, WARLIKE NEIGHBORS'
      'WHO MAY BE TEMPTED TO INVADE IF YOU BECOME TOO RICH'
      'FOR YOUR OWN ROYAL PANTS, OR IF THE COUNTRY DOES NOT'
      'HAVE SUFFICIENT MANPOWER TO DEFEND ITSELF.  YOU MAY'
      'HIRE MERCENARIES TO DEFEND THE COUNTRY IN'
      'ANY YEAR, BUT EACH MERCENARY WILL HAVE TO BE '
      'PAID WITH GRAIN.'
      ' '
      'YOUR SUBJECTS WILL USUALLY REMAIN LOYAL, PROVIDED'
      'THAT THEY ARE REASONABLY WELL FED AND NOT OVERWORKED.'
      'REMEMBER THAT THEY WILL HAVE TO PLANT AND HARVEST'
      'THE LAND TO PRODUCE MORE GRAIN.'
      ' '
      'THE AMOUNT OF GRAIN PRODUCED IN ANY YEAR WILL DEPEND'
      'UPON THE AMOUNT PLANTED AND UPON THE WEATHER.  IT MAY'
      'HAPPEN IN A GIVEN YEAR THAT THE CROP FAILS OR IS VERY'
      'POOR.  ALSO THE RATS MAY EAT A CERTAIN AMOUNT, OR THE '
      'PEASANTS MAY RAID THE ROYAL GRANARY IF THEY ARE '
      'UNDERFED.'
      ' '
      'YOUR PREDECESSOR LEFT THE COUNTRY IN REASONABLY GOOD'
      'CONDITION.  (MAYBE THAT IS WHY YOU DECIDED TO'
      'OVERTHROW HIM.)'
      ' '
      'LIKE MOST REAL-LIFE SITUATIONS, YOU DO NOT HAVE'
      'VERY MUCH HISTORICAL DATA TO GO ON.  YOU WILL '
      'HAVE TO LEARN THE ART OF GOVERNMENT BY TRIAL '
      'AND ERROR.'
      ' '
      'YOUR OBJECTIVE IS TO REMAIN IN POWER AS LONG AS'
      'POSSIBLE, NATURALLY.  HOW LONG YOU STAY IN POWER'
      'DEPENDS UPON HOW GOOD YOUR DECISIONS ARE.'
      ' '
      'YOU ARE BEGINNING YOUR REIGN WITH:'
      ' 500 ACRES OF LAND,'
      ' 100 FAT AND CONTENTED PEASANTS, AND '
      '1500 BUSHELS OF GRAIN IN THE ROYAL GRANARY.'
      '     THERE IS NO IMMEDIATE DANGER OF INVASION.'
      ' '
      'REMEMBER THAT:'
      '************************************************'
      'ⓁⒶⓃⒹ        - COSTS 20 BU/ACRE TO BUY OR SELL  *'
      '            - CAN BE RENTED FOR 4 BU./ACRE/YEAR*'
      '            - EACH ACRE PLANTED REQUIRES 1 BU. *'
      '              OF GRAIN                         *'
      'ⓂⒺⓇⒸⒺⓃⒶⓇⒾⒺⓈ - COST 10 BU/YEAR FOR SALARY.      *'
      '************************************************'
      ' '
      'WHEN YOU NEED TO MAKE A DECISION, YOU WILL BE '
      'PROMPTED.  IF YOU WISH TO REVERSE A PREVIOUS '
      'DECISION, TYPE ''GOBACK''. IF YOU FORGET SOME '
      'OF THE COSTS OF ITEMS IN GRAIN, TYPE ''REMIND''.'
      'TO GET THE CURRENT AMOUNTS OF GRAIN AND'
      'LAND AVAILABLE, TYPE ''DATA''.'
      ' '
      ' . . . GOOD LUCK, MY LORD-LIEGE!'
      ' '
      Ⓔ←0
    ∇

    ∇ Q←GO A
      Q←GOBACK
    ∇

    ∇ Q←GOBACK
      Q←¯99996
    ∇

    ∇ S←ND IT V;A;B;X;J;N
      →2×0<×/⍴S←((⍴B←0>V←(V←⌊0.5+,V),(J←0)⍴1),N←ND[1])⍴' '
      S[J;]←('0123456789')[(0,⍳9)⍳A←(N⍴10)⊤|V[J←J+1]]
      S[J;⍳X]←⌽(X←0⌈(N-ND[2]⌈1)⌊(N-+/1⌊CS A))⍴(' -')[1+B[J]],N⍴' '
      →5-3×J<⍴V
      S[(((V<0)∧((10*N-1)≤|V))∨((10*N)≤|V))/⍳⍴V;]←'×'
    ∇

    ∇ Q←REMIND
      ' '
      'LAND COSTS 20 BU./ACRE TO BUY OR SELL,'
      'OR CAN BE RENTED FOR 4 BU./ACRE/YEAR.'
      'EACH ACRE PLANTED REQUIRES 1 BU. GRAIN.'
      'MERCENARIES REQUIRE 10 BU. EACH FOR SALARY.'
      Q←⎕
    ∇

    ∇ SEED;FORGET
      FORGET←⎕AI[3]
      FORGET←SETLINK 1+2×FORGET÷2
    ∇

    ∇ R←SETLINK X
      R←⎕RL←X,1
    ∇

    ∇ START
      SEED
      →(Ⓔ=0)/S1
      'DO YOU WISH AN EXPLANATION OF THE GAME?'
      →('N'=(⍞,1⍴'Y')[1])/S1
      EXPLAIN
      →S1A
     S1:'DO YOU WISH EXTENDED PROMPTING?'
      A←0
      →('N'=(⍞,1⍴'Y')[1])/S2
     S1A:A←1
     S2:Y←0
      D←(1 13)⍴1 1500 100 500 0 0 0 0 0 0 0 10 10
     S9:Y←Y+1
      G←D[Y;2]
      P←D[Y;3]
      L←D[Y;4]
      S←D[Y;12]
      I←D[Y;13]
      R←0
      ' '
      '*****YEAR=',(⍕Y),' GRAIN=',(⍕G),' PEASANTS=',(⍕P),' LAND=',(⍕L),'*****'
      →(S>2)/S9A
      'PEASANT SATISFACTION IS DANGEROUSLY LOW.'
      →S9C
     S9A:→(S>5)/S9B
      'PEASANT SATISFACTION IS HIGH.'
      →S9C
     S9B:→(S≤15)/S9C
      'PEASANT SATISFACTION IS HIGH.'
     S9C:→(I>2)/S9D
      'THE COUNTRY IS IN IMMEDIATE DANGER OF INVASION.'
      →S9E
     S9D:→(I>5)/S9E
      'RUMORS INDICATE SOME DANGER OF INVASION.'
     S9E:→(A=0)/S9F
      'HOW MANY ACRES DO YOU WISH TO BUY (SELL IF NEGATIVE)?'
      →S10
     S9F:'ACRES TO BUY (SELL IF NEGATIVE)?'
     S10:D[Y;5]←B←⌊⎕
      →(B=¯99996)/S9F
      →(L≥-B)/S11
      'BUT THERE''S NOT ENOUGH LAND.'
      →S10
     S11:→(G≥B×20)/S12
      'BUT THERE''S NOT ENOUGH GRAIN.'
      →S10
     S12:G←G-B×20
      L←L+B
      →(A=0)/S12A
      'HOW MANY ACRES DO YOU WISH TO RENT?'
      →S13
     S12A:'RENT?'
     S13:D[Y;6]←R←⌊⎕
      →(R≠¯99996)/S13A
      G←G+B×20
      L←L-B
      R←0
      →S9F
     S13A:→(G≥R×4)/S14
      'BUT THERE''S NOT ENOUGH GRAIN.'
      →S13
     S14:G←G-R×4
      →(A=0)/S14A
      'HOW MANY ACRES DO YOU WISH TO PLANT?'
      →S15
     S14A:'PLANT?'
     S15:D[Y;7]←PL←⌊⎕
      →(PL≠¯99996)/S15X
      G←G+R×4
      →S12A
     S15X:→(G≥PL×1)/S15A
      'BUT THERE ISN''T ENOUGH GRAIN.'
      →S15
     S15A:→(PL≤L+R)/S16
      'BUT THERE''S INSUFFICIENT LAND.'
      →S15
     S16:→(PL≤P×4)/S17
      'BUT THERE AREN''T ENOUGH WORKERS.'
      →S15
     S17:G←G-PL×1
      →(A=0)/S17X
      'HOW MANY BUSHELS DO YOU WISH TO GIVE TO THE PEASANTS?'
      →S17A
     S17X:'BUSHELS TO THE PEASANTS?'
     S17A:D[Y;11]←GP←⌊⎕
      →(GP≠¯99996)/S17B
      G←G+PL×1
      →S14A
     S17B:→(GP≤G)/S18
      'BUT THERE''S INSUFFICIENT GRAIN.'
      →S17A
     S18:G←G-GP
      →(A=0)/S18A
      'HOW MANY MERCERNARIES DO YOU WISH TO HIRE?'
      →S19
     S18A:'MERCERNARIES?'
     S19:D[Y;8]←M←⌊⎕
      →(M≠¯99996)/S19A
      G←G+GP
      →S17X
     S19A:→(G≥M×10)/S20
      'BUT THERE''S NOT ENOUGH GRAIN.'
      →S19
     S20:G←G-M×10
      ⍝CALCULATE CROP YIELD.
      D[Y;9]←YIELD←PL×YD←?7
      →(YD≥6)/S20A
      →(YD≥3)/S20B
      'THIS WAS A POOR CROP YEAR.'
      →S20B
     S20A:→(YIELD=0)/S20B
      'THIS WAS A GOOD CROP YEAR.'
     S20B:'THE YIELD WAS ',(⍕YIELD),' BUSHELS.'
      G←G+YIELD
      ATE←⌊G⌊(G×0.02×?6)+YIELD×0.02×?6
      →(ATE≤G÷5)/S21
      'BUT THE RATS ATE ',(⍕ATE),' BUSHELS.'
     S21:G←G-ATE
      ⍝CALCULATE PEASANT PILFERAGE
      PILFER←0
      →(3≤GP÷P)/S22
      →(M≥P÷10)/S22
      PILFER←⌊G⌊(1-M÷P÷10)×P×(3-GP÷P)
      'AND THE PEASANTS PILFERED ',(⍕PILFER),' BUSHELS.'
      ⍝CALCULATE TOTAL LOSSES
     S22:D[Y;10]←LOSSES←ATE+PILFER
      →(LOSSES<G÷4)/S22X
      'TOTAL GRAIN LOSSES (RATS AND PEASANTS) ',(⍕LOSSES),' BUSHELS.'
      ⍝OUTPUT NEW RECORD
     S22X:D←((Y+1),13)⍴(,D),(Y+1),G,P,L,9⍴0
      ⍝CALCULATE GRAIN TO PEASANT EFFECT ON PEASANT SATISFACTION
      S←⌊20⌊S+1×((GP÷P)≥3)×((5⌊(GP÷P))-3)
      S←⌊S+1×((GP÷P)<3)×((5⌊(GP÷P))-3)
      →(S>0)/S22A
      'YOU HAVE BEEN OVERTHROWN FOR STARVING THE PEASANTS!!'
      →S29
      ⍝EFFECTS OF PLANTING PROGRAM ON SATISFACTION
     S22A:S←⌊20⌊S+0.5×(PL≤P×2.5)×(2.5-PL÷P)
      S←⌊S+0.5×(PL≥P×3.5)×(3.5-(PL÷P))
      →(S>0)/S23A
      ⍝THERE IS A REVOLT!
      →(M>P÷2+?4)/S23
      'YOU HAVE BEEN OVERTHROWN FOR OVERWORKING THE PEASANTS!'
      →S29
     S23:'THERE WAS A REVOLT BECAUSE THE PEASANTS WERE OVERWORKED,'
      'BUT YOUR MERCANARIES PUT IT DOWN.'
      S←2+?4
      ⍝EFFECTS OF MERCENARIES ON POPULATION
     S23A:→(M≤P÷5)/S24
      →(2=?2)/S24
      'THE MERCENARIES ARE LOOTING AND KILLING!'
      S←⌊S-(M÷P)×10
      →(S>0)/S24
      'YOU HAVE BEEN OVERTHROWN IN A CIVIL REVOLT!'
      →S29
      ⍝EFFECTS ON DANGER OF INVASION
     S24:D[Y+1;12]←S
      →(G≤P×20)/S26
      I←⌊I-3×(G-P×20)÷G
      →(M≤G÷50)/S26
      I←⌊I-5×(M-G÷50)÷M
     S24A:→(I>0)/S26A
      'YOUR COUNTRY HAS BEEN INVADED BY ALIEN HORDES!'
      →((⍟M+1)≥4×(?100)÷100)/S25
      '- - - AND YOU HAVE BEEN DEPOSED.'
      →S29
     S25:' - - - BUT YOUR MERCANARIES REPELLED THE INVADERS.'
      I←2+?8
      →S26A
     S26:→(M≤L÷10)/S26X
      I←⌊20⌊I+1
      →S26A
     S26X:I←I-1
      →S24A
     S26A:D[Y+1;13]←I
      ⍝CALCULATE NEW POPULATION LEVEL
      →(3>GP÷P)/S27
      P←⌊(P+M)×1.2
      →S28
     S27:P←⌊P×(1-(3-GP÷P)÷3)
      'A NUMBER OF PEASANTS STARVED.'
     S28:P←P+⌊((-P÷20)+?⌊1⌈P÷10)
      D[Y+1;3]←P←10⌈P
      →S9
     S29:'DO YOU WISH TO HAVE A SUMMARY?'
      →('N'=(⍞,1⍴'Y')[1])/S30
      SUMMARY
     S30:'TYPE ''START'' TO PLAY AGAIN.'
    ∇

    ∇ SUMMARY
      ' '
      '    YEAR   GRAIN    PEAS.   LAND  BOUGHT  RENTED PLANTED  MERCEN.  YIELD  LOSSES     FED'
      '¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
      I←0
      →((⍴D)[1]<I←I+1)/0
      ,(8 1)IT D[I;⍳11]
      →5
    ∇

:EndNamespace
