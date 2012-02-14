FactoryGirl.define do

  sequence(:email) {|n| "email#{n}@test.com" }

  factory(:organization) do
    name "Derp Organization"
    address "1600 Pennsylvania Avenue Northwest"
    city "Washington"
    state "DC"
    zip "20502"
  end

  factory(:user) do
    first_name "Derp"
    last_name "McDerp"
    password "password"
    email { FactoryGirl.generate :email }

    factory(:lisa) do
      first_name "Lisa"
      last_name "Person"
    end

    factory(:bob) do
      first_name "bob"
      last_name "O'Bob"
    end
  end

end
