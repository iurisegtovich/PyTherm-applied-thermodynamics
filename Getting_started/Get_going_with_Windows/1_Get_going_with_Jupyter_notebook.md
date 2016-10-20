Get going with *jupyter notebook*
==
In order to be able to interact and modify our material you will need to install *python*, *numpy*, *sympy*, *matplotlib* and *jupyter notebook*. They all come together in a bundle by *Anaconda*.

Here are the key steps to interact with our material and modify them:

> ***Jupyter notebook***
>- install via *Anaconda*
>- start
>
>> ***GitHub***
>>- Download our material
>
>- Interact

## Install *Anaconda*
* Access their [official site](https://www.continuum.io/downloads), download the setup file `Anaconda3-4.1.1-Windows-x86_64.exe`.
* Run the installer
  * complete the installation proccess
  now you should have anaconda installed with python, jupyter notebook, along with many libraries including numpy, sympy and matplotlib

## Start *Jupyter notebook*
* find `Anaconda3 (64-bit)` in your start menu folders and click `Jupyter Notebook` to start it
now a terminal screen should open, and after a few seconds a tab in your browser should open with the address `http://localhost:8888/tree/`
You will be able to see a directory browsing tree view, showing some of the files on your PC, probably just the ones under `Libraries`, i.e. `My documents`,`My pictures`,`My videos` and `My music`
Now you have to download our material and place it inside some of these folders, e.g. inside `My documents\PyTherm\GITSYNC`. (note that we recommend the directory name PyTherm to identify the project and the subdirectory name GITSYNC to identify that those are the files downloaded from github and that you might want to synchronize them with the official repository when someone contributes with new stuff.)

## Download our material from GitHub
you can download it either as a guest on github or as a zip file.

* as a zip file using your browser

or using git tools. you will have to use them, if you ever want to submit modifications
- b) using Git tools, *pull* (see [Get going with GitHub](https://github.com/iurisegtovich/PyTherm/blob/master/Getting_started/Get_going_with_Windows/2_Get_going_with_GitHub.md) )

anyways, place the files in a directory that jupyter notebook can find, as mentioned before

## Interact

open the `\*.ipynb` file you want to read in jupyter-notebook on your browser
>`\*.ipynb` stands for *ipython notebook*, that is a file containing a mix of python code and descriptive text, that runs on the ipython kernel, that in turn, you can run on jupyter nortebook.

* just browse the folders in the directory tree view of *Jupyter notebook* to find the *.ipynb files and click on them!

start with the [beginner's course](https://github.com/iurisegtovich/PyTherm/tree/master/Get_involved/1_Beginner). there we will explain the essential of python, the libraries that we use and jupyter notebook itself by treating the simplest problems of classical thermodynamics.
