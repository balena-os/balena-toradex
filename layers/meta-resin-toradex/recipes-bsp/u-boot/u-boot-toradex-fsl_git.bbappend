FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_colibri-imx6 = " file://0001-Split-defconfig-into-single-and-dual-version-of-the-.patch"

UBOOT_MACHINE_colibri-imx6 = "colibri_imx6_single_defconfig colibri_imx6_dual_defconfig"
UBOOT_CONFIG_colibri-imx6 = "single dual"
