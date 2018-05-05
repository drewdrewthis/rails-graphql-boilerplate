Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :allTodos, !types[Types::TodoType] do
    description "All the todos!"
    resolve ->(obj, args, ctx) {
      Todo.all
    }
  end
end