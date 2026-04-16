set confirm off
set architecture riscv:rv64
# This silences the "OS ABI Windows" warning
set osabi none

set disassemble-next-line auto
set riscv use-compressed-breakpoints yes

# Ensure GDB knows where the symbols are
file kernel

# Connect to QEMU/Emulator
target remote localhost:27609

# Set hardware breakpoint at your trap handler
hb handleSupervisorTrap