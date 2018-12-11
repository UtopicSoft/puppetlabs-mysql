# @summary 
#   Private class for managing MySQL package.
#
# @api private
#
class mysql::server::install {

  if $mysql::server::package_manage {
  
    #+
    #+ @name: mysql-server
    #+ @type: package
    #+ @desc: managed **MySQL** server package.
    #+
    package { 'mysql-server':
      ensure          => $mysql::server::package_ensure,
      install_options => $mysql::server::install_options,
      name            => $mysql::server::package_name,
    }
  }

}
