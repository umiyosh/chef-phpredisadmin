#
# Cookbook Name:: phpredisadmin
# Recipe:: default
#
# Copyright 2012, Artur Grigor
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

bash "install_phpredisadmin" do
  code <<-EOH
  cd #{node.phpredisadmin.dir.cwd}
  git clone #{node.phpredisadmin.git}
  git submodule init #{node.phpredisadmin.dir.extracted}
  git submodule update #{node.phpredisadmin.dir.extracted}
  cp -R #{node.phpredisadmin.dir.extracted}/ #{node.phpredisadmin.dir.home}
  git clone https://github.com/nrk/predis.git #{node.phpredisadmin.dir.home}/predis
  chmod -R +r #{node.phpredisadmin.dir.home}
  EOH
  not_if "test -d #{node.phpredisadmin.dir.home}"
  notifies :restart, resources(:service => "apache2")
end

template "#{node.phpredisadmin.dir.home}/config.inc.php" do
  source "config.inc.php.erb"
  mode "0664"
end

template "/etc/apache2/sites-enabled/phpredisadmin.conf" do
  source "apache.conf.erb"
  mode "0664"
  notifies :restart, resources(:service => "apache2")
end
