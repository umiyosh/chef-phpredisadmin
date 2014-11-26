#
# Author:: Artur Grigor (<arturgrigor@gmail.com>)
# Cookbook Name:: phpredisadmin
# Attribute:: default
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

default[:phpredisadmin][:git] = "https://github.com/ErikDubbelboer/phpRedisAdmin.git"
default[:phpredisadmin][:predisRepo] = "https://github.com/nrk/predis.git"

default[:phpredisadmin][:path][:home]   = "/var/www/html/phpRedisAdmin"
default[:phpredisadmin][:path][:vendor] = default[:phpredisadmin][:path][:home] + "/vendor"

default[:phpredisadmin][:producHost] = "localhost"
default[:phpredisadmin][:producPort] = 6379
default[:phpredisadmin][:testHost]   = "localhost"
default[:phpredisadmin][:testPort]   = 6380

