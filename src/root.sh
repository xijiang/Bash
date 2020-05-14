#!/usr/bin/env bash
########################################
## Packages
dnf install -y \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install -y \
    git \
    meld \
    task \
    sdcv \
    figlet \
    R-IRkernel \
    mpv \
    mencoder \
    ffmpeg \
    gcc-c++ \
    gcc-gfortran \
    python3-devel \
    boost-python3-devel \
    emacs-ess \
    most \
    mathjax \
    sscg \
    texlive-xetex \
    texlive-collection-latexextra \
    npm \
    pigz \
    pandoc \
    sqlite \
    sqlite-devel \
    sqlite-libs \
    sshfs \
    libxml2-devel \
    openssl-devel \
    libcurl-devel \
    lynx \
    livecd-tools \
    gnome-tweaks \
    blas \
    openblas-devel \
    blas64 \
    openblas \
    openblas-threads64 \
    blas-devel \
    openblas-serial64 \
    openblas-Rblas \
    clblast \
    blas64-devel \
    openblas-openmp64 \
    openblas-threads \
    openblas-serial \
    openblas-openmp \
    openblas-srpm-macros \
    clblast-devel \
    lapack-devel \
    lapack64-devel \
    scalapack-mpich-devel \
    scalapack-openmpi-devel \
    metis64-devel
     
npm install -g configurable

########################################
## Firewall
firewall-cmd --permanent --zone=libvirt --add-service=http
firewall-cmd --reload

########################################
## Services
systemctl enable sshd
#systemctrl enable httpd		# only if I want

########################################
## Some windows fonts
mkdir -p /usr/share/fonts/msfonts
cp /home/xijiang/.ssh/Fonts /usr/share/fonts/msfonts

########################################
## Hostname
hostnamectl set-hostname --static amd.nmbu.org
