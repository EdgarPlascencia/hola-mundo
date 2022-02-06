#!/bin/bash

sudo scutil << EOF
#get State:/Network/Service/gpd.pan/DNS
get State:/Network/Service/AF4F0FBD-EA51-4ED5-B539-83B5E1833128/DNS
d.remove SearchDomains
d.remove ServerAddress
d.add ServerAddresses * 10.206.133.89 201.167.94.1
set State:/Network/Service/gpd.pan/DNS
exit
EOF
