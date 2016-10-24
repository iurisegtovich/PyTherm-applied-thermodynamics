# Get going with *jupyter notebook*

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
* Access their [official site](https://www.continuum.io/downloads#windows), download the setup file at `Python 3.5 version` > `64-BIT INSTALLER` or `32-BIT INSTALLER`, dependeing on your own operational system.
* Run the installer
  * complete the installation proccess
  now you should have anaconda installed with python, jupyter notebook, along with many libraries including numpy, sympy and matplotlib

## Start *Jupyter notebook*
* find `Anaconda3 (??-bit)` in your start menu folders and click on `Jupyter Notebook` to start it.
Now a terminal screen should open, and after a few seconds a tab in your browser should open with the address `http://localhost:8888/tree/`.
You will be able to see a directory browsing tree view showing some of the files on your PC, probably just the ones under `Libraries`, i.e. `My documents`,`My pictures`,`My videos` and `My music`
Now you have to download our material:

## Download our material from GitHub
You can download it in the form of a zip file containing the latest release version either as a *guest*.

However, note that if you [sign up](https://github.com/join?source=header-home) on GitHub, you can, in addition to downloading the latest version of our material as a zip file, you will be able to:

* **watch** the repository
> that means you will automatically receive emails when we update the material.
* **star** the repository
> that serves just shows people that you like our work, the more stars we have, the more visibility we achieve inside GitHub's network
* **fork** the repository
> you will get a copy of the repository in your personal profile, it will be publicly visible and you will be able to modify it as you wish, independently of our original repository.

* Option a) download as a zip file, using just your browser
>* click the green button "Clone or download"
>* choose "Download ZIP"

Place the downloaded files inside some of the folders mentioned before, e.g. inside `My documents\PyTherm\GITSYNC`. (note that we recommend the directory name Pytherm to identify the project and the subdirectory name GITSYNC to identify that those are the files downloaded from github and that you might want to synchronize with the official repository when someone contributes with new stuff.)

* Option b) *fork* us on gitHub and *clone* the repositpory files using Git tools
>* You will have to use this approach, if you ever want to submit modifications
>* See [Get going with GitHub](https://github.com/iurisegtovich/PyTherm-applied-thermodynamics/blob/master/Getting_started/Get_going_with_Windows/2_Get_going_with_GitHub.md)

## Interact

open the `*.ipynb` file you want to read in jupyter-notebook on your browser
>`*.ipynb` stands for *ipython notebook*, that is a file containing a mix of python code and descriptive text, that runs on the ipython kernel, that in turn, you can run on jupyter nortebook.

* just browse the folders in the directory tree view of *Jupyter notebook* to find the *.ipynb files and click on them!

start with the [beginner's course](https://github.com/iurisegtovich/PyTherm-applied-thermodynamics/blob/master/Get_involved/1_Beginner). there we will explain the essential of python, the libraries that we use and jupyter notebook itself by treating the simplest problems of classical thermodynamics.
