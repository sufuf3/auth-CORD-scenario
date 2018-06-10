cat >> /etc/freeradius/clients.conf <<EOF
client 0.0.0.0/0 {
    secret = mycord
    require_message_authenticator = no
    nastype = other
}
EOF

cat >> /etc/freeradius/users << EOF
"cordpod"       Cleartext-Password := "mycord"
                Reply-Message = "Hello, %{User-Name}"
EOF
