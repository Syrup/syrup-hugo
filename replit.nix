{ pkgs }: {
    deps = [
        pkgs.openssh_with_kerberos
        pkgs.hugo
		pkgs.miniserve
    ];
}