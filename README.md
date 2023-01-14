# Minecraft 1.19 Minesweeper

In this repo I implemented a datapack to play Minesweeper in Minecraft.

![Image from ingame](/images/ingame.png)

## Building

To build the datapack, simply run `build.sh`. This will generate the file
`mc_minesweeper.zip`.

## Installation

To use the datapack in a world simply move the generated `mc_minesweeper.zip`
into `.minecraft/saves/<World>/datapacks/`.

## Running

First you need to reload the datapacks in your world with the `/reload` command.
After that you need to run the initial setup once with `/function minesweeper:initial_setup`.
After that, place a commandblock in your world with the command `function minesweeper:prepare_game`.
This function will do all the setup and create the playing field over itself,
ready to play. To reset the gameboard, simply power the commandblock again and
the old board will be overwriten.

## How to play

To uncover a field, right-click with a shovel to transform it into a path. If
it is a bomb, you loose. Otherwise it will display the number of bombs in the
surrounding 8 fields. If you suspect a field to be a bomb, you can flag it with
the hoe, by transforming the dirt into farmland. To remove the flag jump on the
farmland until it returns to dirt.

You win by either uncovering all the blocks that aren't bombs, or flagging all
the bombs correctly.