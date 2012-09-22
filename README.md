# DESCRIPTION:

Installs phpRedisAdmin.

Details https://github.com/ErikDubbelboer/phpRedisAdmin

# REQUIREMENTS:

Currently tested on Ubuntu 12.04.

# ATTRIBUTES:

default[:phpredisadmin][:git] = "https://github.com/ErikDubbelboer/phpRedisAdmin.git"

default[:phpredisadmin][:dir][:cwd] = "/usr/local/src"
default[:phpredisadmin][:dir][:home] = "/usr/share/phpRedisAdmin"
default[:phpredisadmin][:dir][:extracted] = "#{phpredisadmin.dir.cwd}/phpRedisAdmin"

	['phpredisadmin']['git']					# "https://github.com/ErikDubbelboer/phpRedisAdmin.git"

	['phpredisadmin']['dir']['cwd']				# "/usr/local/src"
	['phpredisadmin']['dir']['home']			# "/usr/share/phpRedisAdmin"
	['phpredisadmin']['dir']['extracted']		# "#{phpredisadmin.dir.cwd}/phpRedisAdmin"

# USAGE:

* Add cookbook ``phpredisadmin`` to your runlist. This will install phpRedisAdmin on your machine.