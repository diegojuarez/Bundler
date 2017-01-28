=begin[
Autor: Dieg Juarez Juarez
Fecha: 23/Enero/2017
UTNG
]
=end

def tip (amount)
  percent = 0.05
  percent = 0.10 if amount > 100
  #binding.pry
  amount * percent
end