{application, teller, [
    {description, "Teller applicatie!"},
    {vsn, "0.1.0"},
    {modules, ['index_dtl','teller','teller_app','teller_handler']},
    {registered, [teller]},
    {applications, [
        kernel,
        stdlib,
        cowboy,
        erlydtl
    ]},
    {mod, {teller_app, []}},
    {env, []}
]}.