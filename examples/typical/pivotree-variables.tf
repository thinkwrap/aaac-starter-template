variable "account_id" {
  description = "(6 char MAX) This is the id attached to the customer as provided by Sales Operations. This ID identifies this specific customer in multiple systems (eg. technical, billing, etc.)."
  type        = string
  default     = null
}

variable "cus_id" {
  description = "(3 char MAX) This is used in various internal systems to identify the customer. This identifier would be available in related customer agreement documentation, etc."
  type        = string
  default     = null
}

variable "env_id" {
  description = "(3-6 char MAX) While env_id can take the typical form of dev, prd, etc., it should nevertheless be unique and can differ from the common convention where appropriate."
  type        = string
  default     = null
}

variable "app_id" {
  description = "(3 char MAX) A common resource tag: examples are  sys is a general internal-use type; oc is an app, EKS is a service type, whereas kubernetes is a type of application."
  type        = string
  default     = null
}

variable "customer_name" {
  description = "A friendly customer name."
  type        = string
  default     = null
}