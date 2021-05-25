# --- First LDAP server ---

[[servers]]
host = "LDAP_SRV1"
port = LDAP_PORT

use_ssl = false
start_tls = false
ssl_skip_verify = false

bind_dn = "LDAP_BIND_DN"
bind_password = "LDAP_BIND_PASSWD"

search_filter = "(sAMAccountName=%s)"
search_base_dns = ["LDAP_BASE_DN"]

[servers.attributes]
name = "givenName"
surname = "sn"
username = "cn"
member_of = "memberOf"
email =  "email"

[[servers.group_mappings]]
group_dn = "LDAP_ADMIN_DN"
org_role = "Admin"
grafana_admin = true

[[servers.group_mappings]]
group_dn = "*"
org_role = "Viewer"

# --- Second LDAP server ---

[[servers]]
host = "LDAP_SRV2"
port = LDAP_PORT

use_ssl = false
start_tls = false
ssl_skip_verify = false

bind_dn = "LDAP_BIND_DN"
bind_password = "LDAP_BIND_PASSWD"

search_filter = "(sAMAccountName=%s)"
search_base_dns = ["LDAP_BASE_DN"]

[servers.attributes]
name = "givenName"
surname = "sn"
username = "cn"
member_of = "memberOf"
email =  "email"

[[servers.group_mappings]]
group_dn = "LDAP_ADMIN_DN"
org_role = "Admin"
grafana_admin = true

[[servers.group_mappings]]
group_dn = "*"
org_role = "Viewer"
