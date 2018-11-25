{application, teller, [
    {description, "Teller applicatie!"},
    {vsn, "0.1.0"},
    {modules, ['teller','teller_app','teller_handler']},
    {registered, [teller]},
    {applications, [
        kernel,
        stdlib,
        cowboy
    ]},
    {mod, {teller_app, []}},
    {env, []}
]}.