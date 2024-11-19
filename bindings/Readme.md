# Bindings

First of all you might be wondering why the hell I am using broma here to begin with?

It has to do with being able to lazily generate header files later (with a python script for that called [GD-Decomp-Deploy](https://github.com/CallocGD/GD-Decomp-Deploy)) 
in the future and since this verison of the game is smaller, all we have to do is fill out __all the class members and names__ correctly.

When we are __100% done with class members and names__ We can move to decompiling this version of the game directly and writing 
the code for it without any hassle or questionable shit and at that point we will be able turn everything into a team-effort. 
You can start helping me by downloading libgame.so otherwise check the [discord server](https://dsc.gg/gdre) for the 1.0 version 
of the binary that I am using. I will also try to upload my savefile for my ghidra project about once every 2 weeks if possible 
if you are clueless as to what I am doing. I'm considering the possibly of uploading the libgame.so binary to github but we shall see...

## FYI
I am not worried about the cocos2d stuff just yet but we may need to fill it out in the broma file by hand. We just have to fill it 
out as is in game including things that were originally subclasses of CCObject such as CCPoint, CCSize, and CCRect. However in our 
final decompilation we can ignore these because in the end the game will run smoother without CCObject being in CCPoint or CCRect 
as my final plan involves mainly getting the game to compile when we are done with decompiling it which will be very intresting. 
As long as Robtop's Added Class objects are 1:1 I do not care about how the internal cocos2d stuff is put together as for the most 
part It can be simply ignored. However we may need to write in some libcocos stuff as is in ghidra to our 1.0 bindings just incase 
so that the broma paser doesn't crash. Our only task as of right now is return types, parameter names and class members. 
Everything else can be ignored unless you believe that it's nessesary or needed.


## Items Currently being used

- a pythonic version of [generate.mjs](https://gist.github.com/CallocGD/0c52f8fdc59dbf59d0ef731ee07f8a50) modifed for taking one symbols file rather than multiple.
- [ghidra 11.2.1](https://github.com/NationalSecurityAgency/ghidra) to find the class members.

