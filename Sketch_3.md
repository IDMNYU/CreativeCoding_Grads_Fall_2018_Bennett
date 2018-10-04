## Sketch 3

### P5.js transition + Functions with parameters


 1.) Take your first sketch - your creature - and translate it to the P5.js platform. Make sure that it functions in the browser properly!

 2.) Organize your creature into functions, utlizing variables and passing parameters. It's possible to nest functions inside other functions. For example, you could call fraggle(), and it would call other functions (ex, head, neck, tenacles, etc) that would individually contain their drawing elements.

 Matrix transformations can be quite handy here. Use variables for the x and y positions that are passed with the function call. Doing so will enable you to have multiples on the screen in varying locations.


 3.) Further organize those functions, into requiring variables for particular aspects that you wish to vary - width, height, color, variety, etc etc. (ie, pass more parameters to the function to have each call to the function to look different than the last call.)


 4.) Create 2 different creatures (minimum), with 2 calls to the same function. Pass different parameters in *each* call, to make each creature unique. There should be similarities and differences between them. This should be not only in how they look, but how they move and behave.

 5.) Now, transition that creature code into a class. Have different methods in the class to display the creature and to animate the creature (ex, running, sleeping, flying, skipping). Generate 3 creatures from this class, as individual objects. They should look different from each other, and have different animated behaviors.

 By passing different parameters to your methods, you will be able to re-use your code to generate these differences in their visual appearance as well as behaviors.


 **Bonus:** Create an array that stores different values for one variable. Ex. hair colors, # of appendages, # of eyes, etc. Use a for-loop to iterate through the array, passing the array's indice to a creature function call as a parameter.