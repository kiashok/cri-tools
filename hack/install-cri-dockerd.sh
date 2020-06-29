#!/bin/bash

# Copyright 2020 The Kubernetes Authors.
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

set -o errexit
set -o nounset
set -o pipefail

# Build cri-dockerd

# TODO: This should change when a premanent repo is available.
git clone https://github.com/dims/cri-dockerd $GOPATH/src/github.com/dims/cri-dockerd
cd $GOPATH/src/github.com/dims/cri-dockerd

go install .
mv $GOPATH/bin/cri-dockerd /usr/local/bin
