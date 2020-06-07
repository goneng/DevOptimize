#!/bin/bash -e
# (run with 'exit-on-error')

# Based on Thomas Leister's post -
# See https://thomas-leister.de/en/how-to-import-ca-root-certificate/
### Script installs root.cert.cer to certificate trust store of applications using NSS
### (e.g. Firefox, Thunderbird, Chromium)
### Mozilla uses cert8, Chromium and Chrome use cert9

SCRIPT_NAME=$(basename $0)
echo "--- -----------------------------------------------------------------------------------------"
echo "-S- ${SCRIPT_NAME}: Import Root-Certificate to this Host"
echo "--- -----------------------------------------------------------------------------------------"

CERT_FILE=$1
CERT_NAME=$2

# Set default values for parameters, case they are empty or undefined
: "${CERT_FILE:=${HOME}/root.cert.cer}"
: "${CERT_DEST:=/usr/local/share/ca-certificates/extra}"
: "${CERT_NAME:=Some Root CA}"
# : "${VERBOSE:=false}"

# FUNCTIONS ----------------------------------------------------------------------------------------

function usage_msg {
  MSG=$1
  echo
  echo "${MSG}"
  echo
  echo "-I- Usage:"
  echo "-I-   ${SCRIPT_NAME}  [cert-file] [cert-name]"
  echo
}

# MAIN ---------------------------------------------------------------------------------------------

if [[ -f $CERT_FILE ]]
then
  echo "-I-"
  echo "-I- Importing Certificate-file \"$CERT_FILE\"..."
else
  usage_msg "-E- Certificate-file Not Found - \"$CERT_FILE\" - Exiting"
  exit 8
fi

if [[ ${VERBOSE:-false} != "false" ]]
then
  echo "-- ENV ------------------------------------------------------------------"
  env | sort
  echo "-- ENV ------------------------------------------------------------------"

  # Activate command-echo
  set -x
fi

# Check for Prerequisites
if [[ -d ${CERT_DEST} ]]
then
  echo "-I-"
  echo "-I- Found the folder for \"extra\" certificates (${CERT_DEST})"
  echo "    - assume we are all set"
else
  echo "-I- Creating a folder for our \"Extra\" certificates (${CERT_DEST})"
  sudo mkdir -p ${CERT_DEST}

  #FIXME: Have a separate test for this
  echo "-I- Making sure we have the \"Network Security Service tools\""
  sudo apt install libnss3-tools
fi

# Avoid having two certificates with the same name, i.e.: ensure uniqueness
# (see https://punkwalrus.livejournal.com/1198022.html )
CURR_TIME=`date +%Y-%m-%d_%H-%M`
CERT_NAME="${CERT_NAME} (${CURR_TIME})"

echo "-I- Copying the certificate '${CERT_FILE}'"
echo "-I-                      to '${CERT_DEST}'"
sudo cp ${CERT_FILE} "${CERT_DEST}/"

### For cert8 (legacy - DBM)
for certDB in $(find ${HOME}/ -name "cert8.db")
do
  certdir=$(dirname ${certDB});
  echo "-I- Existing Certificates __________________________________________"
  certutil -d dbm:${certdir} -L
  echo
  echo "-I- Adding the certificate as '${CERT_NAME}'"
  certutil -A -n "${CERT_NAME}" -t "TCu,Cu,Tu" -i ${CERT_FILE} -d dbm:${certdir}
  echo
  echo "-I- To DELETE any certificate, run:"
  echo "certutil -d dbm:${certdir} -D -n '<certificate nickname>'"
done

### For cert9 (SQL)
for certDB in $(find ${HOME}/ -name "cert9.db")
do
  certdir=$(dirname ${certDB});
  echo "-I- Existing Certificates __________________________________________"
  certutil -d sql:${certdir} -L
  echo
  echo "-I- Adding the certificate as '${CERT_NAME}'"
  certutil -A -n "${CERT_NAME}" -t "TCu,Cu,Tu" -i ${CERT_FILE} -d sql:${certdir}
  echo
  echo "-I- To DELETE any certificate, run:"
  echo "certutil -d sql:${certdir} -D -n '<certificate nickname>'"
done
