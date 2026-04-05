set confirm off
set architecture riscv:rv64
set disassemble-next-line auto
set riscv use-compressed-breakpoints yes
file kernel
target remote localhost:27609
# Automatski stani čim uđeš u trap handler
hb handleSupervisorTrap