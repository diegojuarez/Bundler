require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require './sqlite/sqlite_script'
require './app/permissions'
require './pry/propina_script'

admin_personal_info = {'name'=>'Diego', 'last_name'=>'Juarez', 'birth_year'=>1995}
admin_contact_info = {'email'=>'diego.utng2015@gmail.com', 'mob'=>'44535345'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info, admin_contact_info, admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions

ap admin_role.methods - Object.methods

puts tip(80)

save_new_user('oberto', 'roberto@hotmail.com', 1981)
users = save_new_user('Elcompa', 'elcompa@gmail.com', 1986)
ap users