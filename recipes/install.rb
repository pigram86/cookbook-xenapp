#
# Cookbook Name:: xenapp
# Recipe:: install
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

windows_zipfile "XA65" do
  source node['xa']['url']
  action :unzip
  not_if {reboot_pending?}
  not_if {::File.exists?(node['xa']['dir'])}
end

windows_package "xenappsetupconsole" do
  source node['server']['setup']
  options "/install:XenApp /Platinum /exclude:XA_IISIntergration /logfile:xalogfile"
  installer_type :custom
  action :install
  not_if {reboot_pending?}
end

windows_reboot 60 do
  reason 'Chef said to'
  only_if {reboot_pending?}
end