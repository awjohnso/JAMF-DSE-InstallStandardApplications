#!/bin/zsh

# Author: Andrew W. Johnson
# Date: 2020.05.19.
# Version 1.00
# Organization: Stony Brook Univeristy/DoIT
#
#
# This script will call the individual software JAMF Policies using their trigger words.
# This way all the goodies associated with the Policy will also run, and the software only
# needs to be maintained in one Policy location.

	# Array of trigger names for the policies to be run.
myList=(InstallAdobeReaderDC \
		InstallAdobeDNG \
		InstallBBEdit14 \
		InstallChrome \
        SINCDeployAppleGarageBand \
		InstallExcel \
		InstallOneNote \
		InstallPowerPoint \
		InstallWord \
        InstallSelfService \
        InstallSSHLite \
		InstallStellarium \
		InstallVLC \
		InstallZoom \
)

	# One by one run the policies.
for i in "${myList[@]}"; do
	/usr/local/jamf/bin/jamf policy -trigger "${i}"
done

exit 0
