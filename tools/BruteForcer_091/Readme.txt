17.04.2009 - BruteForcer v 0.9.1
by RazorJack
http://bruteforcer.sourceforge.net
--------------------


1. What's new:
--------------------
- Added a minimum password length restriction. This is usefull if
  you know how long is your password and there is no need to test the 
  short two, three or so letter passwords - now it skips them, because
  there is no way to not-generate them.

- Added a nice progress bar for showing the progress when loading 
  wordlists.

- A little change in the server - when a client disconnects, the server 
  gives his unfinished calculations immediately to the next client.


2. Known Issues:
--------------------
- The server has a memory leak ... i'm trying to trace it :)
- The wordlist checking is not multithreaded yet.
- I'm still trying to figure out what is the best way to save
  and load the server states.


3. Introduction:
--------------------
BruteForcer is a client-server multithreaded application for bruteforce
cracking passwords. The more clients connected to the server, the faster
the cracking.

The client is plugin-based. Meaning that BruteForcer itself is just a
segmentation software and it doesn't care what type of file you are 
trying to crack. It just sends the generated passwords to the plugin 
and the plugin will handle checking if the password is correct. This 
concept have a great future potential - any programmer can write a plugin 
in any language, that can compile stdcall dll-s. And not only for files - 
this may be adopted to any type of bruteforcing passwords.

At the moment there is only a plugin for RAR archives and only with 
encrypted filenames. But since this plugin is open source, i hope some 
people will help with more plugins.



4. Usage:
-------------------
Start the server and type the name of the file, that you want to crack. 
If the file is accessible by all clients on a network you can specify 
the complete path to it. If it's not, then you have to type the filename 
with no path and every client will look for it in it's own folder - that 
means there must be a copy of the file for each client.

Then carefully setup the dictionary. If the password consists of symbols 
that are not in the dictionary, BruteForcer will not be able to find it. 
By default in the dictionary there are all lowercase English letters and 
all numbers. So if you suspect that in the password there might be 
capital letters or brackets or other symbols you have to add them to the 
dictionary. But be carefull - the longer the dictionary, the longer the 
time it takes to break a password.

Then you have to set the maximum password length - the software will not 
attempt passwords that are longer than this. The default value is 5.

Then start the client on as many machines, as you can find and connect 
to the server and they will start working.



5. Wordlist attack:
------------------- 
Since version 0.7 the client supports wordlist attack. Basically when 
this is enabled it tries to determine if the current combination of 
symbols mean anything and if it doesn't - then it skips it. For this you 
need a wordlist file - this is a database with all the words in a language. 
I have provided an English wordlist with more that 200 000 words. It is 
easy to make other wordlists from some free spell check libraries.

The wordlist attack operates at 3 different modes:

- Level 1 - It is fastest and skips most of the combinations. It looks
  only for complete match with the wordlist. It can be useful only if you 
  know that the password is just a single word.

- Level 2 - It ignores the symbols that are not letters, and looks for a 
  match with the wordlist. It is useful when you know that the password is 
  a single word, surrounded by numbers or other symbols.

- Level 3 - It checks if the current combination of symbols contains at 
  least one meaningful word from the wordlist. This is the best mode, i 
  suggest you use it always. The password of the test archive (test.rar)
  can be found only by this method (or by pure bruteforce of course).


6. Contacts:
-------------------
Send bugs/suggestions to perfectserviceltd<at>gmail.com