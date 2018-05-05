class Resolvers::CreateTodo < GraphQL::Function
  # arguments passed as "args"
  argument :description, !types.String
  argument :title, !types.String

  # return type from the mutation
  type Types::TodoType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    Todo.create!(
      title: args[:title],
      description: args[:description],
    )
  end
end
