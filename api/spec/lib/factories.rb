require "faker"
require_relative "../models/user_model"

FactoryBot.define do
  factory :user, class: UserModel do
    full_name { "Papito Skywalker" }
    email { "papito@totvs.com" }
    password { "totvs123" }
  end

  factory :user_wrong_email, class: UserModel do
    full_name { "Papito Skywalker" }
    email { "papito#totvs.com" }
    password { "totvs123" }
  end

  factory :empty_name_user, class: UserModel do
    full_name { "" }
    email { "papito@totvs.com" }
    password { "totvs123" }
  end

  factory :empty_email_user, class: UserModel do
    full_name { "Fernando Papito" }
    email { "" }
    password { "totvs123" }
  end

  factory :empty_password_user, class: UserModel do
    full_name { "Fernando Papito" }
    email { "papito@totvs.com" }
    password { "" }
  end

  factory :null_name_user, class: UserModel do
    email { "papito@totvs.com" }
    password { "totvs123" }
  end

  factory :null_email_user, class: UserModel do
    full_name { "Fernando Papito" }
    password { "totvs123" }
  end

  factory :null_password_user, class: UserModel do
    full_name { "Fernando Papito" }
    email { "papito@totvs.com" }
  end
end
