FactoryGirl.define do
  factory :account, class: Zuora::Models::Account do
    initialize_with { new(attributes) }

    name 'Abc'
    auto_pay true
    currency 'USD'
    bill_cycle_day '0'
    payment_term 'Net 30'
    account_number '123456'
  end
end
