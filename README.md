Relthing
========

trying to use exrm with kafka_ex and getting the following error when running the released version, though running locally via iex -S mix seems to work just fine. seems like a config issue, though i do see the config param in sys.config.

```
=====
===== LOGGING STARTED Mon Jun 29 11:33:07 PDT 2015
=====
Exec: /tmp/test/erts-6.3/bin/erlexec -boot /tmp/test/releases/0.0.1/relthing -boot_var ERTS_LIB_DIR /tmp/test/erts-6.3/../lib -env ERL_LIBS /tmp/test/lib -config /tmp/test/releases/0.0.1/sys.config -pa /tmp/test/lib/consolidated -args_file /tmp/test/releases/0.0.1/vm.args -user Elixir.IEx.CLI -extra --no-halt +iex -- console
Root: /tmp/test
/tmp/test
Erlang/OTP 17 [erts-6.3] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

{"Kernel pid terminated",application_controller,"{application_start_failure,kafka_ex,{{function_clause,[{'Elixir.KafkaEx.Connection',connect_brokers,[nil,#{}],[{file,\"lib/kafka_ex/connection.ex\"},{line,4}]},{'Elixir.KafkaEx.Server',init,1,[{file,\"lib/kafka_ex/server.ex\"},{line,12}]},{gen_server,init_it,6,[{file,\"gen_server.erl\"},{line,306}]},{proc_lib,init_p_do_apply,3,[{file,\"proc_lib.erl\"},{line,237}]}]},{'Elixir.KafkaEx',start,[normal,[]]}}}"}

Crash dump was written to: erl_crash.dump
Kernel pid terminated (application_controller) ({application_start_failure,kafka_ex,{{function_clause,[{'Elixir.KafkaEx.Connection',connect_brokers,[nil,#{}],[{file,"lib/kafka_ex/connection.ex"},{li
```
