#
# Cookbook Name:: xenapp
# Recipe:: prereq
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

#prerequisites

# Install Microsoft Visual C++ 2005 SP1 Redistributable (x64)
windows_package "vc80_vcredist_x64.exe" do
  source node['c2005']['x64']
  option "/Q"
  installer_type :custom
  action :install
  not_if {reboot_pending?}
end

# Install Microsoft Visual C++ 2008 SP1 Redistributable (x64)
windows_package "vc90_vcredist_x64.exe" do
  source node['c2008']['x64']
  option "/q"
  installer_type :custom
  action :install
  not_if {reboot_pending?}
end

#  Install Microsoft Visual C++ 2005 SP1 Redistributable (x86)
windows_package "vc80_vcredist_x86.exe" do
  source node['c2005']['x86']
  option "/Q"
  installer_type :custom
  action :install
  not_if {reboot_pending?}
end

# Install Microsoft Visual C++ 2008 SP1 Redistributable (x86)
windows_package "vc90_vcredist_x86.exe" do
  source node['c2008']['x86']
  option "/q"
  installer_type :custom
  action :install
  not_if {reboot_pending?}
end

# Install Microsoft Primary Interoperability Assemblies 2005
windows_package "vcredist\vs90_piaredist.exe" do
  source node['Inter']['op']
  option "/q"
  installer_type :custom
  action :install
  not_if {reboot_pending?}
end

windows_reboot 60 do
  reason 'Chef said to'
  only_if {reboot_pending?}
end