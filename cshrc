#setenv MANPATH ${MANPATH}:/usr/local/man:/opt/local/man
setenv MANPATH /usr/share/man:/usr/local/man:/opt/local/man

#setenv DYLD_LIBRARY_PATH ${DYLD_LIBRARY_PATH}:/usr/local/lib:/opt/local/bin
#setenv DYLD_LIBRARY_PATH /usr/local/cuda/lib

#setenv PKG_CONFIG_PATH /usr/local/lib/pkgconfig:/sw/lib/pkgconfig:/opt/local/lib/pkgconfig

# Add MacPorts paths
setenv PATH /opt/local/bin:/opt/local/sbin:${PATH}

# Setting PATH for EPD-6.0.4
set path=(/Library/Frameworks/Python.framework/Versions/Current/bin $path)

# Add TexLive install
setenv PATH /usr/local/texlive/2008/bin/universal-darwin:${PATH}

# Add things to the path for fink and other installs
setenv PATH ${PATH}:${HOME}/Applications
setenv PATH ${PATH}:${HOME}/Applications/epd

# Configure SSH authentication socket
setenv SSH_AUTH_SOCK /tmp/501/SSHKeychain.socket

# Configure scipy alternate viewer
setenv SCIPY_PIL_IMAGE_VIEWER 'open -a Preview'

# Configure CUDA
setenv PATH /usr/local/cuda/bin:$PATH
if( $?DYLD_LIBRARY_PATH ) then
    setenv DYLD_LIBRARY_PATH /usr/local/cuda/lib:$DYLD_LIBRARY_PATH
else
    setenv DYLD_LIBRARY_PATH /usr/local/cuda/lib
endif

# Basic alias commands
alias ls 'ls -G'
alias ll ls -l
alias pico pico -w
alias scpresume rsync --partial --progress --rsh=ssh

# Get X11 in this terminal
setenv DISPLAY :0.0

# Turn on auto completion
set autolist

# Default editor
setenv EDITOR "mate -w"

# Location of Filing folder
setenv FILING ${HOME}/Filing

# String ecoding for subversion
setenv LC_CTYPE en_US.UTF-8

# Set autocomplete on hostnames
if ($?tcsh) then
#  complete cd 'p/1/d/'
  complete alias 'p/1/a/'

  set hostnames=( cascade.cs.ubc.ca remote.cs.ubc.ca geogaddi.cs.ubc.ca addax.cs.ubc.ca anduril.cs.ubc.ca sq_root@squarewithin.com squarewithin.dyndns.org )
  complete ftp 'p/1/$hostnames/'
  complete telnet 'p/1/$hostnames/'
  complete ssh 'p/*/$hostnames/'
#  complete scp 'p/*/$hostnames/'
endif
