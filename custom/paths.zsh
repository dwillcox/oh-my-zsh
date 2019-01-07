# Setup Path definitions

hostname=`uname -n`

if [[ "$hostname" == "vader" ]]; then
    ASTRO_HOME="$HOME/codes/astro"
fi

if [[ "$hostname" == "zilla.lbl.gov" || "$hostname" == "zilla" || "$hostname" == "jade" ]]; then
    ASTRO_HOME="$HOME/dev-astro"
fi

if [[ "$hostname" == "groot.astro.sunysb.edu" ]]; then
    ASTRO_HOME="$HOME"	
fi

# Add scripts to path
export PATH="$HOME/scripts:$PATH"
export PATH="$ASTRO_HOME/job-run-scripts:$PATH"
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

# Declare HOMEs for AMReX, MAESTRO, CASTRO, Microphysics
export AMREX_HOME="$ASTRO_HOME/amrex"
export MAESTRO_HOME="$ASTRO_HOME/MAESTRO"
export CASTRO_HOME="$ASTRO_HOME/Castro"
export MICROPHYSICS_HOME="$ASTRO_HOME/Microphysics"
export FBOXLIB_HOME="$ASTRO_HOME/FBoxLib"


# Add urca-tools to PATH
export PATH="$MAESTRO_HOME/Util/postprocessing/urca-tools:$PATH"

# Add AMReX scripts to PATH
export PATH="$ASTRO_HOME/amrex/Tools/Postprocessing/F_Src:$PATH"

# Declare location and init function for the MESA SDK
export MESASDK_ROOT="$ASTRO_HOME/mesa/mesasdk"
export MESA_DIR="$ASTRO_HOME/mesa/mesa-r8118"

# Add lua to PATH
export PATH="/home/dewillcox/local/lua-5.2.1/bin:$PATH"

mesasdk() {
    source $MESASDK_ROOT/bin/mesasdk_init.sh
}

# Add Zotero to PATH
export PATH="$HOME/local/Zotero_linux-x86_64:$PATH"

# Add Visit to PATH
export PATH="$HOME/local/visit/bin:$PATH"
