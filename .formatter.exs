# Used by "mix format"
[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  export: [
    locals_without_parens: [assert_subscription_fulfilment: 1, refute_subscription_fulfilment: 1]
  ]
]
