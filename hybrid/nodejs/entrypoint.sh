#!/bin/bash

# /////////////////////////////////////////////////////////////////////////// #
#                                                                             #
#                      Copyright 2022 AcidicNodes                             #
#                                                                             #
#   Licensed under the Apache License, Version 2.0 (the 'License');           #
#   you may not use this file except in compliance with the License.          #
#   You may obtain a copy of the License at                                   #
#                                                                             #
#       http://www.apache.org/licenses/LICENSE-2.0                            #
#                                                                             #
#   Unless required by applicable law or agreed to in writing, software       #
#   distributed under the License is distributed on an 'AS IS' BASIS,         #
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  #
#   See the License for the specific language governing permissions and       #
#   limitations under the License.                                            #
#                                                                             #
# /////////////////////////////////////////////////////////////////////////// #

# ////////////////| [🥽] | AcidicNodes | [⚗️] |//////////////// #

# || Start [📍] || #

cd /home/container # || Changing container's working directory.

export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'` # || Set a local variable that makes the private Docker IP address available for the processes.

toilet --filter border:gay AcidicNodes
echo

sleep 0.5

printf "\033[1m\033[33mcontainer@acidicnodes~ \033[0mShowing NodeJs information...\n"

printf "\033[1m\033[33mcontainer@acidicnodes~ \033[0mNodeJs version:\n" # || Show the actual NodeJs version.
node -v

printf "\033[1m\033[33mcontainer@acidicnodes~ \033[0mNPM version:\n" # || Show the actual NPM version.
npm -v 

printf "\033[1m\033[33mcontainer@acidicnodes~ \033[0mPython version:\n" # || Show the actual Python version.
python3 --version

MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g') # || Replace the Startup command.

eval ${MODIFIED_STARTUP} # || Start the server.