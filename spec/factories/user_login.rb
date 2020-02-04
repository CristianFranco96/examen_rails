FactoryBot.define do
  factory :new_user, class: 'User' do
    id  {1}
    email  {'erick.zuniga@gmail.com'}
    password {'erick123'}
    full_name {'Erick Zuniga'}
    rfc {'EFZP960704AK1'}
    company_name {'LOL'}
    created_at {Time.now}
    updated_at {Time.now}
  end
end