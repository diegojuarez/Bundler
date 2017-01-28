require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require './sqlite/sqlite_script'
require './app/permissions'
require './pry/propina_script'

admin_personal_info = {'name'=>'Nayeli', 'last_name'=>'Ramirez', 'birth_year'=>1986}
admin_contact_info = {'email'=>'cnre86@gmail.com', 'mob'=>'4731072629'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info, admin_contact_info, admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions

ap admin_role.methods - Object.methods

puts tip(80)

save_new_user('Juan Flores ', 'juan.flores01@cfe.gob.mx', 1981)
users = save_new_user('santi', 'sagoamigo86@hotmail.com.mx', 1986)
ap users