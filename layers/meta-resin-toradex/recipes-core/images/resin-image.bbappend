include resin-image.inc

IMAGE_CMD_resinos-img_append_apalis-imx6 () {
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.imx of=${RESIN_RAW_IMG} conv=notrunc seek=1 bs=1024
}

IMAGE_CMD_resinos-img_append_colibri-imx6 () {
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.imx of=${RESIN_RAW_IMG} conv=notrunc seek=1 bs=1024
}
