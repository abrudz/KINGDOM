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
KINGDOM was originally implemented by in 1974 by Lee Schneider and Todd Voros as an expansion of the earlier HAMURABI (a.k.a. THE SUMER) game. This is an APL port of the game, taken from the workspace `6 KINGDOM` in [MVT for APL Version 2.00](http://wotho.ethz.ch/mvt4apl-2.00/), further ported to [Dyalog APL Unicode](https://dyalog.com) with the following minimal changes to make the code run on a modern system:

1. The `NUMBER;'TEXT'` syntax for printing multiple arrays on the same line has been replaced by `(⍕NUMBER),'TEXT'`

2. `FORGET←⌶20` has been replaced by `FORGET←⎕AI[3]`

3. `R←6⌶1,X` has been replaced by `R←⎕RL←X,1`

## How to start

Enter `(0⎕FIX'file://path/KINGDOM.dyalog').START` .

Further instructions will be given by the game. If you want to answer *no* to a text prompt, make sure to do so in UPPERCASE as the code assumes that lowercase letters don't exist.

## How to stop

At one of the `⎕:` prompts, enter `→` .

## Example run
[Try it online!](https://tio.run/##1VpLj9vIEb77V7RPoixKFqXRPDQeD1pSi@oxX8umpBEGc1ggQC4LJNcAOSTZYNde2EFgYzGnPA5rJLc9eBFngySH1T/RH3GqqslmU6I8Yy@wQGbsEdnsqq6ux1fVRX36y8/aP/vVp5/94ufv3jH42bz81@aLP3r37tHN0y/ZeB4uYGSs2OI0olFWjLUeOk7k9tY3UXPz4jvH6W6eP43aHt50m@6ieXW6efEmgokwgPMdGHO7cONdF@zLdT6BCROe8XyJxiqesxlfCNZwnc2Lr/2m22CjuZqJQLF4yvyUy4jxBZcBHwWC8YxlM6lYEssocxmPJsQl54YcglaKPPg4FcoinMYpSwIeZTLyO8X8RoAMxrHKFOt1zbqJSImeZTGMrRiQKhEEtJwhHfOIjQRLRZSJCbE/2GWAFyvB03JFwcez/BlKA6Sp@GQuUVgvpzf7dg0VikmUoUjHIuLpyiKrCl5ZDrW9@cPXu2YQl7C8LAzdMBpsPPiIn5KYffDPXuLNq9882Lz874PNq8/h89/w/3u4/j38/92HsvpRcoCZwdVEyseZBDdVMpwHPJNxdBfiiQjjSGWpJvB5KDo/kdhJGoMPhSE42GgFMQOhkySBHJMk6hZiP43nyceuPI7DZI5hBkGTLuRYKPfuxCjoPAJFp0pmK4wEHoxEmnH3DsRiAtrO4sgtiDo/lZOMQGH@LEPAmKPQIVvKbKbVLic40n6PtgGjWCCnGcGZL@LUFwzieTpNJYT89so/JkDLODe4ezFXGQAZWA1kxaiDoIOYg5Aj7TMV8iAAd5LRWCY8AKt0Kkx4iiCoEvAqWQAtUkzEWCrwtXbIn6AzAIyDOkr4jOdRllq8StFQa8AxngPUKWYEBeiH65RNJCymeIArV4DcBfzjCkBV6cRAGLqFvIiOxDLEbaOME8GWMwFrpjncuwT2CPqGFEGe6SVm8RJogROlDqAgGNfm1qBdyRJmuk5kMN9HFIFP3GUh7z4t5EpikPDUPAUfiyY6ni8ED@I57HPJ00A@ESwS0p@N4lQZ@uUsZiFfYY7KRJhgpoFVZbTgsGM5JSXkZs/imKGrGVq0Iek6XkYsjVeg7ETrFR4ArS3bJAYjRXFWbhmNpebTqRxL1FvIoyReavVOxFSA2mQGKp5CdJIl@KqkhYxmcpwExiVNRR@RlRlXZFQXTJdt58ilBEOSPGhaUSo3wagsbdapDxBI@/PRhRhDdUCc5moOno2pN0RjBqgYF5F2AV40sSxHVYpY5bHBVRxBDQLioF9NwRDoOqAyFgPOLeP0iZh0LF8LRThCdRk2lW1of0MOM54uhMoqHmO8Mo0n8zHoMgYR9u6R8ClEpZa1Vk45wYAtlKslmIhEWK49h5BnFoeinkEJzLOl4BhaYGqZVS0N6UhEtAiFRKQXKjbNxmmcsCkgoyKfg7JUpCV1EsfIkwdKBxIkWEXeDssBwzGCP7ImychrcVZJnscdkaToC8SEHB20QL6j3VzbsNwzBGA6tc215TBJKgBUhFKwZCCm2Zbb2t7gx7FVTcbRRGJqhl05IBVGLaoCNr6crShONFihdQ0V@k82SwFjZjLsNGuEInAIocDFlYM2ZBksYbK5LgNczTgmZ0QHM3SobQ1cUG1nMaADqAbrdoKwmJGgSEyeUY19mBGALXPnSLVvoahRiHiA5UgquUVF1S3AW7pXrTGFISKnJEzIIxDdlaCFK4hGSDJcWS6iKCG5LOLZPMXABZERj2kmyq4yvjI8DKF2c6V9GOejofLUk@c0hV6xR1hymJHwZRRJvU4K4ko/IrwZlkSDbjc/pYB@KLmUzzx4NuU6zME1Mn3IqKY3M9tDTjtnJp1vq05tiZwXWylpNILEgKWi5JkAK0c@qBQYYbLA7dbttAJTw4@uTgzh5tVvNy//QYXH90Vh1LaPZg9rTmR2XWRXVEBYezrrEJOHiDT7CG85n3X2rMhKxd9ePMIRBs/fr77cvPwnXXxOW/8SKy@8fZrvXB/tSFzaAhQ9aMQfWxHWWBMqoIhCIhK6ToCiDcvBwuHdMtYraTSNqbJAeJ/mU9RMByiW8MgCEHEhoVZhVoAVTLNVAtwafjzi4yeNRqfgMsUSOGMKi5MS7Iq6A10CvRPKGoVunpddOTNwTAlZqlE6LSKWyJEYqijEIJ0Y7A6Dldgoh5rOgWGM6GezLSVjHfolnAjm4ycuC1eAMukE8Fb44v4uiW6/dOvbIwCv3Dq/a@3sm2qe6ck/fHsCP4e7sxU8pMqLLU756ej08vTC9Hk2X7zsrW@6j9Y3DzcvvsOZjgMXIxTxMXV08M/m@VfdzqCFzR3nAh9hA8hruhFxvvKu8b7corq6OL1G2kbX6/UPBodHxyeN5pXTdTcv3pzA3Dccn0bIBFh99c2vF1fI9qLlXV9bPGDi5TUt/x/nEpfdPH/qRG1YsXcNl14T5IL71kMPLsaAzE3qUjVYG1bzWqOri@trN6qIBvsdtPvrm4tH2LEyazmOs3gEojz9m@N43QfU4noGYgHDp3/XQ8UA6OkN0tIOG@ubRr15tC/WZOWttlOnDtzKdAADt@LZnTtMne1y0C6385kaeDoaDC3kubWtpAA@TnX05lP1jZ7P5VX/entciSyQ0RPmtcAH9ej6bW@XdWrNvcyZpJpvGsDnpevVyJNB/VEYGGQrHcCBEDzrNh8qz8BSXCIYaJs6ZJFu3OTQg/2bc8uJnEbUOINI@bProX@t0OGuLZbVJhsQKC8PbOUNK@uJS0jxWNxpRIXCwazDDVC8d81ewZgPOXV29W1vuLLoJxhxHvP6FLqMCgcsNfCz@uvhv5zHCfFYtYpt@djCvVqd9gpbJvmAMW6QDxyYQM4HPEMjixFDlFqCbjck0cPPdId4hd1dcuEzq2VclEb5WIJjGGX5fQD3ldyHmlSPe6C4E751KgBnz6SaYr8PTA/VkS6IIIUFiOrLjsVDnYwLJfGh5jlAnqPbeM7guL6H0UgzAqTxiNf4Q3jBdCKXem@TPd0ErA/vUvCRZKJgPclZk1jCVIJzOGQiywl2F4XO2vt5AiWx4RR9J9NKpwQPnLomtqMjx0WHSj4oESLhczwMNO1gVKW/TocNzeRWQiAaohcOEMdHOskVwKadZHSWp1RbWHwQbJ69bo8w2g2CYAeCaupGg1oiTETYFiRH7NSK6nmkCx94jdY3PcKj3m3sqvhd5dcbYnT6beJmRWPQGlmya917PX435WPWqaq6b9bjw4b9GB6RQg9RoWmdQtPNs7@WKvX63EIVv7Ujd3tUAw/kllOzIjdKTNc3B8j14CN0aPZ0kOsQme0q7eCOSqPkW9XawKwAWqs8h2ektiNUWxLU6Q1GK4obXFYUVxW2tC1ONOpJgvWNR8R8R0EAC1Gj8T4FGfEHWuEo0Tf4ug0YHtYqXEZWH3A3CgzDw5JfklvwaFdAOFjbElLjLFV7WB7lRqQt71rx6HLHisUJesuOdf3aqlmPjKqPLoeNgs0eEpxOpvY8tLWf1NkaRiu2PhpVbL21p9InceawYPCNj6THtxumxtTllo5zPfrJrhKPd0OBisk0rya3NInN3armTswqEBA2aamtE1LWMeoqrFNVWNXUSRVObKlLo@M0ExMh6BJ3Y2DnQzCj2ECvm6uJuBUzXvxpzIMxvi7M@5krKYJJpyjGYF8nuC8apbhf36zw4vzI2iCMPHt9SALy7eE@DY/KJI/tQq7w1B3joYHWtA8HKLQhQI6kBhLgrLuXGR1sd5jh5CEVFkRPc/MSDe@tF/lmeW0UelxUt5nQVvXxGOfDKbTThXPA@WFTTysHbPcDInDv9VssRHrb6Vc3g1HnWhq4qpEF6HKTwfM6gxXVViKDqUi5X0zS91tFeR/lSdZvExSoV3XP1zCuPay3zaLYtwd@81ZPW98AAjr9tuZmd0htNMlZwIEhr3fptk7llT1lccYDqGGVEqpQQ0@jURc9UT@BC5jc0jztioeePgK9H9BuLssGS6Z7jPRSBCcxRxshKpuWzVxUPWGPqPE8S8CKkVhC0TGO04mR8nJIhxcHjiFNVx9gHBecTA/4buIG7gl@I6Vu3@blW2FUMZ2Kccagfq4rqq1DC1in14U/quWBWRxtFYo8vB2Q09JYs91vVukqJI/eR6APDtpFdr8YMxIiYqbTH@nzOJxrF9hetp3i/v1KmJ@UmtDbpXZX8R2Y4gsCqIPdvaMgw@r@u50B7KDI0b3OADcEH5hhS081ey@ng//f9PV0@Gg7en7N3k0pCBKb1jTHVmIcZPftoHoMGuy1zskN@3dSWPGmbUdndSoDpgRsIIEGQC0Cvi7lcyWqkbjEaeWLvLJrg3BE3X9MbDxPiejdMoPMuCwzCeoMd1NrL7s7g@4aJ/nXT4yoGsNDsotGRLtq7Z2d9@wxAmybKb6uCOKYfALj9YkMAri@39iyaNtBjGra@a003cGtRqAXfWO5kEFh0FudNao5RRa7PkDUannYUMC@kF075Q5Kch1a3QbYhMSunwNFIT1fv/WrSE0ppZ4OnTls6@frt6ERg@dHYk3FKy@tivP2DHyI1KFfvtMLfB5A6cVmgHCi4oPYeP1L2MLO4@sDWPPc6@KC@BcWGBT82wx/0VxVhU9EEitRLbNLrx4MG0xT1vpmKhI4JwudabSsVnkttZce25yLDcOVccKgyHaHl1UlEo7IlreHweUQ58l25flB@ZwXFu@jxWUdzGPaKAOEBWIhAjtJPzYp@sjqXCEkJ60QPbvTsxc/LtY@GubzMDV7bZOd12/7ZYZm0ZzehyHGFthAMF2aA1gSp6SFazptRLFus3UOd97m@VNdAJTVIWyW9ookHra97WLWGPWk2knEOpu@LcPUPAx5urpLw7JfhHROk/PudwEG9csPaqQ2GvnBFvzXL2vhasfV5lB5SQI/9CaLle/JUFH4Oov64Wykv0NVNLmL7nWOVvi@merMosSgLrL1tYsfvv3/@rUDq1tFgO8maJhHFBCABQ@Lx65zzLwm5o8riS9GPO/aeqVR2ODdO932ju6t7rUBOe517x3AX32Fb7H@Bw "APL (Dyalog Unicode) – Try It Online") (This has pre-populated answers so it cannot take the random results into consideration.)

# Running as a website
The game can also be used through a browser by way of [MiServer](https://github.com/Dyalog/MiServer):

1. Load the `miserver.dws` workspace
2. Run `Start  '/mypath/KINGDOM`
3. Miserver will print [a link](http://localhost:8080/) which you can use to run the game.
4. The subpage [compare](http://localhost:8080/compare) shows a comparison of the original code, the updated code, and the website code.
