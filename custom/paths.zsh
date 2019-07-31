# Setup Path definitions

hostname=`uname -n`

if [[ "$hostname" == "vader" ]]; then
    ASTRO_HOME="$HOME/codes/astro"
fi

if [[ "$hostname" == "zilla.lbl.gov" || "$hostname" == "zilla" || "$hostname" == "jade" ]]; then
    ASTRO_HOME="$HOME/dev-astro"
    export PATH="/usr/local/cuda-10.0/bin:$PATH"
fi

if [[ "$hostname" == "groot.astro.sunysb.edu" ]]; then
    ASTRO_HOME="$HOME"	
fi

if [[ "$hostname" == "jade" ]]; then
    ASTRO_HOME="$HOME/dev-astro"
    export LD_LIBRARY_PATH="$HOME/local/install/hdf5-1.10.4/lib:$LD_LIBRARY_PATH"
    export PATH="$HOME/local/install/visit2_13_2.linux-x86_64/bin:$PATH"
    export PATH="$HOME/local/install/ParaView-5.7.0-RC1-MPI-Linux-64bit/bin:$PATH"
fi

if [[ "$hostname" == "jade" ]]; then
    export PATH="/snap/bin:$PATH"
fi

# NPM
if [[ "$hostname" == "jade" ]]; then
    NPM_PACKAGES="${HOME}/.npm-packages"
    export PATH="$NPM_PACKAGES/bin:$PATH"
    # unset mathpath so we can inherit it from /etc/manpath via `manpath`
    unset MANPATH # delete if you already modified MANPATH elsewhere in your config
    export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
fi

# Amrvis
if [[ "$hostname" == "jade" ]]; then
    export PATH="$HOME/dev-amrex/Amrvis:$PATH"
fi

# Add scripts to path
export PATH="$HOME/scripts:$PATH"
export PATH="$ASTRO_HOME/job-run-scripts:$PATH"
export PATH="$ASTRO_HOME//amrex/Tools/Plotfile:$PATH"
export PATH="$HOME/simulation_setups/plotting:$PATH"

# Add Python code directories to PYTHONPATH
export PYTHONPATH="$ASTRO_HOME/mesautils:$PYTHONPATH"
export PYTHONPATH="$ASTRO_HOME/StarSTRUQ/ND-Tile:$PYTHONPATH"
export PYTHONPATH="$ASTRO_HOME/StarSTRUQ/UQ-mesa:$PYTHONPATH"
export PATH="$ASTRO_HOME/StarSTRUQ/UQ-mesa:$PATH"
export PYTHONPATH="$ASTRO_HOME/pynucastro:$PYTHONPATH"
export PYTHONPATH="$ASTRO_HOME/MAESTRO/Util/postprocessing/central_angle_average:$PYTHONPATH"
export PYTHONPATH="$ASTRO_HOME/Microphysics/python_library:$PYTHONPATH"

# Local Python packages
export PYTHONPATH="$HOME/.local/lib64/python3.6/site-packages:$PYTHONPATH"
export PATH="$HOME/.local/bin:$PATH"

# Declare HOMEs for AMReX, MAESTRO, CASTRO, Microphysics, pyro2
export AMREX_HOME="$ASTRO_HOME/amrex"
export MAESTRO_HOME="$ASTRO_HOME/MAESTRO"
export MAESTROEX_HOME="$ASTRO_HOME/MaestroEx"
export CASTRO_HOME="$ASTRO_HOME/Castro"
export MICROPHYSICS_HOME="$ASTRO_HOME/Microphysics"
export FBOXLIB_HOME="$ASTRO_HOME/FBoxLib"
export PYTHONPATH="$ASTRO_HOME/pyro2:$PYTHONPATH"
export PYRO_HOME="$ASTRO_HOME/pyro2"


# Add AMReX scripts to PATH
export PATH="$ASTRO_HOME/amrex/Tools/Postprocessing/C_Src:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Postprocessing/F_Src:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Plotfile/1d:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Plotfile/2d:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Plotfile/3d:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Backtrace:$PATH"

# Declare location and init function for the MESA SDK
export MESASDK_ROOT="$ASTRO_HOME/mesa/mesasdk"
export MESA_DIR="$ASTRO_HOME/mesa/mesa"

# Add lua to PATH
export PATH="/home/dewillcox/local/lua-5.2.1/bin:$PATH"

mesasdk() {
    source $MESASDK_ROOT/bin/mesasdk_init.sh
}

# Add Zotero to PATH
export PATH="$HOME/local/Zotero_linux-x86_64:$PATH"

# Add Visit to PATH
export PATH="$HOME/local/visit/bin:$PATH"

