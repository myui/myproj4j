#!/bin/bash
#
# Copyright 2019 and onwards Makoto Yui
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

echo "Please input project name (e.g., matrix4j)"
echo -n ">> "
read proj_name
echo

artifact_name=`echo ${proj_name} | awk '{print tolower($0)}'`
proj_title=`echo ${proj_name} | awk '{print toupper(substr($0,0,1))substr($0,2)}'`

echo "artifact_name=${artifact_name}, proj_title=${proj_title}"
echo

find . -type f | xargs sed -i "" "s/xxx4j/${artifact_name}"
find . -type f | xargs sed -i "" "s/Xxx4j/${proj_title}"

echo "done!"

