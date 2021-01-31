#!/bin/bash
##
#code version
enc=cGFkZGluZ3BhZGRpbmdwYWRkaW5nIGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9ZFF3NHc5V2dYY1EgcGFkZGlucGFkZGluZ3BhZGRpbmcK
xdg-open `echo $enc |base64 -d |cut -d " " -f 2`;
exit 0;
#
#command version
xdg-open `echo "cGFkZGluZ3BhZGRpbmdwYWRkaW5nIGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9ZFF3NHc5V2dYY1EgcGFkZGlucGFkZGluZ3BhZGRpbmcK" |base64 -d | cut -d " " -f 2`
