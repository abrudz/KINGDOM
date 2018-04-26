# KINGDOM

```
****************************************************
*                                                  *
*              Ⓚ*Ⓘ*Ⓝ*Ⓖ*Ⓓ*Ⓞ*Ⓜ                       *
*                                                  *
*              AN INTERACTIVE SIMULATION           *
*              DEMONSTRATION GAME.                 *
*                                                  *
*              PROGRAMMED BY THE APPLICATIONS      *
*              GROUP                               *
*              COMPUTING SERVICES,                 *
*              THE UNIVERSITY OF ALBERTA,          *
*              EDMONTON, ALBERTA.                  *
*                                                  *
*              BROUGHT TO U OF M WITH THE AID OF - *
*              GAIL LIFT AND GEORGE HELFFRICH      *
****************************************************
```
The workspace `6 KINGDOM` from [MVT for APL Version 2.00](http://wotho.ethz.ch/mvt4apl-2.00/) ported to [Dyalog APL Unicode](https://dyalog.com) with the following minimal changes to make the code run on a modern system:

1. The `NUMBER;'TEXT'` syntax for printing multiple arrays on the same line has been replaced by `(⍕NUMBER),'TEXT'`

2. `FORGET←⌶20` has been replaced by `FORGET←⎕AI[3]`

3. `R←6⌶1,X` has been replaced by `R←⎕RL←X,1`

## How to start

Enter `(0⎕FIX'file://path/KINGDOM.dyalog').START` .

Further instructions will be given by the game.

## How to stop

At one of the `⎕:` prompts, enter `→` .
