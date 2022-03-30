# dmenu - dynamic menu
dmenu is an efficient dynamic menu for X.

## Requirements
In order to build dmenu you need the Xlib header files.

## Installation
Edit config.mk to match your local setup (dmenu is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dmenu
(if necessary as root):

    make clean install


## Running dmenu
See the man page for details.

## Patches
- dmenu-center-20200111-8cd37e1.diff
- dmenu-lineheight-4.9.diff
- dmenu-password-4.7.diff
- dmenu-rejectnomatch-4.7.diff
- dmenu-preselect-20200513-db6093f.diff
- dmenu-initialtext-4.7.diff
- dmenu-highlight-4.9.diff
- dmenu-incremental-20160702-3c91eed.diff
- dmenu-dynamicoptions-20200526-01e2dfc7.diff

