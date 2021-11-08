package policies.hello

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

allowed {
    input.attributes.properties.role == "web-admin"
}

allowed {
     department = input.attributes.properties.department
     department == "tech"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
