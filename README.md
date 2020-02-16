# check_rbl

Plugin fo rangios. Check Your IP in popular RBL lists.

commands.cfg
# check_rbl
define command{
        command_name    check_rbl
        command_line    $USER1$/check_rbl.sh $ARG1$
        }

Definition of service:

define service{
        use                             work-service
        host_name                       ^mail-server$
        service_description             RBL/193.201.34.212
        check_command                   check_rbl!193.201.34.212
