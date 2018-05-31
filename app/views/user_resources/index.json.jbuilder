# frozen_string_literal: true

json.array! @user_resources, partial: 'user_resources/user_resource', as: :user_resource
