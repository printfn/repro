## Commands to reproduce

```sh
wasm-pack build
```

```
[INFO]: 🎯  Checking for the Wasm target...
[INFO]: 🌀  Compiling to Wasm...
   Compiling proc-macro2 v1.0.95
   Compiling unicode-ident v1.0.18
   Compiling wasm-bindgen-shared v0.2.100
   Compiling log v0.4.27
   Compiling bumpalo v3.17.0
   Compiling rustversion v1.0.20
   Compiling wasm-bindgen v0.2.100
   Compiling cfg-if v1.0.0
   Compiling once_cell v1.21.3
   Compiling quote v1.0.40
   Compiling syn v2.0.101
   Compiling wasm-bindgen-backend v0.2.100
   Compiling wasm-bindgen-macro-support v0.2.100
   Compiling wasm-bindgen-macro v0.2.100
   Compiling repro v0.1.0 (/home/user/Code/repro)
    Finished `release` profile [optimized] target(s) in 2.32s
[INFO]: ⬇️  Installing wasm-bindgen...
[INFO]: Optimizing wasm binaries with `wasm-opt`...
[wasm-validator error in function 2] unexpected false: Bulk memory operations require bulk memory [--enable-bulk-memory], on 
(memory.copy
 (local.get $1)
 (local.get $0)
 (local.get $3)
)
[wasm-validator error in function 2] unexpected false: Bulk memory operations require bulk memory [--enable-bulk-memory], on 
(memory.copy
 (local.get $2)
 (local.get $0)
 (local.get $3)
)
[wasm-validator error in function 10] unexpected false: Bulk memory operations require bulk memory [--enable-bulk-memory], on 
(memory.copy
 (i32.add
  (i32.load offset=4
   (local.get $0)
  )
  (local.get $3)
 )
 (i32.add
  (local.get $2)
  (i32.const 12)
 )
 (local.get $1)
)
[wasm-validator error in function 27] unexpected false: Bulk memory operations require bulk memory [--enable-bulk-memory], on 
(memory.copy
 (i32.add
  (i32.load offset=4
   (local.get $0)
  )
  (local.get $3)
 )
 (local.get $1)
 (local.get $2)
)
Fatal: error validating input
Error: failed to execute `wasm-opt`: exited with exit status: 1
  full command: "/home/user/.cache/.wasm-pack/wasm-opt-1ceaaea8b7b5f7e0/bin/wasm-opt" "/home/user/Code/repro/pkg/repro_bg.wasm" "-o" "/home/user/Code/repro/pkg/repro_bg.wasm-opt.wasm" "-Oz"
To disable `wasm-opt`, add `wasm-opt = false` to your package metadata in your `Cargo.toml`.
Caused by: failed to execute `wasm-opt`: exited with exit status: 1
  full command: "/home/user/.cache/.wasm-pack/wasm-opt-1ceaaea8b7b5f7e0/bin/wasm-opt" "/home/user/Code/repro/pkg/repro_bg.wasm" "-o" "/home/user/Code/repro/pkg/repro_bg.wasm-opt.wasm" "-Oz"
To disable `wasm-opt`, add `wasm-opt = false` to your package metadata in your `Cargo.toml`.
```
