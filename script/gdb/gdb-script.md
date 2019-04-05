# gdb note

### get core dumped
```
ulimit -c unlimited
echo "/path-to-your-dir/core.%e.%p" > /proc/sys/kernel/core_pattern
```

### use core dumped
```
gdb `which your-execution-program` your-core-dump

gdb --directory /path/to/source /path/to/program --core core
```

### lib address in proc
```
i proc m (info proc mappings)
```

### get assembly
```
disas doupdate
```

### recording 
```
record
reverse-stepi
```

### cscope
```
cscope -Rbqk
```
