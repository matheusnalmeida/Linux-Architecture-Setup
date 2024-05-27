#!/bin/bash
# give script permissions: chmod +x get_nvidia_l4t_version.sh

NV_TEGRA_RELEASE=$(cat /etc/nv_tegra_release)
L4T_RELEASE=$(echo ${NV_TEGRA_RELEASE} | sed -e s/" (release)".*// -e s/"# R"//)
L4T_REVISION=$(echo ${NV_TEGRA_RELEASE} | sed -e s/.*"REVISION: "// -e s/",".*//)
echo ${L4T_RELEASE}.${L4T_REVISION}
