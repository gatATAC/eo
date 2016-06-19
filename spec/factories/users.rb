FactoryGirl.define do

  factory :user do
    name             "Mr. Dr John Doe"
    email_address    "john.doe@informatom.com"
    developer        false
    administrator    false
    password         "secret123"

    factory :dummy_customer do
      name       "Dummy Customer"
      email_address "dummy.customer@informatom.com"
    end

    factory :active_user do
      name       "Activeuser"
      email_address "active.user@informatom.com"
      state         "active"
    end

    factory :guest_user do
      name       "Guestuser"
      email_address "guest.user@informatom.com"
      state         "guest"
    end


    factory :admin do
      name "Administator"
      email_address "albert.administator@informatom.com"
      administrator true

      factory :jobuser do
        surname "Job User"
        email_address "jobuser@informatom.com"
      end

      factory :robot do
        surname "Robot"
        email_address "robot@informatom.com"
      end
    end
  end
end