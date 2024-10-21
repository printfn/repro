# Repro

`cargo build` works on Rust 1.81 but fails on Rust 1.82.

To regenerate the `icon/resources.res` file run `rc /v resources.rs` in a Visual Studio PowerShell.

Error message:

```
cargo run
   Compiling repro v0.1.0 (C:\Users\print\repro\cli)
error: linking with `link.exe` failed: exit code: 1181
  |
  = note: "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Tools\\MSVC\\14.41.34120\\bin\\HostX64\\x64\\link.exe" "/NOLOGO" "C:\\Users\\print\\AppData\\Local\\Temp\\rustcXlOPFN\\symbols.o" "C:\\Users\\print\\repro\\target\\debug\\deps\\repro.26qtrl3wfp1ut4mm4u3lrj0wm.rcgu.o" "C:\\Users\\print\\repro\\target\\debug\\deps\\repro.2kzymqvj3183xbugivmrarp69.rcgu.o" "C:\\Users\\print\\repro\\target\\debug\\deps\\repro.2o95soo3fx3kew44tvfx0kn94.rcgu.o" "C:\\Users\\print\\repro\\target\\debug\\deps\\repro.37h2v349ylr35l522jwmg7jwe.rcgu.o" "C:\\Users\\print\\repro\\target\\debug\\deps\\repro.8ru88bk8gp4zihobsrx5sncqc.rcgu.o" "C:\\Users\\print\\repro\\target\\debug\\deps\\repro.bbgwzs8uveanm9xqmy3pk3bhj.rcgu.o" "C:\\Users\\print\\repro\\target\\debug\\deps\\repro.77iorrjxaxmlihy8uzl1njjbm.rcgu.o" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libstd-2df1f22abef96888.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libpanic_unwind-7fa781213a0698f8.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libwindows_targets-2440cb72ce7deb9b.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\librustc_demangle-f04b9120076f20fa.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libstd_detect-b521ee511095af2f.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libhashbrown-124aa6c4c6ef4b4c.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\librustc_std_workspace_alloc-c86a42f7194744c8.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libunwind-a416069596473508.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libcfg_if-e246a9218bd1ed0e.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\liballoc-8f9b5fcbcd27c22e.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\librustc_std_workspace_core-65178e86c6c71ba8.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libcore-fbeb171b69c59b37.rlib" "C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\x86_64-pc-windows-msvc\\lib\\libcompiler_builtins-e3a3e7896142045d.rlib" "kernel32.lib" "kernel32.lib" "advapi32.lib" "ntdll.lib" "userenv.lib" "ws2_32.lib" "dbghelp.lib" "/defaultlib:msvcrt" "/NXCOMPAT" "/OUT:C:\\Users\\print\\repro\\target\\debug\\deps\\repro.exe" "/OPT:REF,NOICF" "/DEBUG" "/PDBALTPATH:%_PDB%" "/NATVIS:C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\etc\\intrinsic.natvis" "/NATVIS:C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\etc\\liballoc.natvis" "/NATVIS:C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\etc\\libcore.natvis" "/NATVIS:C:\\Users\\print\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib\\rustlib\\etc\\libstd.natvis" "../../../icon/resources.res"
  = note: LINK : fatal error LNK1181: cannot open input file '..\..\..\icon\resources.res'␍


error: could not compile `repro` (bin "repro") due to 1 previous error
```

