collection @users
attributes :id, :nickname
child :address do
  attributes :country, :city
end
