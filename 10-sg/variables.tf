variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    default = [
        # databases
        "mongodb", "redis", "rabbitmq", "mysql",
        # backend
        "catalogue", "user", "shipping", "cart"
    ]
}