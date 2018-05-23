object @user
attributes :email, :gender, :sign, :intro, :username, :birthday
child :address do
  attributes :country, :city
end
