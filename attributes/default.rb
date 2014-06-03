#
# Cookbook Name:: xenapp
# Recipe:: default
#
# Copyright (C) 2014 Todd Pigram
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
default['xa']['url'] = "https://dl.dropboxusercontent.com/u/36379525/xa65.zip"
default['xa']['dir'] = "C:/xa65"
default['hfr']['url'] = "https://dl.dropboxusercontent.com/u/36379525/XA65HFR3.zip"
default['posthfr']['url'] = ""
default['c2005']['x64'] = "https://dl.dropboxusercontent.com/u/36379525/vc80_vcredist_x64.exe"
default['c2008']['x64'] = "https://dl.dropboxusercontent.com/u/36379525/vc90_vcredist_x64.exe"
default['c2005']['x86'] = "https://dl.dropboxusercontent.com/u/36379525/vc80_vcredist_x86.exe"
default['c2008']['x86'] = "https://dl.dropboxusercontent.com/u/36379525/vc90_vcredist_x86.exe"
default['inter']['op'] = "https://dl.dropboxusercontent.com/u/36379525/vs90_piaredist.exe"
default['server']['setup'] = "c:\\XA65\\XenAppServerSetup\\bin\\XenAppSetupConsole.exe"
default['c2005']['dir'] = "c:\\program files\\Microsoft sql server\\80"
default['c2008']['dir'] = "c:\\program files\\Microsoft sql server\\90"