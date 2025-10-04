## practice task
1. create a child module for the following resources:
- `aws_db_instance`:
```
	engine: mysql
	username: "admin"
	password: "MyStrongPassword"
	skip_final_snapshot: true
	vpc_security_group_ids: reference to security group to be created in the same directory
```

variables needed:
```
	var.allocated_storage
	var.engine_version
	var.instance_class
```

- aws_security_group:
```
	name: "allow_mysql"
	description: "Allow mysql traffic and all outbound traffic"
	protocol: "tcp"
```

variables needed:
```
	var.port
	var.cidr_blocks
```


2. create a root module that will call a child module using source block:
```
	allocated_storage = 10
	engine_version = 8
	instance_class = "db.t3.micro"
	port = 3306
	cidr_blocks = "10.10.10.0/28"
```

3. Create outputs for:
- Database `endpoint`: find reference in 'aws_db_instance' resource
- security group id