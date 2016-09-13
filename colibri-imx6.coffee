deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

SERIAL_CABLE = 'Connect the carrier board to a host computer using a serial cable. (This step may differ based on what carrier board you have)'
UBOOT = 'Power the module. Press SPACE when prompted by U-Boot to stop execution and run the following command `run sdboot`'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	slug: 'colibri-imx6dl'
	aliases: [ 'colibri-imx6' ]
	name: 'Colibri iMX6dl'
	arch: 'armv7hf'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		SERIAL_CABLE
		UBOOT
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-colibri-imx6.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-colibri-imx6.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-colibri-imx6.md#on-mac-and-linux'

	supportsBlink: false

	yocto:
		machine: 'colibri-imx6'
		image: 'resin-image-flasher'
		fstype: 'resin-sdcard'
		version: 'yocto-jethro'
		deployArtifact: 'resin-image-flasher-colibri-imx6.resin-sdcard'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 4
				logical: 1
			path: '/config.json'

	initialization: commonImg.initialization
