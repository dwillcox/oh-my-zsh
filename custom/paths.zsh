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
fi

# NVIDIA compilers and toolkit
if [[ "$hostname" == "jade" ]]; then
    CUDA_HOME="/usr/local/cuda-10.1"
    export PATH="$CUDA_HOME/bin:$PATH"
    export PATH="$CUDA_HOME/NsightCompute-2019.1:$PATH"
    export LD_LIBRARY_PATH="$CUDA_HOME/lib64:$LD_LIBRARY_PATH"
fi

# Node.js
if [[ "$hostname" == "jade" ]]; then
    NODEJS_HOME="$HOME/local/install/node-v10.16.0"
    export PATH="$NODEJS_HOME/bin:$PATH"
    export LD_LIBRARY_PATH="$NODEJS_HOME/lib:$LD_LIBRARY_PATH"
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

# Declare HOMEs for AMReX, MAESTRO, CASTRO, Microphysics
export AMREX_HOME="$ASTRO_HOME/amrex"
export MAESTRO_HOME="$ASTRO_HOME/MAESTRO"
export MAESTROEX_HOME="$ASTRO_HOME/MaestroEx"
export CASTRO_HOME="$ASTRO_HOME/Castro"
export MICROPHYSICS_HOME="$ASTRO_HOME/Microphysics"
export FBOXLIB_HOME="$ASTRO_HOME/FBoxLib"


# Add AMReX scripts to PATH
export PATH="$ASTRO_HOME/amrex/Tools/Postprocessing/C_Src:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Postprocessing/F_Src:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Plotfile/1d:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Plotfile/2d:$PATH"
export PATH="$ASTRO_HOME/amrex/Tools/Plotfile/3d:$PATH"

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

