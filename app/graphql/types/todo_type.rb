Types::TodoType = GraphQL::ObjectType.define do
  name 'Todo'

  # it has the following fields
  field :id, !types.ID
  field :title, !types.String
  field :description, !types.String
end
