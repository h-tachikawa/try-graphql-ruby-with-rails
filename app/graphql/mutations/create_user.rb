module Mutations
  class CreateUser < BaseMutation
    field :user, Types::UserType, null: false

    argument :name, String, required: true

    def resolve(**params)
      user = User.create!(params)
      { user: user }
    end
  end
end
